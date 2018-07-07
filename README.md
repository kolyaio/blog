# blog
This is a little project that I trying to build a blog using the amber framework which I discovered recently and I found it lovely. Currently the project's purpose is to learn more about the framework and maybe even develop my own blog ( That I'll actually would update LOL). 

And by the way sorry for the unoriginal name, I will think about it later, first I need it to be functional. 

[![Amber Framework](https://img.shields.io/badge/using-amber_framework-orange.svg)](https://amberframework.org/)

## Getting Started

These instructions will get a copy of this project running on your machine for development and testing purposes.

Please see [deployment](https://docs.amberframework.org/amber/deployment) for notes on deploying the project in production.

## Prerequisites

This project requires [Crystal](https://crystal-lang.org/) ([installation guide](https://crystal-lang.org/docs/installation/)).

## Development

To start your Amber server:

1. Install dependencies with `shards install`
2. Build executables with `shards build`
3. Create and migrate your database with `bin/amber db create migrate`. Also see [creating the database](https://docs.amberframework.org/amber/guides/create-new-app#creating-the-database).
4. Start Amber server with `bin/amber watch`

Now you can visit http://localhost:3000/ from your browser.

Getting an error message you need help decoding? Check the [Amber troubleshooting guide](https://docs.amberframework.org/amber/troubleshooting), post a [tagged message on Stack Overflow](https://stackoverflow.com/questions/tagged/amber-framework), or visit [Amber on Gitter](https://gitter.im/amberframework/amber).

Using Docker? Please check [Amber Docker guides](https://docs.amberframework.org/amber/guides/docker).

## Tests

To run the test suite:

```
crystal spec
```

## Contributing

1. Fork it ( https://github.com/your-github-user/blog/fork )
2. Create your feature branch ( `git checkout -b my-new-feature` )
3. Commit your changes ( `git commit -am 'Add some feature'` )
4. Push to the branch ( `git push origin my-new-feature` )
5. Create a new Pull Request

## Contributors

- [kolyaio](https://github.com/kolyaio) Nikolai Ilushko - creator, maintainer
