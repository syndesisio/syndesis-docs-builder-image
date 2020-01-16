FROM fedora:31

RUN curl -fsSL https://github.com/gohugoio/hugo/releases/download/v0.62.2/hugo_0.62.2_Linux-64bit.tar.gz | tar xz -C /usr/local/bin hugo && \
    curl -fsSL -o /etc/yum.repos.d/yarn.repo https://dl.yarnpkg.com/rpm/yarn.repo && \
    curl -fsSL https://rpm.nodesource.com/setup_10.x | bash - && \
    dnf install --quiet -y pip git openssh-clients yarn fontconfig bzip2 && \
    dnf clean all && \
    pip install pygments pygments-style-github
