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

  environment.systemPackages = with pkgs; [
    nmap
    python311
    poetry
  ];
}