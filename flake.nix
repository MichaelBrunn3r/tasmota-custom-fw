{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";
  };
  outputs = {
    self,
    nixpkgs,
    ...
  }: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    devShells.x86_64-linux.default = pkgs.mkShell {
      nativeBuildInputs = with pkgs; [
        just
        python3
        platformio
        platformio-core
        esptool
        uclibc
        python311Packages.pip
        zopfli
        python311Packages.zopfli
        python311Packages.wheel
        espflash
      ];
    };
  };
}
