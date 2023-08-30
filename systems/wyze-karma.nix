# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running `nixos-help`).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ../hardware-configuration.nix  # include local hardware scan as generated by nixos-generate-config
      ../secrets.nix  # include local secrets
      ../base.nix
      ../fragments/home-manager.nix
      ../fragments/users.nix
      ../fragments/python.nix
      ../templates/server.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.grub.device = "/dev/sda";

  # Pick only one of the below networking options.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  # networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  system.stateVersion = "23.05";

  systemd.services."akyth-documents-download" = {
    script = ''
      cd /home/leonhma/akyth-documents-download
      ./run.sh
    '';
    serviceConfig = {
      User = "leonhma";
    };
    startAt = "hourly";
  };
}