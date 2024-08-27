FROM debian:buster-slim

# Install Postfix and necessary dependencies
RUN apt-get update && \
    apt-get install -y postfix libsasl2-modules mailutils ca-certificates && \
    apt-get clean

# Copy configuration files
COPY main.cf /etc/postfix/main.cf
COPY sasl_passwd /etc/postfix/sasl_passwd
COPY entrypoint.sh /entrypoint.sh

# Secure sasl_passwd file
RUN chmod 600 /etc/postfix/sasl_passwd && \
    postmap /etc/postfix/sasl_passwd && \
    chmod +x /entrypoint.sh

# Set entrypoint
ENTRYPOINT ["/entrypoint.sh"]

# Start Postfix
CMD ["postfix", "start-fg"]
