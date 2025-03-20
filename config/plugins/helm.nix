{ ... }:
{
  # Workaround for helm-ls not working correctly
  # See here: https://github.com/nix-community/nixvim/issues/989#issuecomment-2333728503
  autoCmd = [
    {
      event = "FileType";
      pattern = "helm";
      command = "LspRestart";
    }
  ];

  plugins.helm.enable = true;
}
