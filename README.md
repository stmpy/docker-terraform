## Terraform container
simple terraform container with ssh key authentication.

### To use
#### Alias

```
# Alias file ~/.bashrc, ~/.zshrc, ~/.profile ... wtvr

alias terraform="docker run -it --rm --name terraform -v $(pwd):/app -v $HOME/.ssh/:/root/.ssh -w /app stmpy/terraform"
```
