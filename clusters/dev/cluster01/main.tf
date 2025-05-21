provider "null" {}

resource "null_resource" "{{ cookiecutter.clusterName }}" {
  triggers = {
    region  = "{{ cookiecutter.region }}"
    version = "{{ cookiecutter.version }}"
  }

  provisioner "local-exec" {
    command = "echo Creating OpenShift cluster '{{ cookiecutter.clusterName }}' in region '{{ cookiecutter.region }}' with version '{{ cookiecutter.version }}'"
  }
}
