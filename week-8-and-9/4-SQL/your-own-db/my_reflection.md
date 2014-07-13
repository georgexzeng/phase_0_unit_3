The actual creation of the database was simple enough.  I learned three things:

1. in order for two tables to be fully joined, it's best that they have corresponding ids
2. sqlite has some funky recognition of single quote characters - i.e. it doesn't do a very good job of recognizing them at all
3. there are some really neat ways of inputting lots of data into sqlite at the same time