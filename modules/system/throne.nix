{
  config,
  pkgs,
  lib,
  inputs,
  ...
}:

{
  programs.throne = {
    enable = true;
    tunMode.enable = true;
    package = inputs.nixpkgs-unstable.legacyPackages.${pkgs.stdenv.hostPlatform.system}.throne;
  };

  # Throne >= 1.3 renamed Core -> ThroneCore and looks it up by that name in
  # PATH. The stable module's throne-core wrapper points at the old path, so
  # repoint it and add the wrapper under the new name.
  # Remove this block once the whole system runs on unstable nixpkgs.
  security.wrappers.throne-core.source =
    lib.mkForce "${config.programs.throne.package}/share/throne/ThroneCore";

  security.wrappers."ThroneCore" = {
    source = "${config.programs.throne.package}/share/throne/ThroneCore";
    owner = "root";
    group = "root";
    capabilities = "cap_net_admin,cap_net_raw,cap_net_bind_service,cap_sys_ptrace,cap_dac_read_search+ep";
  };
}
