hello_trema
===========

[![Build Status](http://img.shields.io/travis/trema/hello_trema/develop.svg?style=flat)][travis]
[![Coverage Status](http://img.shields.io/coveralls/trema/hello_trema/develop.svg?style=flat)][coveralls]
[![Code Climate](http://img.shields.io/codeclimate/github/trema/hello_trema.svg?style=flat)][codeclimate]
[![Dependency Status](http://img.shields.io/gemnasium/trema/hello_trema.svg?style=flat)][gemnasium]
[![Inline docs](http://inch-ci.org/github/trema/hello_trema.png?branch=develop)][inch]

The "Hello Trema!" example is one of the simplest OpenFlow controller
implementation. The basic functionality of this controller is to
establish an OpenFlow channel connection with an OpenFlow switch and
output the `"Hello 0xabc! (switch's datapath ID)"` message.

This example demonstrates a minimum template for Trema applications
written in Ruby. Hence, it's a good starting point to learn about
Trema programming.

[travis]: http://travis-ci.org/trema/hello_trema
[coveralls]: https://coveralls.io/r/trema/hello_trema
[codeclimate]: https://codeclimate.com/github/trema/hello_trema
[gemnasium]: https://gemnasium.com/trema/hello_trema
[inch]: http://inch-ci.org/github/trema/hello_trema


## 課題

HelloTrema (`./lib/hello_trema.rb`)  を改造して次の 2 つの機能を実装しよう。

### その1

スイッチを停止したら次のメッセージを表示するようにしてみよう:

```
Bye 0xabc
```

* ヒント: [スイッチの停止方法](https://relishapp.com/trema/trema/docs/handlers/switch-disconnected-handler)

### その2

HelloTrema が起動したら次のメッセージを表示するようにしてみよう:

```
HelloTrema started.
```

ただし、次の回答ではダメ (なぜダメか？も考えよう)

```ruby
class HelloTrema < Trema::Controller
  def start(_args)
    logger.info 'HelloTrema started.'
  end
  ...
```

* ヒント 1: [Object#class メソッド](http://ruby-doc.org/core-2.0.0/Object.html#method-i-class)
* ヒント 2: [Module#name メソッド](http://ruby-doc.org/core-2.0.0/Module.html#method-i-name)
