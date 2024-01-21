# Learn perl
## Docs
- [Config Example](https://github.com/schwern/Perl-Critic/blob/master/examples/perlcriticrc)

## Run
```
perl main.pl
```
to run a perl file called main.pl

## Perl manager
```
perlbrew use 5.27.11
```
Install package manager
```
perlbrew install-cpanm
```
then install packages like this.
```
cpanm CGI::simple
```

## How to install packages.
Cpan
```
cpan Perl::Critic
```

## Linting
### Install the linting package
```bash
cpanm Perl::Critic
```

### Check if linting package installed
```bash
perlcritic --version
```

### Lint file
```bash
perlcritic hello.pl
```
Lint all the files in a directory.
```bash
perlcritic .
```

### Configure linter
Create a file called `.perlcriticrc`.
[Read more](https://metacpan.org/pod/Perl::Critic#CONFIGURATION)
You can populate the file with the following.
```
severity  = 3                                     #Integer or named level
only      = 1                                     #Zero or One
force     = 0                                     #Zero or One
verbose   = 4                                     #Integer or format spec
top       = 50                                    #A positive integer
theme     = (pbp || security) && bugs             #A theme expression
include   = NamingConventions ClassHierarchies    #Space-delimited list
# exclude:  Directs Perl::Critic to never apply Policies with names that
# match one of the patterns.  To specify multiple patterns, separate them
# with whitespace.  Do not put quotes around anything.
exclude   = Variables  Modules::RequirePackage    #Space-delimited list
criticism-fatal = 1                               #Zero or One
color     = 1                                     #Zero or One
allow-unsafe = 1                                  #Zero or One
pager     = less                                  #pager to pipe output to
```
Leave out the comments above, they serve to guide on possible values.
