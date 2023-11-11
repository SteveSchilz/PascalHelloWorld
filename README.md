# PASCAL HELLO WORLD

**IDE:** None
**COMPILER:  [Free Pascal Compiler]()**



# Introduction - Pascal / Delphi: The language, and the original "Forms'" environment.

**tldr:**

**Pascal** is a functional compiled programming language language (that later received some OO syntax) designed by Niklaus Wirth as a high performance, cross platform teaching language. 

This repo contains some simple command line "hello world" programs that demonstrate many features of the languate. 

**Why Pascal**

For me, there was a job offer, that's why ;).  There are a few people still using the language though, mostly companies that have a loooong history with it.  According to the [Tiobe index](https://www.tiobe.com/tiobe-index/,) Delphi/Object Pascal has about a 1.14% market share for programming languages.  So, you probably shouldn't bother to learn it unless there's a job wating for you somewhere.   Still, it's a decent language, and it has it's fans.

# Pascal History 

Ah, you remember Pascal from College in the 80s?  Me too.

You thought it was a dead language?  Me Too. 

Pascal was uside in the much-loved the Borland IDE called "Delphi", which was among the first to provide "Drag and Drop" development of forms.  It was great for building CRUD database applications, and quite widely used. 

Surprisingly, there ar a quite good OpenSource Compiler and IDE that are actively being developed in 2023.  It provides a relatively simple, functional and OO language, along with a "Forms" environment similar to Borland Delphi. (Which is also still alive, and now owned by [embarcadero](https://www.embarcadero.com/))



# Hello World! 

My hello world repos consist command line programs, that are designed to be compiled from the command line without requiring an IDE.  There are two programs

* **hello** = true hello world 
* **helloCrashCourse:** attempts to demonstrate the basic/common language features in one file, such as data types, loops, function calls and so forth. It is designed to give you a quickstart in the language 



# Tools Installation

## Lazarus IDE: OSX

Lazarus is a free, open source IDE that includes the free pascal compiler which
provides an object oriented 'Forms' environment, similar to Delphi (or WinForms).

Lazarus also installs the command line Free Pascal Compiler, Which we are using here.

**Order of Steps is important!**

1. Visit the [Lazurus](https://www.lazarus-ide.org/) download page.
2. Download 3 packages (IDE, Free Pascal Compiler, Free Pascal Source)
3. Followed Installation steps at [Wiki.freepascal.org/installing_Lazarus_on_macOS](https://wiki.freepascal.org/Installing_Lazarus_on_macOS)

   * Installed FPC Source v3.2.2 (1.1GB!)

   * Installed FPC Compiler v3.2.2 (340MB)

   * Installed Lazarus IDE v3.0RC1 (!-It crashes ;) 


**Verifying Installation: OSX/Linux** 

By inspection, may not be complete, but enough for you to know you did it right. 

**Compiler** 

```
  /usr/local/bin/fpc
  /usr/local/lib/fpc/3.2.2
  /usr/local/lib/fpc/lexyacc
```
**Source**

```
  /usr/local/share/fpcsrc/*        // .pas,  .pp files 
```



---

## Build And Run Steps

### OSX/Linux: 

From the command Line:

```
# Basic Hello World
% cd {projectFolder}
% fpc hello.pas
% ./hello

# Crash Course Demonstrates Language Features
% fpc helloCrashCourse
% ./helloCrashCourse
```



# References

* [Wikipedia-Pascal(programming language)](https://en.wikipedia.org/wiki/Pascal_(programming_language))
* The [Lazauris IDE](https://www.lazarus-ide.org/) - "Forms" type IDE, similar to Delphi, TurboC, or WinForms
* [FreePascal.org](https://www.freepascal.org/) - The Open Source Compiler 
