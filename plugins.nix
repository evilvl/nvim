{
  pkgs,
  settings,
  categories,
  extra,
  name,
  mkNvimPlugin,
}:
{
  startupPlugins = with pkgs.vimPlugins; {
  { plugin = catppuccin-nvim; name = "catppuccin"; }
  };
}
