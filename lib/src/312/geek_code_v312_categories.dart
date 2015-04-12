// Copyright (c) 2015, Meshulam Silk (moomoohk@ymail.com). All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of geek_code.v312;

/**
 * Builds the Dress category.
 *
 * See: [DressGeekCodeCategoryBuilder] and [DressGeekCodeCategory].
 */
final DressGeekCodeCategoryBuilder d = getBuilder("d") as DressGeekCodeCategoryBuilder;

/**
 * Builds the Shape category.
 *
 * See: [ShapeGeekCodeCategoryBuilder] and [ShapeGeekCodeCategory].
 */
final ShapeGeekCodeCategoryBuilder s = getBuilder("s") as ShapeGeekCodeCategoryBuilder;

/**
 * Builds the Age category.
 *
 * Original documentation:
 *
 *     The only way to become a true geek is through practice and experience. To this end, your age becomes an important part of your geekiness. Use the qualifiers below to show your age (in Terran years). Also, please use BASE 10 numbers.
 *
 *     a+++
 *      60 and up
 *     a++
 *      50-59
 *     a+
 *      40-49
 *     a
 *      30-39
 *     a-
 *      25-29
 *     a--
 *      20-24
 *     a---
 *      15-19
 *     a----
 *      10-14
 *     a-----
 *      9 and under (Geek in training?)
 *     a?
 *      immortal
 *     !a
 *      it's none of your business how old I am
 *
 *     In addition, if you wish to give your exact age, you can place the number after the 'a' identifier. For example: a42
 */
final AgeGeekCodeCategoryBuilder a = getBuilder("a") as AgeGeekCodeCategoryBuilder;

/**
 * Builds the Computers category.
 *
 * Original documentation:
 *
 *     Most geeks identify themselves by their use of computers and computer networks. In order to quantify your geekiness level on computers, consult the following (consider the term 'computers' synonymous with 'computer network'). This category represents "general" computer aptitude. Categories below will get into specifics.
 *
 *     C++++
 *      I'll be first in line to get the new cybernetic interface installed into my skull.
 *     C+++
 *      You mean there is life outside of Internet? You're shittin' me! I haven't dragged myself to class in weeks.
 *     C++
 *      Computers are a large part of my existence. When I get up in the morning, the first thing I do is log myself in. I play games or mud on weekends, but still manage to stay off of academic probation.
 *     C+
 *      Computers are fun and I enjoy using them. I play a mean game of DOOM! and can use a word processor without resorting to the manual too often. I know that a 3.5" disk is not a hard disk. I also know that when it says 'press any key to continue', I don't have to look for a key labeled 'ANY'.
 *     C
 *      Computers are a tool, nothing more. I use it when it serves my purpose.
 *     C-
 *      Anything more complicated than my calculator and I'm screwed.
 *     C--
 *      Where's the on switch?
 *     C---
 *      If you even mention computers, I will rip your head off!
 */
final GenericGeekCodeCategoryBuilder C = getBuilder("C") as GenericGeekCodeCategoryBuilder;

/**
 * Builds the Unix category.
 *
 * See: [UnixGeekCodeCategoryBuilder] and [UnixGeekCodeCategory].
 */
final UnixGeekCodeCategoryBuilder U = getBuilder("U") as UnixGeekCodeCategoryBuilder;

/**
 * Builds the Perl category.
 *
 * Original documentation:
 *
 *     If you enjoy at least U++ status you have to know about Perl, so you might as well rate yourself in this sub-category. Non-Unix geeks don't know what they're missing.
 *
 *     P+++++
 *      I am Larry Wall, Tom Christiansen, or Randal Schwartz.
 *     P++++
 *      I don't write Perl, I speak it. Perl has superseded all other programming languages. I firmly believe that all programs can be reduced to a Perl one-liner. I use Perl to achieve U+++ status.
 *     P+++
 *      Perl is a very powerful programming tool. Not only do I no longer write shell scripts, I also no longer use awk or sed. I use Perl for all programs of less than a thousand lines.
 *     P++
 *      Perl is a powerful programming tool. I don't write shell scripts anymore because I write them in Perl.
 *     P+
 *      I know of Perl. I like Perl. I just haven't learned much Perl, but it is on my agenda.
 *     P
 *      I know Perl exists, but that's all.
 *     P-
 *      What's Perl got that awk and sed don't have?
 *     P--
 *      Perl users are sick, twisted programmers who are just showing off.
 *     P---
 *      Perl combines the power of sh, the clarity of sed, and the performance of awk with the simplicity of C. It should be banned.
 *     P!
 *      Our paranoid admin won't let us install Perl! Says it's a "hacking tool".
 */
final GenericGeekCodeCategoryBuilder P = getBuilder("P") as GenericGeekCodeCategoryBuilder;

