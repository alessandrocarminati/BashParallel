## BashParallel
This simple script tries to solve a common problem you have when you administer a system: 

* A list of items (files, URLs, etc.) 
* You must perform a task on each.
* Tasks are not related to each other.

Using these scripts, you can spawn a given number of concurrent processes, where each process has as argument an item of the list.

The script takes care not to spawn more than the specified amount of concurrent process and consume all the items on the list.

## Usage
``./main.sh  <no tasks> <File list>``

**task.sh** is the file where you want to put the logic of the task you need to solve.
