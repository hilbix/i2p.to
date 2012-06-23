*Currently terribly incomplete*

Anatomy of i2p.to
=================

This here is the anatomy of http://i2p.to/ which offers a public proxy into the I2P network.
For more on I2P please see http://i2p2.de/


How to put this together
------------------------

It probably is not easy to put all this pieces together to create something similar.
Currently the code of the inProxy i2p.to is a huge pile of mess, it started as a quick and dirty experiment with fast written ugly code, spreaded over the server on various nonobvious places, written in different and often quite ugly languages, with no real plan in mind.  The only thing known when I started it was that I wanted to fix the problems after they show up when I find some time, and that it, by design, was not supposed to run just on a single machine, but to spread over several machines and infect them with the same programming style.

Well, after some years now I can say, this plan did not hold.  It became even more worse than I ever expected.  What you see here is an attempt to bundle all the parts together at one place (Github) to get some oversight over all this mess.  Expect the worst.  And multiply this a 1000 times.  You have been warned.

To checkout all the pieces do this:
```bash
git clone https://github.com/hilbix/i2p.to
cd i2p.to
git submodule init
git submodule update
```

Now you have all the pieces, you can try to glue it all together.  But don't expect it will be easy.

BTW:

- Most pieces are missing today.  But, eventually, I find some time to add one or the other.
- This repository here is to - perhaps - add some documentation or other hints.  Currently these are missing, too.
- All the other pieces will be left alone, that is, they will not be altered to get better readable.


How to create an I2P inproxy
----------------------------

If you think to create something similar to i2p.to, there are following ways:

- Don't do it yourself.  Instead just add some proxy into I2P (this is a bare Apache setup) and let me add this to the round robin DNS of i2p.to.  The setup of i2p.to is able to scale this way and distribute the load to other gateways by basic Internet methods.

- Or try to learn what you find here and start from scratch.  Try not to create such a mess again and fill it into some better structure.

- Or clone this here and .. die in despair, as I probably cannot help you much.

Note that according to my FAQ the domain i2p.to will be dedicated to the I2P project in case something evil happens to me.  And no, I cannot give you a shell on my server such that you can help me out when I have no time.



How to contact me, Tino, the source of all this mess
----------------------------------------------------

It's not easy to reach me the usual way.  Usually I am not at home, and I hate handing out the number of my mobile.  I stopped reading eMail for years now because it is drowned by SPAM.  Not the usual one, this is handled by Google Mail's SPAM filter quite effectively.  I am talking of thousands of mails my servers send to me each day.  Having no time to fix that I don't expect to change in this decade.  At least I have some life outside the Internet, too.  Quite few, but there is some.

So to reach me the best way is to use my pager. It's a crude thing but works.  It is at

https://hydra.geht.net/pager.php

If you send mail to webmaster@scylla-charybis.com I eventually read your mail one day.  But don't expect this to be before the famous 32 bit unix timestamp overflow in 2038.  I am **not** kidding. 

-Tino
