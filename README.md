N2O Remote Protocol
===================

Due to multiple requests this project was started to provide
robust Protocol Relay for writing N2O applications in other languages.
Sponsored languages are: Perl, JavaScript, Haskell, C/C++.

Architecture
------------

<img src="http://5ht.co/img/N2O-REMOTE.svg" width=600>

Sample Node.js N2O Application
------------------------------

```
  var index = match({

      'init' : function () {
          wf.reg(this,sid,'room'); },

      '["chat",msg]' : function (msg) {
          wf.send(this.sid,'room',
              tuple(atom('client'),tuple(bin(this.sid),bin(msg))))); }

      '["client",[sid,msg]]' : function (sid,msg) {
          wf.insert_bottom(this.sid,"history",""+sid+": "+msg+""); },

  });
```

Run
---

```
$ mad dep com pla rep
```

Credits
-------

* Maxim Sokhatsky
* Andy Melnikov

OM A HUM
