#  Search for files in a directory hierarchy

```bash
find . -type d -name "dir_name"
```
Find in the current dirctory all dirctories with name `dir_name`

```bash
find Demo -type f -iname "*.py"
```

Find all files in Demo diectory with extension py.

```bash
find . -type f -mmin 10
``` 
Find all files which modified last 10 min ago.

```bash
find -type f -mmin +1 -mmin -5
```
Find all files which modified more than 1 min and less than 5 min

```bash
find . -size +5M
```
Find all files with size greater than 5 Migabytes

```bash
find . -perm 777
```
Find all files with permission is 777

```bash
find . -type f -name "*.jpg" -maxdepth 1
```
Find all images of type `jpg` in the current dirctory and not in subdirctories

```bash
find . -type f -name "*.pyc" -maxdepth 1 -exec rm {} \;
```
Find all files with extension `pyc` and delete them.

```bash
find . -type d -empty
```
Find all empty folders in current dirctory.

```bash
find build -name "*.js" ! -path "./build/external/*"
find build -name "*.js" -not \( -path "./build/external/*" -prune \)
```
Find all js files in build dirctory excluding the `build/external` dirctory.

```bash
find . -name "*.js" ! -path "./test1/*" ! -path "./test2/*"
```
Find js files in the current diectory except the test1 and test2 folders.