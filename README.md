# auto-backup-to-dropbox
Script for server, auto dump database and backup to Dropbox. Cronjob each every hour, day, week, month, ...

# Install

1. Clone the project

  ```sh
  cd 
  git clone https://github.com/duyetdev/auto-backup-to-dropbox
  cd auto-backup-to-dropbox
  chmod +x *.sh
  ```
  
2. Setup Dropbox: 

  ```sh
  ./dropbox_uploader.sh
  ```

  The configuration wizard is pretty self-explanatory. One thing to notice is that if you choose **"App permission"**, your   uploads will end up on Dropbox under an `App/<your_app_name>` folder. To have them stored in another folder, such as in   `/dir/`, you'll need to give Dropbox-Uploader permission to all Dropbox files.

  See: [https://github.com/andreafabrizi/Dropbox-Uploader](https://github.com/andreafabrizi/Dropbox-Uploader)

3. Test, make sure everything OK by:

  ```sh
  ./run.sh
  ```

4.Setup crontab

  ```sh
  crontab –e
  ```
  
  with: 
  ```
  # Edit this file to introduce tasks to be run by cron.
  #
  # Each task to run has to be defined through a single line
  # indicating with different fields when the task will be run
  # and what command to run for the task
  #
  # To define the time you can provide concrete values for
  # minute (m), hour (h), day of month (dom), month (mon),
  # and day of week (dow) or use '*' in these fields (for 'any').#
  # Notice that tasks will be started based on the cron's system
  # daemon's notion of time and timezones.
  #
  # Output of the crontab jobs (including errors) is sent through
  # email to the user the crontab file belongs to (unless redirected).
  #
  # For example, you can run a backup of all your user accounts
  # at 5 a.m every week with:
  # 0 5 * * 1 tar -zcf /var/backups/home.tgz /home/
  #
  # For more information see the manual pages of crontab(5) and cron(8)
  #
  # m h  dom mon dow   command
  
  1 1 * * * /root/auto_backup/run.sh # for every day at 1AM
  ```
  
  See more about crontab: [https://www.digitalocean.com/community/tutorials/how-to-use-cron-to-automate-tasks-on-a-vps](https://www.digitalocean.com/community/tutorials/how-to-use-cron-to-automate-tasks-on-a-vps)
