{ config, pkgs, ... }:

{
  imports =
    [
      ./workstation.nix
    ];
    
  environment.systemPackages = with pkgs; [
    wget
    nmap
    # figure out python and packages
  ];
}