/**
 * Builds the Linux category.
 *
 * Original documentation:
 *
 *     Linux is a hacker-written operating system virtually identical to Unix. It was written for and continues to run on your standard 386/486/Pentium PC, but has also been ported to other systems. Because it is still a young OS, and because it is continually evolving from hacker changes and support, it is important that the geek list his Linux ability.
 *
 *     L+++++
 *      I am Linus, grovel before me.
 *     L++++
 *      I am a Linux wizard. I munch C code for breakfast and have enough room left over for a kernel debugging. I have so many patches installed that I lost track about ten versions ago. Linux newbies consider me a net.god.
 *     L+++
 *      I use Linux exclusively on my system. I monitor comp.os.linux.* and even answer questions sometimes.
 *     L++
 *      I use Linux ALMOST exclusively on my system. I've given up trying to achieve Linux.God status, but welcome the OS as a replacement for DOS. I only boot to DOS to play games.
 *     L+
 *      I've managed to get Linux installed and even used it a few times. It seems like it is just another OS.
 *     L
 *      I know what Linux is, but that's about all
 *     L-
 *      I have no desire to use Linux and frankly don't give a rats patootie about it. There are other, better, operating systems out there. Like Mac, DOS, or Amiga-OS. Or, better yet even, would be another free Unix OS like FreeBSD.
 *     L--
 *      Unix sucks. Because Linux = Unix. Linux Sucks. I worship Bill Gates.
 *     L---
 *      I am Bill Gates.
 */
final GenericGeekCodeCategoryBuilder L = getBuilder("L") as GenericGeekCodeCategoryBuilder;

/**
 * Builds the Emacs category.
 *
 * Original documentation:
 *
 *     GNU Emacs is the do-all be-everything editor/operating system available for just about every computer architecture out there.
 *
 *     E+++
 *      Emacs is my login shell!! M-x doctor is my psychologist! I use emacs to control my TV and toaster oven! All you vi people don't know what you're missing! I read alt.religion.emacs, alt.sex.emacs, and comp.os.emacs.
 *     E++
 *      I know and use elisp regularly!
 *     E+
 *      Emacs is great! I read my mail and news with it!
 *     E
 *      Yeah, I know what emacs is, and use it as my regular editor.
 *     E-
 *      Emacs is too big and bloated for my tastes
 *     E--
 *      Emacs is just a fancy word processor
 *     E---
 *      Emacs sucks! vi forever!!!
 *     E----
 *      Emacs sucks! pico forever!!!
 */
final GenericGeekCodeCategoryBuilder E = getBuilder("E") as GenericGeekCodeCategoryBuilder;

/**
 * Builds the Web category.
 *
 * Original documentation:
 *
 *     It's relatively new. It's little understood. Everybody's doing it. How much of a web-surfer are you?
 *
 *     W+++
 *      I am a WebMaster . Don't even think about trying to view my homepage without the latest version of Netscape. When I'm not on my normal net connection, I surf the web using my Newton and a cellular modem.
 *     W++
 *      I have a homepage. I surf daily. My homepage is advertised in my .signature.
 *     W+
 *      I have the latest version of Netscape, and wander the web only when there's something specific I'm looking for.
 *     W
 *      I have a browser and a connection. Occasionally I'll use them.
 *     W-
 *      The web is really a pain. Life was so much easier when you could transfer information by simple ASCII. Now everyone won't even consider your ideas unless you spiff them up with bandwidth-consuming pictures and pointless information links.
 *     W--
 *      A pox on the Web! It wastes time and bandwidth and just gives the uneducated morons a reason to clutter the Internet.
 */
final GenericGeekCodeCategoryBuilder W = getBuilder("W") as GenericGeekCodeCategoryBuilder;

/**
 * Builds the USENET category
 *
 * Original documentation:
 *
 *     Usenet, a global collection of flaming opinions and senseless babble, was designed as a way to eat up precious spool space on a system's hard drive. It also is a way for people to distribute pornography.
 *
 *     N++++
 *      I am Tim Pierce
 *     N+++
 *      I read so many newsgroups that the next batch of news comes in before I finish reading the last batch, and I have to read for about 2 hours straight before I'm caught up on the morning's news. Then there's the afternoon...
 *     N++
 *      I read all the news in a select handful of groups.
 *     N+
 *      I read news recreationally when I have some time to kill.
 *     N
 *      Usenet News? Sure, I read that once
 *     N-
 *      News is a waste of my time and I avoid it completely
 *     N--
 *      News sucks! 'Nuff said.
 *     N---
 *      I work for Time Magazine.
 *     N----
 *      I am a Scientologist.
 *     N*
 *      All I do is read news
 */
final ExtremeGenericGeekCodeCategoryBuilder N = getBuilder("N") as ExtremeGenericGeekCodeCategoryBuilder;

