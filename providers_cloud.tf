provider "aws" {
  #shared_config_files      = ["/Users/tf_user/.aws/conf"]
  region                   = var.aws_region
  #shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "vscode-user"
}
