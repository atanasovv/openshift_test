provider "null" {}

resource "null_resource" "{{ cookiecutter.clusterName }}" {
  triggers = {
    region  = "{{ cookiecutter.region }}"
    version = "{{ cookiecutter.version }}"
    number_of_nodes = "{{cookiecutter.number_of_nodes}}"
    master_node_cpu = "{{cookiecutter.master_node_cpu}}"
  }

  provisioner "local-exec" {
    command = "echo Creating OpenShift cluster '{{ cookiecutter.clusterName }}' in region '{{ cookiecutter.region }}' with version '{{ cookiecutter.version }}'"
  }
}
