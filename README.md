# CodingPiratesQA
### QA for CP internal software development
---
##### Testing forenings_medlemmer
#### Prerequisites:

* Docker.
* A running version of the members system.

#### Configuration:

Setting the address for the server to be tested, is done through the file `object_repository.rb`,
by setting an variable called `$address`. By default the address is set to ´127.0.0.1:8000´.
* `$address = ip|domain|hostname[:port]`

#### Running tests:
In the folder `forenings_medlemmer`.
Execute the file `run-tests.sh`.
