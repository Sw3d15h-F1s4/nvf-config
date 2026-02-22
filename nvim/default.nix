{ ... }:
{

  vim = {

    vimAlias = true;


    clipboard.providers.wl-copy.enable = true;
  };

  imports = [
    ./opts
    ./languages
    ./plugins
  ];

}
