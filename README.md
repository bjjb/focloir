Foclóir
=======

> dic·tion·ar·y _n_
> /ˈdikSHəˌnerē
>
> 1. a book that lists the words of a language in alphabetical order and gives
>    their meaning, or that gives the equivalent words in a different language.
> 
> **synonyms**: [lexicon][], [wordbook][], [word list][], [glossary][]

This is a little dictionary app. It runs on the command-line, or as a web
service, with a minamilistic interface. You can hook it up to a database, if
you like, but its primary function is to search the internet dictionaries.
I have it set up like that on [dict.bjjb.org][].

Installation
------------

You need [Ruby][].

`gem install focloir`

Usage
-----

```
$ focloir -h
```

To run the server, you need bundler. Run (from the directory)

```
$ bundle exec rackup
```

License, etc
------------

See the [license][]. It's free.

[Ruby]: http://ruby-lang.org
[lexicon]: http://dict.bjjb.org/lexicon
[wordbook]: http://dict.bjjb.org/wordbook
[word list]: http://dict.bjjb.org/word+list
[glossary]: http://dict.bjjb.org/glossary
[dict.bjjb.org]: http://dict.bjjb.org
[license]: http://github.io/bjjb/focloir/blobs/master/LICENSE.md
