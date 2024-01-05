<!-- report-keep -->

# azure-101 <img src="../img/tree-red.png" alt="drawing" width="20"/><img src="../img/tree-red.png" alt="drawing" width="20"/><img src="../img/tree-outline.png" alt="drawing" width="20"/><img src="../img/tree-outline.png" alt="drawing" width="20"/><img src="../img/tree-outline.png" alt="drawing" width="20"/>

<!-- report-ignore -->

[< Back Home](../README.md)

<!-- report-keep -->

## Objective

Help Sparkle Redberry with some Azure command line skills. Find the elf and the terminal on Christmas Island.

<!-- report-ignore -->

## Conversations

Sparkle Redberry

Initial conversation:

- Hey, Sparkle Redberry here! So, I've been trying to learn about Azure and the Azure CLI and it's driving me nuts.
- Alabaster Snowball decided to use Azure to host some of his fancy new IT stuff on Geese Islands, and now us elves have to learn it too.
- Anyway, I know it's important and everyone says it's not as difficult as it seems, but honestly it still feels like quite a challenge for me.
- Alabaster sent us this [Azure CLI reference](https://learn.microsoft.com/en-us/cli/azure/reference-index?view=azure-cli-latest) as well. It's super handy, he said. Honestly, it just confuses me even more.
- If you can spare a moment, would you mind giving me a hand with this terminal? I'd be really grateful! Pretty please, with holly leaves on top!

After solving challenge:

- Wow, you did it!
- It makes quite a bit more sense to me now. Thank you so much!
- That Azure Function App URL you came across in the terminal looked interesting.
- It might be part of that new project Alabaster has been working on with the help of ChatNPT.
- Let me tell you, since he started using ChatNPT he's been introducing a lot of amazing innovation across the islands.
- Knowing Alabaster, he'll be delighted to tell you all about it! I think I last saw him on Pixel island.
- By the way, as part of the Azure documentation he sent the elves, Alabaster also noted that if Azure CLI tools aren't available in an Azure VM we should use the Azure REST API instead.
- I'm not really sure what that means, but I guess I know what I'll be studying up on next.

## Hints

- The Azure CLI tools come with a builtin help system, but Microsoft also provides this [handy cheatsheet](https://learn.microsoft.com/en-us/cli/azure/reference-index?view=azure-cli-latest).

<!-- report-keep -->

## Approach

Straight forward - enter the commands when prompted:

```console
az help | less
az account show
az group list
az functionapp list --resource-group northpole-rg1
az vm list --resource-group northpole-rg2
az vm run-command invoke --resource-group northpole-rg2 --name NP-VM1 --command-id RunShellScript --scripts "ls -l"
```

## Resources

[Azure CLI Reference](https://learn.microsoft.com/en-us/cli/azure/reference-index?view=azure-cli-latest)
