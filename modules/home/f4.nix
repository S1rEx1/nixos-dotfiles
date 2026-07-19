{ config, pkgs, ... }:

{
  systemd.user.services.unmute-audio = {
    Unit = {
      Description = "Unmute audio on startup";
      After = [ "pipewire.service" "pipewire-pulse.service" ];
      Wants = [ "pipewire.service" "pipewire-pulse.service" ];
    };
    Service = {
      Type = "oneshot";
      ExecStart = [
        "${pkgs.pulseaudio}/bin/pactl set-sink-mute @DEFAULT_SINK@ 0"
        "${pkgs.pulseaudio}/bin/pactl set-source-mute @DEFAULT_SOURCE@ 0"
      ];
    };
    Install = {
      WantedBy = [ "default.target" ];
    };
  };
}