/**
 * Builds the USENET Oracle category.
 *
 * Original documentation:
 *
 *     (Info taken from the Usenet Oracle Help File)
 *     Throughout the history of mankind, there have been many Oracles who have been consulted by many mortals, and some immortals. The great Hercules was told by the Gelphic Oracle to serve Eurystheus, king of Mycenae, for twelve years to atone for the murder of his own children. It was the Oracle of Ammon who told King Cepheus to chain his daughter Andromeda to the rocks of jappa to appease the terrible sea monster that was ravaging the coasts. That solution was never tested, though, as Perseus saved the girl in the nick of time.
 *     With the advent of the electronic age, and expecially high-speed e-mail communication, the spirit of the Oracles found a new outlet, and we now recognize another great Oracle, the Usenet Oracle.
 *
 *     For more information, check out the newsgroups rec.humor.oracle and rec.humor.oracle.d or the FTP archives at cs.indiana.edu:/pub/oracle. Additional information and instructions can be found by sending an e-mail message with the subject of 'help' to oracle@cs.indiana.edu.
 *
 *     o+++++
 *      I am Steve Kinzler
 *     o++++
 *      I am an active Priest
 *     o+++
 *      I was a Priest, but have retired.
 *     o++
 *      I have made the Best Of Oracularities.
 *     o+
 *      I have been incarnated at least once.
 *     o
 *      I've submitted a question, but it has never been incarnated.
 *     o-
 *      I sent my question to the wrong group and got flamed.
 *     o--
 *      Who needs answers from a bunch of geeks anyhow?
 */
final GenericGeekCodeCategoryBuilder o = getBuilder("o") as GenericGeekCodeCategoryBuilder;

/**
 * Builds the Kibo category.
 *
 * Original documentation:
 *
 *     Kibo is. That is all that can be said. If you don't understand, read alt.religion.kibology
 *
 *     K++++++
 *      I am Kibo
 *     K+++++
 *      I've had sex with Kibo
 *     K++++
 *      I've met Kibo
 *     K+++
 *      I've gotten mail from Kibo
 *     K++
 *      I've read Kibo
 *     K+
 *      I like Kibo
 *     K
 *      I know who Kibo is
 *     K-
 *      I don't know who Kibo is
 *     K--
 *      I dislike Kibo
 *     K---
 *      I am currently hunting Kibo down with the intent of ripping his still-beating heart out of his chest and showing it to him as he dies
 *     K----
 *      I am Xibo
 */
final GenericGeekCodeCategoryBuilder K = getBuilder("K") as GenericGeekCodeCategoryBuilder;

/**
 * Builds the Microsoft Windows category.
 *
 * Original documentation:
 *
 *     A good many geeks suffer through the use of various versions of Microsoft's Windows running on or as a replacement for DOS. Rate your Windows Geekiness.
 *
 *     w+++++
 *      I am Bill Gates
 *     w++++
 *      I have Windows, Windows 95, Windows NT, and Windows NT Advanced Server all running on my SMP RISC machine. I haven't seen daylight in six months.
 *     w+++
 *      I am a MS Windows programming god. I wrote a VxD driver to allow MS Windows and DOS to share the use of my waffle iron. P.S. Unix sux.
 *     w++
 *      I write MS Windows programs in C and think about using C++ someday. I've written at least one DLL.
 *     w+
 *      I have installed my own custom sounds, wallpaper, and screen savers so my PC walks and talks like a fun house. Oh yeah, I have a hundred TrueType(tm) fonts that I've installed but never used. I never lose Minesweeper and Solitaire
 *     w
 *      Ok, so I use MS Windows, I don't have to like it.
 *     w-
 *      I'm still trying to install MS Windows and have at least one peripheral that never works right
 *     w--
 *      MS Windows is a joke operating system. Hell, it's not even an operating system. NT is Not Tough enough for me either. 95 is how may times it will crash an hour.
 *     w---
 *      Windows has set back the computing industry by at least 10 years. Bill Gates should be drawn, quartered, hung, shot, poisoned, disembowelled, and then REALLY hurt.
 */
final GenericGeekCodeCategoryBuilder w = getBuilder("w") as GenericGeekCodeCategoryBuilder;

/**
 * Builds the OS/2 category.
 *
 * Original documentation:
 *
 *     The operating system that looks a lot like Windows, acts a lot like Windows, but is much better than Windows.
 *
 *     O+++
 *      I live, eat and breathe OS/2. All of my hard drives are HPFS. I am the Anti-Gates.
 *     O++
 *      I use OS/2 for all my computing needs. I use some DOS and Windows programs, but run them under OS/2. If the program won't run under OS/2, then obviously I don't need it.
 *     O+
 *      I keep a DOS partition on my hard drive "just in case". I'm afraid to try HPFS.
 *     O
 *      I finally managed to get OS/2 installed but wasn't too terribly impressed.
 *     O-
 *      Tried it, didn't like it.
 *     O--
 *      I can't even get the thing to install!
 *     O---
 *      Windows RULES!!! Long live Bill Gates. (See w++++)
 *     O----
 *      I am Bill Gates of Borg. OS/2 is irrelevant.
 */
final GenericGeekCodeCategoryBuilder O = getBuilder("O") as GenericGeekCodeCategoryBuilder;

