# Testing OS fedora
FROM fedora:36

# Update to the latest version
RUN dnf upgrade -y

RUN dnf install neovim zsh git -y

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

RUN git --git-dir=/dotfiles/ --work-tree=$HOME

ENTRYPOINT ["zsh"]
