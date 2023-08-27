{ config, pkgs, ... }:

{
  # Disable sound and X11
  services.xserver.enable = false;
  sound.enable = false;
  
  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

}