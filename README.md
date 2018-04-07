# Replacing-a-word-in-a-file-with-another-word
The program replaces a chosen word in a file and replaces it/them with another word.


### Compile
```bash
$ lex 7a.l
$ cc lex.yy.c -ll
```


### Run
```bash
./a.out

Enter the word you need to replace!
TNV  

Enter the word you wish to replace 'TNV' with
madhav

ERROR : TNV doesn't exist in the file
```

### Run
```bash
./a.out 

Enter the word you need to replace!
Hello 

Enter the word you wish to replace 'Hello' with
hi

Success!
```
