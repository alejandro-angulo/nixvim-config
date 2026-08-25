{ ... }:
{
  filetype.pattern = {
    ".*/templates/.*%.yaml" = "helm";
    ".*/templates/.*%.yml" = "helm";
  };

  plugins.helm.enable = true;
}
