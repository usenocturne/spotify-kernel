# superbird kernel fork

how to build (with nix):

```bash
nix-shell
```

then in the nix shell:

```bash
make mrproper
make superbird_evt_defconfig
make Image-dtb
make superbird_evt_512.dtb
```

how to build (without nix):

<https://github.com/thinglabsoss/wiki/wiki/Custom-kernel>

ALSO

delete line 41 of [`scripts/dtc/dtc-lexer.l`](./scripts/dtc/dtc-lexer.l) (the line should just be `YYLTYPE yylloc;`) and delete line 634 of [`scripts/dtc/dtc-lexer.lex.c_shipped`](./scripts/dtc/dtc-lexer.lex.c_shipped) (that line says the same thing)
