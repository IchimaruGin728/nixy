{ config, lib, ... }: {
  imports = [
    # Choose your theme here:
    ../../themes/nixy.nix
  ];

  config.var = {
    hostname = "GIN-NIX";
    username = "IchimaruGin728";
    configDirectory = "/home/" + config.var.username
      + "/.config/nixos"; # The path of the nixos configuration directory

    keyboardLayout = "us";

    location = "Singapore";
    timeZone = "Asia/Singapore";
    defaultLocale = "en_SG.UTF-8";
    extraLocale = "zh_SG.UTF-8";
    
    git = {
      username = "IchimaruGin728";
      email = "ichimarugin728@gmail.com";
    };

    autoUpgrade = false;
    autoGarbageCollector = true;
  };

  # Let this here
  options = {
    var = lib.mkOption {
      type = lib.types.attrs;
      default = { };
    };
  };
}
