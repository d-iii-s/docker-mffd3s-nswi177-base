FROM fedora:33

# Install some interactive utilities (for debugging)
RUN dnf install -y mc vim

# Install Python and related utilities
RUN dnf install -y python3 python3-pip pylint python3-virtualenv

# Install other tools and utilities
RUN dnf install -y ShellCheck bats jq make pandoc bc

CMD echo "Run with -it /bin/bash and proper volume mounted"
