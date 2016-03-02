#!/bin/sh
if ! getent passwd <%= attributes[:rpm_user] %> &> /dev/null; then
  useradd -d /opt/<%= attributes[:rpm_user] %> -m -s /bin/bash -U <%= attributes[:rpm_user] %> &> /dev/null
  chmod 755 /opt/<%= attributes[:rpm_user] %>
fi
