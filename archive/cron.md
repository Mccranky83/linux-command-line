## _Let's delve deeper into 'cron' - the time-based job scheduler!_

**And what better ways there are compared to learning from a few examples!**

### _Examples_

> **_"cron table" - crontab_**

```bash
crontab -l
# crontab: no crontab for Mccranky

# no cron jobs for current user
```

---

```bash
crontab -e
# 'e' for 'edit'

# and we can specify which text editor to use by passing the EDITOR environment variable into the command

EDITOR=nano crontab -e

# now that we're in the text editor, let's see how we can set up a cron jobs

# the template is:
# m h dom mon dow	<command>


# we can format it like:
# 0 * * * * <command>
# or simply:
# @hourly <command>

# we can even run:
# @reboot <command>
# to have our command run every time we reboot


# to have a cron job run on multiple instances, separate two values with a comma
# 0 0 1,15 * * <command>


# */10 * * * * <command>
# execute <command> every 10 minutes, every day, every month, and every year.


# * 0-5 * * * <command>
# execute <command> every hour from 0 to 5, every month, and every year.


# Mix these up and we'll have something like this:
# 30 Mon-Fri 9am-5pm
# */30 9-17 * * 1-5 <command>
```

---

```bash
crontab -u root -e
# crontab: must be privileged to use -u

# 'u' for 'user'
# specify which user's cron jobs to edit
```

---

```bash
crontab -r
# 'r' for 'remove'
```