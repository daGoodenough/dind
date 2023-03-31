FROM fedora:37
MAINTAINER amitsaha.in@gmail.com

# Install docker
RUN dnf -y update && dnf -y install docker && dnf clean all

# Install the magic wrapper.
ADD ./wrapdocker /usr/local/bin/wrapdocker
RUN chmod +x /usr/local/bin/wrapdocker

# RUN sudo dnf groupinstall @development-tools @development-libraries
# RUN sudo dnf install openssl libssl-dev glibc-devel clang clang-devel ca-certificates git

# Define additional metadata for our image.
VOLUME /var/lib/docker
CMD ["wrapdocker"]
