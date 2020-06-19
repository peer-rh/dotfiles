while read -r line
do
    [[ "$line" == */ ]] && mkdir -p $HOME/.dotfiles/$line
    rsync -a "$HOME/$line" "$HOME/.dotfiles/$line"
done < ~/.dotfiles/sync_files.txt
