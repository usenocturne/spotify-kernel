with import <nixpkgs> {
  system = "aarch64-linux";
};
{
  spotEnv = stdenvNoCC.mkDerivation {
    name = "spotify-gcc6";
    buildInputs = [
      gcc6
      bison
      flex
      perl
      bc
      nettools
      openssl
      rsync
      gmp
      libmpc
      mpfr
      elfutils
      zstd
      python3Minimal
      kmod
      hexdump
      ubootTools
    ];
  };
}
