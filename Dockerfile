FROM ubuntu:latest

RUN apt-get update --yes
RUN apt-get install --yes software-properties-common
RUN apt-add-repository --yes --update ppa:ansible/ansible
RUN apt-get install --yes ansible

RUN mkdir /playbooks

RUN groupadd -r ansible-users && useradd -d /playbooks --no-log-init -r -g ansible-users ansible-user
RUN chown ansible-user:ansible-users /playbooks
USER ansible-user

WORKDIR /playbooks

CMD ["/bin/bash"]
