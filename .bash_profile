export DOTFILES_PATH=$HOME

# Override the path here
OVERRIDEN_FILE=$HOME/.dotfiles.path
if [ -e "${OVERRIDEN_FILE}" ]
then
  export DOTFILES_PATH=$(cat $OVERRIDEN_FILE)
fi

# Setup symlinks
SYMLINK_FILES="$DOTFILES_PATH/configs/.*"
for file in $SYMLINK_FILES
do
    if [ -e "${file}" ]; then
        fbasename=$(basename $file)
        if [[ ! -L $HOME/$fbasename ]]; then
            ln -f $file $HOME/$fbasename > /dev/null 2>&1
        fi
    fi
done


# Source Files
CUSTOM="$DOTFILES_PATH/bash_configs/*"
for config_file in $CUSTOM
do
  if [ -e "${config_file}" ]; then
    source $config_file > /dev/null 2>&1
  fi
done