/**
 * Builds the Macintosh category.
 *
 * Original documentation:
 *
 *     Many geeks have abandoned the character-based computer altogether and moved over to the Macintosh. It in important to give notification of your Mac rating.
 *
 *     M++
 *      I am a Mac guru. Anything those DOS putzes and Unix nerds can do, I can do better, and if not, I'll write the damn software to do it.
 *     M+
 *      A Mac has it's uses and I use it quite often.
 *     M
 *      I use a Mac, but I'm pretty indifferent about it.
 *     M-
 *      Macs suck. All real geeks have a character prompt.
 *     M--
 *      Macs do more than suck. They make a user stupid by allowing them to use the system without knowing what they are doing. Mac weenies have lower IQs than the fuzz in my navel.
 */
final GenericGeekCodeCategoryBuilder M = getBuilder("M") as GenericGeekCodeCategoryBuilder;

/**
 * Builds the VMS
 *
 * Original documentation:
 *
 *     Many geeks use the VMS operating system by DEC for all of their mainframe and network activity.
 *
 *     V+++
 *      I am a VMS sysadmin. I wield far more power than those UNIX admins, because UNIX can be found on any dweeb's desktop. Power through obscurity is my motto.
 *     V++
 *      Unix is a passing fad compared to the real power in the universe, my VMS system.
 *     V+
 *      I tend to like VMS better than Unix
 *     V
 *      I've used VMS.
 *     V-
 *      Unix is much better than VMS for my computing needs.
 *     V--
 *      I would rather smash my head repeatedly into a brick wall than suffer the agony of working with VMS. It's reminiscent of a dead and decaying pile of moose droppings. Unix rules the universe.
 */
final GenericGeekCodeCategoryBuilder V = getBuilder("V") as GenericGeekCodeCategoryBuilder;

/**
 * Builds the Political and Social Issues category.
 *
 * Original documentation:
 *
 *     We live is a society where everyone not only has a right to, but is expected to, whine and complain about everyone else. Rate where, in general, your political views on different social issues fall.
 *
 *     PS+++
 *      Legalize drugs! Abolish the government. "Fuck the draft!"
 *     PS++
 *      I give to liberal causes. I march for gay rights. I'm a card carrying member of the ACLU. Keep abortion safe and legal.
 *     PS+
 *      My whole concept of liberalism is that nobody has the right to tell anybody else what to do, on either side of the political fence. If you don't like it, turn the bloody channel.
 *     PS
 *      I really don't have an opinion; nobody's messing with my freedoms right now.
 *     PS-
 *      Label records! Keep dirty stuff off the TV and the Internet.
 *     PS--
 *      Oppose sex education, abortion rights, gay rights. Rush Limbaugh is my spokesman.
 *     PS---
 *      Repent left-wing sinners and change your wicked evil ways. Buchanan/Robertson in '96.
 */
final GenericGeekCodeCategoryBuilder PS = getBuilder("PS") as GenericGeekCodeCategoryBuilder;

/**
 * Builds the Politics and Economic Issues category.
 *
 * Original documentation:
 *
 *     Social and economic attitudes are seldom on the same side of the political fence. Of course, most geeks don't really care much about economics; having no money left after buying new computer toys.
 *
 *     PE+++
 *      Abolish antitrust legislation. Raise taxes on everyone but the rich so that the money can trickle-down to the masses.
 *     PE++
 *      Keep the government off the backs of businesses. Deregulate as much as possible.
 *     PE+
 *      Balance the budget with spending cuts and an amendment.
 *     PE
 *      Distrust both government and business.
 *     PE-
 *      It's ok to increase government spending, so we can help more poor people. Tax the rich! Cut the defense budget!
 *     PE--
 *      Capitalism is evil! Government should provide the services we really need. Nobody should be rich.
 */
final GenericGeekCodeCategoryBuilder PE = getBuilder("PE") as GenericGeekCodeCategoryBuilder;

/**
 * Builds the Cypherpunks category.
 *
 * Original documentation:
 *
 *     With the birth of the overused buzzword "The Information Superhighway", concerns over privacy from evil governmental bad-guys{tm} has led to the formation of of an unofficial, loosely organized band of civil libertarians who spend much of their time discussing how to ensure privacy in the information future. This group is known by some as "cypherpunks" (by others, as anarchistic subversives). To this end, tell us how punkish you are.
 *
 *     Y+++
 *      I am T.C. May
 *     Y++
 *      I am on the cypherpunks mailing list and active around Usenet. I never miss an opportunity to talk about the evils of Clipper and ITAR and the NSA. Orwell's 1984 is more than a story, it is a warning to our's and future generations. I'm a member of the EFF.
 *     Y+
 *      I have an interest and concern in privacy issues, but in reality I am not really all that active or vocal.
 *     Y
 *      I'm pretty indifferent on the whole issue.
 *     Y-
 *      It seems to me that all of these concerns are a little extreme. I mean, the government must be able to protect itself from criminals and the populace from indecent speech.
 *     Y--
 *      Get a life. The only people that need this kind of protection are people with something to hide. I think cypherpunks are just a little paranoid.
 *     Y---
 *      I am L. Detweiler.
 */
final GenericGeekCodeCategoryBuilder Y = getBuilder("Y") as GenericGeekCodeCategoryBuilder;

