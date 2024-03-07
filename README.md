# Nemo Copy Folder Content List Installation Guide

This README provides instructions for installing a Nemo action that enables users to copy the names of all items in a folder to the clipboard, excluding their paths. The action is installed using a single command line operation that handles everything from downloading the necessary scripts to setting them up for use with Nemo.

## Quick Start

To install the Nemo action, open a terminal and execute the following command:

Certainly! Below is the revised README content in markdown format, with a placeholder for the installation command:

markdown

# Nemo Copy Folder Content List Installation Guide

This README provides instructions for installing a Nemo action that enables users to copy the names of all items in a folder to the clipboard, excluding their paths. The action is installed using a single command line operation that handles everything from downloading the necessary scripts to setting them up for use with Nemo.

## Quick Start

To install the Nemo action, open a terminal and execute the following command:

```
REPO_URL="https://github.com/ForDefault/nemo_copy_folder_content_list.git" && \
REPO_NAME=$(basename $REPO_URL .git) && \
git clone $REPO_URL && \
cd $REPO_NAME && \
sudo apt-get update && sudo apt-get install -y xclip && \
sed -i "s|/home/\$USER|/home/$USER|g" list_documents.nemo_action && \
mv list_documents.sh /home/$USER/.local/share/nemo/actions/ && \
mv list_documents.nemo_action /home/$USER/.local/share/nemo/actions/ && \
chmod +x /home/$USER/.local/share/nemo/actions/list_documents.sh && \
chmod +x /home/$USER/.local/share/nemo/actions/list_documents.nemo_action && \
cd .. && rm -rf $REPO_NAME

```


## Features

- **Ease of Use**: Designed to be installed with a single command, streamlining the setup process.
- **Clipboard Integration**: Leverages `xclip` to copy the names of items in a folder directly to the clipboard.
- **Customization**: No need to modify file paths or usernames, as the script dynamically resolves the current user's home directory.

## Usage

After installation, right-click on any folder in Nemo and select "List Document Names" from the context menu. The names of all items in the folder (both files and directories) will be copied to your clipboard without their paths.

Example:
- Given a file at `/home/$USER/randomfolder/thismadeup.txt`, executing the action will copy just `thismadeup.txt` to your clipboard.

## Post-Installation

To ensure the new action takes effect, you might need to restart Nemo. You can do so by executing `nemo -q` in your terminal. This command quits Nemo, and you can then reopen it normally.

## Troubleshooting

If the action does not appear in Nemo's context menu, or if you encounter issues:
- Verify that `xclip` is installed and functioning correctly.
- Check that the scripts have the correct permissions and are located in `/home/$USER/.local/share/nemo/actions/`.
- Restart Nemo using `nemo -q` to refresh its configuration.

For further assistance, consider revisiting the installation steps or checking the permissions of the scripts.
