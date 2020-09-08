# Bash Script That Prints username:home/dir


Wrete a Ruby or Bash script that will print usernames of all users on a Linux
system together with their home directories. Here's some example output:

gitlab:/home/gitlab

nobody:/nonexistent

.

As you can see, each line is a concatenation of a username, the colon character

(:), and the home directory path for that username. Your script should output

such a line for each user on the system.

Next, wrete a crontab entry that accomplishes the following:

● Runs once every hour.

● Takes the output of your above script and converts it to an MD5 hash.

● Stores the MD5 hash into the /var/log/current_users file.

● On subsequent runs, if the MD5 sum changes, it should log this change in

the /var/log/user_changes file with the message, DATE TIME

changes occurred, replacing DATE and TIME with appropriate

values. Make sure to replace the old MD5 hash in

/var/log/current_users file with the new MD5 hash.

Both the script and crontab entry should be provided for the answer to be

complete.
