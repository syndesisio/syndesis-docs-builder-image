FROM fedora:32

RUN curl -fsSL -o /etc/yum.repos.d/yarn.repo https://dl.yarnpkg.com/rpm/yarn.repo && \
    curl -fsSL https://rpm.nodesource.com/setup_12.x | bash - && \
    dnf install --quiet -y dnf-plugins-core && \
    dnf copr --quiet -y enable daftaupe/hugo && \
    dnf install --quiet -y pip git openssh-clients yarn fontconfig bzip2 svn hugo && \
    dnf clean all && \
    pip install pygments pygments-style-github
