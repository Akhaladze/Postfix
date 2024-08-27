#!/bin/bash

# Update SASL password maps
postmap /etc/postfix/sasl_passwd

# Start Postfix in the foreground
postfix start-fg
