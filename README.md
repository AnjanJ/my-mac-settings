# README for `setup_dev_env.sh`

## Overview

`setup_dev_env.sh` is a shell script designed to automate the setup of a development environment on macOS. It checks for the presence of Homebrew, installs it if absent, downloads a Brewfile from a specified URL, and then uses Homebrew to install all the software listed in the Brewfile.

## Prerequisites

- macOS operating system.
- Internet connection for downloading Homebrew and software from the Brewfile.
- Access to the terminal.

## Steps to Run the Script

### 1. Download the Script

Download `setup_dev_env.sh` to your MacBook. You can clone it from the repository or download it directly if available.

### 2. Host Your Brewfile

Ensure your Brewfile is hosted online and accessible via a direct URL. This URL will be used within the script to download the Brewfile.

### 3. Modify the Script

Open `setup_dev_env.sh` in a text editor and replace `[YOUR_BREWFILE_URL]` with the actual URL of your hosted Brewfile.

### 4. Give Execute Permission

Before running the script, you need to give it execute permissions. This can be done by navigating to the directory containing the script and running the following command in the terminal:

    chmod +x setup_dev_env.sh

### 5. Run the Script

Execute the script by running:

    ./setup_dev_env.sh

The script will then proceed to check for Homebrew, install it if necessary, download your Brewfile, and install the listed software.

## Troubleshooting

- **Permission Denied:** Ensure you have executed the `chmod +x` command on the script.
- **Homebrew Errors:** If there are errors during Homebrew installation, refer to the [Homebrew documentation](https://docs.brew.sh/).
- **Brewfile Issues:** Make sure the Brewfile URL is correct and accessible.

## Managing Crontab for Brewfile Backup

### Checking Current Cron Jobs

To view the list of scheduled cron jobs:

1. Open the Terminal.
2. Run the command:

   crontab -l

3. This will display all current cron jobs for your user. If no jobs are scheduled, it may return no output.

### Setting Up Cron Job for Brewfile Backup

To schedule your `auto_update_Brewfile.sh` script to run automatically:

1. Open Terminal.
2. Edit your crontab by running:

   crontab -e

3. In the crontab editor, add a line to schedule the script. For instance, to run it every Friday and Sunday at 7 PM:

   0 19 \* \* 5,0 /path/to/backup_brewfile.sh

   Ensure you replace `/path/to/auto_update_Brewfile.sh` with the actual path to your script.

4. Save and close the editor.

### Giving Execute Permissions to the Script

Your script must be executable:

1. Navigate to the directory containing `auto_update_Brewfile.sh`.
2. Run the command:

   chmod +x auto_update_Brewfile.sh

3. This will set the script as executable.

### Additional Notes

- Test your script manually before relying on the cron schedule.
- Ensure your script has the correct GitHub credentials if it's pushing to a repository.
- Regularly check your cron jobs and script logs to ensure they are running as expected.
- For troubleshooting cron jobs, check the syslog for cron-related messages:

  grep CRON /var/log/syslog

By following these steps, you can effectively manage and automate your Brewfile backup process.

## Conclusion

This script simplifies the process of setting up a development environment on macOS, making it an efficient and hassle-free experience.
Also it helps to backup your BREWFILE which keeps all the new apps you install using brew or mac app store.
