{ config, pkgs, ... }:

{
	boot.kernelParams = [
		"video=DP-1:2560x1440@60"
		"video=HDMI-A-1:1920x1080@60"
	];

	# keep the EFI framebuffer at native resolution so the text console fills
	# the screen instead of leaving a 1080p box in the top-left corner
	boot.loader.grub.gfxmodeEfi = "2560x1440x32";

	console.earlySetup = true;
	console.font = "${pkgs.terminus_font}/share/consolefonts/ter-u28n.psf.gz";
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
