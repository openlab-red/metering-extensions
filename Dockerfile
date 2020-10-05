FROM quay.io/operator-framework/ansible-operator:v1.0.1

COPY requirements.yml ${HOME}/requirements.yml
# RUN ansible-galaxy collection install -r ${HOME}/requirements.yml \
RUN chmod -R ug+rwx ${HOME}/.ansible

COPY ansible.cfg ${HOME}/ansible.cfg
COPY ansible_collections/ ${HOME}/ansible_collections/
COPY watches.yaml ${HOME}/watches.yaml
COPY roles/ ${HOME}/roles/
COPY playbooks/ ${HOME}/playbooks/