/**
 * Builds the PGP category.
 *
 * Original documentation:
 *
 *     Pretty Good Privacy (aka PGP) is a program available on many platforms that will encrypt files so that prying eyes (particularly governmental) can't look at them.
 *
 *     PGP++++
 *      I am Philip Zimmerman
 *     PGP+++
 *      I don't send or answer mail that is not encrypted, or at the very least signed. If you are reading this without decrypting it first, something is wrong. IT DIDN'T COME FROM ME!
 *     PGP++
 *      I have the most recent version and use it regularly
 *     PGP+
 *      "Finger me for my public key"
 *     PGP
 *      I've used it, but stopped long ago.
 *     PGP-
 *      I don't have anything to hide.
 *     PGP--
 *      I feel that the glory of the Internet is in the anarchic, trusting environment that so nurtures the exchange of information. Encryption just bogs that down.
 *     PGP---
 *      If you support encryption on the Internet, you must be a drug dealer or terrorist or something like that.
 *     PGP----
 *      Oh, here is something you all can use that is better (insert Clipper here).
 */
final GenericGeekCodeCategoryBuilder PGP = getBuilder("PGP") as GenericGeekCodeCategoryBuilder;

/**
 * Builds the Star Trek category.
 *
 * Original documentation:
 *
 *     Most geeks have an undeniable love for the Star Trek television show (in any of its different incarnations). Because GEEK is often synonymous with TREKKIE (real geeks aren't so anal as to label themselves TREKKER), it is important that all geeks list their Trek rating.
 *
 *     t+++
 *      It's not just a TV show, it's a religion. I know all about warp field dynamics and the principles behind the transporter. I have memorized the TECH manual. I speak Klingon. I go to cons with Vulcan ears on. I have no life.
 *     t++
 *      It's the best show around. I have all the episodes and the movies on tape and can quote entire scenes verbatim. I've built a few of the model kits too. But you'll never catch me at one of those conventions. Those people are kooks.
 *     t+
 *      It's a damn fine TV show and is one of the only things good on television any more.
 *     t
 *      It's just another TV show
 *     t-
 *      Maybe it is just me, but I have no idea what the big deal with Star Trek is. Perhaps I'm missing something but I just think it is bad drama.
 *     t--
 *      Star Trek is just another Space Opera. William Shatner isn't an actor, he's a poser! And what's with this Jean-Luc Picard? A Frenchman with a British accent? Come on. Isn't Voyager just a rehash of Lost in Space? Has Sisko even breathed in the last two seasons? Come on. I'd only watch this show if my remote control broke.
 *     t---
 *      Star Trek SUCKS! It is the worst crap I have ever seen! Hey, all you trekkies out there, GET A LIFE! (William Shatner is a t---)
 *     t*
 *      I identify with Barclay, the greatest of the Trek Geeks.
 */
final ExtremeGenericGeekCodeCategoryBuilder t = getBuilder("t") as ExtremeGenericGeekCodeCategoryBuilder;

/**
 * Builds the Babylon 5 category.
 *
 * Original documentation:
 *
 *     For many years, Sci-Fi geeks have wished for a television show that would overcome the limitations of Star Trek. For many, a show called Babylon 5 has met that demand, with a deep storyline, exciting characters and state-of-the-art computer generated effects.
 *
 *     5++++
 *      I am J. Michael Straczynski
 *     5+++
 *      I am a True Worshipper of the Church of Joe who lives eats breathes and thinks Babylon 5, and has Evil thoughts about stealing Joe's videotape archives just to see episodes earlier. I am planning to break into the bank and steal the triple-encoded synopsis of the 5-year arc.
 *     5++
 *      Finally a show that shows what a real future would look like. None of this Picardian "Let's talk about it and be friends" crap. And what's this? We finally get to see a bathroom! Over on that Enterprise, they've been holding it for over seven years!
 *     5+
 *      Babylon 5 certainly presents a fresh perspective in the Sci-Fi universe. I watch it weekly.
 *     5
 *      I've seen it, I am pretty indifferent to it.
 *     5-
 *      This show is sub-par. The acting is wooden, the special effects are obviously poor quality. In general, it seems like a very cheap Star Trek ripoff.
 *     5--
 *      You call this Sci-Fi? That is such a load of crap! This show is just a soap with bad actors, piss-poor effects, and lame storylines. Puh-leese.
 */
final GenericGeekCodeCategoryBuilder BABYLON5 = getBuilder("5") as GenericGeekCodeCategoryBuilder;

