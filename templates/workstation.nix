{ config, pkgs, ... }:

{
  imports =
    [
      ../fragments/python.nix
    ];
  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;
}