# foundry-env-vars-in-script

testing foundry/forge loading bash env vars into script using environment cheats

## run the script

The following script will:

1. load the env vars in [`.env.local`](./.env.local)
1. echo the bash env var `$STRING_ENV_VAR` (to prove that it is loaded)
1. run the forge script

```sh
$ source .env.local && echo $STRING_ENV_VAR && forge script script/Contract.s.sol -vvvvv
```
