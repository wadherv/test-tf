resource "null_resource" "print_policy" {
 provisioner "local-exec" {
    command = "Get-Content -Path '${path.module}\\policies\\instance-ssm-parameters-policy.json'"
    interpreter = ["PowerShell", "-Command"]
  }

  triggers = {
    always_run = timestamp()
  }
}
