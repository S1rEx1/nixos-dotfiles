{ config, pkgs, ... }:

{
  boot.loader = {
    systemd-boot.enable = false;

    efi = {
      canTouchEfiVariables = true;
      efiSysMountPoint = "/boot";
    };

    grub = {
      enable = true;
      efiSupport = true;
      device = "nodev";
      useOSProber = false;
    #   extraEntries = ''
    #   menuentry "Artix Linux" {
    #     search --file /vmlinuz-linux --set=root
    #     linux /vmlinuz-linux root=UUID=fdc080bb-2d93-401b-be88-344f6ef13fec rw quiet
    #     initrd /initramfs-linux.img
    #   }
    # '';
    };

  };
}
