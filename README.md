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

## ⚠️ This is what I am getting when I run the script:

```sh
➜  env-vars-in-script git:(main) source .env.local && echo $STRING_ENV_VAR && forge script script/Contract.s.sol -vvvvv
I am a string
[⠢] Compiling...
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