/**
 * Builds the X-Files category.
 *
 * Original documentation:
 *
 *     The Fox Network's Friday evening show The X-Files has become the staple of Friday geekhood. Any show that has aliens, governmental conspiracies, aliens, psychic powers, aliens, and other weird stuff is, by definition, a geeky show.
 *
 *     X++++
 *      I am Chris Carter
 *     X+++
 *      This is the BEST show on TV, and it's about time. I've seen everything David Duchovny and Gillian Anderson have ever done that been recorded and I'm a loyal Duchovny/ Gillian Anderson fan. I've Converted at least 10 people. I have every episode at SP, debate the fine details on-line, and have a credit for at least 2 YAXAs.
 *     X++
 *      This is one of the better shows I've seen. I wish I'd taped everything from the start at SP, because I'm wearing out my EP tapes. I'll periodically debate online. I've Converted at least 5 people. I've gotten a YAXA.
 *     X+
 *      I've Converted my family and watch the show when I remember. It's really kinda fun.
 *     X
 *      Ho hum. Just another Fox show.
 *     X-
 *      It's ok if you like paranoia and conspiracy stories, but, let's face it, it's crap.
 *     X--
 *      If I wanted to watch this kind of stuff, I'd talk to Oliver Stone
 */
final GenericGeekCodeCategoryBuilder X = getBuilder("X") as GenericGeekCodeCategoryBuilder;

/**
 * Builds the Role Playing category.
 *
 * Original documentation:
 *
 *     Role-playing games such as Dungeons & Dragons have long been a part of the traditional geek life. Because geeks often become so involved in their role-playing that they lose touch with reality, include one of the following role-playing codes.
 *
 *     R+++
 *      I've written and published my own gaming materials.
 *     R++
 *      There is no life outside the role of the die. I know all of piddly rules of (chosen game). _MY_ own warped rules scare the rest of the players.
 *     R+
 *      I've got my weekly sessions set up and a character that I know better than I know myself.
 *     R
 *      Role-Playing? That's just something to do to kill a Saturday afternoon
 *     R-
 *      Gosh, what an utter waste of time!
 *     R--
 *      Role-Players are instruments of pure evil.
 *     R---
 *      I work for T$R.
 *     R*
 *      I thought life WAS role-playing?
 */
final ExtremeGenericGeekCodeCategoryBuilder R = getBuilder("R") as ExtremeGenericGeekCodeCategoryBuilder;

/**
 * Builds the Television category.
 *
 * Original documentation:
 *
 *     Many geeks have lives that revolve around television.
 *
 *     tv+++
 *      There's nothing I can experience "out there" that I can't see coming over my satellite dish. I wish there were MORE channels. I live for the O.J. Trial.
 *     tv++
 *      I just leave the tv on, to make sure I don't miss anything.
 *     tv+
 *      I watch some tv every day.
 *     tv
 *      I watch only the shows that are actually worthwhile, such as those found on PBS.
 *     tv-
 *      I watch tv for the news and 'special programming.'
 *     tv--
 *      I turn my tv on during natural disasters.
 *     !tv
 *      I do not own a television.
 */
final GenericGeekCodeCategoryBuilder tv = getBuilder("tv") as GenericGeekCodeCategoryBuilder;

/**
 * Builds the Books category.
 *
 * Original documentation:
 *
 *     In addition (or maybe on the other hand), many geeks have lives that revolve around books.
 *
 *     b++++
 *      I read a book a day. I have library cards in three states. I have discount cards from every major bookstore. I've ordered books from another country to get my Favorite Author Fix.
 *     b+++
 *      I consume a few books a week as part of a staple diet.
 *     b++
 *      I find the time to get through at least one new book a month.
 *     b+
 *      I enjoy reading, but don't get the time very often.
 *     b
 *      I read the newspaper and the occasional book.
 *     b-
 *      I read when there is no other way to get the information.
 *     b--
 *      I did not actually READ the geek code, I just had someone tell me.
 */
final GenericGeekCodeCategoryBuilder b = getBuilder("b") as GenericGeekCodeCategoryBuilder;

/**
 * Builds the Dilbert category.
 *
 * Original documentation:
 *
 *     Simply the geekiest comic strip in existence. http://www.unitedmedia.com/comics/dilbert/ for more information.
 *
 *     DI+++++
 *      I am Scott Adams.
 *     DI++++
 *      I've received mail from Scott Adams. I'm in the DNRC (Dogbert's New Ruling Class).
 *     DI+++
 *      I am a Dilbert prototype
 *     DI++
 *      I work with people that act a lot like Dilbert and his boss.
 *     DI+
 *      I read Dilbert daily, often understanding it
 *     DI
 *      I read Dilbert infrequently, rarely understanding it
 *     DI-
 *      Is that the comic about the engineers?
 *     DI--
 *      Don't read it, but I think the dog is kinda cute.
 *     DI---
 *      I don't think it's funny to make fun of managers trying their best to run their organizational units.
 */
final GenericGeekCodeCategoryBuilder DI = getBuilder("DI") as GenericGeekCodeCategoryBuilder;

