FROM fedora:33
MAINTAINER horky@d3s.mff.cuni.cz
LABEL maintainer="horky@d3s.mff.cuni.cz"

# Things that are installed:
#  - vim and mc for debugging and interactive sessions
#  - Python and related utilities
#  - system tools
#  - developer tools
RUN dnf install -y mc vim \
    && dnf install -y python3 python3-pip pylint python3-virtualenv \
    && dnf install -y git ShellCheck bats jq make pandoc bc findutils wget \
    && dnf clean all

CMD echo "Run with -it /bin/bash and proper volume mounted"
