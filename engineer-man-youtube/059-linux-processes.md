## _Let's delve deeper into Linux processes!_

So first off, processes are ultimately pieces of code that are responsible for running some task on a computer. Every process comes with a pid (process id) and ppid (parent pid). It makes sense 'cus all processes except init are started by a parent process.

As for the init process, it is the first process started by the Linux kernel in the kernel space - as oppose to the client space, and it has a PID of 1.

> **_01_**

```bash
ps -f 1

# UID   PID  PPID   C STIME   TTY           TIME CMD
#    0     1     0   0  9:49AM ??         1:11.78 /sbin/launchd


# the init system on my machine is supposed to be 'launchd'.
```

The fork and exec system calls are the fundamental building blocks for how parent processes start child processes.

The fork system call creates a new process that is an exact copy of the calling process. The exec system call replaces the current process with a new program.

A way to demonstrate this is to open up a new terminal window and run `exec ls -l`. What would happen is that `ls` would run, not in a forked process, but in our current process. When the `ls` is finished, the window would automatically close because it does not have a parent process to go back to since it has just replaced it.
> **_02_**

```bash
echo 'my foot!' | sed 's/o\+/o/g'
# my fot!
```

**_Or run:_**

```bash
echo 'my foot!' | sed 's/o\{1,\}/o/g'
# my fot!
```

---

```bash
echo '          my' '           foot!' | sed "s/[[:blank:]]\+/ /g"
# Or you can replace [:blank:] with [:space:], which would essentially do the same thing.
```

> **_03_**

```bash
echo 'my fffooooooooottt!!!' | sed 's/\([fot!]\)\1*/\1/g' | sed 's/o/oo/g'
# my foot!

# You can use pipes to chain multiple sed commands together as well!
```

### _Examples_

### **_Note:_**

&ensp;&ensp;This `sed` command will squeeze consecutive occurrences of the characters 'f', 'o', 't', or '!' in the input string, replacing them with a single occurrence of the character.

> _`s/` - indicates the start of a sed substitution command._  
> _`\([fot!]\)` - matches any of the characters 'f', 'o', 't', or '!', and captures it in a group._  
> _`\1_` - matches zero or more consecutive occurrences of the character in the first group._  
> _`/\1/` - replaces the matched characters with a single occurrence of the character in the first group._  
> _`g` - indicates a global replace, meaning all occurrences of the pattern in the input string will be replaced._
