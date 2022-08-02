# foundry-env-vars-in-script

testing foundry/forge loading bash env vars into script using [environment cheats](https://book.getfoundry.sh/cheatcodes/external)

github issue on foundry-rs/forge-std repo: https://github.com/foundry-rs/forge-std/issues/141

# 🎉 solution from foundry support telegram

add export in front of the env vars in .env.local:

```sh
export BOOL_ENV_VAR=true
export BOOL_ENV_VAR_2=false
export STRING_ENV_VAR="I am a string"
```

then follow the steps belowt

## run the script

The following script will:

1. load the env vars in [`.env.local`](./.env.local)
1. echo the bash env vars (to prove that they are loaded)
1. run the forge script

```sh
$ source .env.local && echo $BOOL_ENV_VAR && echo $BOOL_ENV_VAR_2 && echo $STRING_ENV_VAR && forge script script/Contract.s.sol -vvvvv
```

## ⚠️ This is what I am getting when I run the script:

```sh
➜  env-vars-in-script git:(main) source .env.local && echo $BOOL_ENV_VAR && echo $BOOL_ENV_VAR_2 && echo $STRING_ENV_VAR && forge script script/Contract.s.sol -vvvvv
true
false
I am a string
[⠆] Compiling...
No files changed, compilation skipped
Traces:
  [98] ContractScript::setUp()
    └─ ← ()

  [2944] ContractScript::run()
    ├─ [0] VM::envBool("BOOL_ENV_VAR")
    │   └─ ← "environment variable not found"
    └─ ← "environment variable not found"


Script failed.
Gas used: 2944

== Return ==
Error:
Script failed.
```

### forge version

```sh
➜  env-vars-in-script git:(main) forge --version
forge 0.2.0 (9ed1c37 2022-08-01T00:09:10.803586Z)
```
