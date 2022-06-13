# Testing OS fedora
FROM fedora:36

# Update to the latest version
RUN dnf upgrade -y

RUN dnf install neovim zsh git -y

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN git clone --depth 1 https://github.com/wbthomason/packer.nvim\
        ~/.local/share/nvim/site/pack/packer/start/packer.nvim

RUN rm $HOME/.zshrc

RUN git clone --bare https://github.com/PotassiumPermanganate/dotfiles.git $HOME/.dotfiles
RUN git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME config --local status.showUntrackedFiles no
RUN git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout

ENTRYPOINT ["zsh"]
