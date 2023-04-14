## _Let's delve deeper into 'sed' - a stream editor!_

**And what better ways there are compared to learning from a few examples!**

### _Examples_

> **_01_**

```bash
sed -i 's/text1/text2/' data.txt
# 's' stands for 'substitute', while '-i' allows us to change things in place.

# If you're on OS X, this won't work unless you add an extension to '-i', like this:

sed -i .bak 's/text1/text2/' data.txt

# '.bak' would essentially create a backup of the original, while allowing 'sed' to modify the original file.
```

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

### **_Note:_**

&ensp;&ensp;This `sed` command will squeeze consecutive occurrences of the characters 'f', 'o', 't', or '!' in the input string, replacing them with a single occurrence of the character.

> _`s/` - indicates the start of a sed substitution command._  
> _`\([fot!]\)` - matches any of the characters 'f', 'o', 't', or '!', and captures it in a group._  
> _`\1_` - matches zero or more consecutive occurrences of the character in the first group._  
> _`/\1/` - replaces the matched characters with a single occurrence of the character in the first group._  
> _`g` - indicates a global replace, meaning all occurrences of the pattern in the input string will be replaced._
