nemo_copy_folder_content_list: Creates list of folderNames, and, a fileNames. 
(**NOT full paths of each file**)


# Installation Guide: Nemo_Copy_Folder_Content_List

*This nemo_action:* 
> allows users to copy the names of all items within a folder to the clipboard, excluding their directory paths for a succinct listing.


### Enabled Features

- **Clipboard Copying**: Effortlessly copies **just** the item names in a folder to the clipboard.
- **Path Exclusion**: Smartly **omits the directory paths** for a cleaner output.
- **Customization**: **No need** to **modify file paths or usernames**, as the script dynamically resolves the current user's home directory.
- **Self-Cleaning**: Post-installation, the script engages in a thorough clean-up process, deleting the cloned repository from your home directory. This action ensures your workspace remains uncluttered, preserving the sanctity and available space of your home directory without leaving behind any residual files or folders.

## Quick Start
 ### SingleCommand Install

To install the Nemo action **on Linux Mint**, open a terminal and execute this **SingleCommand**:

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

## Usage

After installation, right-click on any folder in Nemo and select "List Document Names" from the context menu. The names of all items in the folder (both files and directories) will be copied to your clipboard without their paths.

#### My Other Nemo Actions:
- **[nemo_copy_folder_content_list](https://github.com/ForDefault/nemo_copy_folder_content_list)**
- [nemo_full_extension_path](https://github.com/ForDefault/nemo_full_extension_path)
- [nemo_contains_and_scroll](https://github.com/ForDefault/nemo_contains_and_scroll)


## Post-Installation

You might need to restart Nemo(I dont but you can). 
This command quits Nemo, and you can then reopen it normally.

```
nemo -q 
```
## Troubleshooting

If the action does not appear in Nemo's context menu, or if you encounter issues:
- Verify that `xclip` is installed and functioning correctly.
- Check that the scripts have the correct permissions and are located in 
```
cd /home/$USER/.local/share/nemo/actions/
```
- Restart Nemo using 

```
nemo -q
```
 to refresh its configuration.


