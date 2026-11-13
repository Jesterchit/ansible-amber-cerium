.PHONY: all packages users check

all:
	ansible-playbook -i inventory.ini playbook.yml

packages:
	ansible-playbook -i inventory.ini playbook.yml --tags packages

users:
	ansible-playbook -i inventory.ini playbook.yml --tags users

check:
	ansible-playbook -i inventory.ini playbook.yml --list-tags
