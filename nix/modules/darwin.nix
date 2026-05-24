# nix/modules/darwin.nix — auto-generated from toml.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.toml; in {
  options.services.toml = {
    enable = lib.mkEnableOption "toml";
    package = lib.mkOption { type = lib.types.package; default = pkgs.toml or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
