{ config, pkgs, ... }:

{
  imports =
    [
      ./workstation.nix
    ];
    
  environment.systemPackages = with pkgs; [
    nmap
    # figure out python and packages
  ];
}