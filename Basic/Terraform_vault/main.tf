provider "aws" {
  region = "eu-north-1"
}

provider "vault" {
  address = "<>:8200"
  skip_child_token = true

  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id = "<>"
      secret_id = "<>"
    }
  }
}

data "vault_kv_secret_v2" "mykv" {
  mount = "" 
  name  = "" 
}

resource "aws_instance" "myinstance" {
  ami           = ""
  instance_type = ""

  tags = {
    Name = data.vault_kv_secret_v2.mykv.data["name"]
  }
}