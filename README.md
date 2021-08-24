# FortranUtility

This library contains different modules to make the Fortran more easy to use and similar to other modern languages.

## Download the library

The library can be downloaded by using the command:

```
git clone https://github.com/marcpuigpinos/FortranUtility.git
```

It is also possible to download a zip file from this url: https://github.com/marcpuigpinos/FortranUtility

## Compile the library

### Visual Studio 2019 and Intel Compilers

A Visual Studio 2019 project can be found in [folder](Projects). Uncompress the file VisualStudio2019 and place the solution and project file into the main directory. This project is only tested using the Intel OneApi compilers, that have fully integration with Visual Studio 2019. This method **ONLY works for Windows**. 

The project for the test of the library can be found in this [folder](Tests/FortranUtilityTests/projects).

### Makefile and GNU compilers

This is the more general way to compile the library since GNU compilers are open source and cross-platform. 

## Modules

- [fu_mString](Documentation/fu_mString.md): This module contain all the tools to manage and work strings in Fortran.

