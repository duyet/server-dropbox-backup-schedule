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

4. Setup crontab

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


# How to contribute

1. Fork the project on Github
2. Create a topic branch for your changes
3. Ensure that you provide documentation and test coverage for your changes (patches won’t be accepted without)
4. Create a pull request on Github (these are also a great place to start a conversation around a patch as early as possible)

# License

MIT License

Copyright (c) 2016 Van-Duyet Le

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
