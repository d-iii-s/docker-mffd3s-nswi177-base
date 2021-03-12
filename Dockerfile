FROM fedora:33
MAINTAINER horky@d3s.mff.cuni.cz
LABEL maintainer="horky@d3s.mff.cuni.cz"

# Install some interactive utilities (for debugging)
RUN dnf install -y mc vim

# Install Python and related utilities
RUN dnf install -y python3 python3-pip pylint python3-virtualenv

# Install other tools and utilities
RUN dnf install -y git ShellCheck bats jq make pandoc bc

CMD echo "Run with -it /bin/bash and proper volume mounted"
