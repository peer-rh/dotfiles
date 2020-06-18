mkdir ~/.dotfiles-backup

while read -r line
do
    [[ "$line" == */ ]] && mkdir -p $HOME/$line
    [[ -f "$HOME/$line" ]] && cp -r "$HOME/$line" ~/.dotfiles-backup
    rsync -av "$HOME/.dotfiles/$line" "$HOME/$line"
done < ~/.dotfiles/sync_files.txt
