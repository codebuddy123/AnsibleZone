#!/bin/bash

ansible all  -m yum_repository -a "file=local.repo name=BaseOS description='Base OS Repo' baseurl=http://ur1.com gpgcheck=yes gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release enabled=0 state=present "

ansible all -m yum_repository -a "file=local.repo name=AppStream  description='AppStream Repo'  baseurl=http://ur2.com gpgcheck=yes gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release enabled=0  state=present"