/**
 * Builds the DOOM! category.
 *
 * Original documentation:
 *
 *     There is a game out for the PCs and other computers called DOOM. It's a 3D virtual reality simulation where you race around and blow things away with large-caliber weaponry. This has led to a series of similar games such as the Star Wars themed Dark Forces. Tell us about your abilities with these 3D games. (yes, some of them aren't actually Doom. Cope!)
 *
 *     D++++
 *      I work for iD Software.
 *     D+++
 *      I crank out PWAD files daily, complete with new monsters, weaponry, sounds and maps. I'm a DOOM God. I can solve the original maps in nightmare mode with my eyes closed.
 *     D++
 *      I've played the shareware version and bought the real one and I'm actually pretty good at the game. I occasionally download PWAD files and play them too.
 *     D+
 *      It's a fun, action game that is a nice diversion on a lazy afternoon.
 *     D
 *      I've played the game and I'm pretty indifferent.
 *     D-
 *      I've played the game and really didn't think it was all that impressive.
 *     D--
 *      It's an overly-violent game and pure crap
 *     D---
 *      To hell with Doom, I miss Zork.
 *     D----
 *      I've seen better on my Atari 2600
 */
final GenericGeekCodeCategoryBuilder D = getBuilder("D") as GenericGeekCodeCategoryBuilder;

/**
 * Builds The Geek Code category.
 *
 * Original documentation:
 *
 *     G+++++
 *      I am Robert Hayden
 *     G++++
 *      I have made a suggestion for future versions of the code (note that making a suggestion just to get a G++++ rating doesn't count, you also have to at least qualify for a G+++ rating :-)
 *     G+++
 *      I have memorized the entire geek code, and can decode others' codes in my head. I know by heart where to find the current version of the code on the net.
 *     G++
 *      I know what each letter means, but sometimes have to look up the specifics.
 *     G+
 *      I was once G++ (or higher), but the new versions are getting too long and too complicated.
 *     G
 *      I know what the geek code is and even did up this code.
 *     G-
 *      What a tremendous waste of time this Geek Code is.
 *     G--
 *      Not only a waste of time, but it obviously shows that this Hayden guy needs a life.
 */
final GenericGeekCodeCategoryBuilder GCode = getBuilder("G") as GenericGeekCodeCategoryBuilder;

/**
 * Builds the Education category.
 *
 * Original documentation:
 *
 *     All geeks have a varying amount of education.
 *
 *     e+++++
 *      I am Stephen Hawking
 *     e++++
 *      Managed to get my Ph.D.
 *     e+++
 *      Got a Masters degree
 *     e++
 *      Got a Bachelors degree
 *     e+
 *      Got an Associates degree
 *     e
 *      Finished High School
 *     e-
 *      Haven't finished High School
 *     e--
 *      Haven't even entered High School
 *     e*
 *      I learned everything there is to know about life from the "Hitchhiker's Trilogy".
 */
final ExtremeGenericGeekCodeCategoryBuilder e = getBuilder("e") as ExtremeGenericGeekCodeCategoryBuilder;

/**
 * Builds the Housing category.
 *
 * Original documentation:
 *
 *     Tell us about your geeky home.
 *
 *     h++
 *      Living in a cave with 47 computers and an Internet feed, located near a Dominoes pizza. See !d.
 *     h+
 *      Living alone, get out once a week to buy food, no more than once a month to do laundry. All surfaces covered.
 *     h
 *      Friends come over to visit every once in a while to talk about Geek things. There is a place for them to sit.
 *     h-
 *      Living with one or more registered Geeks.
 *     h--
 *      Living with one or more people who know nothing about being a Geek and refuse to watch Babylon 5.
 *     h---
 *      Married, (persons living romantically with someone might as well label themselves h---, you're as good as there already.)
 *     h----
 *      Married with children - Al Bundy can sympathize
 *     h!
 *      I am stuck living with my parents!
 *     h*
 *      I'm not sure where I live anymore. This lab/workplace seems like home to me.
 */
final ExtremeGenericGeekCodeCategoryBuilder h = getBuilder("h") as ExtremeGenericGeekCodeCategoryBuilder;

/**
 * Builds the Relationships cateogory.
 *
 * Original documentation:
 *
 *     While many geeks are highly successful at having relationships, a good many more are not. Give us the gritty details.
 *
 *     r+++
 *      Found someone, dated, and am now married.
 *     r++
 *      I've dated my current S.O. for a long time.
 *     r+
 *      I date frequently, bouncing from one relationship to another.
 *     r
 *      I date periodically.
 *     r-
 *      I have difficulty maintaining a relationship.
 *     r--
 *      People just aren't interested in dating me.
 *     r---
 *      I'm beginning to think that I'm a leper or something, the way people avoid me like the plague.
 *     !r
 *      I've never had a relationship.
 *     r*
 *      signifying membership in the SBCA (Sour Bachelor(ette)'s Club of America). The motto is 'Bitter, but not Desperate'. First founded at Caltech.
 *     r%
 *      I was going out with someone, but the asshole dumped me.
 *
 * Note: r% is not supported currently.
 */
final ExtremeGenericGeekCodeCategoryBuilder r = getBuilder("r") as ExtremeGenericGeekCodeCategoryBuilder; //TODO: Support r%

/**
 * Builds the Sex category
 *
 * See: [SexGeekCodeCategoryBuilder] and [SexGeekCodeCategory].
 */
