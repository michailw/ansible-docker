# michailw/ansible-docker

Docker image with Ansible preinstalled, based on Alpine/Ubuntu.

Default workdir: `/playbooks`

Example usage:

```
# Running latest version, based on Alpine:
docker run -it -v $(pwd):/playbooks michailw/ansible-docker

# Running latest version, based on Alpine explicitely:
docker run -it -v $(pwd):/playbooks michailw/ansible-docker:alpine

# Running latest version, based on Ubuntu, explicitely:
docker run -it -v $(pwd):/playbooks michailw/ansible-docker:ubuntu
```
