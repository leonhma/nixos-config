{ config, pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.leonhma = {
    isNormalUser = true;
    initialPassword = "pw123"; 
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
  };
}