final SexGeekCodeCategoryBuilder z = getBuilder("z") as SexGeekCodeCategoryBuilder;

/**
 * Creates a [GeekCodeCategoryBuilder] out of [categoryCode] where [categoryCode] is the [String] code of a Geek Code v3.12 category.
 *
 * Throws a [GeekCodeError] if [categoryCode] does not exist in the Geek Code v3.12 specification.
 */
GeekCodeCategoryBuilder getBuilder(String categoryCode) {
  switch (categoryCode) {
    case "d":
      return new DressGeekCodeCategoryBuilder("d", -2, 2);

    case "s":
      return new ShapeGeekCodeCategoryBuilder("s", -3, 3);

    case "a":
      return new AgeGeekCodeCategoryBuilder("a", -5, 3);

    case "C":
      return new GenericGeekCodeCategoryBuilder("C", -3, 4);

    case "U":
      return new UnixGeekCodeCategoryBuilder("U", -3, 4);

    case "UB":
      return new UnixGeekCodeCategoryBuilder("U", -3, 4).B();

    case "UL":
      return new UnixGeekCodeCategoryBuilder("U", -3, 4).L();

    case "UU":
      return new UnixGeekCodeCategoryBuilder("U", -3, 4).U();

    case "UA":
      return new UnixGeekCodeCategoryBuilder("U", -3, 4).A();

    case "UV":
      return new UnixGeekCodeCategoryBuilder("U", -3, 4).V();

    case "UH":
      return new UnixGeekCodeCategoryBuilder("U", -3, 4).H();

    case "UI":
      return new UnixGeekCodeCategoryBuilder("U", -3, 4).I();

    case "UO":
      return new UnixGeekCodeCategoryBuilder("U", -3, 4).O();

    case "US":
      return new UnixGeekCodeCategoryBuilder("U", -3, 4).S();

    case "UC":
      return new UnixGeekCodeCategoryBuilder("U", -3, 4).C();

    case "UX":
      return new UnixGeekCodeCategoryBuilder("U", -3, 4).X();

    case "U*":
      return new UnixGeekCodeCategoryBuilder("U", -3, 4).other();

    case "P":
      return new GenericGeekCodeCategoryBuilder("P", -3, 5);

    case "PS":
      return new GenericGeekCodeCategoryBuilder("PS", -3, 3);

    case "PE":
      return new GenericGeekCodeCategoryBuilder("PE", -2, 3);

    case "PGP":
      return new GenericGeekCodeCategoryBuilder("PGP", -4, 4);

    case "L":
      return new GenericGeekCodeCategoryBuilder("L", -3, 5);

    case "E":
      return new GenericGeekCodeCategoryBuilder("E", -4, 3);

    case "W":
      return new GenericGeekCodeCategoryBuilder("W", -2, 3);

    case "N":
      return new ExtremeGenericGeekCodeCategoryBuilder("N", -4, 4);

    case "o":
      return new GenericGeekCodeCategoryBuilder("o", -2, 5);

    case "K":
      return new GenericGeekCodeCategoryBuilder("K", -4, 6);

    case "w":
      return new GenericGeekCodeCategoryBuilder("w", -3, 5);

    case "O":
      return new GenericGeekCodeCategoryBuilder("O", -4, 3);

    case "M":
      return new GenericGeekCodeCategoryBuilder("M", -2, 2);

    case "V":
      return new GenericGeekCodeCategoryBuilder("V", -2, 3);

    case "Y":
      return new GenericGeekCodeCategoryBuilder("Y", -3, 3);

    case "t":
      return new ExtremeGenericGeekCodeCategoryBuilder("t", -3, 3);

    case "tv":
      return new GenericGeekCodeCategoryBuilder("tv", -2, 3);

    case "5":
      return new GenericGeekCodeCategoryBuilder("5", -2, 4);

    case "X":
      return new GenericGeekCodeCategoryBuilder("X", -2, 4);

    case "R":
      return new ExtremeGenericGeekCodeCategoryBuilder("R", -3, 3);

    case "b":
      return new GenericGeekCodeCategoryBuilder("b", -2, 4);

    case "D":
      return new GenericGeekCodeCategoryBuilder("D", -4, 4);

    case "DI":
      return new GenericGeekCodeCategoryBuilder("DI", -3, 5);

    case "G":
      return new GenericGeekCodeCategoryBuilder("G", -2, 5);

    case "e":
      return new ExtremeGenericGeekCodeCategoryBuilder("e", -2, 5);

    case "h":
      return new ExtremeGenericGeekCodeCategoryBuilder("h", -4, 2);

    case "r":
      return new ExtremeGenericGeekCodeCategoryBuilder("r", -3, 3);

    case "x":
      return new SexGeekCodeCategoryBuilder("z", -3, 5).female();

    case "y":
      return new SexGeekCodeCategoryBuilder("z", -3, 5).male();

    case "z":
      return new SexGeekCodeCategoryBuilder("z", -3, 5);

    default:
      throw new GeekCodeError("Unknown Geek Code category code: [$categoryCode]!");
  }
}
