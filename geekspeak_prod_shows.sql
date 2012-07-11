--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: shows; Type: TABLE; Schema: public; Owner: geekspeak; Tablespace: 
--

CREATE TABLE shows (
    id integer NOT NULL,
    title character varying(64) NOT NULL,
    category character varying(254),
    promo text,
    abstract text NOT NULL,
    content text,
    user_id integer NOT NULL,
    created_on timestamp without time zone NOT NULL,
    updated_on timestamp without time zone NOT NULL,
    status character varying(64) DEFAULT 'new'::character varying,
    showtime timestamp without time zone,
    teaser_id integer,
    planning_notes text,
    lock_version integer DEFAULT 0
);


ALTER TABLE public.shows OWNER TO geekspeak;

--
-- Data for Name: shows; Type: TABLE DATA; Schema: public; Owner: geekspeak
--

INSERT INTO shows VALUES (34, 'Online Poker with Tom', NULL, NULL, 'Tom, a professional gambler for over 30 years, joins the Geeks for a discussion about online gambling. Additionally the Geeks, John Tracy, Sean Cleveland and Miles Elam, join Lyle Troxell for GeeksNews and taking listeners calls and emails.', '! Geek News

[Hubble''s Constant|http://en.wikipedia.org/wiki/Hubbles_constant]? Yeah, well, it''s [not so constant|http://www.physorg.com/news73830714.html] (for the first time in over fifty years).


[Diebold|http://en.wikipedia.org/wiki/Diebold]''s electronic voting machine [not secure|http://www.openvotingfoundation.org]? Quick impression of Diebold: "What? Me worry?"

! Clarifications

Durring the show we mentioned that the state does not making any money on online gambling, this is partially true. Tom does pay income tax on his winnings, but the casino site exists outside of the US and therfore does not pay taxes.', 7, '2006-08-05 10:11:06', '2006-08-07 09:33:01', 'live', '2006-08-05 10:00:00', 70, NULL, 0);
INSERT INTO shows VALUES (2, 'GeekNews and Calls', NULL, '', 'The Geeks cover some issues and concerns about Mac OS X on Intel, problems with finding  good free anti-virus like [AVG|http://www.grisoft.com/], some more GeekNews of the week and answer calls from our listeners.', '', 1, '2006-03-09 14:30:08', '2006-03-09 14:31:01', 'live', '2006-01-14 10:00:00', NULL, '', 0);
INSERT INTO shows VALUES (3, 'GeekNews and Calls', NULL, '', 'Geeks Sean Cleveland, Miles Elam, Chris Dunphy and host Lyle Troxell cover the week in GeekNews which includes 802.11n, NY Subways soon with cell coverage ([BART|http://www.bart.gov/] has it already), [[GSM|Global System for Mobile Communications]|http://en.wikipedia.org/wiki/GSM] [cell phone tracking|http://www.engadget.com/2006/01/20/world-tracker-turns-anyone-into-a-cellphone-spy/]. Sean leads us on a quick discussion of Intel Core Duo Processor and some general processor details. We cover a quick run-through of Windows on a new Intel Mac - good bye [BIOS|Basic Input/Output System]. Miles then leads us in a discussion of an upstate NY windmill conflict.  Durring the second half of the show we take listener calls with questions and comments about technology.', '', 1, '2006-03-09 14:31:57', '2006-03-09 14:34:55', 'live', '2006-01-21 10:00:00', NULL, '', 0);
INSERT INTO shows VALUES (5, 'Hybrid Technology: The Prius', NULL, '', 'Keith Cummings, Toyota Prius Master Diagnostic Technician, joins the Geeks for a detailed discussion of the Toyota Prius.

The Toyota Prius is a top notch hybrid car, in fact it is a top notch car; in 2004 it was named Car of the Year by Motor Trend. And if that isn''t enough endorcement four of the Geeks drive one. Learn all about Toyota''s Hibrid Technology on this episode of GeekSpeak.', '', 1, '2006-03-10 01:24:49', '2006-03-10 14:49:28', 'live', '2006-02-04 10:00:00', 1, '', 0);
INSERT INTO shows VALUES (4, 'MS Excel Magic', NULL, '', 'Fifteen minutes of GeekNews and then... the most popular spread-sheet program ever; Microsoft Excel. Bob Umlas, author of [This isn''t Excel, It''s Magic!|http://www.iil.com/iil/excelmagic/], joins the geeks for some wonderful tips and tricks on using Excel. Durring the second half of the show you can join us for questions and comments on technology.', '', 1, '2006-03-10 01:22:18', '2006-03-15 07:10:22', 'live', '2006-01-28 10:00:00', NULL, '', 0);
INSERT INTO shows VALUES (57, 'Space, Security, and Pirates', NULL, NULL, 'Special Guest Geek Scott Crowe joins us for news about Pirate Bay, comets, business successes and calls from our loyal fan base.

Links to free antivirus programs, the Windows narrator, Comet McNaught and music download services', '! Links referenced in the show:

* Windows Text to Speech with the Narrator in XP: Learn how to [let your computer read to you|http://support.microsoft.com/kb/306902]
* Grisoft AVG, [free anti-virus and anti-spyware|http://free.grisoft.com/doc/1]
* Information and links to other [freeware antivirus programs|http://en.wikipedia.org/wiki/List_of_antivirus_software]. Just scroll down to the freeware section.
* [Comet McNaught|http://en.wikipedia.org/wiki/Comet_McNaught]

!! Music subscription links:
* [Rhapsody|http://www.rhapsody.com/welcome.html]
* [Napster|http://www.napster.com/choose/index.html]
* [Yahoo|http://music.yahoo.com/]

Tyler from Santa Cruz writes in with "[eMusic|http://emusic.com] is cheap & awesome & has a bit of everything plus the artists get most of the money."

There is [a writeup at Engadget|http://www.engadget.com/2006/01/03/starz-launches-vongo-new-subscription-based-movie-download-serv/] of Vongo, a new subscription based movie download service offered by Starz.

 

', 2, '2007-01-08 23:24:28.849031', '2007-01-13 14:35:23.159091', 'live', '2007-01-13 10:00:00', NULL, NULL, 24);
INSERT INTO shows VALUES (25, 'JavaScript Anthology', NULL, NULL, 'The [Man in Blue|http://themaninblue.com], Cameron Adams, joins the Geeks for a discussion of his new book, The JavaScript Anthology: 101 Essential Tips, Tricks & Hacks.

Learn all about the power behind Web 2.0 from this web development expert.', 'Cameron Adams has a degree in law and one in science. His buisness cards say, "Web Technologist" because he likes to have a hand in graphic design, JavaScript, CSS, PHP, and anything else that takes his fancy that morning. While running his own business ([themaninblue .com|http://themaninblue.com]) he''s consulted and worked for numerous government departments, nonprofit orginizations, large corporations, and tiny statups. Cameron lives in Melbourne, Australia, where, between coding marathons, he likes to play soccer and mix some tunes for his irate neighbors.

News:

Canon to [stop making single-lens cameras|http://news.yahoo.com/s/ap/20060525/ap_on_bi_ge/japan_canon]

Wikipedia page on [Net Neutrality|http://en.wikipedia.org/wiki/Network_neutrality]

HD-DVD may have [region codes|http://arstechnica.com/news.ars/post/20060526-6927.html] like current DVDs, which prevent playback of DVDs from other regions.

Links:

Yahoo! [UI Library|http://developer.yahoo.com/yui/], full of helpful (and cross browser) javascript utilites for your site.', 1, '2006-05-25 14:30:04', '2006-05-27 10:47:39', 'live', '2006-05-27 10:00:00', 64, NULL, 0);
INSERT INTO shows VALUES (107, 'News and Calls', NULL, NULL, 'A full set of geeks take calls and cover this week''s geek news.', '! Links
* http://www.palm.com/us/products/handhelds/', 1, '2008-01-05 10:13:32.557326', '2008-01-06 03:46:09.443796', 'live', '2008-01-05 10:00:00', NULL, NULL, 2);
INSERT INTO shows VALUES (35, 'The Light Pick', NULL, NULL, 'Santa Cruz inventor Michael Herring joins the Geeks for a discussion about [Light Picks|http://www.lightpicks.net/], a guitar pick with a built in metronome.

Learn about the process of invention, the starting of a business, and the sales and makreting behind it.', '! Geek News

 * The IBM PC [turns 25|http://www.cnn.com/2006/TECH/biztech/08/11/ibmpcanniversary/index.html].
 * James Van Allen, accomplished atro-physicist, is [dead at the age of 91|http://www.nytimes.com/2006/08/10/science/space/10vanallen.html?_r=2&oref=slogin&oref=slogin]
 * Millions of [minors illegally buying alcohol|http://www.dailytech.com/article.aspx?newsid=3757] through the internet
 * Pumping [power onto the grid from your basement|http://news.com.com/Pumping+power+onto+the+grid+from+your+basement/2100-1008_3-6104005.html?tag=cd.top]
 * [Battlefield 2142 beta|http://www.dailytech.com/article.aspx?newsid=3737] coming to [FilePlanet|http://www.fileplanet.com/] subscribers
 * Hard drive [price war|http://www.dailytech.com/article.aspx?newsid=3731] coming
 * First Blu-ray disc drive [won''t play|http://hardware.slashdot.org/article.pl?sid=06/08/11/1815258] Blu-ray movies
 * With [exploits out|http://it.slashdot.org/article.pl?sid=06/08/11/1233207], Microsoft braces for worm attack
 * Nation of [Cameroon typo-squats|http://www.circleid.com/posts/nation_of_cameroon_typosquats_com_space/] the entire .com top-level domain

! Your Calls

!! What computer should I buy for voice recognition and video editing?

Check out [CompRec|http://comprec.com/] for recommendations.

!! Is the Light Pick like the Light Snake?

No, but it''s a [cool product for musicians|http://www.soundtech.com/lightsnake/index.asp] doing digital recording.

!! Computer Backups on a Mac?

The Geeks recommend an external [USB|Universal Serial Bus|http://en.wikipedia.org/wiki/USB] storage device or [[NAS|Network Attached Storage]|http://en.wikipedia.org/wiki/Network_Attached_Storage] device.

!! DVD-R or DVD+R?

[DVD+R|http://en.wikipedia.org/wiki/DVD+R] is better for data and archival, but [DVD-R|http://en.wikipedia.org/wiki/DVD-R] is much more compatible with the DVD player you would hook up to a TV.

!! Get a laptop now with Vista on the horizon?

Go ahead and get one now, but make sure you are buying a laptop with a discrete graphics chipset, not an integrated graphics chipset.

!! More on FireWire vs [USB|Universal Serial Bus] 2.0

!!! Ed from King City wrote:

I just tested a dual USB2 / Firewire drive on a MacBook.  Using transfering a 6GB file using firewire averaged 29.5GB per second.  Using the USB2 interface averaged 18.07GB/second.  I''ve tried this before on my dual core G5 and got the same results.  You just said there was no difference.  What gives?

!!! Lyle responds:

Ahh, interesting, I hadn''t seen testing numbers and was basing my answers on specs.
"USB 2.0 Hi-Speed mode is 480 megabits per second, while the signalling rate of FireWire 400 (IEEE 1394a) is 393.216 Mbit/s" - [source|http://en.wikipedia.org/wiki/USB]

So, by spec, USB2 seems potentially faster. But I would not be surprised to see FireWire performing faster depending on the implementation. I know, for example, that Apple has spend a lot of resources on FireWire. 

*! Here are two more plusses for USB 2.0:
* Compatible with most computers, because it is backwards compatible with USB 1 and Windows machines typically do not come with FireWire.
* When importing video through FireWire, using a MiniDV camera, it is best to no also have a hard drive connected to the FireWire chain.

But a speed difference that you have seen is a significant difference. Perhaps it is the implementation of the drive that you have. I will have to give it a try with my Seagate USB2/FireWire.






On Aug 12, 2006, at 10:57 AM, Ed from King City wrote', 1, '2006-08-07 09:58:12', '2006-08-15 09:23:23', 'live', '2006-08-12 10:00:00', 71, NULL, 0);
INSERT INTO shows VALUES (69, 'Where''s the Memory Controller?', NULL, NULL, 'Intel''s upcoming processors, nano-meters are small, Samsung 64GB solid state drive, Boston Space Marathon, one laptop for Miles, and calls, calls, calls.', NULL, 1, '2007-03-26 04:54:55.485582', '2007-03-26 04:57:01.558854', 'live', '2007-03-31 10:00:00', NULL, NULL, 1);
INSERT INTO shows VALUES (27, 'No GeekSpeak, are you subscribed?', NULL, NULL, 'If you listen to GeekSpeak online please write a review of us. I want to start getting our show a larger audiance. You can find [GeekSpeak on the iTunes store|http://phobos.apple.com/WebObjects/MZStore.woa/wa/viewPodcast?id=74173088], where you can write a review of us. You can also find us at your favoriate PodCast listing site. What do you use? Throw [us an email|http://geekspeak.org/profiles/geeks/contact].


I just claimed GeekSpeak on [My Odeo Channel|http://odeo.com/claim/feed/07b0ed2e964ab2a9] (odeo/07b0ed2e964ab2a9).
', NULL, 1, '2006-05-31 14:39:13', '2006-05-31 14:40:26', 'new', '2006-06-03 10:00:00', NULL, NULL, 0);
INSERT INTO shows VALUES (100, 'Making Noises With Laptops', NULL, NULL, 'From making lightsaber noises with your laptop to data recovery to e-voting lawsuits, the Geeks keep you up to date on the week''s news and take your computing questions.', NULL, 7, '2007-11-24 14:57:12.95609', '2007-11-24 15:04:21.920358', 'live', '2007-11-24 10:00:00', NULL, NULL, 1);
INSERT INTO shows VALUES (162, 'Geek Tech for 2009', NULL, NULL, 'Predictions are so temporally falsifiable, therefor we are going to share what we are excited about in the upcoming year.', NULL, 1, '2009-01-03 09:35:37.297967', '2011-03-01 22:01:25.767632', 'live', '2009-01-03 10:00:00', 265, NULL, 6);
INSERT INTO shows VALUES (60, 'Bad People Use (Your) Computers', NULL, NULL, 'Week in Geek News, calls with questions of technology. Another classic free-for-all of GeekSpeak.', '! Q&A

* Online TV with [Joost|https://www.joost.com/].
* USB/TV adapter [Hauppage|http://www.hauppauge.com/html/usb_data.htm].
', 1, '2007-01-18 21:17:42.265229', '2007-01-20 11:39:22.93922', 'live', '2007-01-20 10:00:00', 142, NULL, 9);
INSERT INTO shows VALUES (26, 'Digital Radio', NULL, NULL, 'Ever heard of Digital Radio? It''s available in more and more markets, including the Central Coast''s own KAZU and KSQL. What is it, why is it interesting, and what can we expect from digital radio in the future? Multiple programs on one frequency, time-shifted radio, intelligent integration with car electronics ñ get the jump on whatís coming soon. Join the Geeks and Desmond Fuller, tech guru for iBiquity, Saturday morning at 10am on GeekSpeak. 

Visit www.hdradio.com or www.ibiquity.com for more information and a station locator tool. ', 'Links mentioned in this week''s show:

* [Grisoft Anti-Virus|http://free.grisoft.com/] has a free for personal-use anti-virus software.
* [HDRadio|http://hdradio.com] is that place to find out more information about HD Radio in your area.', 3, '2006-05-27 10:43:23', '2006-06-19 16:57:14', 'live', '2006-06-17 10:00:00', 65, NULL, 0);
INSERT INTO shows VALUES (85, 'Data Center Business', NULL, NULL, 'Running a [NOC|Network Operations Center] or data center involves a lot of planning and redundancy of services. Derek Wise, President and CEO of [GNi, Global Netoptex, Inc.|http://www.gni.com/], joins us to talk about NOCs.

What happened on [July 24th to 365 Main|http://www.sfgate.com/cgi-bin/article.cgi?f=/c/a/2007/07/26/BUQMR757R2.DTL], and how could a simple power failure cause so many sites to go down? We answer these questions and much more on this episode of GeekSpeak.', NULL, 1, '2007-08-01 11:26:42.594089', '2007-08-01 11:48:34.602984', 'live', '2007-08-11 10:00:00', 183, NULL, 6);
INSERT INTO shows VALUES (28, 'Make Magazine v6', NULL, NULL, 'Make is a magazine for geeks by geeks that contains step-by-step instructions for do-it-yourself technology-based projects. 

Mark Frauenfelder, editor-in-chief of Make, joins the Geeks to discuss the latest issue of the magazine.', '! Links
* [Make Magazine|http://www.makezine.com/]
* [Boing Boing|http://boingboing.net/]
* Portable reading of online news and web pages, you can use [AvantGo|http://www.avantgo.com].', 1, '2006-06-24 09:55:34', '2006-08-06 01:01:26', 'live', '2006-06-24 10:00:00', NULL, NULL, 0);
INSERT INTO shows VALUES (36, 'Viruses, New Planets, and You(Tube)', NULL, NULL, 'It''s a full house. Lyle Troxell, John Tracy, Sean Cleveland, Miles Elam, and Drew Meyer take your calls and dish up a heaping bowl of news from the world of geek.', '! Geek News

* Microsoft has released a fix for Windows XP that addresses [hibernation|http://www.microsoft.com/downloads/details.aspx?displaylang=en&familyid=9D20F96A-A8D6-4627-89F7-787CD9B3852C&displaylang=en]. No, not the bear kind of hibernation. This is for laptops to go to sleep for extended periods of time.
* 802.11n is further away than we thought. Either [wait until 2008|http://www.networkitweek.co.uk/itweek/news/2162596/schedule-802-11n-kit-slips-2008] or expect problems talking to each other.
* 12 planets? The [Moon may become a planet|http://www.space.com/scienceastronomy/060817_moon_planet.html] in a billion years (give or take)?
* [CO2 jets|http://www.nasa.gov/mission_pages/mars/images/pia08658.html] at the martian south pole.

! Neat-o

* Fun with [treadmills|http://youtube.com/watch?v=pv5zWaTEVkI], brought to you by YouTube.com.

! Calls

* Anti-virus solutions? You can try [AVG|http://free.grisoft.com/], [Avast|http://www.avast.com/i_idt_1016.html], [McAfee|http://us.mcafee.com/root/catalog.asp?cid=11344], [Symantec|http://www.symantec.com/], [Sophos|http://www.sophos.com/], [Kaspersky|http://www.kaspersky.com/]...
* Got a recent Dell laptop? Worried about the battery? See if you [qualify for the battery recall|https://www.dellbatteryprogram.com/] from Dell.
* Read about [WiMAX|http://en.wikipedia.org/wiki/WiMAX].', 7, '2006-08-19 10:19:36', '2006-08-19 11:17:46', 'live', '2006-08-19 10:00:00', NULL, NULL, 0);
INSERT INTO shows VALUES (13, 'Play Pen - don''t make this live.', NULL, NULL, 'This is to show you how things work - and to play around in. 

This paragraph has [ a link to my website | http://lyle.troxell.com ] and uses a fun [ FLA | Three Letter Acronym ].', '!The content block starts here.

You will notice that formatting is not so good at this point. I''ll spend some time on that real soon like.

Here is the content of the page. It can have a whole bunch of formatting from mText.

Here is a list 
  *! Feelings
  * love 
  * hate
  * apathy

And you can make a list that can count fruit.

#! Fruit
# Apples
   # not the computer
# Ornges
# Bannas

! And a new Section
This section I will show you an image of me with a hat. [2006_02_18_2350_lyle_hat.jpg| And here is a little caption for this image. Try to make the caption relavent to the image.]

!John''s Turn
[fglogo.jpg |These are the iMacs of wooden cars.]

[Gemini Car Commercial | http://video.google.com/videoplay?docid=3688185030664621355].

! Who came up with this crazy markup syntax?

I mean, let''s be honest here. Are the angle brackets of XML and HTML so hard? And where''s the bold text!? Okay, let''s list some back story.

  *! The problems
  * Not everyone is a web developer
  * One mistake and nothing renders
  * I hate fixing other people''s markup
  * People hate having things that need fixing

  *! Inspired by Wiki
  * Needed something "quick and dirty"
  * Needed to fail/degrade gracefully
  * Needed to be consistent

  *! Enter MText
  * Don''t blame me; Lyle thought up that name
  * "Bold" and "italic" are presentational, not informational
  * Designed to preserve structure, not appearance
  * You can always fix appearance later (especially with CSS)
  * If structure is missing, you''re screwed
  * Wiki syntax trimmed of presentation and arguably simplified

  *! Quick Hints
  * MText is always in square brackets. Period. No exceptions.
  * The item that comes first is the one that is displayed. for example:

[[foo.jpg|This is my caption]] -- here the image is what we''re most concerned with.

[[HTML|HyperText Markup Language]] -- here the acronym is first and is what is displayed. The expansion appears (by default) as a tooltip. Note: the fact that it shows up as a tooltip is a presentational concern; do not rely on it for aesthetic purposes. It could just as easily render as "HyperText Markup Language (HTML)" on the page.

[[some MText thing]] -- Hey! How are you displaying those square brackets? It goes like this: if it isn''t valid info, MText will just spit it back to you. Square brackets enclosed in square brackets is not valid info. Therefore, it just spits it back. Understand? No? Tough. Just accept it.

!! Frequently Asked Questions

!!! Can you add [[feature X]] to MText?

Answer: Yes, but I''m not going to.

!!! But what if I really want [[feature X]] to be a reality?

Answer: The Java source code for MText is available upon request. You are free (and encouraged!) to patch in the features you want.

!!! But what if I don''t know how to program?

Answer: Learn. Lessons in writing Java (or a half dozen other programming languages) are available upon request.

!!! But what if I don''t want to learn?

Answer: Then you must deal with the functionality present in the existing code. Contrary to popular belief, over 90% of free software development has precious little to do with altruism. It is commonly done for quite selfish reasons: to scratch a personal itch.

Tools are a [PITA|Pain In The Ass] to develop from a programmer point of view. Writing them is largely a soul-sucking and tedious activity. One thing that makes it marginally worthwhile is the happiness and gratitude it garners from friends and family. While occasionally amusing when friends point out some basic tenets of UI development as though they are divulging a great secret, it can make tools development change from a PITA to a [RPITA|Royal Pain In The Ass].

Let me sum it up like this. One individual engages in a PITA for the sake of his compatriots. A compatriot then says in a nutshell, "It''s obviously missing X, Y, and Z. You should do X, Y, and Z right away. Thanks. You work hard. Now give me X, Y, and Z because my experience has lead me to conclude that we won''t be successful without X, Y, and Z." The PITA has now evolved to the status of RPITA. Congratulations! It is now even less likely that the individual wishes to work on the PITA instead of spending time with family, friends, or just take walks outside in the fresh air.

We''re not paid to work on the R/PITA. In reality, the pay isn''t so much the deterrent, but it certainly doesn''t help. What would really be most helpful is for other to perhaps avoid pointing out what a RPITA it is to work on these RPITAs.

!!! Aren''t you just playing the martyr?

Yes, perhaps much more than a little bit. It''s been several years for many of us. Grumbling is a perfectly acceptable response. This is obviously not an optimal situation.

In other words, "It''s obviously a RPITA!" An RPITA for the tools author, an RPITA for site maintenance, and an RPITA for everyone else sitting on the sidelines. The real question is this:

!!! Are we going to continue making this a RPITA for everyone?

Or are we going to try to downgrade it to an [MPITA|Minor Pain In The Ass] or better?

I''ll get off my soapbox now.', 1, '2006-03-18 15:46:13', '2006-03-23 12:02:58', 'new', '2006-03-19 10:00:00', 9, NULL, 0);
INSERT INTO shows VALUES (29, 'Geek News and Calls', NULL, NULL, 'The Geeks give the news and take your calls. It''s a full house in the air room: Lyle Troxell, Sean Cleveland, John Tracy, Miles Elam, Drew Meyer, and guest geek Alex Sleeis.', '! Hollywood Usually Gets It Wrong
Movies usually get the science wrong. We''re not just talking about getting things a little bit wrong. They are missing out on the basic laws of physics, chemistry, engineering, and technology. It wouldn''t be so bad if it weren''t the fact that almost no movies actually make an effort to get their facts straight. Read more about the state of science in movies at [Phil Plait''s Bad Astronomy site|http://www.badastronomy.com/], an excellent resource and also a lot of fun.', 7, '2006-07-01 10:25:07', '2006-07-01 10:32:22', 'live', '2006-07-01 10:00:00', NULL, NULL, 0);
INSERT INTO shows VALUES (37, 'What is Pluto Again?', NULL, NULL, 'Geeks Lyle Troxell, Drew Meyer, and Miles Elam discuss the recent Pluto controversy (it''s a "dwarf planet" now) and take your calls with questions and comments of technology.', '! Pluto

Pluto is [no longer a planet|http://www.physorg.com/news75645703.html], it is now a Dwarf Planet.


! Ubuntu

Check out [Ubuntu Linux|http://www.ubuntu.com/] for a more secure browsing environment -- for example on MySpace. Download the [Desktop Edition|http://www.ubuntu.com/desktop] of Ubuntu and give it a try.

Ubuntu Desktop Edition will [boot from the CD or DVD drive|http://en.wikipedia.org/wiki/LiveDistro] and provide an environment that does not write to your Windows installation.

Keep in mind that you will need a [CD-R|Compact Disk Recordable] drive and CD-ROM burning software in order to make an Ubuntu CD on your computer. Alternatively you can have an Ubuntu CD [mailed to you|https://shipit.ubuntu.com/] for free.

One of our callers also recommends [Damn Small Linux|http://www.damnsmalllinux.org/], especially for older, slower computers.


! Virus and Such

Take a look at [last week''s show|http://geekspeak.org/shows/2006/08/19] for virus protection links.', 7, '2006-08-26 10:36:22', '2006-09-15 22:07:52', 'live', '2006-08-26 10:00:00', 78, NULL, 5);
INSERT INTO shows VALUES (30, 'GeekNews and Your Questions', NULL, NULL, 'Covering some technical news of the week and answering calls and emails the Geeks, Sean Cleveland, Drew Meyer and Lyle Troxell stay calm and keep things fun in this classic GeekSpeak.', 'Links

  * The Dictionary.com, [the online dictionary|http://dictionary.reference.com/] and [the definition of Google on Merriam-Webster|http://www.m-w.com/dictionary/google]
  * Trading a [One Red Paper Clip|http://oneredpaperclip.blogspot.com/] for a house
  * The [AnandTech hardware review site|http://www.anandtech.com/]
  * The [Ubuntu Linux operating system|http://www.ubuntu.com/]
  * Distributed Science with [[Boinc|Berkeley Open Infrastructure for Network Computing]|http://boinc.berkeley.edu/]
  * Language translations courtesy of [Babelfish|http://babel.altavista.com/]
', 1, '2006-07-08 09:37:45', '2006-07-08 10:55:41', 'live', '2006-07-08 10:00:00', NULL, NULL, 0);
INSERT INTO shows VALUES (70, 'Violent Hard Drive Death', NULL, NULL, 'The ever-present need to have good backups and the effects of violent video games on the youth. Join in the discussion with Lyle, Sean, and Miles (with Alex over the net).', NULL, 7, '2007-03-28 16:34:56.994497', '2007-03-28 16:35:18.314019', 'live', '2007-04-07 10:00:00', NULL, NULL, 1);
INSERT INTO shows VALUES (59, 'The Naked Desk', NULL, NULL, 'Author and life coach Sue Brenner joins the Geeks for a discussion about her new new book, The [Naked Desk: Everything you need to strip away clutter, save time, & get things done|http://www.amazon.com/dp/0978973003?tag=wwwactionsymp-20&camp=15041&creative=373501&link_code=as3].

Organization problems and solutions; what makes your life flow?', NULL, 1, '2007-01-18 21:12:22.200251', '2007-02-09 00:30:07.713322', 'live', '2007-01-27 10:00:00', 141, NULL, 6);
INSERT INTO shows VALUES (38, 'Chipsets, Laptops, the Moon and Geeks', NULL, NULL, 'Geeks Sean, Lyle, and Miles talk about tech, space exploration, laptops for kids, and take your calls.', '
*! Calls we Took
* Gene - Pacficic Grove - telephony, What is this Voice over IP thing?
* Don - SC - final word whether it''s safe to leave a Mac on sleep
* Melinda - Soquel - whenever use wireless phone,  interferes with wireless computer. Sean says "2.4GHz phones interfere with Wifi, change the channel of the phone, the wifi or buy a 5GHz phone".
* Warren - Salinas - question about purchase - new Laptop - interested "Alienware" laptop. - go for it!
* Bruce - Seaside - reliability ratings for PC systems. - nothing like that but Sean recomends reveiwers http://anandtech.com/ and http://hardocp.com/ .
* Ed - Paso Robles  - flash drives for backup.
* Robin - San Miguel - would like to do archive -quality voice recording.  Digital? Anaolog. - Lyle recomends [Marantz PMD 660|http://www.d-mpro.com/users/folder.asp?FolderID=3629]

', 7, '2006-09-02 10:26:58', '2006-09-15 23:20:48', 'live', '2006-09-02 10:00:00', 81, NULL, 2);
INSERT INTO shows VALUES (1, 'Space Update, Online Music/Video and Calls', NULL, '', 'It''s a reunion! The Geeks back all together again at last at our new time, Saturdays at 10am. Topics included GeekNews, Space Update, Online Music/Video, Municipality Technology and Calls from our listeners.
', NULL, 1, '2006-03-09 14:28:35', '2006-03-26 10:28:35', 'live', '2006-01-07 10:00:00', NULL, '', 0);
INSERT INTO shows VALUES (39, 'GeekSpeak Banter with the Geeks', NULL, NULL, 'Geeks Lyle Troxell, Sean Cleveland, Drew Meyer, and Miles Elam take your calls and prove the age-old adage, "Keep your friends close and your geek friends even closer."', '! Phone Numbers for Real People
Where do you go to get the secret phone numbers and phone commands of companies to get a real, live operator on the line? There are two services available:

* [GetHuman|http://gethuman.com/] has a database of numbers and commands that you can use.
* [Bringo!|http://www.nophonetrees.com/] is a new service that lets you conquer phone trees. On their site, you find the company youíd like to call by category (credit cards, mortgages, loans, health care). You then enter your phone # (they claim they will never disclose your phone number to anyone, not even your mother!). You then wait a few seconds while the service navigates the phone tree, and then they call you back. You pick up your phone and youíre done ñ youíre connected to a live person at the company you are trying to contact. No more phone trees.


! Microsoft Photosynth

Microsoft is hard at work on a project it calls Photosynth. No release date has been announced. What makes this app so revolutionary and why will it change the way people view their photo colections or even the way they take photos? It incorporates new technology whereby it can take a collection of photos, analyze them, and model them into a 3D virtual scene, placing each photo in their perspective-correct position. This allows users to see where one photo was taken in relation to another photo!

Photosynth allows users to move around in the 3D world, viewing scenes from any angleóregardless of how the photos were taken. Each photo is processed by computer vision algorithms to extract hundreds of distinctive features, like the corner of a window frame or a doorhandle. Then, photos that share features are linked together in a web. When a featureís found in multiple images, its 3D position can be calculated. Itís similar to depth perceptionówhat your brain does to perceive the 3D positions of things in your field of view based on their images in both of your eyes.

! Google News Archive

Google has made a new [News Archive|http://news.google.com/archivesearch] Search available. It provides an easy way to search and explore historical archives. In addition to helping you search, News archive search can automatically create timelines which show selected results from relevant time periods.

! Vista Getting Closer

Microsoft has released Vista Release Candidate 1 (RC1) and is making it available to EVERYONE. The download is 2.6GB in size for the 32-bit version and 3.7GB for the 64-bit version. Microsoft could pull the plug on this at anytime, so it is recommended that you begin downloading it sooner rather than later. You can register to get a product key from the following link (This is not available yet, and will most likely appear later this week.)
You can [download Windows Vista Release Candidate 1|http://download.windowsvista.com/preview/rc1/en/download.htm]

You can try out Vista RC1 for free until June 1, 2007. After that, youíll have to pay for one of four versions of Windows Vista (full/upgrade):

* Windows Vista Home Basic, $199/$99.95
* Windows Vista Home Premium, $239/$159
* Windows Vista Business, $299/$199
* Windows Vista Ultimate, $399/$259

! AmazonUnbox
Amazon has released their video download serviced. It is called Unbox. The [Unbox Video Service|http://unbox.amazon.com/] will allow people to both buy or rent digital videos including full-length movies, TV shows, and sports events. If purchased, the video will be transferred directly to the computer where it will stay. If rented, the video will eventually expire.

! Apple Core 2 Duo

Apple has finally added the Core 2 Duo chip to their entire iMac family. The version of the Core 2 Duo used is the mobile version codenamed Merom and not the desktop version codenamed Conroe. Apple has also lowered prices; the base-level iMac now comes with a 1.83GHz Core 2 Duo and costs $999. The biggest change is the new 24" iMac, which is being called the iMac HD. The 24" screen is up to 40% brighter and features a 1920x1200 resolution that also supports native 1080p HD content (with no scaling!) All new Core 2 Duo iMacs are available now although the base model with the new 24" screen requires "2-4 business days" for shipping.
The New iMacs. Faster. Bigger. Brighter.

Extra: [Mac Mini speed bumps|http://www.gizmodo.com/gadgets/pcs/looky-here-mac-minis-get-speed-bump-too-198807.php] from 1.5 to 1.66 and 1.66 to 1.83GHZ  ', 7, '2006-09-10 10:26:55', '2006-09-15 23:16:20', 'live', '2006-09-09 10:00:00', 79, NULL, 17);
INSERT INTO shows VALUES (31, 'Microsoft''s Xbox 360 Uncloaked', NULL, NULL, 'Author Dean Takahashi''s book, [Xbox 360 Uncloaked|http://www.spiderworks.com/xbox360], is an in-depth study of people and stories behind creating this next-generation gaming console the Microsoft''s Xbox 360. 

In doing the research on this book Dean talked to a lot of people at Microsoft and in our discussion we cover gaming consoles, what it is like to work for Microsoft and some general talk about being a journalist.', '! Links
* [[MBARI|Monterey Bay Aquarium Research Institute] Open House|http://www.mbari.org/about/openhouse.html] in Moss Landing is today, July 15th 2006 from noon to 5pm.
* Server virtualization (multiple virtual computers on a single physical computer) [on the cheap|http://www.vmware.com/products/server/] with VMWare Server.
* The [50 terabyte protein optical disc|http://www.dailytech.com/article.aspx?newsid=3265]
* [Intel Core 2 review|http://www.anandtech.com/cpuchipsets/showdoc.aspx?i=2795]

! Dean Takahashi

[dean_takahashi_300w.jpg| Our Guest, 
Dean Takahashi, is a staff writer at the San Jose Mercury News, where
he writes about video games, semiconductors, and other technology
stories. He has been a journalist for 18 years, most of that time
covering technology news. He previously worked at the Red Herring
Magazine, the Wall Street Journal, the San Jose Mercury News, the Los
Angeles Times Orange County Edition, the Orange County Register, and
the Dallas Times Herald.]

He''s an avid game player and lives in the San Jose Area with his wife
and three kids. Dean is originally from Sacramento. He got a bachelors
degree in English at UC Berkeley and a master''s in journalism at
Northwestern University. He published Opening the Xbox, a book about
the making of Microsoft''s first video game console, in 2002. And He
has written The Xbox 360 Uncloaked, a sequel that covers the making of
the Xbox 360.

Dean wrote his original Xbox book over 18 months, from August 2000 to March
2002. He formally started work on The Xbox Uncloaked in August, 2005, but
drew from more than four years worth of notes, gathered while covering the
video game industry, picking up from where his first book left off.

The book is an independent journalistic enterprise. Microsoft isn''t paying
Dean or pre-approving the book. They granted Dean access to top executives
and key players, but he supplemented the reporting with his own
investigations, using a wide array of sources and years of experience
covering games, business and technology.

Dean''s premier episode of GeekSpeak was August 8th 2002, in which we discussed his first book, Opening the Xbox.





', 1, '2006-07-15 01:50:37', '2006-07-15 11:15:10', 'live', '2006-07-15 10:00:00', 67, NULL, 0);
INSERT INTO shows VALUES (7, '"Makers," with author Bob Parks', NULL, '', 'We get excited about cool technology, and nothing is more exciting then technology improvisation and personal creation. Bob Parks has covered the quirky, fascinating personalities behind the latest technologies. His feature articles have apeared in "Make", "Wired", "Outside", and "Business 2.0". His new book [Makers: All Kinds of People Making Amazing Things in Their Backyard, Basement, and Garage|http://www.oreilly.com/catalog/makers/] available from [O''REILLY|http://www.oreilly.com/], is packed full of people doing their own cool stuff with technology.', NULL, 2, '2006-03-15 07:06:02', '2006-03-30 14:35:05', 'live', '2006-02-18 10:00:00', 3, '', 0);
INSERT INTO shows VALUES (10, 'Google Maps Hacks', NULL, '', 'Authors Rich Gibson and Schuyler Erle join the Geeks for a discussion of online mapping, specifically their new book, [Google Maps Hacks: Tips &amp; Tools for Geographic Searching and Remixing|http://www.oreilly.com/catalog/googlemapshks/] available by [O''REILLY|http://www.oreilly.com/].', NULL, 1, '2006-03-18 13:44:18', '2006-03-30 14:35:40', 'live', '2006-02-25 10:00:00', 5, NULL, 0);
INSERT INTO shows VALUES (6, 'Congressman Sam Farr', NULL, '', 'Congressman [Sam Farr|http://www.farr.house.gov/] discussing internet privacy, the recent subpoena of Google by the Federal Government and more. Geeks Miles Elam, John Tracy, Sean Cleveland, Lyle Troxell and host Drew Meyer.', NULL, 1, '2006-03-13 11:58:29', '2006-03-30 14:36:13', 'live', '2006-02-11 10:00:00', NULL, '', 0);
INSERT INTO shows VALUES (41, 'Hydrogen Hype, Ter(r)a Tragedy and Planet Ponderings', NULL, NULL, 'Geeks Lyle, John, and Sean will be on hand to discuss the week''s news and to take your calls.', '! Week in Geek

!! Nintendo''s Wii

Nintendo Wii gaming console launches November 19th.
Nintendo announced that it''s gaming console called Wii will be launched in the US on November 19th, in Australia on December 7th, and in Europe on December 8th, and will well for $250 in the US.

The price includes one wireless Wii Remote controller, one Nunchuk controller, and the groundbreaking collection of five different Wii Sports games on one disc.

Every Wii console includes a series of on-screen "channels" that make up the Wii Channel Menu that is the starting point for all of the console''s functions. When connected to a TV, the Wii Channel Menu offers a simple interface, letting users pick games to play, get news or weather, view and send photos or even create playable caricatures of themselves to use in actual games.

The most interesting aspect of Wii is the controller that  allows users to pinpoint targets in games or move through the Wii Channel Menu. Nintendo dubs it an intuitive control system that will be understood immediately by everyone, regardless of their previous experience with video games, and will make games both easier and more intense. For example, in the Wii Sports tennis game, players swing the Wii Remote like a racket to hit the ball, as in real life. They can add topspin or slice the ball just by angling their hands and wrist like they would in a real match.

The downside: Wii will not include a DVD player, so it cannot play DVD movies. Nintendo feels most people already have a DVD player and it was a good way to cut costs. Some games may be region-locked, as is the case wth Xbox 360 games, but this is not required by game publishers.
[Read a liveblog of Nintendo''s NYC Event|http://kotaku.com/gaming/nintendo/liveblogging-nintendos-nyc-event-200486.php].


!! Microsoft launched its Zune portable media player


[Zune| http://www.microsoft.com/presspass/press/2006/sep06/09-14ZuneUnveilingPR.mspx] is a digital media player that competes head-to-head with the Apple iPod. Zune comes in black, white or brown colors and features a 30GB hard drive, 802.11b/g wireless connectivity, a USB 2.0 interface and a bright 3-inch LCD video screen that works in portrait or landscape mode. It also includes an FM tuner, and advanced tuning capabilities allow you to see the name of the song currently playing on selected frequencies that broadcast a Radio Broadcast Data Standards (RBDS) signal.

With Zune, users can share music between devices using Zune-to-Zune music sharing that utilizes the integrated wireless connection to share selected songs, homemade recordings, playlists and pictures between Zune devices that are within range. Shared songs can be listened to up to three times over the course of three days and can be later purchased from Zune Marketplace.

Zune Marketplace is Microsoftís software that replaces Appleís iTunes. It allows users to purchase songs individually or in bulk using a flat-fee-based Zune Pass subscription. Zune Marketplace only runs on a Windows XP PC and requires Windows XP Service Pack 2 and high-speed Internet connect. With it, users can import audio files in unprotected WMA, MP3, and AAC audio formats, photos in JPEG format, and videos in WMV, MPEG-4, and H.264 formats.
[A gallery of Zune pics can be seen at Paul Thurrott''s SuperSite for Windows| http://www.winsupersite.com/showcase/zune_gallery_01.asp].

!! Seagate Breaks World Magnetic Recording Density Record

[Seagate Technology| http://www.seagate.com/] yesterday set a world record for storing bits of data on magnetic media ó 421 Gbits per square inch (421 Gbit/in2)! The demonstration used perpendicular recording heads and media created with currently available production equipment. Seagate claimed this method validates its ability to scale the technology for the foreseeable future without major technology changes or capital additions.

What does this mean for hard drive disk capacities? Seagate expects use of this technology will enable:
* 1-and 1.8-inch consumer electronics drives to reach capacities of 40GB to 275GB (gigabytes)
* 2.5-inch notebook drives to reach capacities of 500GB
* 3.5-inch desktop and enterprise-class drives to reach capacities of nearly 2.5TB (terabytes)

At 2.5TB capacity, a hard drive would be capable of storing 41,650 hours of music, 800,000 digital photographs, 4,000 hours of digital video or 1,250 video games. Seagate anticipates that solutions at these density levels could begin to emerge in 2009.

!! Pluto This Week

Pluto is now named [Asteroid 134340| http://news.nationalgeographic.com/news/2006/09/060915-pluto-name.html]. Xena is now named [Eris| http://www.godchecker.com/pantheon/greek-mythology.php?deity=ERIS].

!! BMW and Chevrolet announce hydrogen vehicles*

[The BMW Hydrogen 7|http://www.bmwcca.org/node/5349] is powered by a 191 kW/260 hp twelve-cylinder hydrogen combustion engine and accelerates from 0-100 km/h in 9.5 seconds with a top speed of 143 mph. The vehicle runs on liquid hydrogen and, when needed, the dual-mode power unit switches over to conventional premium gasoline. The development of hydrogen technology is part of the BMW Group''s Clean Energy strategy, which serves to fulfill current and future demand for individual mobility without the use of fossil fuels. The Hydrogen 7 has a high-pressure storage tank for 17.6 pounds of liquid hydrogen, good for 125 miles of driving. At the touch of a button, the driver can switch to the 19.5-gallon gasoline fuel tank for another 300 miles cruising.

The Chevrolet Sequel
is a petroleum-free vehicle that runs on hydrogen. The Sequel, which debuted at the 2005 North American International Auto Show in Detroit, uses renewable hydrogen as a fuel and emits only water vapor. GM officials say the five-passenger crossover SUV is the first car to integrate a hydrogen fuel cell propulsion system with advanced technologies like wheel hub motors and lithium-ion batteries. The Sequel can travel an estimated 300 miles between fill-ups and can reach 60 miles-per-hour (mph) in 10 seconds.  Other benefits include unequaled control on snow and ice, or uneven terrain, 70-percent more torque for unparalleled acceleration, shorter braking distances, and the ability to "talk" to other vehicles about traffic congestion or road conditions.



!! AOL has launched My eAddress

The [My eAddress| http://media.aoltimewarner.com/media/newmedia/cb_press_view.cfm?release_num=55254608] service offers Internet users the ability to create their own e-mail address with personal domain names like you@thenameyouwant.com. The new service, which is free for all Internet users, allows individuals to create addresses with up to 100 additional identities onto their customized domains ending in .COM or .NET. AOL officials say the My eAddress domain can also be used as an AIM address for sending and receiving instant messages, to access various AOL features and will soon be available to create personal Web pages.
', 5, '2006-09-15 23:22:36', '2006-09-17 11:01:05', 'live', '2006-09-16 10:00:00', 82, NULL, 21);
INSERT INTO shows VALUES (32, 'Geek News and Calls', NULL, NULL, 'Geeks Lyle Troxell, John Tracy, Drew Meyer, and Miles Elam take your calls and keep you up to date on the week''s news in the geek world.', '! Geek News

   * More info on [Dell laptops going up in smoke|http://www.personaltechpipeline.com/190600186?cid=rssfeed_pl_ptp]; be sure to check out the pretty pictures by [the campfire|http://www.theinquirer.net/default.aspx?article=33191]
   * More from Cassini-Huygens about [Titan|http://www.bloomberg.com/apps/news?pid=20601086&sid=ajCR9ork8Lu0&refer=latin_america], one of Saturn''s moons
   * World''s fastest car from [Barabus|http://www.leftlanenews.com/2006/07/21/barabus-tkr-takes-over-as-worlds-fastest-car/]

! Troubleshooting

   * "[MPREXE caused an invalid page fault in module Kernel32.dll|http://support.microsoft.com/kb/151708/]"

! Information

   * Google''s [Picasa|http://picasa.google.com/] photo application. Two more options mentioned for photo management are [iMatch|http://www.photools.com/] and [iView MediaPro|http://www.iview-multimedia.com/]. [Lyle|http://geekspeak/profiles/Lyle/] uses iMatch for photo management on Windows, but really likes iView, and might be switching. The only issue with iView is it''s poor keyword/category assignment support; iMatch has a great interface for assigning keywords, and it is very scriptable, which is disirable for a geek like Lyle.
   * The Internet Crime Complaint Center can be found at [http://ic3.gov/].', 7, '2006-07-22 10:14:07', '2006-07-22 17:17:39', 'live', '2006-07-22 10:00:00', NULL, NULL, 0);
INSERT INTO shows VALUES (42, 'Hacktivismo, BrowserCache and VistaDisca', NULL, NULL, 'Microsoft''s Vista all versions on one disk, browser cache clearing, Hacktivismo anonymous web browsing and much more covered by Sean, Lyle, Drew and Miles.', '! Week in Geek

!! Hacktivismo Enables Anonymous Web Surfing with Firefox-based Browser
[Hactivismo|http://www.hacktivismo.com/], an international group of computer security experts and human rights workers, just released Torpark, an anonymous, fully portable Web browser based on Mozilla Firefox. Torpark comes pre-configured, requires no installation, can run off a USB memory stick, and leaves no tracks behind in the browser or computer. Torpark is a highly modified variant of Portable Firefox, that uses the TOR (The Onion Router) network to anonymize the connection between the user and the website that is being visited.

When a user logs onto the Internet, a unique IP address is assigned to manage the computerís identity. Each website the user visits can see and log the userís IP address. Hostile governments and data thieves can easily monitor this interaction to correlate activity and pinpoint a userís identity.

Torpark causes the IP address seen by the website to change every few minutes to frustrate eavesdropping and mask the requesting source. For example, a user could be surfing the Internet from a home computer in Ghana, and it might appear to websites that the user was coming from a university computer in Germany or any other country with servers in the TOR network.

It is important to note that the data passing from the userís computer into the TOR network is encrypted. Therefore, the userís Internet Service Provider (ISP) cannot see the information that is passing through the Torpark browser, such as the websites visited, or posts the user might have made to a forum. The ISP can only see an encrypted connection to the TOR network.

However, users must understand that there are limitations to the anonymity. Torpark anonymizes the userís connection but not the data. Data traveling between the client and the TOR network is encrypted, but the data between the TOR network and websites is unencrypted. Therefore, the user should not use his/her username or password on websites that do not offer a secure login and session (noted by a golden padlock at the bottom of the Torpark browser screen).

[DOWNLOAD TORPARK|http://torpark.nfshost.com/download.html]



!! Warner Engineers Patent DVD/HD DVD/Blu-ray Hybrid Multilayer Dual Optical Disc

[Dailytech ran a story|http://www.dailytech.com/article.aspx?newsid=4201] about two Warner engineers, Alan Bell and Lewis Ostrover, who came up with an idea for a hybrid disc that could hold DVD content, HD DVD content, and Blu-ray content on the same disc!

the invention pertains to an optical disc that includes one data layer having a standard CD or DVD format and a second data layer having a high-capacity format, and/or having two high capacity formats on one disc. For example, HD DVD discs embed data in 0.6mm deep pits while Blu-ray stores data in 0.1mm deep pits, which means the two layers can co-exist on the same side of a disc. 

By using reflective films, the inventors say their disc would enable drive lasers to read through the underlying HD DVD layer to the Blu-ray data. Additional information also could be stored on the other side of the disc.

The Patent Abstract: A data disc consists of several layers, including at least one layer conforming to a first format, and a second layer conforming to a second format. The formats can include CD, DVD, HD and BD formats and the layers may be physical, logic or application layers.

[Here is the actual patent application|http://appft1.uspto.gov/netacgi/nph-Parser?Sect1=PTO1&Sect2=HITOFF&d=PG01&p=1&u=%2Fnetahtml%2FPTO%2Fsrchnum.html&r=1&f=G&l=50&s1=%2220060179448%22.PGNR.&OS=DN/20060179448&RS=DN/20060179448]



!! Windows Vista DVDs to include ALL versions of Vista

Microsoft has confirmed that all versions of Windows Vista will ship on a single DVD disc, using a feature called Windows Anytime Upgrade. This means all six or seven flavors of Windows Vista (Starter Edition, Home Basic Edition, Home Premium Edition, Professional Edition, Small Business Edition, Enterprise Edition, Ultimate Edition) will be bundled on a single DVD disc, making it easy to upgrade Windows Vista to any version on the fly.

Microsoft did not give pricing details and it is unclear whether the reduced production and retail costs would be passed onto the consumer in the form of cheaper upgrades. Microsoft denied that Windows Anytime Upgrade would prove an attractive target for hackers, saying Vista was "the most secure version of Windows yet."

Ken "Caesar" Fisher of Ars Technica has a [detailed blog entry about Vista on one disc|http://arstechnica.com/news.ars/post/20060301-6295.html] with some interesting points.

!! The San Jose Semephore, in the Adobe building

[San Jose Semephore|http://www.sanjosesemaphore.org/] a visual apparatus for communicating messages over distance.

San Jose Semaphore, by artist Ben Rubin, is a permanent public artwork commissioned by Adobe Systems Incorporated in collaboration with the City of San Joseís Office of Cultural Affairís Public Art Program.

Located within the top floors of Adobe''s Almaden Tower headquarters in San Jose, California, San Jose Semaphore is a multi-sensory kinetic artwork that illuminates the San Jose skyline with the transmission of a coded message. Cracking the coded message is posed as a challenge for the public.

San Jose Semaphore''s four ten-foot wide illuminated disks rotate every 7.2 seconds, engaging viewers with a steady, glowing, and purposefully moving presence. The artwork''s illuminated disks perform a kind of mechanical dance as a method of communication. A low-power radio broadcast provides a soundtrack that is audible within 2-3 blocks of the Almaden Tower on AM 1680. An online simulcast provides a way to see and hear the piece remotely.

!! New BOINC project, SpinHenge, launched Sept 2

In the research-field "nano-technology", in the zone "Molecular Magnets: Controlled Nanoscale Magnetism", promoted by the American energy ministry (DOE) of interdisciplinary main research project, physicists, chemists, mathematicians and engineers are assigned to make molecular magnetic materials technologically appropriable. Thereby mathematical calculations need to be performed. Because these calculations are very time-consuming, a synchronized execution on numerous computers is obvious. Read more about [SpinHenge|http://spin.fh-bielefeld.de/].



!! Zero-Day Team Launches with Emergency IE Patch

A dark horse security group formed after the WMF attacks in late 2005, the [ZERT|http://isotf.org/zert/] (Zero Day Emergency Response Team) has released a patch to attempt to slow the malware attacks on Windows. 


!! Tech Manufacturers Rally Against Net Neutrality


Producers of networking hardware such as Motorola, Corning, and Tyco have come out against Net Neutrality. They support the current senate communications bill, and urge immediate action. ''Don''t be confused by these spurious complaints about Net neutrality,'' Tim Regan, a vice president with fiber optic cable manufacturer Corning Inc., said. ''Net neutrality is a solution in search of a problem''. [Full Article|
http://news.com.com/Tech+manufacturers+rally+against+Net+neutrality/2100-1028_3-6117241.html?tag=nefd.lede]



!! Hotel Minibar Key Opens Diebold Voting Machines


As if Diebold doesn''t have enough to worry about! On the [Freedom To Tinker blog|http://www.freedom-to-tinker.com/?p=1064], Ed Felten, one of the co-authors of the recent report ''Security Analysis of the Diebold AccuVote-TS Voting Machine'', reveals an even more bizarre finding related to the initial report. It turns out that you can gain access to an AccuVote-TS machine using a hotel minibar key. In fact, the key in question is a utilitarian type used to open office furniture, electronic equipment, jukeboxes, and the like. They might as well hand them out like candy.


!! Tracking Users Via the Browser''s Cache

A method of tracking using the browser cache instead of cookies. A demonstration shows that tracking can remain continuous if you clear only cookies or only the cache, but not both. (Firefox''s Clear Private Data tool can be set to clear both when closing the browser.) [Slashdot has an interesting article on tracking users via the browser''s cache|
http://yro.slashdot.org/article.pl?sid=06/09/17/2126210]

', 1, '2006-09-23 14:16:02', '2006-09-23 15:08:40', 'live', '2006-09-23 10:00:00', 83, NULL, 8);
INSERT INTO shows VALUES (40, 'The Real and Imaginary History of Algebra', NULL, NULL, 'What is Algebra good for? Teachers claim students need it for critical thinking and logic skills. Biologists, economists, scientists, engineers, and chemists claim they actually use it--daily. Construction workers claim that higher math is used to calculate angles, to determine the amount of wood required in a project and the volume of cement to be used. Really? Just what is Algebra, where did it come from, and how often is it used by mere mortals?

John Derbyshire, mathematician, linguist, and celebrated author joins the Geeks for a discussion about his new book [Unknown Quantity, A Real And Imaginary History of Algebra|http://www.amazon.com/Quantity-Real-Imaginary-History-Algebra/dp/030909657X].', '*! Week in Geek
* Target looses [Web Accessibility lawsuit|http://www.webstandards.org/2006/09/14/target-interim-ruling/].

* [MySpace|http://www.myspace.com/] users are [now 35 and older|http://apnews.excite.com/article/20061006/D8KIT3IO0.html].

* [Single-pixel camera|http://www.newscientisttech.com/article.ns?id=dn10233] could simplify imaging. A new camera uses mirrors to reflect light onto a single pixel sensor and taking many shots miliseconds apart. The main benefits are more efficient energy use and more compact file sizes. This might also mean cheaper hardware for night-vision cameras that read infra-red and other non-visible spectrums of light.

* ["Monster" fossil found|http://abcnews.go.com/Technology/wireStory?id=2531358] in Jurassic graveyard. Scientists have found a fossil of a ìMonsterî fish-like reptile in a 150 million-year-old Jurassic graveyard on an Arctic island off Norway.



!A Set of Questions Worthy of Discussion
We didn''t actually use these questions, but these would have been good questions of this amazing guest. Maybe next time we have him on.

* Who is Diophantus and why should he be crowned the father of Algebra even though he was late by two millenia?
* What is math exactly, and how does it relate to the mind?
* What is the future of Algebra?
* What is the story of the mysterious x (x=a+b), and how has its symbolism changed the World?
* Why is Algebra significant today?
* How has the evolution of Algebra change the way we think?
* Does a mathematician see the world differently from others?


', 1, '2006-09-14 10:29:49', '2006-10-07 23:52:38', 'live', '2006-10-07 10:00:00', 76, NULL, 21);
INSERT INTO shows VALUES (43, 'A Battery of Roving Plant Cores', NULL, NULL, 'Exploding batteries, plants that smell, 80-core CPUs, and the NASA Mars rovers (eat your heart out Energizer Bunny!). The Geeks Miles Elam, Lyle Troxell, Sean Cleveland, and Drew Meyer take your calls and cover the news.', '! Geek News

!! Sony Global Recall of [Li-Ion|Lithium-Ion] Batteries

Find out [more about the story|http://www.marketwatch.com/News/Story/Story.aspx?dist=newsfinder&siteid=google&guid=%7B90DDF909-64A6-43D9-839F-E00D49339CA2%7D&keyword=], which affects laptops from Dell, Apple, Toshiba, and Lenovo (IBM).

!! Mars Rovers

Geek news from Mars! Run for your lives!!!

!!! NASA Mars Rover Reaches New Vista

The NASA Mars Rover Opportunity finished its 21-month, 5.7 mile journey from the "Endurance" crater to "Victoria Crater," a crater approximately five times wider than the previous statdium-sized crater it studied for half a year. Steve Squyres of Cornell University calles it "a geologist''s dream come true." He is hoping to learn whether the wet era they found recorded in the rocks closer to the landing site extends farther back in time. The deepness of Victoria Crater may let them do just that. The Mars Rover Opportunity has been exploring Mars since January 2004, more than 10 times longer than its original prime mission of three months. NASA announced that operations for both the Opportunity and Spirit rovers will be minimized for much of October as Mars passes nearly behind the sun from Earth''s perspective, making radio communication more difficult than usual.

!!! Next Mars Rover May Carry Plutonium

Will the next NASA Mars rover draw its electrical power from a nuclear generator or solar arrays? It seems local residents of Cape Canaveral, Florida, [will have an opportunity to weigh in on NASA''s choice|http://www.floridatoday.com/apps/pbcs.dll/article?AID=/20060927/NEWS02/609270357]. The launch is set for 2009, sometime between September and November, on an Atlas 5 rocket. NASA safety studies with the Department of Energy show there is a 1 in 420 chance of an accident early in the flight resulting in a release of radioactive material over the sky above Cape Canaveral. The type of nuclear generator is similar to those launched on past space missions, including New Horizons probe launched earlier this year bound for Pluto and the 1997 Cassini probe now orbiting Saturn. Past protests have not stopped NASA from launching probes in the past. The type of plutonium fuel used is not the highly explosive kind used in nuclear warheads, but rather a grade that is only dangerous if reduced to fine dust. According to NASA, the generators are subjected to intense testing to ensure they will hold up to violent rocket explosions, and pellets of plutonium, much like ceramic, are designed not to break up.

!! A Plant That Can Smell

No, not a stinky plant, [a plant that actually detects odors|http://www.nwfdailynews.com/articleArchive/sep2006/parasiticweedsniffs.php] from nearby plants.

!! Intel Processor News

Intel lets us know what''s in store for tomorrow and beyond.

!!! Intel Announces Quad-Core Processor

Intel''s Core 2 Quad is two Core 2 Duo processors slapped together -- literally. Combined into a single multi-chip package, the first processor, targeted at gamers and content creators, will be shipped in November and will be called the Intel Core 2 Extreme quad-core processor. Intel claims it will deliver 70 percent faster integer performance over todayís Core 2 Extreme dual-core processor. Intel''s mainstream quad-core processor will ship in the first quarter of 2007 and will be called the Intel Core 2 Quad processor. For servers, Intel will introduce a new low-power, 50-watt Quad-Core Intel Xeon processor L5310 for [blade servers|http://en.wikipedia.org/wiki/Blade_server] in the first quarter of 2007.

!!! Intel Provides Peek at Processing Future: Processor with 80 Cores

At the Intel Developer Forum this week, Intel [unveiled its disclosed it''s Tera-Scale Research Chips|http://www.intel.com/pressroom/archive/releases/20060926corp_b.htm], an Intel five-year plan aimed at delivering a single processor chip containing 80 processor cores with the ability to enable a trillion floating-point operations per second on a single chip. In computer terminology, it will deliver 1 teraflop of performance. Ten years ago, the [ASCI red supercomputer|http://www.sandia.gov/ASCI/Red/RedFacts.htm] at [Sandia National Laboratories|http://www.sandia.gov/] delivered 1 [teraflop|Trillion Floating Operations Per Second] -- the first to do so -- using 4,510 computing nodes. Each of the 80 floating-point cores will run at 3.16[GHz|Gigahertz] and will utilize numerous innovations including:

    * Improved energy efficiency: the modularity would activate only those cores that are needed while the others sleep.
    * Improved performance: Heat is a big limiter of performance and processor speed. Workloads could be distributed evenly across the chip, avoiding the creation of hot spots.
    * Extended lifetimes: Many cores allows a few to be held in reserve as spares. If, over time, a core wears out, a spare could takes its place to maintain performance.
    * New capabilities: Integration is key and could include integrated multimedia accelerators, networking, security, and other tasks.
    * On-die interconnect fabric: Cores communicate via a scalable, on-chip interconnect fabric or mesh technology, allowing traffic to be easily rerouted to avoid network congestion.
    * High bandwidth memory: With a little platform innovation, memory bandwidth can be greatly increased by using 3-D stacked memory that is attached below the processor for optimal heat dissipation.

Read more [here|http://www.intel.com/technology/techresearch/terascale].', 7, '2006-09-30 10:42:41', '2006-11-09 23:18:17', 'live', '2006-09-30 10:00:00', 88, NULL, 20);
INSERT INTO shows VALUES (75, 'Icy Hot Slow Broadband', NULL, NULL, 'The Geeks discuss the news and talk tech. This Week: Broadband may not be tallied by zip code anymore, while the term Broadband may soon be changed to encompass 2 Megabits or faster speeds. Oh, astronomers have discovered ice that is 300 degrees Celsius! These stories and more brought to you by Geeks Lyle, Miles, Ryder, and Alex (off-air).', NULL, 7, '2007-04-16 14:01:50.792487', '2007-06-26 20:15:04.985404', 'live', '2007-05-19 10:00:00', 164, NULL, 3);
INSERT INTO shows VALUES (73, 'Cracked: From Bee Disappearances to Elections', NULL, NULL, 'Elections that are run using the Jet database engine, and bees that apparently don''t hate cell phones after all. This and your calls, answered by Miles Elam, Ryder Brooks, and host Lyle Troxell.', NULL, 7, '2007-04-06 22:51:53.063164', '2007-06-26 20:27:56.886528', 'live', '2007-04-28 10:00:00', 165, NULL, 3);
INSERT INTO shows VALUES (44, 'Spam, Solar, and Laptops for Kids', NULL, NULL, 'Geeks Lyle Troxell, Sean Cleveland, Drew Meyer, and Miles Elam take your calls and talk about the week''s geek news.', '! News

!! OLPC

Learn more about [the [OLPC|One Laptop Per Child] project|http://laptop.org/], [the hardware|http://wiki.laptop.org/go/Hardware_specification], [the software|http://wiki.laptop.org/go/Software], and related [content for educators|http://wiki.laptop.org/go/Educators] to learn more.

!! Spamhaus Under Fire

[Spamhaus|http://www.spamhaus.org/], the largest public [RBL|Real-time Blackhole List], has been [sued by an organization that Spamhaus has deemed to be a spammer|http://yro.slashdot.org/article.pl?sid=06/10/09/1825232]. Due to jurisdiction questions and questionable legal strategy, Spamhaus is looking at a $11.7 million default judgment levied against them. Many experts worry the loss of Spamhaus will result in a massive increase in the amount of spam we all find in our inboxes. This will be a case to watch.

! Calls

!! How do I remove Firefox since the site I want requires Internet Explorer?

Woah! Slow down there! Internet Explorer and Mozilla Firefox can peacefully coexist as long as you set it up correctly. Using Firefox, go to the [IE Tab extension page|https://addons.mozilla.org/firefox/1419/] and click install. From that moment on, you will see a small icon in bottom right corner of your browser. If you click on it, it will change from the Firefox logo to the Internet Explorer "blue E" icon, and you will be viewing the site as though you were in IE. Simple!', 7, '2006-10-14 10:58:15', '2006-11-09 23:28:36', 'live', '2006-10-14 10:00:00', 90, NULL, 4);
INSERT INTO shows VALUES (45, 'Solar Mike and Zombies Are Among Us', NULL, NULL, '[Solar Mike|http://solarmike.net/] joins The Geeks in a discussion on the latest from the solar power field. Also, the zombies -- zombie PCs -- are here in force, and they''re harder to find than ever before. IE version 7 on the other hand is much easier to find. Find out more about these and other stories on today''s episode of Geek Speak.', '! Geek News

!! Evolutionary Nonsense

The BBC recently posted an article suggesting that humans would split into two distinct species, one "tall and beautiful" and the other "dumb and troll-like." It''s a shame that the BBC was taken in by this nonsense as it belies a fundamental misunderstanding of how evolution works.

Biologist PZ Meyers [thoroughly debunks this nonsence|http://scienceblogs.com/pharyngula/2006/10/utter_nonsense.php] (non-science?). The bottom line? Consider the source.

For more information on how it really works, check out this [online resource on evolution|http://evolution.berkeley.edu/] published by UC Berkeley.

!! Darwin Online

The [complete works of Charles Darwin|http://darwin-online.org.uk/] are being made available online, including the very first edition of Origin of Species. Unfortunately, Darwin''s original notebook was stolen in the 1980s. The notebook''s content will be available online however. It is hoped that the online release of this material will aid in finding the original.

!! Zombie PCs Harder to Detect

Those malicious individuals that control [Zombie PCs|http://en.wikipedia.org/wiki/Zombie_computer] have been changing their methods. Where they once were almost exclusively controlled through [[IRC|Internet Relay Chat]|http://en.wikipedia.org/wiki/IRC], now [botnets|http://en.wikipedia.org/wiki/Botnet] are [blending in better to the general network by transmitting their commands through [HTTP|HyperText Transport Protocol]|http://news.com.com/Zombies+try+to+blend+in+with+the+crowd/2100-7349_3-6127304.html?tag=nefd.lede] (the Web).

!! Internet Explorer 7 Released

Speaking of exploited systems, a new version of Microsoft''s popular web browser is available for free download. This release adds new features such as tabbed browsing and [phishing and fraud protection|http://en.wikipedia.org/wiki/Phishing]. Unfortunately, security with this browser is still an issue. An [exploit was found in the new browser within 24 hours|http://secunia.com/Internet_Explorer_Arbitrary_Content_Disclosure_Vulnerability_Test/] of release.

The Geeks still recommend alternative web browsers such as [Mozilla Firefox|http://www.mozilla.com/], [Safari|http://www.apple.com/macosx/features/safari/], and [Opera|http://www.opera.com/] instead. With the release of Microsoft''s next operating system, Vista, the security of Internet Explorer should improve. We''ll keep you posted.

! Solar Links

The [Clean Power Estimator|http://www.consumerenergycenter.org/renewables/estimator/index.html] to find some basic power requirements.

In related news, [the solar power business is on the rise|http://news.com.com/Solar-cell+business+poised+for+huge+growth/2100-1008_3-6126962.html] and well worth watching closely for new developments.

If you''re looking for more nuts and bolts, read about [how solar cells work|http://science.howstuffworks.com/solar-cell.htm] to generate electricity.', 7, '2006-10-21 09:26:37', '2006-11-09 23:00:14', 'live', '2006-10-21 10:00:00', 86, NULL, 10);
INSERT INTO shows VALUES (18, 'Sean''s Work Page', NULL, NULL, 'This is a page where Sean plays. And so should you.', '!Main Section

!! Testing Bugs

Fails to link text like [domain.com|http://domain.com] but works fine with
[domain com|http://domain.com]

Fails to link text with #s in domain [E3|http://e3expo.com/] (# work alright in the path, the problem lies in the hostname)



And this is a url with a number in it: [love of 6|http://www.sixlove6.com/] and there it is.
this is a main section

!!This is a sub section

this is a sub section

and another para

!Back to the main
Ain''t it grand!

!Replace the Windows XP Theme with Microsoft''s Royale Theme
There are many utilities available that allow the Windows XP theme to be replaced with shinier and prettier themes, however, they typically cost you money and/or system performance. Microsoft has recently released the Windows Media Center Edition skin called "Royale" that can be installed on any version of Windows XP.

Give your Windows XP a facelift. Ok, it''s not dramatic, but it''s different, and face it, the Blue and Oliver Green themes that come standard with Windows XP are very bright and annoying while the Silver theme is just downright dull. You can download the Royale theme [here.|http://www.microsoft.com/nz/windowsxp/downloads/nzbliss.mspx]

[royale_desktop_800.jpg|To install the Royale theme, first download it and save it to your hard drive, then install it by double-click the saved ''Royale Theme for Win XP.exe''. Next, open the Display Properties by either right-clicking on the desktop and selecting Properties or opening the Control Panel, selecting the Appearances and Themes category, and then clicking Display. In the Display Properties, click the Appearance tab and then select Royale in the Color scheme.]


!Disable Microsoft Word Smart Quotes
Microsoft Word, by default, replaces standard quotation marks and apostrophes with fancier and more curly marks that make printed text look better. However, if that text is to be used in HTML, it becomes unreadable. This is because these special characters used are a subset of True Type fonts that are not supported by HTML. When these special characters are used on Internet pages, those fancy marks disappear, often to be replaced by question marks. What you get is something that looks like this:

*The Geek?s shouted ?we love technology? at the top of their lungs.

Instead of copying copying your entire MS Word document over to a non-Microsoft text editor to clear these special tags, or resorting to an exhaustive search and replace, simply disable smart tags altogether.

[disable_word_smart_quotes.jpg|To disable Microsoft Word''s Smart Quotes, click the Tools menu, select AutoCorrect Options, then select the AutoFormat As You Type tab. Under the top section titled Replace as you type, remove the check from the "Straight quotes" with "smart quotes" box.]


!Save

[folder_options.jpg|Text]


Drew''s notes:
http://www.clamxav.com/ - free AV for Mac
http://www.clamwin.com - free AV for Windows


Perpendicular Recording flash animation from Hitachi:
http://www.hitachigst.com/hdd/research/recording_head/pr/PerpendicularAnimation.html

the "view" button on the toolbar - very cool, screenshot to follow


', 5, '2006-04-01 00:41:28', '2006-09-10 11:27:48', 'pending', '2006-10-01 10:00:00', NULL, NULL, 0);
INSERT INTO shows VALUES (17, 'GeekSpeak Tips & Tricks', NULL, NULL, 'Listener, do you desire electronic enlightenment? Do you wish to know the most intimate hard and soft parts of your computer? Gain adoration, wealth and power as you conquer the confusion, decimate the digital dichotomies and vanquish the villains of Windows, Macintosh, and Linux systems. Listen to the Geeks and become imbued with pure and potent knowledge. Master the secrets and complexities of that mysterious electronic box. Witness digital wonders. Amaze your friends with astounding feats. Listen to the Geeks today!', '!Windows Tips & Tricks

!!Protect Windows Against Viruses with AVG Anti-Virus - FOR FREE!
AVG Anti-Virus Free Edition is a free, yes free, anti-virus protection tool developed by Grisoft for home use. It is Geek tested and approved! Out of the kindness of their hearts, Grisoft is making their award-winning business and corporate antivirus software free for individual use. According to Grisoft, more than 25 million users worldwide use Grisoft AVG products to protect their computers and networks.

With AVG Anti-Virus Free Edition, you get the following:
 * Rapid virus database updates for the lifetime of the product
 * Automatic update functionality
 * The AVG Resident Shield, which provides real-time protection as files are opened and programs are run
 * The AVG E-mail Scanner, which protects your e-mail
 * The AVG On-Demand Scanner, which allows you to perform scheduled and manual tests
 * The AVG Virus Vault for safe isolation and handling of infected files

[avg_antivirus.jpg|[Download your copy today!| http://free.grisoft.com/doc/1]]

 
!!Replace the Windows XP Theme with Microsoft''s Royale Theme
There are many utilities and shell replacements available that allow the Windows XP theme to be replaced with shinier and prettier themes. Unfortunately, they are typically bloatware that not only cost money, but tax your system''s performance. Microsoft has recently released the Windows Media Center Edition skin called "Royale" that can be installed on any version of Windows XP, and best of all, it doesn''t tax your system.

Give your Windows XP a facelift. Ok, it''s not dramatic, but it''s different, and face it, the Blue and Oliver Green themes that come standard with Windows XP are very bright and annoying while the Silver theme is just downright dull.

[royale_desktop_800.jpg|To install the Royale theme, first [download it|http://www.microsoft.com/nz/windowsxp/downloads/nzbliss.mspx] and save it to your hard drive, then install it by double-click the saved ''Royale Theme for Win XP.exe''. Next, open the Display Properties by either right-clicking on the desktop and selecting Properties or opening the Control Panel, selecting the Appearances and Themes category, and then clicking Display. In the Display Properties, click the Appearance tab and then select Royale in the Color scheme.]


!!Disable Microsoft Word Smart Quotes
Microsoft Word, by default, replaces standard quotation marks and apostrophes with fancier and more curly marks that make printed text look better. However, if that text is to be used in HTML, it becomes unreadable. This is because these special characters used are a subset of True Type fonts that are not supported by HTML. When these special characters are used on Internet pages, those fancy marks disappear, often to be replaced by question marks. What you get is something that looks like this:

*The Geek?s shouted ?we love technology? at the top of their lungs.

Instead of copying copying your entire MS Word document over to a non-Microsoft text editor to clear these special tags, or resorting to an exhaustive search and replace, simply disable smart tags altogether.

[disable_word_smart_quotes.jpg|To disable Microsoft Word''s Smart Quotes, click the Tools menu, select AutoCorrect Options, then select the AutoFormat As You Type tab. Under the top section titled Replace as you type, remove the check from the "Straight quotes" with "smart quotes" box.]


!!Gain Access to File and Folder Options
By default, Microsoft hides a number of things from you including file extensions, protected operating system files, and hidden files and folders. Ever wonder why, when using Windows Explorer, you cannot see the contents of your C:\\ drive? You can rectify that by changing that setting in the Folder Options; it is called ''Display contents of system folders''. 

You can also make the way Windows displays files the same for every folder by clicking ''Apply To All Folders''. Simply click on a folder, click the View menu, and select either Thumbnails, Icons, Tiles, List, or Details. Then open Folder Options to set that view globally.

[folder_options.jpg|To access the Folder Options where these settings reside, open Windows Explorer, click the Tools menu and then select Folder Options. Under the View tab, add or remove check marks under the Files and Folders heading.]

! Macintosh Tips and Tricks

!! ClamXAV

While you may not need it today, by the time you do, it could be too late. Get the free Anti-Virus for the Apple Macintosh OSX: http://www.clamxav.com/

!! Quicksilver

"A unified, extensible interface for working with applications, contacts, music, and other data."

Looks vague enough to actually be useful! Try it out at [the Quicksilver website|http://quicksilver.blacktree.com/].


!! More about Perpendicular Recording Technology

Check out this catchy Perpendicular Recording animation from Hitachi:
http://www.hitachigst.com/hdd/research/recording_head/pr/PerpendicularAnimation.html', 5, '2006-03-30 13:59:51', '2006-04-01 11:11:14', 'live', '2006-04-01 10:00:00', 36, NULL, 0);
INSERT INTO shows VALUES (15, 'iD Tech Camps - Summer Camp for Junior Geeks', NULL, NULL, '[iD Tech Camps|http://www.internaldrive.com] offers a wide range of programs through its summer Computer Camp for kids ages 7-17. In their own words, "it is the mission of iD Tech Camps to deliver the finest technology instruction, delivered in a summer camp setting and held at prestigious universities, ultimately igniting the internalDrive in today''s young minds." Karen Thurm Safran, Vice President of Marketing for iD Tech Camps, joins the geeks to discuss this year''s exciting summer extravaganza.', 'Karen Thurm Safran, Vice President of Marketing for [iD Tech Camps|http://internaldrive.com] joins the Geeks to discuss their [summer courses|http://www.internaldrive.com/courses.htm] for kids ages 7-17 located at universities throughout the U.S. including UC Santa Cruz, Stanford University, and Santa Clara University. 

Corporate partnership allows id Tech Camps to ensure that kids are receiving instruction using the most up-to-date technology possible. The [Corporate Partners|http://www.internaldrive.com/corp_partners.htm] page lists the various types of courses offered, with links to the corporate partners involved in that area. Software and hardware are also available at special prices during camp season and through the remainder of the year.

The list of available courses includes, but is not limited to:

* Adventures in Gaming & Photoshop (NEW)
* Video Game Creation
* Digital Video Production
* Web Design & Flash Animation
* Programming & Robotics
* Sports & Tech with Stanford Athletics (Stanford only)
* Surf & Tech (UC Santa Cruz only)

The courses page lists age requirements, as well as restrictions (such as courses only offered at certain campuses, certain age groups, and prerequisites). Check out [Program Details|http://www.internaldrive.com/program_details.htm] for quick links to course descriptions and frequently asked questions such as day vs. overnight camps, tuition and hours, and courses available by location.

iD Tech Camps started out [locally in 1999|http://www.internaldrive.com/about.htm], is family owned and operated, and has become one of the leading summer computer camps in the country. They offer [small classes|http://www.internaldrive.com/teaching_style.htm], and hire only [adult instructors|http://www.internaldrive.com/staff.htm]. 

! Calls and Questions

!! Hal, Capitola
27min: "helping kids to get rich or to learn?" - Karen address this.

30min: "internal battle for a quite desktop pc" 

* We recommended http://silentpcreview.com/ but would love to have a better suggestion... and it came in, Chris ment http://www.silent.se/, which has lots of information on quiet machines.

* Sean''s basic suggestion: don''t get the top of the line, get a slower machine which does not create as much heat.

* Chris suggestes http://www.voodoopc.com silent computer.


!! Kate, Coraloitos
34min: "How can I find a Tax program for OS 9?"

* We suggest using a web application instead of trying to get something to run on Mac OS 9. Dedi suggests http://taxact.com/.

!! Bruce, Santa Cruz
36min: Has a "slow boat" computer and needs an upgrade. He does photos and needs advice on what to get for an upgrade = Mac?  Windows?

* Sean makes a few suggestions and says: "I like http://www.ibuypower.com/ and recommend the [Athlon 64 Best Buy|http://www.ibuypower.com/ibp/store/configurator.aspx?mid=108] as a base system."

!! David, Carmel (lives in Menlo Park)
43min: How can save my (browser) Favorites.  How to back them up.

* We had a whole bunch of suggestions on this.
* Dr. Dawn called in with a suggestion of http://www.myhq.com/ a free online bookmark manager.
* Chris suggested http://del.icio.us/ which Lyle uses for [his bookmarks|http://del.icio.us/lyle_troxell].

44min: Internet Explorer vs [Firefox|http://www.mozilla.com/firefox/] - security

* Miles takes a long time to say "use [Firefox|http://www.mozilla.com/firefox/]", it''s much safer.

!! Donna, Seaside 
47min Just bought a G4 I book, (used) how to change "ownership", or how about Re-install?

* Lyle says it''s an auto log-in problem and trying to delete the currently logged in user doesn''t work.
* Miles thinks it''s something else and invites Donna to send in an email. 
!!! Miles writes:

Finally found it. It''s by no means obvious.

# Click on the apple in the top left corner and choose System Preferences.
# Click on Sharing under Internet & Network
# Change the computer name

!!! John writes:
I think what Donna is asking for is how to change the name of the main account the PowerBook is set up with.

#!To do this:
# Go to the Apple Menu (upper Left, look for the Blue Apple), and choose System Preferences
# Click on the Accounts icon (lower Left under the System heading)
# You can type a new name there. You will have to authenticate with the administrative password.



!! Gordon, Corralitos (email)

49min my mac is  usually in sleep mode, and it takes just tapping any key to wake it up. Is there a keyboard shortcut to make it go to sleep instead of using mouse in menu?

* Dedi says that "[quicksilver|http://quicksilver.blacktree.com/] triggers can probably do that."

!!! John writes

Hi Gordon,

Yes, you can push Command + Power key, then s.

If you don''t have a power key on your keyboard, then you can press Control + Eject, then s.

', 6, '2006-03-21 23:10:03', '2006-04-10 22:55:06', 'live', '2006-04-08 10:00:00', 10, NULL, 0);
INSERT INTO shows VALUES (46, 'Bright, Shiny, and New', NULL, NULL, 'Geeks Lyle Troxell, Miles Elam, and Sean Cleveland along with special guest geek Alex Sleeis take your calls and discuss various exciting new products released this week.', '! Geek News

!! Firefox 2.0

The Geeks'' favorite browser, [Mozilla Firefox|http://www.mozilla.com/], has reached version 2.0 and is available for download now. New features worth checking out are built-in spell check for all web forms, crash protection to save your session, and [phishing|http://en.wikipedia.org/wiki/Phishing] protection to defend against fraud.

!! Ubuntu 6.10

One of the most popular distributions of Linux, [Ubuntu|http://www.ubuntu.com/], has reached version 6.10 (released 2006, 10th month, therefore 6.10). Available in both an installable version as well as a live CD. A live CD allows you to try it out without affecting your existing files or Windows version.

Incidentally, a live CD can also be used for peace of mind when browsing the big, bad internet. By booting off of the live CD, you can go basically anywhere without fear of viruses and spyware because nothing is saved or changed to your computer. Once you shut down or reboot, you start again with a clean slate as though you had never run the live CD. All your files are safe and sound.

!! Core 2 Duo MacBook Pro

The top-end Mac laptops have received a significant, new performance boost in the form of Intel''s Core 2 Duo processor. Find out more on [Apple''s web site|http://www.apple.com/].

! Geek Suggestions

!! Anti-virus

If you''re running Windows, you need anti-virus. No ands, ifs, or buts. It''s not an option. The only option available is which anti-virus software to choose from.

 * The free [AV|Anti-Virus] engine [AVG|http://free.grisoft.com/doc/1] from [Grisoft|http://www.grisoft.com/]. They also offer a commercial version.
 * [Avast!|http://www.avast.com/eng/avast_4_home.html], a free AV engine that also offers commercial support as well.

Those are some free options (so you have no more reasons to wait!), but [other free and commercial anti-virus|http://antivirus.about.com/od/antivirusvendors/] offerings are out there as well.

!! Spyware

"But isn''t that the same as a virus?" No, [not exactly|http://en.wikipedia.org/wiki/Spyware]. Along with existing anti-spyware offerings such as [Spybot Search and Destroy|http://www.safer-networking.org/], Microsoft has recently released their own anti-spyware software, [Microsoft Defender|http://www.microsoft.com/defender].
', 7, '2006-10-28 10:49:59', '2006-11-09 23:22:52', 'live', '2006-10-28 10:00:00', 89, NULL, 5);
INSERT INTO shows VALUES (8, 'DVD & CD Archiving with PowerFile', NULL, '', 'Join the Geeks as they discuss DVD and CD archiving. PowerFile join the geeks to discuss the latest in futuristic home DVD carousels and the battle over two next-generation competing standards; Blu-Ray and HD-DVD. If you watch a lot of DVD movies or want to make CD/DVD backups of data or digital pictures more available, then this show is for you!

Industry expert Jim Sherhart, director of Product Management for [PowerFile|http://powerfile.com/], will be available to help answer storage questions and provide his expert opinions.', '!GeekNews

*Free [Anti-virus software |http://free.grisoft.com/] mentioned on the show.

*More information on the [Mars Reconnaissance Orbiter |http://www.nasa.gov/mission_pages/MRO/main/index.html].', 3, '2006-03-15 14:42:28', '2006-04-12 14:13:15', 'live', '2006-03-18 10:00:00', 4, 'Jim Sherhart, Product Manager at PowerFile, (408) 375-5819

Confirmed by ACM', 0);
INSERT INTO shows VALUES (47, 'Email, Electronic Voting and Internet Blunders', NULL, NULL, 'Managing email and your phone, electronic voting, new Sony laptop are the batteries any good, [TWiT|http://www.twit.tv/] tech podcast, the Web''s effect on Politics - internet blunders and your questions and comments of technology.', NULL, 1, '2006-11-06 22:18:47', '2006-11-09 23:23:26', 'live', '2006-11-04 10:00:00', 87, NULL, 5);
INSERT INTO shows VALUES (12, 'Furry Lobster, Intel Conroe, and SiteAdvisor', NULL, '', 'GeekNews: New terestrial craters found using Google Earth, uninteresting tech from tradeshows including Microsoft''s handheld Oragami project, and the surprising performance of Intel''s next-generation Conroe processor. We also cover [Furry Lobsters|http://news.bbc.co.uk/1/hi/sci/tech/4785482.stm], and a wonderful new web tool called [SiteAdvisor|http://www.siteadvisor.com/]. To round out the show, we took calls from listeners.', NULL, 1, '2006-03-18 13:47:08', '2006-09-24 15:22:07', 'live', '2006-03-11 10:00:00', 55, '', 1);
INSERT INTO shows VALUES (11, 'GeekNews and Calls', NULL, '', 'The Geeks cover weekly news and take calls from listeners.

Claiming <a href="http://odeo.com/claim/feed/07b0ed2e964ab2a9">GeekSpeak Odeo Channel</a> (odeo/07b0ed2e964ab2a9)', NULL, 1, '2006-03-18 13:46:10', '2006-05-31 15:36:40', 'live', '2006-03-04 10:00:00', 56, '', 0);
INSERT INTO shows VALUES (122, 'Toast 9, Burning on a Mac', NULL, NULL, 'Patrick Nugent product manager of Toast, a CD and DVD authoring and burning software package from Roxio will join special host Timothy Jordan and the Geeks to talk about CD and DVD creation on the Macintosh operating system.', '! Our Guest
Patrick Nugent is a product manager for Roxio, a division of Sonic Solutions, the leading provider of consumer, professional and embedded CD and DVD authoring products such as Roxio Toast for Mac and Easy Media Creator for Windows.  As a self self-proclaimed digital media enthusiast, Patrick has played an instrumental role in the involvement of Roxio’s Macintosh products and strategy, exploring and learning how to navigate the often unmapped territory that comes with being on the cutting edge of digital media technology.  During his time at Roxio, Patrick oversaw the development and delivery of the award-winning Toast 8, and devotes his time and effort into making sure Roxio continues to deliver superior products that enrich Mac user’s digital experience.

! Supplementals

!! Anti-spyware

Got strange popup windows while you''re browsing the web? You might have spyware on your system. The Geeks recommend [Spybot Search & Destroy|http://www.safer-networking.org/en/download/index.html], but no matter which product you chose, be sure to chose one. Life is too short for annoying popup windows. But whatever you do, do not click on the links in the popups! That will only add to your problems, not contribute to solutions.

If you''re not part of the solution, you''re part of the precipitate. (Sorry folks, couldn''t resist.)

!! Free Audio Program

A simple-to-use and free application, [Audacity|http://audacity.sourceforge.net/], is a good one to use.

!! Merging Multiple tracks in iTunes

Judith from Watsonville wrote us to say...

"Thanks for your help today.  I could not figure out how to use Audacity to
join the tracks of the CD.   So I continuned my search for a solution by
using the search terms you recommended "mp3 merge" plus "mac os X".  I
found a page about a simple way of doing what I need to do using iTunes. Thought you might be interested."

* [iTunes Merging article on MacOSXhints|http://forums.macosxhints.com/showthread.php?t=6166]


', 1, '2008-04-18 11:56:09.120174', '2008-05-06 09:38:59.357895', 'live', '2008-05-03 10:00:00', NULL, NULL, 9);
INSERT INTO shows VALUES (48, 'Windows Vista with Chris Donahue of Microsoft', NULL, NULL, 'Chris Donahue, Director of Windows Graphics and Gaming Technologies at Microsoft, will be joining the Geeks to discuss Windows Vista. The Geeks plan to get the latest scoop on Vista features including parental controls, data backup, networking, quick bootup, new 3D Aero Glass interface, DirectX 10 gaming, search and organization, eliminating performance drain, and security.', 'As director of the Microsoft Windows Graphics and Gaming team, Chris Donahue leads a group accountable for promoting Windows with DirectX as a premier gaming platform. Donahue and his team are charged with providing game developers, publishers and independent hardware vendors with the information, tools and assistance they need to create gaming and entertainment content on the Windows platform.

Donahue joined Microsoft in January 2003 as technical evangelist for hardware and was promoted to director of developer relations. Previously he was the manager of developer relations at NVIDIA Corp. and worked at the ImagiNation Network (WorldPlay) as a producer for Cyberpark, a 3-D game world and environment.', 5, '2006-11-09 22:54:56', '2006-11-11 10:45:28', 'live', '2006-11-11 10:00:00', 85, NULL, 6);
INSERT INTO shows VALUES (20, 'MC Squared Computers', NULL, NULL, 'When your computer is broken and your 9-year-old guru is gone at computer camp, what are you to do? Find a reputable repair shop and cross your fingers! This week on GeekSpeak, the geeks are joined by Timothy P. Marshall, president and [CEO|Chief Executive Officer] of [MC Squared Computers|http://www.mcsquared.org], an Apple and Windows authorized service center located in Soquel, CA., to discuss computer repair. ', '!Our Guest

Timothy P. Marshall, president and CEO of MC Squared Computers Inc., has been an independent Apple Computer Specialist for over 30 years, dating way back to the Apple II.

MC Squared has been operational as a brick-and-mortar storefront since 1994 and is currently located on Soquel Drive in Soquel. They are an Apple and Windows Authorized Service Establishment and an Apple Authorized Sales Center. They specialise in both Mac and PC Service for carry-ins and on-site service. With over 12 thousand clients on record consisting of individual end users and small businesses they offer on-site personal training for both the Mac and PC platforms and most popular applications.

! Geek News

!! NASA Kids'' Club

Featuring animated educational activities for children in kindergarten through fourth grade, the site aims to appeal to both parents and educators wishing to help develop children''s knowledge in subjects such as science, technology and mathematics.

[NASA Kids'' Club|http://www.nasa.gov/audience/forkids/kidsclub/flash/index.html] may be rocket science, but getting there is as simple as clicking on the link.

!! No Eye Candy for Software Pirates

[CNet News|http://news.com.com/] reports that Microsoft is [blocking access to the Aero graphical user interface for illegal copies of Windows Vista|http://news.com.com/Vista+wont+show+fancy+side+to+pirates/2100-1016_3-6060700.html]. This is in contrast to earlier anti-copying efforts by the company where registration was targeted to the operating system as a whole as opposed to just the most recent features.

!! Evolving Evolution

[The New York Times|http://www.nytimes.com/] is running a story entitled "[Study, in a First, Explains Evolution''s Molecular Advance|http://www.nytimes.com/2006/04/07/science/07evolve.html]," (free registration required) describing how "scientists have for the first time demonstrated the step-by-step progression of how evolution created a new piece of molecular machinery by reusing and modifying existing parts."

In other news, [yet another "missing link" in human evolution|http://news.yahoo.com/s/afp/sciencepaleontology] has been discovered in what is now Ethiopia. [Yahoo News|http://news.yahoo.com/] by way of the Associated Foreign Press covers the story.

! Email from Mike, near Scotts Valley

Hello,

On this week''s show (MC Squared) their was a brief discussion of DSL vs. cable and someone asked for comments. 

Here''s my experience:

After years (literally) of trying to persuade the phone company that DSL was possible where I live, I finally gave up and ordered broadband cable, through Comcast. I was reluctant because I had heard bad things about the service and the cost was rather high. The cost was high--interestingly, as a non-cable customer, I found it was cheaper to order basic cable + broadband instead of broadband by itself. There are a number of second-party marketeers offering substantail, no-contract savings for the first 6 months.

Hardware is pretty cheap (it came free with my order.)

I consistantly get between 4 and 5 megabits/sec downstream and 370 k/bits upstream (as measured by the UCSC Web100 diagnostic.) I''ve had the service for about 3 weeks with very little trouble, I occasionally have to reset my router, but that''s a D-Link problem. The worst downstream speed I''ve encountered has been about 2 to 2.5 Mb/second...at its worst, it''s substantially higher than what DSL would have provided in my area.
 After a bit of a rocky start, I think Comcast and I are now on the same page (I had to remind them I ordered basic cable.) I must say their customer service and on-site installers have been first-rate and easy to reach (a real surprise for me and far better than my satellite provider, DirecTV.)

Finally getting high-speed Internet has been a truly tranformative experience; it''s a different Web when you break free from dial-up. (I''m a retired software developer and spend a lot of time on-line, using Open Source tools, which means a lot of downloads.) Being able to take advantage of high-bitrate media has been very enjoyable.

I hope this information has been helpful.

I enjoy the show, thanks for doing it.

Mike', 1, '2006-04-12 11:14:23', '2006-04-16 22:00:18', 'live', '2006-04-15 10:00:00', 54, NULL, 0);
INSERT INTO shows VALUES (49, 'Overclocking, SuperPI, and Playstation Riots', NULL, NULL, 'Lyle, Drew, and Sean discuss overclocking with SuperPI, Playstation 3 riots, ZUNE vs. iPod, the Windows Fresno alternative, and discuss the week in geek. As always, wackiness ensues.', '*! Calls
* Firewalls, Virus protection and all. The Geeks recommend the free [AV|Anti-Virus] engine [AVG|http://free.grisoft.com/doc/1] and [AVG Anti-Spyware|http://free.grisoft.com/doc/avg-anti-spyware-free/lng/us/tpl/v5] borth from [Grisoft|http://www.grisoft.com/]. 
* What memory to get? Drew says "try www.crucial.com."
* Drew likes a new local company Serengeti located in Santa Cruz near the intersection of Soquel Avenue and Seabright Avenue.
* Pat, Monterey: Portable audio recorder? Lyle suggested the [Marantz PMD660|http://www.d-mpro.com/users/folder.asp?FolderID=3629].


*! More on News
* [Playstation III Launch|http://news.google.com/news?hl=en&ned=us&ie=UTF-8&q=Playstation+3+launch&btnG=Search+News]
* [Microsoft Zune Launch|http://news.google.com/news?q=Microsoft+Zune+Launch&btnG=Search+News].
* [MP3 Player for Credit Card Theft|http://www.theregister.co.uk/2006/11/18/mp3_player_atm_hack/].
* [Windows Fresno Server|http://www.windowsitpro.com/Article/ArticleID/94297/94297.html].
* SuperPI for testing your machine. How fast can you do 1M places of PI? True [SuperPI for Windows|http://www.xtremesystems.com/pi/] ([alternate app|http://files.extremeoverclocking.com/file.php?f=36]) or [SuperPI for OS X|http://ocing3.free.fr/FTP/overclocking/super_pi/Kanada_lab/exec_Mac_OSX/].
* A [discussion of the possible failure of the $100 laptop project|http://hardware.slashdot.org/hardware/06/11/18/0733221.shtml].
', 3, '2006-11-18 11:19:56', '2006-11-21 17:29:13', 'live', '2006-11-18 10:00:00', 97, NULL, 10);
INSERT INTO shows VALUES (21, 'ThinkFree Online', NULL, NULL, 'The Geeks meet with Jonathan Crow, director of marketing for ThinkFree, Inc. [ThinkFree Online|http://online.thinkfree.com/] is an Internet-based office productivity suite that blends Microsoft Office with the Internet. It is comprised of three applications--ThinkFree Write for word processing, ThinkFree Calc for spreadsheet management and ThinkFree Show for creating presentations--and is targeted at families, students and business professionals. Join the Geeks as they discuss a new way of opening, editing, and creating Office documents with ThinkFree Online.', '!ThinkFree Online
[ThinkFree Online|http://online.thinkfree.com/] has been in beta since the summer of 2005 and upwards of 50,000 users have already tried it out. The official debut happens this Monday, April 24, and the Geeks are fortunate to have a representative of ThinkFree on the show to discuss their new service.

[thinkfree_screenshot_small.jpg|ThinkFree Online allows you to open, edit, and create Office documents in a web browser from any computer with an Internet connection. ThinkFree Online has been tested on most computers and browsers, including Internet Explorer 6.0, FireFox 1.5 and Safari 2.0. Operating systems supported include Microsoft Windows 98/ME/2000/XP, Mac OS X 10.4, Linux Fedora Core 3 and Haansoft Linux Workstation 2005.]

*!Here are a few key features:
*Create Microsoft Office-compatible documents from the Web
*Open and edit your Office documents anywhere and anytime
*Post documents directly to your blog without any conversion
*Create powerful Web presentations using a familiar interface
*Convert your existing documents to PDF format*Collaborative capabilities
*Organization and categorization features
*Consistent user interface regardless of computing platform

!The Guest
Jonathan Crow, director of marketing for ThinkFree, Inc., brings more than a decade of experience in marketing and sales to ThinkFree.  He serves as the companyís director of marketing, offering valuable insight and knowledge regarding leadership and marketing challenges faced by growing companies and brands.

Prior to joining ThinkFree, Jonathan was a marketing manager for SchoolMessenger, which is an education-telephony service company.   While at the firm, he created, implemented and managed internal and external marketing programs.  In addition, Jonathan managed the company''s internal PR program, resulting in a high level of successful outreach to the media. 

Before SchoolMessenger, Jonathan worked as a product marketing manager at Hewlett-Packard, where he directed communications projects, developed cross-media content and managed tradeshow presentations.  

Jonathan holds a B.A. in politics from the University of California, Santa Cruz. 

!About ThinkFree
ThinkFree Inc., headquartered in San Jose, California, is a leading developer of platform-independent office productivity solutions. A division of Haansoft Inc., a publicly held company on the Korean KOSDAQ stock market, ThinkFree''s mission is to offer market-leading software solutions that leverage the power of the Internet and provide users with a consistent, unified, and productive experience regardless of computing platform.  For more information, please contact ThinkFree at +1 408 432 5074, or go to [ThinkFree|www.thinkfree.com].

! Geek News

!! Opera 9 Beta Released

An alternative web browser, [Opera|http://www.opera.com/], has released a beta of their newest browser with features including Widgets, BitTorrent, content blocking, and more. Download it for free and give it a try.

!! HD DVD Gets An Edge on Blu-ray?

[C-net News|http://news.com.com/HD+DVD+debut+ups+ante+in+high-stakes+game/2100-1041_3-6062089.html] is discussing the rivalry between the two competing formats for the next generation of movie format to replace DVD. HD DVD appears poised to be released before Blu-ray, getting a leg up in the marketplace. Don''t count Sony out as the next Playstation will be using Blu-ray.

Check out the Wikipedia for more information on [Blu-ray|http://en.wikipedia.org/wiki/Blu-ray_Disc] and [HD DVD|http://en.wikipedia.org/wiki/HD_DVD].

!! Star Control Lives!

The [Star Control series of games may be getting a sequel|http://www.gamespot.com/pages/news/show_blog_entry.php?topic_id=24521940] if game author Alex Ness gets his way. For those of you unfamiliar with this series, especially Star Control 2, ranked by GameSpot as [one of the best games ever made|http://www.gamespot.com/gamespot/features/all/greatestgames/p-7.html], it was released in the early ''90s and garnered a devoted following (including a Geek or two).

The [3DO|http://en.wikipedia.org/wiki/3DO] version of Star Control 2 was released with an  open source license in 2002 under the name "The Ur-Quan Masters." You can find the new updates at [http://sc2.sourceforge.net/] for Windows, OS X, and Linux versions. Work is also underway to network-enable the venerable games to played over the internet.

!! Commercials You Can''t Fast Forward Through

Philips has created what they call anti-commerical skip tuner technology, which according to Daily Tech has [caused quite a bit of uproar|http://www.dailytech.com/article.aspx?newsid=1847]. You can also read [Philip''s response|http://www.dailytech.com/article.aspx?newsid=1889].

! Relevant Show Links

   * [Flickr|http://www.flickr.com/]: Image browsing and sharing online using Web 2.0
', 5, '2006-04-20 18:48:10', '2006-04-22 11:06:06', 'live', '2006-04-22 10:00:00', 57, NULL, 0);
INSERT INTO shows VALUES (50, 'Spam, Creationism, and 450GB Paper', NULL, NULL, 'Lyle, Sean, John, and Miles are back together to discuss the recent spam epidemics, Creationist museums under construction in Kentucky, and the renewed use of paper as a data backup medium. ...and we take your calls too.', '! Geek News

!! Copyrights and Wrongs

The US Copyright Office has issued new [rights|http://news.yahoo.com/s/ap/20061123/ap_on_hi_te/digital_copyright] -- or rather exceptions -- to the various copyright statutes currently on the books.

!! Paper for Digital Archival

A far cry from papyrus scrolls, an enterprising company has found a way to fit up to [450[GB|gigabytes] on to a piece of paper|http://www.arabnews.com/?page=4&section=0&article=88962&d=18&m=11&y=2006].

!! Too. Much. Spam.

The amount is growing, and it''s growing fast. How fast? E-Week reports that 70,000 compromised PCs can send over a billion messages per day. And to make matters worse, the spam is getting harder to identify. A [picture is worth a thousand words|http://tinyurl.com/y4ba95] to help describe the problem. We have seen the spam enemy, and the enemy is us.

!! Repairing Windows XP in Eight Commands

How do you fix a Windows XP install that has become corrupt? For some reason or another, it just won''t boot, and it worked fine last night. Thrax, the author behind this article, came upon this method after a ton of research. [Repairing Windows XP in Eight Commands|http://www.short-media.com/review.php?r=313] is used for fixing the following issues:

* Windows Hardware Abstraction Layer (HAL)
* Corrupt registry hives (\\WINDOWS\\SYSTEM32\\CONFIG\\xxxxxx)
* Invalid BOOT.INI files
* A corrupt NTOSKRNL.EXE
* A missing NT Loader (NTLDR)

If you''re Windows XP no longer boots, you may want to try this method.', 7, '2006-11-25 11:21:56', '2006-11-25 21:28:48', 'live', '2006-11-25 10:00:00', 98, NULL, 7);
INSERT INTO shows VALUES (51, 'Inside the Machine with Jon Stokes', NULL, NULL, 'Jon "Hannibal" Stokes, co-founder and Senior CPU Editor of [Ars Technica|http://arstechnica.com/] explains what microprocessors do and how they do it in the new book [Inside the Machine|http://nostarch.com/frameset.php?startat=insidemachine]: An Illustrated Introduction to Microprocessors and Computer Architecture.', NULL, 1, '2006-12-01 12:47:58', '2006-12-01 12:51:28', 'live', '2006-12-02 10:00:00', 99, NULL, 4);
INSERT INTO shows VALUES (52, 'Firefox, Windows, and Optical Drive Rantings', NULL, NULL, 'Solar cells break the efficiency record, $100 laptops cost $1000, criminals recruit programming students, and the Danish call bunk on cell phone-linked cancer. The Geeks help callers with Firefox crashing, speeding up Windows XP, determining the amount of virus and spyware protection, OS X migration, and wiring a network.', '! Some News Links
* [Criminals recruiting students|http://news.bbc.co.uk/2/hi/technology/6220416.stm]
* [41% Solar cell story|http://news.com.com/Solar+cell+breaks+efficiency+record/2100-11395_3-6141527.html]
* [$100 laptop story|http://hardware.newsforge.com/article.pl?sid=06/12/01/1546208]
* [Apple DMG Security flaw|http://www.securityfocus.com/brief/373]

! Extra Links and Such
#! Figuring out what processes start with Windows:
# go to Start->Run and type "MSCONFIG"
# Click the "Startup" tab. You can un-check things, but be careful if you are on a laptop.

!! IE in Firefox
Internet Explorer in Firefox, check out the [IE Tab Add-on|https://addons.mozilla.org/firefox/1419/].
', 5, '2006-12-09 16:26:38', '2006-12-27 01:38:48', 'live', '2006-12-09 10:00:00', 100, NULL, 6);
INSERT INTO shows VALUES (19, 'GeekNews and You', NULL, NULL, 'The Geeks cover some news (Tech Law, SketchUp free, Digital Festival, USB Drives, Wii, Seagate 750GB, Apple camera-display) and take calls with questions and comments about technology.', '! Dedication

This show is dedicated to [Dale Scofield|http://www.santacruzsentinel.com/archive/2006/April/22/obit/obit.htm] who passed away last week. Working for [Inovonics|http://www.inovon.com] I cut my teeth on electronic production and testing and I also met Dale, who helped teach me to understand people better and to respect diverse opinions. I''ll miss you Dale. - Lyle

! Geek News

A lot of Geek News this show with a lot of great resources.

!! Tech Law

The following bills and/or proposals are making their way through Congress.

!!! ISP Auditing (Snooping)

[Some commentary by C-net|http://news.com.com/Congress+may+consider+mandatory+ISP+snooping/2100-1028_3-6066608.html?tag=nefd.top] with links to the actual bill.

!!! Banning MP3 streaming

Read about the [PERFORM Act|http://www.eff.org/deeplinks/archives/004587.php] from the [EFF|Electronic Freedom Foundation].

!!! Extensions to the DMCA

A possible successor to the [DMCA|Digital Millenium Copyright Act], read the [commentary by C-net|http://news.com.com/Congress+readies+new+digital+copyright+bill/2100-1028_3-6064016.html?tag=nefd.top].

!! 3-D for Free

[SketchUp|http://www.sketchup.com/], recently purchased by [Google|http://www.google.com], just relased a free version of it''s yummy 3-D editing program: http://sketchup.google.com/. For Windows only at this point.

!! Digial Arts Festival

Lyle''s day job is with the MFA program [Digital Arts and New Media|http://digitalarts.ucsc.edu] at [UCSC|http://www.ucsc.edu]. Together with Porter Collage, [DANM|Ditial Arts and New Media] is hosting a [Digital Arts Festival|http://danm.ucsc.edu/web/festival] at the Santa Cruz [MAH|Musium or Art and History] and on UCSC campus. 

!! Hard Drives Through USB

Looking for external storage to connect to your system via USB 2.0? The [Addonics JBOD USB 2.0 adapter|http://www.addonics.com/products/io/ad4ideu2.asp] might work for you.

There are of course a [very, very wide variety of drive enclosures available|http://www.newegg.com/ProductSort/SubCategory.asp?SubCategory=1-92]. Don''t forget to read the customer commentaries to find the solution that works best for you.

!! New Name for Nintendo Revolution

The Revolution is now called [the Wii|http://news.com.com/Nintendo+Revolution+renamed+Wii/2100-1043_3-6065801.html].

!! Size Matters

Seagate has upped the storage ante with their new [750GB offering|http://news.com.com/Seagate+boosts+drives+to+750GB/2100-1041_3-6065030.html].

!! What You See Can See You Too

Apple patents a new [camera in display technology|http://www.dailytech.com/Article.aspx?newsid=2000]
', 1, '2006-04-10 01:02:15', '2006-05-01 11:20:23', 'live', '2006-04-29 10:00:00', NULL, NULL, 0);
INSERT INTO shows VALUES (53, 'Photoshop CS3, Gaming Rapture, and Wireless Power', NULL, NULL, '"Left Behind: Eternal Conflict", a conservative Christian violent video game, is being sold at Walmart under protest. Photoshop 10 CS3 Beta was released last night. Devices that are powered without wires or batteries. Miles, Sean, Drew, and Lyle cover the Week-In-Geek news segment and take your calls.', '! Links
* [GIMP Photo/Image Editor|http://gimp-win.sourceforge.net/]
* [NVU HTML editing|http://www.nvu.com/index.php].
* [Office mail merge for mass emailing|http://office.microsoft.com/en-us/word/HA011457271033.aspx?pid=CL100636481033].
* [Macintosh OS X on a traditional PC|http://osx86project.org/].


! Lyle''s Accident
Lyle was in a car accident on Wednesday night, thanks to the GeekSpeak listener that stopped to help.
[2006_12_13_1085.jpg|The head-on collision resulted in a total loss of both vehicles. And though his head is hard, Lyle''s leg and neck are hurting a little. Luckily Dr. Dawn is going to give Lyle his first acupuncture treatment; we will see what a geek thinks about this form of alternative medicine.]


! Photoshop CS3
[cs3_screen_capture_sml.jpg]', 1, '2006-12-16 09:43:23', '2006-12-27 01:36:22', 'live', '2006-12-16 10:00:00', 139, NULL, 14);
INSERT INTO shows VALUES (22, 'GeekNews and Callers', NULL, NULL, 'We do the Week in Geek, take some calls, and Miles gets roasted.', 'An MP3 player for your car that uses a USB thumb drive:
Roadmaster USA Corp. 
www.roadmasterusa.com

A [pdf extension for Firefox|https://addons.mozilla.org/firefox/636/], allowing you to read a .pdf file inside a browser.


The [UCSC Digital Arts and New Media Festival|http://danm.ucsc.edu/web/festival], supported by GeekSpeak host Lyle Troxell, has a student show this weekend only at the [Mary Porter Seasnon Gallery at UCSC|http://arts.ucsc.edu/sesnon/] which is open Saturday and Sunday from noon to 5pm.

Free anti-virus for Macintosh:
http://www.clamxav.com/




', 3, '2006-05-06 10:44:35', '2006-05-06 11:30:18', 'live', '2006-05-06 10:00:00', NULL, NULL, 0);
INSERT INTO shows VALUES (54, '2006: The Good, the Bad, and the Geeky', NULL, NULL, 'It''s a full house with geeks Lyle Troxell, Sean Cleveland, John Tracy, Miles Elam, Dedi Hubbard, Drew Meyer, and Alex Sleeis discussing the best and worst tech of 2006.', '*! Highlights
* The Geeks'' favorite Linux distribution: [Ubuntu|http://www.ubuntu.com/], available in Live CD format too!
* Also check out [Edubuntu|http://www.edubuntu.org/], a version of Ubuntu meant for kids. And it''s free!
* Watch out for image spam, especially the [pump and dump scam|http://en.wikipedia.org/wiki/Pump_and_dump] variety.
* [Virtualization|http://en.wikipedia.org/wiki/X86_virtualization] gets some [competition|http://arstechnica.com/journals/apple.ars/2006/12/22/6381] on the Mac.

! Calls
!! George from Seaside, CA
Windows XP Home edition, having errors, NTLDR is missing. Sean suggest going through the Windows fix which he detailed on the [November 25th show of GeekSpeak|http://geekspeak.org/shows/2006/11/25/] and follow his 8 easy steps. 

George also had some problems with the loss of color support and is limited to only 16 colors on the display. We suggested getting the most recent drivers for your video card. For ATI All in Wonder get the Catalyst Drivers from http://ati.amd.com/

!! Diana from Santa Cruz, CA
CD Writing funky music with iTunes, Error Code 4000... buffer under-run?
We suggested slowing the burn time or maybe getting better quality discs.
!!! Steve from Danbury, CT wrote in with some feedback:
"I bet you missed the real problem with the caller who had buffer underrun issues burning more than 12X on her burner.  I had a similar situation on a machine which was clearly fast enough and determined that I was stuck in PIO (not DMA) mode on the burner.  Turns out Windows XP had a "feature" where it dropped down to PIO mode if a certain error count was hit on the drive.  The easy fix was to uninstall the CD driver and let Windows re-detect it which caused it to go back to DMA mode." He suggested this [discussion of the issue|http://club.cdfreaks.com/showthread.php?t=190410].

!! Tom from Moss Landing, CA
Digital Camcorder as a web cam? <- you bet. As long as the digital video camera has FireWire, which most do, then you should be able to use that with iChat on a Mac OS X machine.

!! Michel from Pebble Beach, CA
What is up with cheep cellphone and [VoIP|Voice Over Internet Protocol]?
Well, VoIP is very common and inexpensive, but not really for cellphones. You may want to take a look at http://www.voipreview.org/ and compare different VoIP offerings. Dedi suggests [iPhone|http://en.wikipedia.org/wiki/IPhone] from Cisco/Linksys, a hardware device that dose cell phone and VoIP in one.

', 7, '2006-12-23 11:10:10', '2006-12-28 03:35:39.343606', 'live', '2006-12-23 10:00:00', NULL, NULL, 16);
INSERT INTO shows VALUES (55, '2007 Predictions and Robot Deer Take-Over', NULL, NULL, 'The Geeks look at the technology that will help to define 2007 and cover some of the Week-in-Geek news: [AACS|Advanced Access Content System] cracked, $1000 HDVD Drive available, gmail loosing email, and Robot Deer take-over.', '! Calls and Links
!! Robotic Vacuum
Geek Alex just got a [iRobot Roomba|http://irobot.com/] and is pleased as peach as it cleans his floors.

!! Jim - Big Sur, CA asked about website photo sales for photographers
We suggested [Photobucket|http://Photobucket.com] and checking out [Bay Photo|http://BayPhoto.com].

Patricia from Watsonville, CA suggests pbase.com. "Guys, Many of my photographer friends use pbase.com, which is cheap or free and very professional looking. Here''s a favorite of mine: http://pbase.com/jpokln/pelagictrips" ', 1, '2006-12-27 01:13:15', '2006-12-31 19:04:42.168821', 'live', '2006-12-30 10:00:00', NULL, NULL, 15);
INSERT INTO shows VALUES (23, 'E3 2006 with Dedi Hubbard', NULL, NULL, 'Our NY correspondent, Dedi Hubbard, reports on [E3|Electronic Entertainment Expo]. Learn about the new games and gear announced at this year''s Electronic Entertainment Expo in [LA|El Pueblo de Nuestra Senora la Reina de los Angeles de Poriuncula], CA.', '!!Sony PS3
* Due out for the Winter Holiday Season at $499/$599 ($499 has some crippled features)
* HD quality graphics
* Some motion sensing just added to their controller, "Dual Shake"
* P3 is backwards compatible with its predecessors through software emulation

!!Xbox 360
* Dead Rising, a zombie game with a sense of humor
* New peripherals out soon at lower price points
* Xbox Live to allow PC and 360 gamers to play together

!!Nintendo Wii
* Also due out this Winter Holiday, current rumored price point $250
* The Wii Remote (affectionately called the "Wiimote") can track virtually any movement and features a simplified interace to attract non-gamers
* The Wiimote has several attachments to enhace/adapt to new types of gameplay, houses a speaker for sound effects and rumble and sports a long battery life
* Wii online component will work like Nintendo''s current DS setup
* Wii virtual console will allow you to play all of Nintendo''s old games (including NES, SNES, Nintendo 64 and Gamecube games), as well as Sega and Turbografx games.

!Links
* A fun video of a [stampede to the Nintendo booth|http://www.youtube.com/watch?v=mFQz98jAcg8] as E3 opened.
* [Dedi''s blog entry on E3|http://scoops.totallyrule.com/articles/2006/05/11/e3-so-far].
* [E3 Photos on Flickr|http://www.flickr.com/photos/tags/e32006/]
* [wii|http://wii.nintendo.com/], [Playstation at E3|http://www.us.playstation.com/E3] and [Xbox 360 at E3|http://www.xbox.com/en-US/community/news/events/e32006/default.htm]
* Judith from Watsonville asked about shutting down your Mac with a key stroke - Lyle suggested [Quicksilver|http://quicksilver.blacktree.com/].

!!iPod gift from Miles

For Lyle''s last birthday, Miles gave him a calculus book... or was it:

[lyles_present_from_miles_closed.jpg]
[lyles_present_from_miles_open.jpg]
[lyles_present_from_miles_making.jpg]', 1, '2006-05-12 14:14:21', '2006-05-27 11:07:58', 'live', '2006-05-13 10:00:00', 60, NULL, 0);
INSERT INTO shows VALUES (24, 'Geek News and Calls', NULL, NULL, 'The [Digital Universe|http://www.digitaluniverse.net/] from special guest Charlie Manske, hijacked computers, the new 24/7 Apple Store in New York City, and much more.', NULL, 7, '2006-05-20 11:44:32', '2006-05-20 11:46:24', 'live', '2006-05-20 10:00:00', NULL, NULL, 0);
INSERT INTO shows VALUES (56, 'Bit Killing Cosmic Rays', NULL, NULL, 'Lots of product releases are hitting the wire right in time for [CES|Consumer Electronics Show] and Mac World shows. We will cover the interesting stuff and give you the meaning behind the buzz.

', '!Links
* Recording stuff that plays on your computer can be done with [Replay AV|http://www.replay-video.com/replay-av/index8_radio.php], which is a pay-for application. There are probably other free solutions. 

!! Episode Dedication
[342759477_2d54cec765.jpg|This episode of GeekSpeak is dedicated to [Lodema "Dee" Stephens|http://drdee.totallyrules.com/], who passed away this week in her home in Southern California.]', 1, '2007-01-05 11:37:02.948028', '2007-01-06 11:24:20.22488', 'live', '2007-01-06 10:00:00', NULL, NULL, 12);
INSERT INTO shows VALUES (33, 'News and Calls', NULL, NULL, 'Keeping you up to date on the week''s news and taking your calls the Geeks, Lyle Troxell, Sean Cleveland, Drew Meyer, and Miles Elam take time to whip out a great show.', '! Geek News

A heaping bowl of news. Now free of trans-fats.

 *! Anti-Virus Ain''t What It Used To Be
 * Popular anti-virus software seem to work as an inverse of its popularity
 * It is getting so bad that as much as 80% of new malware gets through

([http://www.zdnet.com.au/news/security/soa/Eighty_percent_of_new_malware_defeats_antivirus/0,2000061744,39263949,00.htm]) 

 * The Geeks recomend [AVG|http://free.grisoft.com/] (see our [writup on AVG|http://geekspeak.org/shows/2006/04/01/]), or [Avast|http://avast.com].

 *! Space is Cool (err... hot?)
 * Quasar points to [[MECO|magnetospheric eternally collapsing object]s|http://www.newscientistspace.com/article.ns?id=dn9620&feedId=online-news_rss20] rather than black holes?
 * But just in case black holes exist, NASA has [modeled a collision|http://biz.yahoo.com/prnews/060724/sfm026.html] between two
 * Does size actually matter? How about [200 million light-years long|http://www.usatoday.com/tech/science/space/2006-07-27-biggest-blob_x.htm?csp=15]?
 * Will it go boom? A type 1a [supernova in the works|http://news.bbc.co.uk/2/hi/science/nature/5204676.stm]? Soon? (Soon being relative.)

 *! Biology is Cool (err... old?)
 * Jurrasic Park anyone? [Soft tissue from a T. Rex|http://www.msnbc.msn.com/id/7285683/] as well as [10 million year-old bone marrow|http://www.livescience.com/animalworld/060724_fossil_bonemarrow.html] from amphibians

 *! Building Your Own Computer
 * Sean recently had a great experiance with custom ordering a computer from http://ibuypower.com/.
 * We mentioned http://comprec.com/ a site which helps the non-geek through the processes of picking out a computer.

 *! Wedding Cakes?
 * [Edith Meyer''s Cakes|http://www.edithmeyer.com/].
', 7, '2006-07-29 11:02:18', '2006-07-31 09:41:13', 'live', '2006-07-29 10:00:00', NULL, NULL, 0);
INSERT INTO shows VALUES (67, 'Maximizing Games with YouGamers', NULL, NULL, 'The Geeks welcome Nick Evanson, Editor-in-Chief of [YouGamers|http://www.yougamers.com/], a professional online publication backed by [Futuremark|http://www.futuremark.com/] and a team of editors that tackle PC games in a distinctive and interesting way by examining how the look, feel and performance of a game scales across wide ranges of PC hardware setups. In fact, they’ve built a tool called Game-O-Meter that determines exactly how well your hardware will actually play a game!', '[nick_evanson_yougamers.jpg] Nick Evanson, the Editor-in-Chief of YouGamers, is responsible for all online content, editorials and site management at [YouGamers|http://www.yougamers.com/]. Prior to his EIC position, he worked in a variety of industries including food, water, and museums, before teaching physics for ten years. During that time, he worked as an Internet journalist and writer, co-running a couple of long-gone UK websites before moving on to freelance writing at Futuremark and writing reviews at Beyond3D. His computing history dates back to the early 1980''s, programming Sinclair ZX-81s in his bedroom for fun. Nick lives in the UK with his wife and small fuzzy dog.', 5, '2007-03-22 22:11:18.516965', '2007-03-23 07:20:10.465333', 'live', '2007-03-24 10:00:00', 150, NULL, 7);
INSERT INTO shows VALUES (65, 'Encyclopedias Battling Liberal Bias', NULL, NULL, 'A conservative online encyclopedia, an OS on a BIOS, flash-augmented hard drives, and more discussed by Sean, Miles and Lyle. During the second half the geeks take your calls.', '! Useful Links

 *! News about Photoshop and Related Items
 * News about [Photoshop CS3|http://news.com.com/Adobe+adds+new+Photoshop+flavor+with+CS3/2100-1046_3-6165417.html]
 * [Fraud-busting tools|http://news.com.com/Adobe+eyes+fraud-busting+tools+for+Photoshop/2100-1046_3-6165726.html]
 * [[HD|High Definition] Support|http://news.com.com/Photoshop+gets+HD+Photo+support/2100-1046_3-6165425.html]

 !! Raxco PerfectDisk Defragger

 [More information here|http://www.raxco.com/products/PerfectDisk2k/].

', 7, '2007-03-10 10:00:12.726153', '2007-03-11 10:15:12.260793', 'live', '2007-03-10 10:00:00', 144, NULL, 9);
INSERT INTO shows VALUES (66, 'Pledging the Good Fight', NULL, NULL, 'It''s a full house as Geeks Sean Cleveland, Miles Elam, Josh Weiss, Dedi Hubbard, Drew Meyer, and Alex Sleeis cover the week''s events while pledging for KUSP.', 'KUSP needs your support. [Support public radio|http://www.kusp.org/] today!', 7, '2007-03-17 15:31:08.485572', '2007-03-22 22:40:26.320192', 'live', '2007-03-17 10:00:00', 153, NULL, 6);
INSERT INTO shows VALUES (71, 'Senior Computer Center of Santa Cruz', NULL, NULL, 'On location at the [Senior Computer Center|http://www.seniorcomputer.org/] in down town Santa Cruz the Geeks: Lyle, Sean, Miles, Alex and Josh, do some GeekNews and take questions from an audience that can see them.

Will the Geeks hold it together while being watched? Listen to this show to find out.', NULL, 1, '2007-03-31 09:32:53.15048', '2007-03-31 09:38:27.29657', 'live', '2007-04-14 10:00:00', 154, NULL, 3);
INSERT INTO shows VALUES (80, 'Energy Woes for Cars, iPhones, and Rovers', NULL, NULL, '''Hot fuel'' for cars, soldered batteries for iPhones, and scary storms are making energy harder and harder to manage. Sean, Miles, Drew, and Alex tackle these and other issues today on Geek Speak.', NULL, 7, '2007-07-04 16:50:16.391983', '2007-07-04 16:50:55.787124', 'live', '2007-07-07 10:00:00', NULL, NULL, 1);
INSERT INTO shows VALUES (91, 'Podcasting with Grammar Girl', NULL, NULL, 'The Geeks welcome Mignon Fogarty, the star and force behind [Grammar Girl|http://www.quickanddirtytips.com/GrammarGirl/] and the founder of [Quick and Dirty Tips|http://www.quickanddirtytips.com/], a successful podcasting company with friendly and informative voices.

If you are not familiar with the [Grammar Girl Podcast, go and listen to it right now|http://www.quickanddirtytips.com/GrammarGirl/]; I hope you love it as much as I do. -Lyle', '! Our Guest

Mignon Fogarty is the creator of Grammar Girl and founder of Quick and Dirty Tips. A magazine writer, technical writer, and entrepreneur, she has served as a senior editor and producer at a number of health and science web sites. She has a B.A. in English from the University of Washington in Seattle and a M.S. in biology from Stanford University.

Mignon believes that learning is fun, and the vast rules of grammar are wonderful fodder for lifelong study. She strives to be a friendly guide in the writing world. Her arch enemy is the evil Grammar Maven who inspires terror in the untrained and is neither friendly nor helpful.

! Links
* [Grammar Girl Video|http://youtube.com/watch?v=lWFCMOo0Wis]
', 1, '2007-09-21 18:21:18.81005', '2007-09-23 15:14:08.171648', 'live', '2007-09-22 10:00:00', 186, NULL, 11);
INSERT INTO shows VALUES (64, 'IDC Consumer Internet Market Space', NULL, NULL, 'The Geeks welcome Karsten Weide, Program Director, Digital Media & Entertainment, at IDC Research. Karsten writes analyses about the consumer Internet space and also serves as IDC’s expert on the intersection of new media and the digital marketplace. The Geek''s discuss his report called "[The State of the Consumer Digital Marketplace|http://www.idc.com/getdoc.jsp?containerId=205673]," which happens to be a topic that Geeks are quite interested in.', '[IDC|http://www.idc.com/] is a leading research organization for the technology industry.', 1, '2007-03-03 09:54:13.592012', '2007-03-11 10:41:00.696135', 'live', '2007-03-03 10:00:00', 145, NULL, 7);
INSERT INTO shows VALUES (58, 'Mobile Geek, Speaks', NULL, NULL, 'Chris Dunphy returns to California and GeekSpeak to share his expertise on the mobile-geek lifestyle. Chris has been working in tech for many years and has worn many tech hats (engineer, journalist, product manager, etc.). Before hitting the road, Chris was the Director of Competitive Analysis at Palm. Join Geeks as they discuss Chris''s completely portable existence and how he pulls it off.', '! Useful Links
How to use [iPods with Ubuntu Linux|http://www.ubuntux.org/how-to-use-an-ipod-with-ubuntu] since there is no iTunes for Linux.

Simple encryption with [TrueCrypt|http://www.truecrypt.org/], for Windows and Linux. Of course, you can always use the built-in encryption in Windows or OS X.

Chris''s [tech-nomadic journeys|http://radven.net/] are cataloged on his personal website.', 1, '2007-01-14 12:52:03.689226', '2007-03-11 10:51:27.822396', 'live', '2007-02-10 10:00:00', 146, NULL, 6);
INSERT INTO shows VALUES (63, 'DHTML and SPAM Wars', NULL, NULL, 'Learn a bit about Dynamic HTML and fighting SPAM. [Danny Goodman|http://www.oreillynet.com/pub/au/244] joins the Geeks to discuss his new books, [Dynamic HTML: The Definitive Reference|http://www.oreilly.com/catalog/dhtmlref/] and [SPAM Wars|http://www.biblio.com/isbn/1590790634.html].', 'Check out [Mr. Spam Man|http://www.youtube.com/watch?v=GslH9WYwDZc]: Danny Goodman''s modern interpretation of a classic.', 1, '2007-02-17 10:01:12.784761', '2007-03-11 11:00:50.838735', 'live', '2007-02-24 10:00:00', 147, NULL, 5);
INSERT INTO shows VALUES (210, '2012 Ends Mixed Nutz', NULL, NULL, 'The Geeks take calls and cover news, discussing the doomsday scenario with 2012 (hint: there isn''t any), the FCC, the LHC, and a sprinkling of Klingon to top it off.', NULL, 1, '2009-11-21 09:49:17.512688', '2009-11-27 08:20:59.10297', 'live', '2009-11-21 10:00:00', 312, NULL, 6);
INSERT INTO shows VALUES (82, 'Checkers Game Solved and Linked In', NULL, NULL, 'Comic book store in San Jose; database of all possible checkers moves makes a computer unbeatable; Google vs cell phone industry; 25 year computer virus anniversary; next version of Windows is "Seven", with a three year development cycle; Sean Cleveland on Vista, DirectX 10 coolness and Intel Processor updates; One Laptop Per Child content filtering; -- all just some of what we talked about on this diverse episode.', '! Calls
# Lee from Amsterdam called in to ask about [Linked In|http://www.linkedin.com], is it scary or cool. We all use [Linked In|http://www.linkedin.com] and think of it as a great way to get in touch with people you have lost track of. And yes, it is kinda scary how much data they have.
# Don from Santa Cruz called to ask about banking processes. Basically he asked why banks still call to check on available funds. Over [IM|Instant Messenger] Alex offers that banks are highly regulated by the [FFIEC|Federal Financial Institutions Examination Council] and the FFIEC enforces processes to reduce fraud and limit [money laundering|http://en.wikipedia.org/wiki/Money_laundering], and these processes are very strict.
# Susan from Seaside told us about her computer (Windows 2000) being infected and what she should do. We suggested trying the [live cd|http://en.wikipedia.org/wiki/LiveDistro] version of [Ubuntu|http://www.ubuntu.com/] . We also suggested taking your computer down to your local electronics store, [Santa Cruz Electronics|http://www.santacruzelectronics.com/] is a good option if you live close to it.
# Rocky offered his opinion on the One Laptop Per Child issue of content management.

', 1, '2007-07-13 20:29:52.2281', '2007-07-14 03:30:52.961407', 'live', '2007-07-21 10:00:00', NULL, NULL, 4);
INSERT INTO shows VALUES (62, 'Tracking Drive Reliability and Late Gadgets', NULL, NULL, 'Geeks Lyle, Sean, and Miles talk tech and take your calls; Google tracks hard drive reliability; computers big and small wrestle with recent daylight savings time changes; no one can read doctors'' handwriting; and computers are using more and more power, doubling in the last five years.', 'Alex, have fun at the [Griffith Observatory|http://www.griffithobs.org/] with your little sister.

In this episode Miles and Lyle talked a bit about [Virtualization|http://en.wikipedia.org/wiki/Virtualization] and how the new GeekSpeak server is using [QEMU|http://en.wikipedia.org/wiki/QEMU].', 7, '2007-02-17 09:46:02.219322', '2007-03-11 11:10:37.487508', 'live', '2007-02-17 10:00:00', 148, NULL, 10);
INSERT INTO shows VALUES (98, 'Did You Get My Message? Can You Understand Me?', NULL, NULL, 'From cell phone blockers to Babelfish''s understanding blockers... er... translation software, the Geeks discuss the news, take your calls, and issue mea culpas for bad advice.', '! Software for Backup

In a pinch Lyle uses [Microsoft''s Windows XP Backup|http://www.microsoft.com/windowsxp/using/setup/learnmore/bott_03july14.mspx], but a separate application has it''s benefits. MS Backup runs inside Microsoft Windows like a traditional application, but for making a compleate copy of your hard-drive the best solution is to boot from a different drive. When you boot from a different drive the main drive, which holds your Operating System, doesn''t have any thing running off of it; it just sits there. And doing a full bit-for-bit copy, or ghost is possible.

Sean uses [Norton Ghost|http://www.symantec.com/sabu/ghost/ghost_personal/] to make images of his hard drive.

Miles suggested free solutions (thanks to Alex for the URLs):
* [Partition Image|http://www.osalt.com/partition-image] is an open source disk cloner.
* [Ghost for Unix|http://www.osalt.com/g4u] which also does disk cloning.', 1, '2007-11-10 12:42:12.189074', '2007-11-10 19:12:47.240759', 'live', '2007-11-10 10:00:00', NULL, NULL, 3);
INSERT INTO shows VALUES (61, 'First Person You', NULL, NULL, 'The Geeks Welcom [Noesis Interactive|http://www.noesisinteractive.com/], a company that provides training videos that help the average geek customize their gaming experience. Can your character look like [fill in blank here]? The answer is yes! Learn a bit about 3D modeling, game customization and [modding|http://en.wikipedia.org/wiki/Mod_%28computer_gaming%29] with the Geeks. ', NULL, 1, '2007-01-18 21:46:32.42716', '2007-03-11 11:15:18.589794', 'live', '2007-02-03 10:00:00', 149, NULL, 6);
INSERT INTO shows VALUES (72, 'Assistive Tech-ery', NULL, NULL, 'The Geeks talk with Jon Bjornstad about [Sue Center|http://www.suecenter.org/], a communication environment designed specifically for people who cannot use a keyboard or mouse.

This assistive technology which enables people to email, browse the web and more has been developed by Jon over the past 7 years. ', NULL, 1, '2007-04-02 12:27:19.107368', '2007-04-02 20:28:49.114663', 'live', '2007-04-21 10:00:00', 155, NULL, 4);
INSERT INTO shows VALUES (95, 'Sustainable Radio', NULL, NULL, 'A full contingent of geeks chat about the week''s tech news and try one more time to get you to donate to our station, KUSP. ', 'The attached news we did not cover, but here is some stuff that we did talk about:

! Useful Links

* Trying to be anonymous online [Tor|http://tor.eff.org/], but it has some [vulnerabilities|http://www.theinquirer.net/gb/inquirer/news/2007/09/10/tor-network-exposes-sensitive-information]

* Alex''s great article on [internet connectivity and safe computing|http://geekspeak.org/blog/2007/07/07/internet-connectivity-and-safe-computing].', 1, '2007-10-20 01:35:38.931526', '2007-10-20 13:56:57.541102', 'live', '2007-10-20 10:00:00', NULL, NULL, 4);
INSERT INTO shows VALUES (86, 'Tech in Conflict and Stars with Tails', NULL, NULL, 'Comcast vs. Bittorrent, Wikipedia vs. Diebold, AT&T vs. Vermont, and more Week in Geek news with Ryder, Miles, Sean, and Lyle. Oh, and we take calls.', '
', 1, '2007-08-18 11:42:45.498481', '2007-09-21 16:37:08.768019', 'live', '2007-08-18 10:00:00', NULL, NULL, 5);
INSERT INTO shows VALUES (112, 'Arrows, Sunroofs, and Microsoft', NULL, NULL, 'The Geeks discuss a security expert standing on a tall building looking down at heavy traffic and seeing a vulnerability through a single car''s sunroof as a metaphor for the difficulty of spotting online computer vulnerabilities, and then talks about shooting virus arrows through the sunroof and how car companies should start making reinforced car roofs to combat them. Ah, just listen to the show. :) The geeks actually talk about more than this.', 'Thanks again to [Ebu Gogo|http://www.myspace.com/ebugogoband] for offering us a new theme song.', 1, '2008-02-09 10:20:22.887757', '2008-02-09 12:18:20.165488', 'live', '2008-02-09 10:00:00', NULL, NULL, 6);
INSERT INTO shows VALUES (74, 'Maker Faire', NULL, NULL, '[Dale Dougherty|http://en.wikipedia.org/wiki/Dale_Dougherty] Editor and Publisher of [Make Magazine|http://www.makezine.com/] by O''Reilly Media joins the Geeks to talk about their upcoming [Maker Faire|http://makerfaire.com/] .

', '! Uninstall Software, Windows

Sean suggested using ''msconfig'' to disable software that would normally run at startup.

# Go to ''Start''
# Click ''Run''
# Type ''msconfig'' and hit ''Enter''
# ''System Configuration Utility'' will start up. Click on the ''Startup'' tab.
# Unclick the items that you do not want to run when your machine starts up.

! Graphics, Gaming, Programming

Tom from Soquel called to ask about a 16 year old who is interested in learning about computer graphics.

We suggested contacting the [Digital Media Factory|http://www.digitalmediafactory.net/] to see if they have intern ships.

Our Guest, Dale, suggested self training and learning. Lyle suggested taking a peak at [Processing|http://www.processing.org] to get a feel for programing. We also suggest playing with [Blender|http://www.blender.org/].
', 1, '2007-04-13 08:47:20.740672', '2007-04-13 09:19:19.204923', 'live', '2007-05-12 10:00:00', 157, NULL, 6);
INSERT INTO shows VALUES (83, 'Radio Power, Wind Power, and Voting Power', NULL, NULL, 'The Geeks discuss radio transmission including potential health effects, wind power combined with magnetics to reduce friction, and a new look at electronic voting in California. Lyle, Sean, Miles, and Ryder explore these and other issues while they take your calls.', 'Take a contract out on spyware with [Hitman Pro|http://www.hitmanpro.com/]. Don''t forget to contact us and let us know whether it worked for you.', 1, '2007-07-28 10:05:06.943462', '2007-08-01 11:56:21.907201', 'live', '2007-07-28 10:00:00', 185, NULL, 3);
INSERT INTO shows VALUES (102, 'Comcast and Leopard on Rails', NULL, NULL, 'The Geeks dump on Comcast, Apple''s Leopard dumps on the Geeks, and the BBC dumps Ruby.', '! That Pesky 3D Dock
Apple''s new Leopard has an annoying 3D dock which you can disable! Simply open Applications-> Utilities-> Terminal and run...
*! To turn off the 3D dock
*defaults write com.apple.dock no-glass -boolean YES; killall Dock
*! To turn on the 3D dock
*defaults write com.apple.dock no-glass -boolean NO; killall Dock

The "killall" simply restarts the Dock.', 7, '2007-12-01 11:16:57.867486', '2007-12-01 11:52:13.972359', 'live', '2007-12-01 10:00:00', NULL, NULL, 6);
INSERT INTO shows VALUES (87, 'Laptop Debacle and News', NULL, NULL, 'A laptop rises from the grave, high definition wars heat up, and your calls. This and more with Lyle, Sean, Miles, Drew, and Ryder.', NULL, 7, '2007-08-25 12:16:55.839652', '2007-08-25 12:17:32.5394', 'live', '2007-08-25 10:00:00', NULL, NULL, 1);
INSERT INTO shows VALUES (81, 'Connectivity Issues: from 0 to 40gbps', NULL, NULL, 'Fastest home connection at 40gbps, noncommittal tattoos and much more with geeks Ryder Brooks, Miles Elam and host Lyle Troxell.', '! Stuff we mentioned on todays show...
* Lyle mentioned Stanford''s podcast "Physics for future Presidents" with Professor Richard Muller [via iTunes|http://deimos3.apple.com/WebObjects/Core.woa/Browse/berkeley.edu.78024191.01257998077], [Website|http://muller.lbl.gov/teaching/Physics10/PffP.html].

* Making your wireless go much further by [creating a home made WiFi antenna|http://www.turnpoint.net/wireless/has.html]. You might also find [No Cat|http://nocat.net/] an interesting resource for building community wireless.

* You can test your internet connection using a speed tester: [CNET bandwidth meter speed test| http://reviews.cnet.com/7004-7254_7-0.html].

!! Recording cassettes and vinyl to your computer
* Lyle mentioned a small dongle that is praised by Macintosh users. It is called the [iMic|http://www.griffintechnology.com/products/imic/] and sells for about [$30|http://www.newegg.com/Product/Product.aspx?Item=N82E16812999078&Tpk=imic].', 1, '2007-07-09 05:28:10.777574', '2007-07-09 11:52:28.538483', 'live', '2007-07-14 10:00:00', NULL, NULL, 14);
INSERT INTO shows VALUES (149, 'Geek Your News', NULL, NULL, 'A full gaggle of Geeks come together for a technical peek at the GeekNews of the week.
', '! Links
* Sean mentioned watching [Music Videos|http://pluggedin.com/] online.
* [Google''s Blog Search|http://blogsearch.google.com] thing.
* How to [Backup and restore Outlook Express|http://support.microsoft.com/kb/270670] data.', 1, '2008-10-03 16:25:41.615153', '2008-10-18 11:27:17.919732', 'live', '2008-10-04 10:00:00', NULL, NULL, 16);
INSERT INTO shows VALUES (103, 'Making Things Talk', NULL, NULL, 'The Geeks talk with [Tom Igoe|http://tigoe.net/] of [NYU|New York University]''s [Interactive Telecommunications Program|http://tigoe.net/pcomp/] about his new book, Making Things Talk. Tom shares his knowledge of device communication through simple projects that anyone can do. Learn how to get your electronic creations talking in fun and interesting ways.', '! Tom Igoe
[tigoe.jpg| Tom is an Assistant Arts Professor in [ITP|Interactive Telecommunications Program] at NYU with a focus on physical computing, which he defines as "an approach to learning how humans communicate through computers that starts by considering how humans express themselves physically."]

! Links
* Electronics Kits: http://www.adafruit.com/', 1, '2007-12-03 10:30:56.0782', '2007-12-15 11:16:08.735703', 'live', '2007-12-15 10:00:00', 192, NULL, 11);
INSERT INTO shows VALUES (77, 'HD Radio, Digital Drive', NULL, NULL, 'KUSP is raising money for a digital conversion to support the [HD Radio|http://www.hdradioalliance.com/] standard. The Geeks discuss the inner-workings of HD Radio with Station Manager Terry Green and how KUSP/KBDH will upgrade the "air chain". The Geeks also discuss the Week in Geek news, and take listener comments and questions about technology.', NULL, 1, '2007-06-01 01:41:48.181648', '2007-06-26 16:07:59.553589', 'live', '2007-06-16 10:00:00', 160, NULL, 5);
INSERT INTO shows VALUES (108, 'Consumer Electronics Show 2008', NULL, NULL, 'The Geeks welcome Peter Sheerin, a technologist who traveled to CES in Las Vegas to attend one of the World''s largest consumer technology shows. Join the geeks as we discuss the next-generation displays and gadgets shown at this year''s show.', '[petersheerinphoto.jpg]

Peter Sheerin is a longtime technologist who has spent most of his career working with computer-aided design. He got his first taste of the industry as a CAD expert for a civil engineering firm and co-authored Using AutoCAD Release 14 for Que Publishing, which led to a decade as the tech editor for CADENCE magazine and most recently as a tech marketing manager for NVIDIA.

Peter''s interests extend to just about all areas of technology--he is an avid amateur radio operator (callsign K6WEB) and is particularly passionate about finding and creating ways to increase usability and make all aspects of technology interoperate better.', 1, '2008-01-12 10:31:47.908201', '2008-01-12 12:12:54.260421', 'live', '2008-01-12 10:00:00', 195, NULL, 6);
INSERT INTO shows VALUES (93, 'RIAA''s Judgment and Compact Fluorescents ', NULL, NULL, 'Cable internet good speeds, software patents land-mines, [RIAA wins $200,000 judgment|http://www.news.com/8301-10784_3-9791383-7.html], Blu-ray 100GB discs, infra-red carpool enforcement, and more GeekNews. Plus Lyle Troxell, Sean Cleveland, Miles Elam, and Ryder Brooks take listener calls.', '! Mobile Syncing

While not an endorsement by the Geeks (we haven''t used it), a company called Chapura makes [Palm Desktop to Outlook|http://www.chapura.com/pocketcopy.php] conversion software.

As a side note, Apple''s [iPhone also supports syncing|http://www.apple.com/iphone/easysetup/getready.html] with PC software such as Outlook.

! Antivirus and Anti-Spyware

Want to know how to fight malware for free? Check out [The Free Site|http://www.thefreesite.com/Free_Software/Anti_virus_freeware/] for lists and reviews.', 3, '2007-09-30 11:04:43.975907', '2007-10-10 16:03:36.738044', 'live', '2007-10-06 10:00:00', 187, NULL, 10);
INSERT INTO shows VALUES (110, 'Geeks In Your Home', NULL, NULL, 'The Geeks welcome [Jesse Wilkins|http://www.wilkinsconsulting.us/], a professional geek servicing the Central Coast of California. If you need a professional geek to help you out, Jesse is your man. The Geeks also discuss the week''s tech news and take your questions and comments on technology.', '! Jesse Wilkins
[2008_01_26_jesse_wilkins_300w.jpg|You can visit Jesse''s website at http://www.wilkinsconsulting.us/ , send him an email to (wilkinsconsulting at hotmail.com), or call him at (831) 588-4319.]

! Links 
* [Roxio|http://www.roxio.com/] Easy CD Creator allows you to record music from outside sources, and it also removes pop and hiss from vinyl.
* Think Geek has a [ION|http://www.thinkgeek.com/electronics/mp3/90a0] USB turn table from Ion.
* Jesse recommends [Data Backup 3|http://www.prosofteng.com/products/data_backup_info.php?PHPSESSID=a56b9ecbc4d1a76711af13a2f3ec04ff] , is a utility that allows you to backup, restore and synchronize data with minimal effort.
* Lyle uses [Super Duper|http://www.shirt-pocket.com/SuperDuper/] that supports the syncing of two drives. SuperDuper allows users to creat a fully bootable backup, and it uses a friendly interface.
* Caller Maureen recommends [MP3Gain|http://mp3gain.sourceforge.net/] for normalizing the audio on MP3 files. If you''re tired of having to manually adjust the audio level of every song, you should check this out.', 1, '2008-01-26 09:54:11.647684', '2008-01-26 11:58:10.718425', 'live', '2008-01-26 10:00:00', 197, NULL, 19);
INSERT INTO shows VALUES (92, 'AT&T Sucks and Other Observations', NULL, NULL, 'The Geeks, who all have AT&T service, chat about recent changes to the AT&T terms of service, which attempts to restrict what their customers can say about them. This, identity theft, more news about the iPhone, the One Laptop Per Child project, and more while they take your calls.', '! Links

* We mentioned that you can [give a laptop and get one for yourself|http://www.xogiving.org] from the One Laptop Per Child program.

* The free operation system that we mentioned is [Ubuntu|http://ubuntu.com], they will even send you a free CD.
', 1, '2007-09-29 13:03:15.252545', '2007-09-29 13:43:53.138339', 'live', '2007-09-29 10:00:00', NULL, NULL, 3);
INSERT INTO shows VALUES (79, 'Sony Blu-ray Technology', NULL, NULL, 'The Geeks discuss [Blu-ray|http://www.sonypictures.com/homevideo/bluray/] technology with Robert C. DeMoulin of Sony Electronics. Blu-ray is the next generation format for optical drives that uses blue laser instead of the red laser or infrared used by DVD and CD. Blu-ray provides storage capacity that surpasses DVD and CD, allowing for higher quality video and audio.', '[robert_demoulin_sony.jpg|Robert C. DeMoulin joined Sony Electronics in 1997 and currently holds the position of marketing manager in Sony Electronics’ IT Products Division.  Mr. DeMoulin brings to Sony over a decade of experience in the optical storage marketplace and an extensive background in support strategies, integration initiatives and product development, marketing and positioning.]

In his present role, Mr. DeMoulin spearheads beginning-to-end product launches and core marketing activities for Sony-branded optical storage products including CD/DVD burners, the popular DVDirect family of multi-function DVD recorders, and aftermarket Blu-ray Disc recorders for the PC.  He also serves as a technology evangelist and industry visionary for the product families and has been featured on nationally recognized television and radio programs.  For his exceptional contributions to Sony Electronics, Mr. DeMoulin has been recognized with three special achievement awards and the prestigious President''s award.  

Prior to joining Sony, Mr. DeMoulin was product manager at Ricoh Corporation, during which time he drove the launch efforts to introduce the first Ricoh CD-R drive into the U.S. market.  Mr. DeMoulin also served his country in the U.S. Navy for three years and graduated with honors from the Navy Operation Specialist School.', 5, '2007-06-26 15:55:03.05767', '2007-06-30 03:56:11.438066', 'live', '2007-06-30 10:00:00', 158, NULL, 7);
INSERT INTO shows VALUES (76, 'Using Vista and Traffic Video Ownership', NULL, NULL, 'The Geeks are finally using Vista, and it''s not really that bad! This week: New Jersey sues YouTube, integrated car navigation vs. handheld GPS, and much more with Geeks Sean, Miles, Ryder and host Lyle.', NULL, 1, '2007-05-22 15:50:12.81233', '2007-06-26 16:12:50.52528', 'live', '2007-05-26 10:00:00', 161, NULL, 3);
INSERT INTO shows VALUES (84, 'GeekNews and Mobile Geek', NULL, NULL, 'Mobile Geeks Chris Dunphy and Cherie Ve Ard join us to talk about the "Week in Geek" news and update us on how their [technomadic mobile geek lifestyle|http://www.technomadia.com/] is going.', NULL, 1, '2007-08-01 10:51:05.227848', '2007-08-04 10:12:07.203721', 'live', '2007-08-04 10:00:00', 184, NULL, 5);
INSERT INTO shows VALUES (78, 'Where''s my Flying Car?', NULL, NULL, 'Chatting briefly about stagnation and frustration with technology, the Geeks do a friendly and engaging episode of GeekSpeak.', '! Couldn''t Technology be better?
An interesting article from the BBC mentions [Greg Papadopoulos'' call for technology and design to be married to people''s needs|http://news.bbc.co.uk/2/hi/technology/6225398.stm], which sparked an interest to title this episode of GS.

! Listener Questions
!! Windows XP Serial Lookup
Chuck from Carmel called and asked about looking up the serial number that was used for an existing instillation of XP. He has multiple copies and wants to know which serial goes with which computer.

Sean suggested trying [Magical Jelly Bean|http://www.magicaljellybean.com].

', 1, '2007-06-23 14:31:02.835112', '2007-06-26 16:24:25.138237', 'live', '2007-06-23 10:00:00', 162, NULL, 6);
INSERT INTO shows VALUES (96, 'Leopard, News and Calls', NULL, NULL, 'Apple''s newest OS, Leopard, was released last night and two of the Geeks are already running it. We learn a bit about OS X Leopard, the GeekNews of the week and people''s problems with technology.', '! The Geeks Today were Lyle Troxell, Miles Elam, Alex Sleeis (in the studio!), Ryder Brooks, and Ben Jaffe. Sean Cleveland joined in the last few minutes.

! Useful Links
* A partial list of [applications that do not work on Leopard|http://tinyurl.com/2zfhot] .
* Alex discussed his experience with the Santiago Fire. He lives in the Lake Forest Foothills in Southern California, and being a truly geeky guy, used [Google Maps to keep a log of the fire|http://www.diverman.com/SantiagoFireMap.html] .
* Hacking your Mac. [Stop it from writing those annoying "DS_Store" files|http://www.macosxhints.com/article.php?story=2005070300463515] to your Windows shares.
* Mac Humor: Leopard''s file viewer, called Cover Flow, uses a "[Blue Screen of Death Image|http://cache.gizmodo.com/assets/resources/2007/10/171953dc7.jpeg]" for Windows Linux boxes on the local network.
* Lyle buys memory from http://www.datamemorysystems.com', 1, '2007-10-27 13:34:03.405797', '2007-10-29 11:13:06.345598', 'live', '2007-10-27 10:00:00', NULL, NULL, 9);
INSERT INTO shows VALUES (68, 'Genetic Engineering: Evaluating the Situation', NULL, NULL, 'The Geeks welcome Michelle Marvier, published and noted research scientist and Associate Professor of the Environmental Studies Institute and Department of Biology at Santa Clara University. Should vaccines be delivered to children in bananas? Join us to learn more!', '! Michelle Marvier
[mmarvier.jpg]
[Michelle Marvier|http://www.scu.edu/cas/environmentalstudies/mmarvier.cfm] is an Associate Professor and Executive Director of Environmental Studies at Santa Clara University''s College of Arts & Sciences. 

Her recommendation on today''s show for further reading was Michael Pollan''s ["The Omnivore''s Dilemma"|http://www.michaelpollan.com/omnivore.php]

The City of Santa Cruz has passed an [ordinance|http://www.ci.santa-cruz.ca.us/council/ordinance/2006/15.pdf] banning genetically engineered crops. The county is studying it with a [Genetic Engineering subcommittee|http://santacruzhealth.com/ge/index.htm].

For more information about Michelle and to read some of her work, see [her site|http://www.scu.edu/cas/biology/staffandfaculty/Michelle-Marvier.cfm]', 3, '2007-03-25 12:33:27.92628', '2007-06-26 16:37:55.621731', 'live', '2007-05-05 10:00:00', 163, NULL, 12);
INSERT INTO shows VALUES (88, 'Social Networking', NULL, NULL, 'Karsten Weide, program director of digital media and entertainment at IDC, joins the Geeks to talk about online social networks. This and more including the week''s news with geeks Lyle, Sean, Miles, and Ryder.', NULL, 7, '2007-09-01 11:55:34.238892', '2007-10-10 16:20:11.111206', 'live', '2007-09-01 10:00:00', 190, NULL, 5);
INSERT INTO shows VALUES (90, 'Meebo, Instant Messaging', NULL, NULL, '[Meebo|http://www.meebo.com/] provides a web-based interface to all your instant messaging services and includes group chat support. If you use IM, this is one great way to do it!

In addition to learning about this new product from the firm''s founder, we''ll talk about the trends in personal, immediate communications. Where are the trends heading? Why is this form of communication so popular and what will happen to all of the competing international standards and providers? Above all, is it truly useful – or just another distraction from thoughtful and meaningful human connection?', '! Our Guest: Seth Sternberg

Seth is a co-founder and CEO of Meebo. Prior to Meebo Seth worked at IBM in Corporate Development leading M&A transactions and working on strategy and venture capital initiatives. Seth flies airplanes, rides motorcycles and rollerblades. Seth majored in Political Science at Yale.

! About Meebo

meebo.com is a website for instant messaging from absolutely anywhere. Whether you''re at home, on campus, at work, or traveling foreign lands, hop over to meebo.com on any computer to access all of your buddies (on AIM, Yahoo!, MSN, Google Talk, ICQ, and Jabber) or find new friends with meebo rooms, no downloads or installs required, for free. Meebo launched in September 2005 and received funding from Sequoia Capital in December 2005 and Draper Fisher Jurvetson in January 2007. Today, 7.5M unique screen names log in monthly and users exchange over 130 million instant messages daily. The meebo team is just a fun bunch of people trying to bring IM to the web!', 1, '2007-09-07 11:19:50.918554', '2007-10-10 16:12:21.299747', 'live', '2007-09-15 10:00:00', 188, NULL, 11);
INSERT INTO shows VALUES (89, 'Home Media Management on a Macintosh', NULL, NULL, 'Patrick Nugent, product manager for [Roxio|http://www.roxio.com/], joins the Geeks for a discussion of how to manage your media using a Macintosh. Roxio''s recently released [Popcorn 3|http://www.roxio.com/enu/products/popcorn/standard/overview.html] gives you the power to mix your media and deliver it to a variety of players such as the iPod, iPhone, Apple TV, BlackBerry, Xbox 360, PlayStation 3, and DVD.', '! Our Guest

Patrick Nugent is a product manager for Roxio, a division of Sonic Solutions, the leading provider of consumer, professional, and embedded CD and DVD authoring products. Example applications are Roxio Toast for Mac and Easy Media Creator for Windows.  As a self-proclaimed digital media enthusiast, Patrick plays an instrumental role in the evolution of Roxio’s Macintosh products and strategy. He is exploring and learning how to navigate the often unmapped territory that comes with being on the cutting edge of digital media technology.  During his time at Roxio, Patrick has overseen the development and delivery of the award winning Toast 8, and he devotes his time and effort into making sure Roxio continues to deliver superior products that enrich Mac users'' digital experience.', 1, '2007-09-07 10:16:09.089956', '2007-10-10 16:12:51.754365', 'live', '2007-09-08 10:00:00', 189, NULL, 7);
INSERT INTO shows VALUES (99, 'Power Issues: Government, Monitors, and Laptops', NULL, NULL, 'The Geeks talk about phantom power draws, monitors that take no power in standby, Obama promises a CTO, and Lyle orders a laptop from the One Laptop Per Child project. These stories and more while we take your calls and comments.

', '!Useful Links
* [Smart Powerstrips|http://www.smarthomeusa.com/Shop/Hardware-Cable/Item/LCG1/]
* [100 Tbps connections |http://www.digitalworldtokyo.com/index.php/digital_tokyo/articles/terabit_class_fat_pipe_delivers_online_movies_in_an_instant/]


!! Shawn from Loveland, CO

Asked us about personal management applications. We suggested taking a look at [Apple''s Productivity Tools download list|http://www.apple.com/downloads/macosx/productivity_tools/], and Lyle suggested looking at [PersonalBrain|http://www.apple.com/downloads/macosx/productivity_tools/personalbrain.html] and you might also enjoy [MINDMAP|http://www.apple.com/downloads/macosx/productivity_tools/conceptdrawmindmap.html], good luck.

Shawn also asked us about getting to minimized windows using the keyboard only.

* [wtich|http://www.manytricks.com/witch/] is an Apple OS X application that shows you a list of windows that you can select..
* Judith from Watsonville, CA, suggested using the shortcut to get to your dock, ctrl+F3. You can then use your keyboard arrow keys to move around. (On a laptop this will probably be ctrl+fn+F3, because of the laptop hardware keys.)

! Lyle Works DANM

The [Digital Arts and New Media|http://digitalarts.ucsc.edu/] is an interdisciplinary masters of fine arts program at [UCSC|http://www.ucsc.edu/] that has a focus on technology.

* [Sharon Daniel|http://arts.ucsc.edu/sdaniel/] has an art piece called [Palabras_|http://palabrastranquilas.ucsc.edu/] which uses very inexpensive video cameras and a website to help people tell their stories.

* Michael Dale and Aphid Stern created [MetaVid|http://metavid.ucsc.edu/] which allows you to search congressional video footage.
', 7, '2007-11-17 14:07:22.666435', '2007-11-20 01:13:05.021098', 'live', '2007-11-17 10:00:00', NULL, NULL, 8);
INSERT INTO shows VALUES (113, 'Blu-ray is Photographic', NULL, NULL, 'The Geeks cover iPhones in China, HD DVD and Blue-ray, changes to Bit Torrent and much more. Timothy Jordan leads the Geeks this week covering the news and answering lister''s calls.', '! Digital to Analog TV

There is a [government coupon|http://www.ntia.doc.gov/ntiahome/press/2007/DTVfinalrule_031207.htm] available to subsidize the cost of getting a Digital to Analog converter. Without one your TV will not be able to get TV signals off air.  ', 1, '2008-02-16 10:09:39.83488', '2008-02-16 10:39:03.091303', 'live', '2008-02-16 10:00:00', NULL, NULL, 3);
INSERT INTO shows VALUES (240, 'Travelling with TripIt', NULL, NULL, 'The Geeks interview Andy Denmark of TripIt and cover the Week in Geek News.', '! Cell Phone Radiation
For information on long-term cell phone health risks -- or lack thereof -- the [US National Cancer Institute|http://www.cancer.gov/] has [a relevant list of medical studies on cell phone radiation|http://www.cancer.gov/cancertopics/factsheet/Risk/cellphones] and their results.', 7, '2010-06-19 09:51:39.547055', '2010-06-19 11:32:32.408126', 'live', '2010-06-19 10:00:00', 333, NULL, 6);
INSERT INTO shows VALUES (94, 'Guilt Giving, GeekNews and Calls', NULL, NULL, 'In this pledge drive episode of GeekSpeak we guilt you into contributing to KUSP and cover the Week in GeekNews: LCD Scanning, Windows XP SP3, Comcast goes Tivo, [Wind Belt|http://www.popularmechanics.com/technology/industry/4224763.html?series=37] and more. ', '! Links

*! Capturing any type of Internet audio to a Macintosh
* [Audio Hijack|http://www.rogueamoeba.com/audiohijackpro/features.php] is a paid program with a free demo.
* [WireTap|http://www.ambrosiasw.com/utilities/wiretap] was suggested by Fred from Boulder Creek as a free solution.
', 1, '2007-10-13 13:24:49.357166', '2007-10-13 13:37:16.261069', 'live', '2007-10-13 10:00:00', NULL, NULL, 4);
INSERT INTO shows VALUES (97, 'Drew Works for Who?', NULL, NULL, 'DARPA robot cars, Blockbuster vs. Netflix, Apple''s Firewall not so wally, Wikipidia as homework, NAS vs SAN, and more stuff Drew knows about. ', '! Links
* Learn how to [subnet a network|http://www.learn-networking.com/design-basics/how-to-subnet-a-network.php] and get tested.
* Drew suggested these OSs for Network Attached Storage: [FreeNAS|http://www.freenas.org/], OpenNAS and [Openfiler|http://en.wikipedia.org/wiki/Openfiler]


! Help from Brant
Brant wrote in with this:

Here''s a link to a pdf with the Comcast disclaimers about 911 service(watch the wrap:

[http://www.comcast.com/MediaLibrary/1/1/Customers/Customer_Support/Comcast_Digital_Voice/CDV/CDV_General/911_Emergency_Sevices.pdf]

Specifically:

"Calls, including calls to 911, may or may not be completed if there is a problem with network facilities, including network congestion, network/
equipment/power failure, or another technical problem."

In other words, you are on your own.  Too bad they don''t have to put this up front when you sign up.

The difference here is that the local Telco has a fixed, stable infrastructure including battery backups which is completely in their control.

VoIP depends on newer technologies and pieces of a network that by its nature isn''t completely in any one single companies control....

I wouldn''t bet my (or any body elses) life on it.

Brant
', 1, '2007-11-03 14:10:39.821023', '2007-11-03 14:25:50.467622', 'live', '2007-11-03 10:00:00', NULL, NULL, 4);
INSERT INTO shows VALUES (101, 'High Tech Dentistry', NULL, NULL, 'Henry Ramirez D.D.S. joins the Geeks for a discussion on the high tech of dentistry.', '! Photos
When last Lyle visited Henry Ramirez he took some photos: http://flickr.com/photos/lyle/tags/ramirezdds/', 1, '2007-11-28 17:44:54.269123', '2007-12-08 09:50:10.414293', 'live', '2007-12-08 10:00:00', 191, NULL, 3);
INSERT INTO shows VALUES (105, 'Gifts for Geeks', NULL, NULL, 'Gift ideas for geeks delivered by the Geeks. Plus the Week in Geek News and a caller question or two.', '! Gift Ideas
* Miles suggests trying http://www.woot.com to find geek gifts.
* [USB Turntable|http://www.thinkgeek.com/electronics/mp3/90a0], for geeks with vinyl that they want to rip into digital.
* [Intel Core 2 Extreme QX9650 CPU|http://www.intel.com/products/processor/core2XE/index.htm?iid=prod_desktopcore+body_core2exQX9650]
* [SilverStone Temjin TJ10 PC Chassis|http://www.silverstonetek.com/products/p_contents.php?pno=tj10]
* [LG GGW-H20L 6x Blu-Ray writer/reader|http://us.lge.com/products/model/detail/computer%20products_optical%20drives_optical%20drives_GGW-H20L.jhtml] , 3x HD DVD reader, and 16x DVD writer with Lightscribe and Serial ATA interface.
* [NVIDIA GeForce 8800 GT|http://www.nvidia.com/object/geforce_8800gt.html]
* Adobe [Lightroom|http://www.adobe.com/products/photoshoplightroom/] for digital photography management.


! First Appearance 
This episode of GeekSpeak was the first appearance for Sean Pelletier, Technical Marketing Analyst at [NVIDIA|http://www.nvidia.com/].
', 1, '2007-12-22 13:47:46.064413', '2007-12-22 14:10:22.901524', 'live', '2007-12-22 10:00:00', NULL, NULL, 8);
INSERT INTO shows VALUES (211, 'Paying for Space-y News', NULL, NULL, 'This week, Ben covers Saturn''s Northern Lights, Miles covers the News Corp/Google shakedown, and Lyle delivers the final word on alien visitation.', NULL, 1, '2009-11-28 09:39:03.873631', '2009-11-30 08:23:57.23704', 'live', '2009-11-28 10:00:00', 314, NULL, 8);
INSERT INTO shows VALUES (106, 'Tech for 2008', NULL, NULL, 'The geeks share their thoughts on upcoming technology. Plus Week in Geek News and listeners questions and comments on technology.', '! Links
* Free [Ubuntu OS|http://ubuntu.org]
* USB Turntable: [Ion Turntable|http://www.amazon.com/Ion-iTTUSB-Turntable-USB-Record/dp/B000BUEMOO]
* [Free Audio Editor|http://audacity.sourceforge.net]

! Domain Name Poaching
During the show we tested weather auto domain name poaching was happing at [GKG|http://www.gkg.net/], it is not! On the air I mentioned that I tried MilesElamIsCool.com and secretively I also tried DrewIsWayCool.com. After the show these where still available. So get on it fans! But seriously, if you want to check on the availably of a domain name use [GKG|http://www.gkg.net/], or don''t: Miles tested networksolutions.com which had fine results as well.', 1, '2007-12-29 10:29:23.194044', '2007-12-29 11:34:30.34253', 'live', '2007-12-29 10:00:00', NULL, NULL, 10);
INSERT INTO shows VALUES (109, 'There''s Nothing in the Air', NULL, NULL, 'The Geeks discuss the week in tech news, including the further decline of HD DVD sales, the blackest black courtesy of new carbon nanotube material, an asteroid hitting Mars, a CIA report revealing the weaknesses of power grids to hackers, and commuting Hwy 17 by bus between Santa Cruz and San Jose with full connectivity. Also discussed are the benefits and the drawbacks of the new Apple MacBook Air notebook, with emphasis on the latter.', '! Links
* [Hitler explains the downfall of HD-DVD|http://www.youtube.com/watch?v=ywWfmRdOmJ0].
* [Fast VNC|http://www.datafurnace.net.au/vncfast/] for remote computer access.
* Router Security using [tor the Onion Router|http://www.torproject.org/] .
* During the show, a caller asked about freeing up space on their Windows notebook. The Geeks recommend clearing out temporary files first. Do this by opening Windows Explorer (located in Start -> All Programs -> Accessories). To see a graphical representation of the files on your hard drive, the geeks recommend [Windows Directory Statistics (WinDirStat)| http://windirstat.info] . You would be surprised how much data is on your drive that you don''t need. ', 1, '2008-01-19 09:40:35.835981', '2008-01-19 13:04:32.177958', 'live', '2008-01-19 10:00:00', 196, NULL, 9);
INSERT INTO shows VALUES (114, 'Intensely Small', NULL, NULL, 'The worlds most intense laser, GeekSpeak nepotism, RIAA crack training, self healing rubber, and more Week in Geek news. Plus listener''s calls with questions and comments of technology all on this week''s episode of GeekSpeak.', 'Thanks to [Timothy Jordan |http://www.timothyjordanshow.com/] for covering me last week. Take a look at his show on KZSC, http://www.timothyjordanshow.com/

! Participate by helping GeekSpeak

It is the last week to tell us what you think of the new GeekSpeak theme DSurfNA by [Ebu Gogo|http://www.myspace.com/ebugogoband] (Thanks Ebu Gogo). People have loved it so we are moving forward, but please tell us what you think.

And here is something you can do every week, we like to name our episodes for the archive and podcast. If you have a name, email it to us during or right after the show and we may use it, and if we do we will thank you on the site.

! Fun fun fun
* Keith sent in a picker upper, a fun flash cartoon: http://producten.hema.nl/
* [Funny Dogs|http://faildogs.com]
* [Eye of Sauron|http://www.theregister.co.uk/2008/02/22/fomalhaut_image/]
* [Seven Lazy Wizards|http://www.cracked.com/article_15952_7-most-powerful-wizards-too-lazy-use-their-powers.html]


All the talk of small measurements on this episode of GeekSpeak motivated listener Del to send in this:
"An ohno-second: An instant of time even smaller than a microsecond in which you realize the disastrous consequences of your actions. Usually applies to the moment when you realize the command you''ve just given is deleting important data."

! Santa Cruz Live Promotes Troxell
A relatively new site featuring the goings on of Santa Cruz called "[Santa Cruz Live|http://www.santacruzlive.com/]" is featuring my wife Daria Troxell. Wallace Baine the host of Santa Cruz Live has started a new series called "The Creatives" and this first in the series [focuses around Daria Troxell''s process as an artist|http://www.santacruzlive.com/2008/02/22/daria-troxell/] and will also be published in tomorrow''s Santa Cruz Sentinel.

Daria Troxell is in Dead Man Walking which plays tonight and closes tomorrow. She is fantastic as Sister Prejean, a woman coming to terms with the horrible acts of a death row inmate and the flaws in our criminal justice system.

The play is produced by [Pisces Moon Productions|http://www.piscesmoon.org/deadmanwalking.html] and you can read more about the play there.', 1, '2008-02-25 10:59:26.170531', '2008-02-25 13:46:29.808882', 'live', '2008-02-23 10:00:00', 200, NULL, 2);
INSERT INTO shows VALUES (138, 'Charles Stross on Robots and Sci-Fi', NULL, NULL, 'Charles Stross'' most recent book "Saturn''s Children, a Space Opera" explores a human-lacking future society inhabited solely by emotionally complex robots. [Rick Kleffel|http://www.trashotron.com/agony/] invited Geeks Sean Cleveland and Lyle Troxell to chat with Charles Stross on KUSP''s [Talk of the Bay|http://www.kusp.org/shows/totb.html], and we thought it would make a great bonus-episode of GeekSpeak.', '[[2008_07_29_3022_400w.jpg|Lyle Troxell, Charles Stross, Rick Kleffel, and Sean Cleveland at KUSP]|2008_07_29_3022_800w.jpg]

! Saturn''s Children
[stross_saturn_us.jpg|Here is the Saturn''s Children US Cover. Which I think looks horrible, Lyle.]', 1, '2008-07-30 00:18:17.348118', '2008-07-31 17:49:11.167272', 'live', '2008-07-29 10:00:00', 228, NULL, 12);
INSERT INTO shows VALUES (104, 'Bridging the Digital Divide in Guatemala ', NULL, NULL, 'Computers in the US are thrown away at an alarming rate while, in developing countries, there are not enough computers to go around. [Next Step Recycling|http://www.nextsteprecycling.org/] in Oregon is helping to change that by shipping containers full of usable computers to Guatemala where [Partners in Solidarity|http://www.partnersinsolidarity.com/] use sustainable methods to install them in schools. Reusing computers to help bridge the digital divide, on this episode of GeekSpeak.', '! More on the Topic

''Partner in Solidarity'' is an NGO based in Quetzaltenango, Guatemala which works brings computers and technical education to the area''s rural schools and NGO''s.  In the Guatemalan Department (State) of Quetzaltenango there are approximately 750,000 people.  According to the Ministry of Education, less then 1% of the Department''s public schools have computer labs, a fact which is  especially evident in the rural, mostly indigenous areas. Further, computer literacy is a pre-requisite for university study in Guatemala, as well as being a gateway to employment opportunities throughout the region.  ''Partners in Solidarity,'' along with its partners ''Next Step Recycling'' and ''INEPAS,'' seeks to ''Bridge the Digital Divide'' so to speak and help provide access to technology and technological education to the students of these schools.

NextStep Recycling is a non-profit computer refurbishing and recycling organization. They are dedicated to providing refurbished computer equipment to schools, non-profit organizations, and economically and/or physically disadvantaged individuals. In addition, they serve the community and the environment by recycling obsolete/non-repairable donated electronic equipment. They are able to provide computers to the public by refurbishing used computer equipment for which businesses, corporations, and individual donors no longer have a use.

When the computers arrive in Guatemala, by way of container ship, they have already been loaded with Microsoft Windows, as well as Open Source software such as OpenOffice and GIMP.  Partners in Solidarity volunteers load Spanish language educational software, as well as software which teaches the language and culture of the local indigenous Mayan population, Quiche.  This software is developed by another local NGO, Enlace Quiche. 

In this show, hear Matthew Rutman, founder of ''Partners in Solidariy,'' Lorraine Kerwood, Founder and Executive Director of ''Next Step Recycling,'' and Josh Weiss, a current ''Partners'' volunteer and former KUSP Training & Production Coordinator.  

* [Partners in Solidarity|http://www.partnersinsolidarity.com]
* [Next Step Recycling|http://www.nextsteprecycling.org]
* [INEPAS|http://www.inepas.org] 
Partners in Solidarity''s Guatemalan Community Partner (and a great Spanish School) 
* [Enlace Quiche|http://www.enlacequiche.org.gt/]

To get involved as a volunteer for Partners in Solidarity, write an email to Matthew, his email is at yahoo.com and is psolidarity.

* [Photos of the Partners in Solidarity Project|http://www.flickr.com/groups/partnersinsolidarity/] work.
* [Josh''s blog|http://www.pressuredrop88.com/pd88/] covering his work and experiences.
', 1, '2007-12-17 15:36:56.160165', '2008-07-15 03:32:50.413429', 'live', '2008-03-22 10:00:00', 206, NULL, 20);
INSERT INTO shows VALUES (111, 'Richard Stallman on Free Software', NULL, NULL, 'Richard Stallman from the [Free Software Foundation|http://www.fsf.org/] joins us to talk about the GNU/Linux operating system and his philosophies about software including [DRM|Digital Restrictions Management] and so-called "intellectual property."', '! Richard Stallman

[2008_02_02_9692_350w.jpg| [Richard|http://en.wikipedia.org/wiki/Richard_Stallman] is a hacker and social justice advocate who believes strongly in free (as in speech) software. ]

[2008_02_02_9693_350w.jpg| Drew Meyer and Richard hit it off quite well. You can tell they where best friends during this episode of GeekSpeak.]


! Larry Cafiero

Larry is known as [Larry the Free Software Guy |http://larrythefreesoftwareguy.wordpress.com/] and runs the Felton, CA division of HeliOS Solutions West. It’s located at the Felton Trading Post at 6396 Highway 9, Felton CA 95018. Phone: 831.335.7303. Larry also runs the [Cabrillo College GNU/Linux Users Group|http://www.cabrillo.edu/associations/clug] .


! Santa Cruz Events with Richard Stallman

!! Saturday February 2nd from 1am to 5pm

The Installfest at Cabrillo is from 1 to 5 on Saturday Feb. 2 in the Room 2504 Computer Lab. It''s free, of course, and there will be a wealth of GNU/Linux advice and help for those who want to install it temporarily by live CD or permanently -- as well as pizza and drinks. For instructions, people can go to the [Cabrillo GNU/Linux Users Group|http://www.cabrillo.edu/associations/clug] .

!! Tuesday February 4th at 6:30pm

The Cabrillo GNU/Linux Users Group is having Richard Stallman speak at Cabrillo on Feb. 4 at 6:30 p.m.  For more information, people can call HeliOS Solutions West in Felton at 335-7303 or visit the [Cabrillo GNU/Linux Users Group|http://www.cabrillo.edu/associations/clug] .


! New GeekSpeak Theme

[Tell us what you think| http://geekspeak.org/contact] of our possible new GeekSpeak theme.

Learn more about [Ebu Gogo|http://www.myspace.com/ebugogoband] at their MySpace page.


! Links Mentioned

!! Finding Out What Memory You Need

* [Crucial|http://www.crucial.com/] has a tool.
* [Belarc|http://www.belarc.com/] has Belarc Adviser 

!! Playing OGG

Richard suggested going to http://www.playogg.org and using Ogg Vorbus for audio and Ogg Theora for video.

!! About DRM

Richard mentioned http://defectivebydesign.org/ to keep abreast of Digital Restrictions Management. ', 1, '2008-01-26 10:00:34.919601', '2008-02-25 14:40:01.147903', 'live', '2008-02-02 10:00:00', 201, NULL, 17);
INSERT INTO shows VALUES (115, 'Blu-Ray DVD Won!', NULL, NULL, 'Now that HD-DVD is dead, is it time to get a Blu-Ray player for you home, or for your computer? Find out with the Geeks during a detailed discussion with Robert DeMoulin from Sony Electronics.', '! Robert DeMoulin

Our guest Robert is a Marketing Manager in Branded Storage Product Marketing at Sony Electronics. We will pick his brain on the now standard high definition on DVD, Blu-ray.', 1, '2008-02-25 18:03:24.120456', '2008-02-26 01:40:57.91397', 'live', '2008-03-08 10:00:00', 205, NULL, 5);
INSERT INTO shows VALUES (137, 'Geek News & Questions from Listeners', NULL, NULL, 'The Geeks discuss poor Internet connectivity in rural areas, magic tricks helping user interface design, the latest Craigslist debacle, Googlepedia, and breaking the new iPhone 2.0. The geeks also take calls from listeners.', '! Keeping a Page "Fresh"
* [Session Keeper Firefox plugin|https://addons.mozilla.org/en-US/firefox/addon/2517]


! High Speed Wireless
* Judith from Watsonville called to tell us that [Razzolink|https://wwws.razzolink.com/] is working very well for her and she recommends them.', 1, '2008-07-23 09:37:52.44795', '2008-08-01 09:47:26.317107', 'live', '2008-07-26 10:00:00', 227, NULL, 29);
INSERT INTO shows VALUES (248, 'A Cappella DefCon', NULL, NULL, 'Ben, Lindsey, Alex, and Miles discuss the Week in Geek and DefCon.', NULL, 7, '2010-08-07 09:53:51.299532', '2010-08-07 11:59:43.53657', 'live', '2010-08-07 10:00:00', NULL, NULL, 5);
INSERT INTO shows VALUES (116, 'Ridesharing Social Application', NULL, NULL, '[Yatrips|http://www.yatrips.com/] provides a way for people to easily find and offer car rides. The more people ride-share the more gas is saved and the less traffic on the roads. Learn about social applications and ride-sharing with the Geeks and the guys from Yatrips.', '! Guests
!!Swami Nathan
Founder, Chairman, and CEO, Yatra Motors, Inc, Swami Nathan is also the co-founder and CEO of GreatPeople Ventures, LLC, one of the leading early stage search firms in the Silicon Valley. In over 12 years, all but one of his portfolio clients are still in business. As an early pioneer in the Home Video Industry, he was the founder and CEO of Universal Vision Systems, Inc. where he designed one of the leading large scale inventory management systems that served companies like Home Box Office and Safeway.  As the co-author of Emerging Distribution Models for Interactive Media, published by Apple Computer in 1994, Swami forecast the successful emergence of the DVD three years before its introduction into the market place. He is the inventor of patents (pending) in the area of digital content and delivery.
 
!! Scott Rozic
Scott heads up development for the Yatrips social ride sharing system.  This is the first of several car-related apps and widgets.  Scott has over twelve years of experience conceiving, building and shipping web applications. Scott started his career as the founder and CEO of XMarkstheSpot, a performance marketing ad platform that was sold to a public direct marketing company. Scott holds a BS in Finance and Entrepreneurship from the University of Colorado at Boulder.', 1, '2008-02-25 18:19:07.677693', '2008-03-01 11:34:47.944458', 'live', '2008-03-01 10:00:00', 204, NULL, 6);
INSERT INTO shows VALUES (118, 'The Geeks Get Skeptical', NULL, NULL, 'What do UFOs, Wi-Fi health concerns, and Firefox 4 have in common? The Geeks don''t think they exist. They''re fun to talk about though.', '! Links
* Lyle listens to a lot of podcasts including [Skeptoid|http://skeptoid.com/] and [The Skeptics'' Guide To The Universe|http://www.theskepticsguide.org/], which are both wonderful in that they support scientific thought.

', 1, '2008-03-29 09:45:15.942797', '2008-03-29 11:22:43.645977', 'live', '2008-03-29 10:00:00', NULL, NULL, 2);
INSERT INTO shows VALUES (119, 'Black Holes of Humor', NULL, NULL, 'Covering the Week in Geek News, the Geeks talk about speed trap detection, small and ultra small black holes, and Apple is the largest U.S. music retailer, and much more.', '! Calls
* Amber from Salinas asked about recording music from tape and CD to her computer. We talked about this on [Jan 26th''s episode of GeekSpeak|http://geekspeak.org/shows/2008/01/26/] and you can find a link about a turn table. We also suggested software company [Roxio|http://www.roxio.com/] who make CD burning software which has audio importing features for grabbing vinyl records and tapes and cleaning them up.

* Elizabeth from Aptos wants to download videos from [YouTube|http://www.youtube.com/] and we suggested trying [Get Miro|http://www.getmiro.com] which does just that.


! From Last Week
* Last week Michael, from Santa Cruz, asked us about a video problem of transferring video files from a Windows machine to a Mac. Ben suggested [MPEG Streamclip|http://www.squared5.com/] which runs on Mac and Windows and converts video files. Oh, and it''s free!', 1, '2008-04-05 09:12:58.08647', '2008-04-05 11:23:59.861503', 'live', '2008-04-05 10:00:00', NULL, NULL, 5);
INSERT INTO shows VALUES (120, 'Tech News of the Week', NULL, NULL, 'GeekNews: NASA science website, 99$ Computer, College Board drops CS AP test, commercial free YouTube for politics, instant backup band, speed of hurricanes by sound, and even more news. Plus, the Geeks take calls with questions and comments about technology.', '! Links
* We support net neutrality and there is an [FCC hearing at Stanford| http://cyberlaw.stanford.edu/node/5729] on Thursday. Go ahead and drop by. Tell the FCC that you want the net to be equal for all parties.

* [iPod copy software|http://www.google.com/search?q=iPod+copy] can help you move music off of an iPod onto a computer that you do not sync with using iTunes.

* [Super Composer|http://www.supercomposer.com/] allows you to make a new song at a push of a button.', 1, '2008-04-12 09:34:01.71633', '2008-04-14 16:05:41.463366', 'live', '2008-04-12 10:00:00', NULL, NULL, 8);
INSERT INTO shows VALUES (121, 'Maker Faire 2008', NULL, NULL, 'The third annual [Maker Faire|http://makerfaire.com/] is coming to the San Mateo County Fairgrounds. It was a [blast last year|http://www.flickr.com/photos/tags/makerfaire/clusters/make-sanmateo-makemagazine/], and this one will be packed with even more. Dale Dougherty joins the Geeks to chat about Make Magazine, Craft Magazine and this wonderful faire.', NULL, 1, '2008-04-18 11:07:23.320386', '2008-04-26 11:41:02.874919', 'live', '2008-04-26 10:00:00', NULL, NULL, 4);
INSERT INTO shows VALUES (204, 'Stop the Robot Overlords', NULL, NULL, 'The geeks fight off an impending robot take over with your donations.', NULL, 1, '2009-10-10 09:30:03.257788', '2009-10-10 10:59:11.615909', 'live', '2009-10-10 10:00:00', 306, NULL, 9);
INSERT INTO shows VALUES (123, 'You Want My DNA To Do What?!', NULL, NULL, '[DHS|Department of Homeland Security] and the finer points of neologisms like "fob," today on Geek Speak with Ben, Miles, Alex, and Lyle.', '! Links
* [Carbon Copy Cloner:|http://www.bombich.com/software/ccc.html] does a kind of backup.
* Cosmology - Don called at the end of the show about the shape of the Universe. We answered it briefly on air, and you can see a more clear explanation of what I am talking about in [our Forums|http://forums.geekspeak.org/viewtopic.php?f=2&t=34] and I do plan on doing a GeekSpeak Cosmology episode.', 7, '2008-04-19 10:50:01.009939', '2008-04-19 15:22:46.142501', 'live', '2008-04-19 10:00:00', NULL, NULL, 4);
INSERT INTO shows VALUES (139, 'Giant Virus and iWaste of Money', NULL, NULL, 'The Geeks take calls and cover the Week in Geek News covering a new giant virus, iPhone waste of money and much more.', '! Links
* Ben Suggests [Feisar|http://feisar.com] for Mac iSync phone plugins.', 1, '2008-08-09 10:00:01.293698', '2008-08-11 09:31:58.041314', 'live', '2008-08-09 10:00:00', 233, NULL, 20);
INSERT INTO shows VALUES (143, 'Making Computers More Power Efficient', NULL, NULL, '[Climate Savers Computing Initiative|http://www.climatesaverscomputing.org/] is a nonprofit group of consumers, businesses and conservation organizations who hope to promote development, deployment and adoption of technologies that improve the efficiency and reduce the energy consumed by computers.

Erik Teetzel from Google will join the Geeks to talk about the amount of energy that will be saved, and the design and implementation of the technology that Climate Savers is recommending.', '! Our Guest, Erik Teetzel
Erik is a Green Energy Manager for Google''s RE<C research and development team.  Mr. Teetzel is also a contributing member of the Climate Savers Computing Initiative, a non-profit group of corporations, NGOs, government entities, and individuals working to increase the energy efficiency of compute systems.

Prior to joining Google, Mr. Teetzel led the creation of Hewlett Packard''s ProLiant 100 series servers.  He also served in research positions focused on structural design and manufacturing at Stanford''s Linear Accelerator Center and Lockheed Martin''s Space Systems.  

Mr. Teetzel holds a B.S. in Mechanical Engineering from the University of California, Davis and a M.S. in Mechanical Engineering from Stanford University.', 1, '2008-08-27 11:03:07.581735', '2008-10-11 12:03:06.446797', 'live', '2008-10-11 10:00:00', NULL, NULL, 15);
INSERT INTO shows VALUES (141, 'Olympic Technology', NULL, NULL, 'The Olympics experienced a blue screen of death, the fireworks show was partly computer-generated, and Speedo owns swimming.  The Geeks discuss the changes in the Olympic Games since [the early days|http://en.wikipedia.org/wiki/Ancient_Olympic_Games] where all athletes competed in their birthday suits.', '!The Theatricality of the Olympics

The Olympics is Theater. And media is playing a increasingly tremendous role in the production.

* Video coverage and editing - tons of 3D Graphics
* Instant Replay
* Pyrotechnics / Fireworks
* Video Projections (interactivity with them)
* Many more...

Apparently NBC changed the order of the countries as they were announced to put the US further back in the lineup. Makes sense from a ratings perspective. This is a huge feat from an editing perspective. One bad edit, and the game is up.

They used XP instead of Vista on their computers running Windows for live media in the stadium. In theatre, there''s no need to use the latest software if you know the old version is stable. As they say, if it''s not broken, don''t fix it. Go with what you know works.

Despite the choice to use XP, a Blue Screen of Death (BSOD) appeared on the ceiling during the opening ceremonies. These kinds of events are huge and almost always have glitches. It''s unfortunate that particular glitch was so noticeable and humorous to geeks like us, especially with Bill Gates in the audience.

They had the fireworks show during the opening ceremonies, but because of safety issues with helicopters flying to record this for the worldwide audience, people watching via TV saw a CGI shot of computer generated fireworks. The fireworks show actually happened in real life, but people watching the broadcast saw the fake version. They chose to use a CGI shot on the live broadcast because of potential safety issues for the helicopter pilot.

The most bizarre twist to this story is that the people in the stadium were watching the fake one on the screens in the stadium while the real fireworks exploded above their heads.

It certainly was a tremendous technical accomplishment, and an entertaining opening ceremony.

Here are some links:

* [Blue Screen Of Death|http://www.smh.com.au/news/off-the-field/bills-blue-screen-of-death-malfunction/2008/08/12/1218306871673.html]
* [CGI Olympics Fireworks Display 1|http://tinyurl.com/5kn9ev]
* [CGI Olympics Fireworks Display 2|http://www.msnbc.msn.com/id/26139005/]
* [CGI Olympics Fireworks Display 3|http://www.telegraph.co.uk/sport/othersports/olympics/2534499/Beijing-Olympic-2008-opening-ceremony-giant-firework-footprints-faked.html]', 1, '2008-08-16 09:37:10.408753', '2008-08-21 21:59:05.780402', 'live', '2008-08-16 10:00:00', 235, NULL, 12);
INSERT INTO shows VALUES (183, 'Three Wolves vs. Horrifying Child Robot', NULL, NULL, 'The geeks cover news, robots, and three wolves.', NULL, 13, '2009-05-23 10:12:50.981758', '2009-05-23 11:55:45.87131', 'live', '2009-05-23 10:00:00', 289, NULL, 8);
INSERT INTO shows VALUES (185, 'Etherpad with Aaron Iba', NULL, NULL, 'The geeks are joined by Aaron Iba, CEO of AppJet, Inc. His company developed [Etherpad|http://etherpad.com/], the technology behind the [Geek Chat|http://etherpad.com/geekspeak] link on our show page. Join us on our Etherpad every Saturday during the show to give us your questions, comments, and interaction.

Aaron holds a degree in mathematics from MIT. Before founding AppJet with David Greenspan (president of AppJet), Aaron worked at Google writing algorithms for improving search quality. As co-captains of their high school math team, Aaron and David led Lexington High to numerous top spots nationally. While at MIT, they founded the Robocraft Programming Competition (now called BattleCode), which is the largest college programming competition in the country.
', NULL, 13, '2009-06-04 11:54:39.460173', '2009-06-06 11:41:57.944841', 'live', '2009-06-06 10:00:00', 291, NULL, 10);
INSERT INTO shows VALUES (186, 'Geeks Going to the Dogs', NULL, NULL, 'In a slightly odd GeekSpeak Geeks Lyle, Ryder and Miles, take your calls and discuss the week in geek news, but they are joined by Becca Hiatt a veterinarian rehabilitater (Physical Therapist for Animals) to answer questions about dogs. The call-in section goes back and forth between very knowledgeable dog suggestions and, contrarily, the Geeks poor answers to Windows questions.', '! Unusual USB Devices
 * [USB hand warmers|http://www.usbgeek.com/prod_detail.php?prod_id=0356] for the win!
 * [USB volume control|http://www.griffintechnology.com/products/powermate/] and more.', 7, '2009-06-13 09:54:40.59269', '2009-06-13 11:52:25.871677', 'live', '2009-06-13 10:00:00', NULL, NULL, 10);
INSERT INTO shows VALUES (150, 'Apple''s New Notebooks and ....', NULL, NULL, 'Apple''s new laptops are awesome! They''re also horrible. Contradiction? You decide.', '!Apple Introduces New Laptops
They have blurred the line between the [MB|MacBook]and the [MBP|MacBook Pro]

Positives
[MBP|MacBook Pro]: Two video cards - log out to switch them
* NVIDIA GeForce 9400M 256[MB|MacBook]RAM
* 9600M - Dual-Link DVI, 256/512[MB|MacBook]RAM
[MBP|MacBook Pro] now uses Mini DisplayPort instead of DVI
* can''t easily bend pins in the connector
* no thu[MB|MacBook]screws
* At least one display directly supported (24" LED Cinema Display, Avail. Nov.)
* 20 pins, aux channel (mics, cameras, touchscrn), easy expansion. of protocol
All the ports are now on one side (left), and the optical drive is on the right
Aluminum Block Construction - Rigidity, Weight, Aethetics
General Upgrades: Processor, Hard Drives
Multi-Touch Trackpad that pivots along top
* two-finger scrolling, pinch, rotate, three-finger swipe, four-finger swipe
Environmental Status
* Recyclable Aluminum and Glass
* EPEAT Gold Rating - Score of 21
* (Out of 380 Notebooks, 46 are Gold, 334 Silver)
iPhone Users - iPhone Earbuds are supported - Mic, and Play/Pause button
Easy Hard Drive Access - How important is this?


Negatives
[MBP|MacBook Pro] now uses Mini DisplayPort instead of DVI
* We''ll need an adapter until Mini DisplayPort becomes Standard (possible)
* Mini DisplayPort put forth by VESA Video Electronics Standards Association)
* license-free, royalty-free
* Backing it are: HP, Philips, Samsung, Lenovo, AMD, Nvidia, Intel, others
No Blu-ray - Still dual-layer 8X burner, which is fine with me.
* High Def DVDs are slow getting off the ground
* Jobs:
* * Blu-ray is a bag of hurt. I don’t mean from the consumer point of view.
* * It’s great to watch movies, but the licensing is so complex.
* * We’re waiting until things settle down, and waiting until Blu-ray
* * takes off before we burden our customers with the cost of licensing.
NO FIREWIRE!!!
* Apple has been known to be the first to remove technologies that are aging.
* Floppy Disks, Built-In Modems
* What do we lose with this?
* Networking over FW - Windows doesn''t support it (not a big loss)
* External Hard Drives
* Target Disk Mode - your computer as an ext HD - No USB support
* THE DEAL-BREAKER: Cameras. Newest HDV cameras use USB, but FW ones are still sold, and Pro DV cameras use FW.
* Another Deal-Breaker - Pro Audio Interfaces!
* [MBP|MacBook Pro]: Firewire 800
* MB: No Firewire at all

* 5 Years ago, I was touting the universality of FireWire on Macs as a reason to convert to some of my conflicted friends. Makes sense, since Apple initiated development on it. Now that was 1995, but it still competes with the standard connections (USB and CAT5)
* CAT5 - bottleneck is often the network card of the other computer (if a pc), or more likely, your router or switch.
* USB - though it has better specs than FW400 on paper, it is quite a bit slower (10-40%, numbers vary) in real life. Also, node-based is nice - don''t need to carry around USB splitters. Though, we''ll be carrying around Mini DisplayPort adapters, so we should get used to it.
* One thing I love about my [MBP|MacBook Pro] now is that I don''t usually need any extra cables or baluns. Firewire 400 and 800, DVI are there. Now, [MB|MacBook]Air needs a USB-CAT5 Balun, Micro-DVI adapter, [MBP|MacBook Pro] needs a FW800-400 balun, a Mini DisplayPort adapter.

Not a fatal mistake for Apple - they''ll get their way once my computer breaks down, but I''m clutching onto this model for dear life for as long as I can.
', 13, '2008-10-18 09:47:04.52861', '2008-11-08 09:23:09.886448', 'live', '2008-10-18 10:00:00', 254, NULL, 25);
INSERT INTO shows VALUES (196, 'Drobo, Drobo, Drobo', NULL, NULL, 'Mark Fuccio joins us from [Data Robotics, Inc.|http://www.drobo.com/] to talk about data backups, and the [Drobo|http://www.drobo.com/] . Mark and the geeks also talk about some of the more complex ways to manage data, including RAID levels, and various Network-Attached Storage solutions.', '! Our Guest

Mark Fuccio holds a Bachlars of Science in Electrical Engineering from MIT. Mark has 29 years of experiance in the tech industry and for the last Four years at [Data Robotics|http://www.drobo.com/] and is currently senior director of products and markets.', 13, '2009-08-15 07:47:07.263318', '2009-08-15 11:47:18.181775', 'live', '2009-08-15 10:00:00', 298, NULL, 6);
INSERT INTO shows VALUES (197, 'Swarming SQL Inject Robots with Cruzio', NULL, NULL, 'Chris Neklason and Peggy Dolgenos, founders of both local internet service provider Cruzio and of this here radio show GeekSpeak, join the geeks to chat about the growth of Cruzio and to chat a bit about ISP services.', NULL, 1, '2009-08-21 15:53:33.274524', '2009-08-22 12:27:32.902792', 'live', '2009-08-22 10:00:00', 299, NULL, 5);
INSERT INTO shows VALUES (184, 'iPhone Applications', NULL, NULL, 'We''ll be joined by a representative from [CollegeKidApp|http://collegekidapp.com], a small organization devoted to creating applications for the iPhone and documenting the entire process on their blog. We''ll also be covering Geek News, as always.', NULL, 13, '2009-05-29 00:49:33.538523', '2009-05-30 11:52:29.432883', 'live', '2009-05-30 10:00:00', 290, NULL, 9);
INSERT INTO shows VALUES (203, 'Getting Stoned on Exoplanets with Windows 7', NULL, NULL, 'Kid wins suit vs. Amazon, Microsoft Store, an exoplanet rains rocks, a (non) Star Trek Communicator and more GeekSpeak news - plus lots of fun calls!', 'VLC, a fantastic and lightweight audio player, is available at http://www.videolan.org/vlc/', 13, '2009-10-03 10:41:28.955385', '2009-10-03 12:11:32.11794', 'live', '2009-10-03 10:00:00', 305, NULL, 12);
INSERT INTO shows VALUES (202, 'Thirsty Robot Swallows the Moon', NULL, NULL, 'Water on the Moon and Mars, robots grade english papers and eat people,  e-coli cleans uranium, and more geeky news.', '! Stuff We Mentioned

[Snow Crash|http://en.wikipedia.org/wiki/Snow_Crash]

', 13, '2009-09-26 09:53:36.548833', '2009-09-26 11:35:20.111882', 'live', '2009-09-26 10:00:00', NULL, NULL, 8);
INSERT INTO shows VALUES (206, 'Water Election Software Car', NULL, NULL, '32 exoplanets Water Car and iPhone vs Verizon and much more.', NULL, 1, '2009-10-24 09:46:19.815929', '2009-10-26 20:59:42.820452', 'live', '2009-10-24 10:00:00', NULL, NULL, 2);
INSERT INTO shows VALUES (205, 'iPhone vs Bear and Pledge Drive from DC', NULL, NULL, 'A robot cockroach, a USB Telescope, NASA impacts the Moon, iPod can''t race and Lyle hosts the show from [WAMU|http://wamu.org] in Washington DC.', NULL, 13, '2009-10-17 10:47:11.833825', '2009-10-18 11:53:00.835183', 'live', '2009-10-17 10:00:00', 307, NULL, 8);
INSERT INTO shows VALUES (207, 'Physical Flex and Spooky Tech', NULL, NULL, 'Dave Meeker, Director of Emerging Technology at [Roundarch|http://roundarch.com] joins us to chat about connecting Flex to physical devices and other cool things that Roundarch is doing. We also chat about some fun holoweenish stuff.

[Roundarch|http://roundarch.com] designs and implements digital experiences for the world’s largest organizations. They deliver web sites, rich web applications, mobile apps, social media applications, digital marketing campaigns and more for clients such as Avis, A&E, Hershey’s and the US Air Force.', NULL, 1, '2009-10-31 09:47:22.171972', '2009-10-31 11:14:07.43899', 'live', '2009-10-31 10:00:00', 308, NULL, 5);
INSERT INTO shows VALUES (142, 'Online Crime with Coreflood', NULL, NULL, 'Joe Stewart from [SecureWorks|http://www.secureworks.com/] chats with the Geeks about malware and online crime. [Joe''s report on Coreflood|http://www.secureworks.com/research/threats/coreflood-report/] shows how complicated and cleaver internet criminals have become. ', '!Joe Stewart

[joestewart_informal_300.jpg| [Joe|http://joestewart.org/] is the Director of Malware Research at [SecureWorks|http://www.secureworks.com/]. He researches unusual Internet activity to discover emerging threats, new attack techniques and the latest malicious code. Prior to this role, Joe was an intrusion analyst where he handled millions of security events for SecureWorks’ clients while monitoring their corporate networks from the Secure Operations Center . He is a SANS Global Information Assurance Certified Incident Handler (GCIH) and has been in the information security field for eight years. Joe is a frequent commentator on security issues for leading media organizations such as The Wall Street Journal, The New York Times, MSNBC, Washington Post, Bloomberg and others. Additionally, Joe has published numerous security research papers on Sobig, Migmaf, Sinit, Phatbot and other cyber-threats and attack techniques.]


!!Learn more about the Coreflood trojan:
* [The The Coreflood Report|http://www.secureworks.com/research/threats/coreflood-report/]
* The very technical [removal of Coreflood|http://www.secureworks.com/research/threats/coreflood-removal/] can help Geeks out.


! Security Sites
* [SANS Security Center|http://isc.sans.org/]
* [Castle Cops|http://www.castlecops.com/]
* [Security Focus|http://www.securityfocus.com/]
* [Secunia|http://secunia.com/]
', 1, '2008-08-21 14:02:44.29903', '2008-10-18 11:44:22.149724', 'live', '2008-08-23 10:00:00', 236, NULL, 22);
INSERT INTO shows VALUES (124, 'The Skeptics'' Guide with Geeks', NULL, NULL, 'Steven Novella, host of [The Skeptic''s Guide to the Universe|http://www.theskepticsguide.org/], joins the Geeks to talk about the importance of skeptical thought, the scientific method, and as an example the absurdity of Homeopathy. The Geeks also cover some GeekNews.', '! Steven Novella

Dr. Novella is an academic neurologist on full-time faculty at Yale University School of Medicine. He is the Author of [Weird Science|http://www.weirdsciencecolumn.com/], a monthly column featured in the New Haven Advocate. He is the co-founder and President of the New England Skeptical Society, Associate Editor of the [Scientific Review of Alternative Medicine|http://www.sram.org/], and a contributing editor of [Quackwatch|http://www.quackwatch.org/], a consumer advocacy website dealing with all types of health fraud. [More about Steven|http://www.theness.com/neurologicablog/index.php?page_id=2]

!! Links Steven Mentioned
* The [Skeptologists TV Show|http://www.skeptologists.com/], they can use your help getting it on air.
* [Logical Fallacies|http://www.theskepticsguide.org/logicalfallacies.asp] and [How to Argue|http://www.theness.com/articles.asp?id=38] are both good resources for skeptical thought.

! Science or Fiction

# Researchers have developed a new lithium crystal that is a significant improvement as a hydrogen storage medium. Ben and Lyle mistakenly picked this one as fiction but it was [science | http://www.physorg.com/news129997316.html] .
# A new analysis of SPAM chain-letter e-mail shows that, contrary to prior belief, most such e-mails do not spread in a “viral” pattern but rather in a 1-to-1 linear pattern. Ryder mistakenly picked this one, but it was [science|http://nsf.gov/news/news_summ.jsp?cntn_id=111580&org=NSF&from=news] .
# New research identifies personal hygiene products as a significant contributor to global warming. Miles picked this as [fiction|http://www.sciencedaily.com/releases/2008/05/080516100942.htm] and it was. Good job Miles!

', 1, '2008-05-09 10:39:51.786768', '2008-05-17 19:04:51.589088', 'live', '2008-05-17 10:00:00', 209, NULL, 12);
INSERT INTO shows VALUES (125, 'Help Us Help You', NULL, NULL, 'Ben''s sweet infatuation with Earth, Paris privacy issues, the BBC hates knitters, to sonic-boom or not to sonic-boom, and other geek news items.

Also this episode the Geeks ask a lot of questions. "We just don''t know that much."', '! Feed Back from Listeners

We did ask a few questions this episode, and we got some great feed back, thanks everyone.

!! Patricia wrote:
* Question: "Aren''t all marsupials in Australia?"
* Answer: If you look at http://earth-cards.com, you will find that we have one marsupial in North America, an opossum. Other marsupials are all found in Australia.

!! Don wrote:
Did you know that the SB can be visible? http://www.flickr.com/photos/doneastwest/163100543/

...and about the Earth''s core:
* the core is irregular because of the mars- sized planet that crashed into the Earth , early on, and created the moon.
* the smaller planet did not have a molten core.
* the pieces of it on the inside of the earth, now, have never heated up completely.


!! Elisabeth wrote:
A person who knits is a knitter. If they create other things with wool or fiber they could be a felter or fiber artist.

Thanks for geek speak!

! Sonic Boom

!! Marcus wrote:
The sonic boom occurs any time that the aircraft is traveling supersonic. It is a cone surrounding the aircraft with the point just in front of the
nose.  As the aircraft travels faster, the cone becomes steeper (a sharper
point). It is basically the pressure wave caused by the aircraft pushing
the air out of its way, but since the aircraft is going faster than the
speed that the air can move at, the pressure wave piles up on itself. This is similar to the wake of a boat, caused by the boat pushing the
water out of its way, but the boat is traveling faster than the wave
itself.

Anyhow, when the cone surrounding the airplane reaches the ground, an
observer experiences a "double boom" as the cone passes over them.  The
first boom is a positive overpressure, then the pressure drops off and
becomes negative, then the second boom is a sharp return to the normal
atmospheric pressure.  A graph of the sound pressure vs time looks line an
"N" with the first leg of the N being the rise in pressure, then the
fall-off to negative, and finally a sharp rise back to ambient pressure.

Incidentally, the photo on flickr isn''t a sonic boom itself, but it is an
interaction of the shock waves around the airplane (the cone surrounding
it) with the moisture in the air.  After the overpressure, during the
second half of the N, the pressure is below ambient and if the humidity
level is just right, the moisture condenses into a cloud.


! Joe on the Forums
Joe wrote some [more great information about topics covered in this episode|http://forums.geekspeak.org/viewtopic.php?f=12&t=42] on our forum.

', 1, '2008-05-10 09:35:02.547695', '2008-05-16 00:54:09.566891', 'live', '2008-05-10 10:00:00', 208, NULL, 15);
INSERT INTO shows VALUES (153, 'Not Thumb Wrestling', NULL, NULL, 'John offers gear to the Geeks; Ben and Drew want the same items; A thumb wrestling match is proposed to settle the conflict; Drew leaves the state in fear. What do we do now?', '! Scanners for optical film:
* [Microtek Artix scan M1|http://www.microtekusa.com/microtek-artixscan-m1.html]
* [Epson Perfection 4490 Photo Scanner|http://www.epson.com/cgi-bin/Store/consumer/consDetail.jsp?oid=53540925]


! Open Office
[Open Office|http://www.openoffice.org/] is a free and open source piece of software designed to provide users with MS Office functionality and compatibility.  ', 1, '2008-11-01 09:38:43.855826', '2008-11-03 21:26:07.298458', 'live', '2008-11-01 10:00:00', 252, NULL, 9);
INSERT INTO shows VALUES (140, 'Buzz Aldrin - Space Geeking', NULL, NULL, 'The first man to land a craft onto the moon, astronaut Buzz Aldrin, will join the Geeks to talk about the future of space exploration. Find out what it was like to step onto another world, to smell moon dust, to see the earth by it''s self floating in space and learn about what we will do next off this world. 

And call in to ask your own questions of this American hero, Buzz Aldrin.', NULL, 1, '2008-08-15 14:49:18.38768', '2008-09-10 16:00:21.366623', 'pending', '2008-09-10 10:00:00', 234, NULL, 16);
INSERT INTO shows VALUES (152, 'Steel Paper and Sticky X-Rays', NULL, NULL, 'John Tracy, Miles Elam and Sean Cleveland join host Lyle Troxell for a discussion of technology in the news.', NULL, 1, '2008-10-25 09:27:44.074199', '2008-11-03 21:25:30.125017', 'live', '2008-10-25 10:00:00', 253, NULL, 5);
INSERT INTO shows VALUES (155, 'SUVs on Mars', NULL, NULL, 'Ben''s Birthday, Miles gets into UCSC as a literature major and Sean and Lyle keep working hard.', '! Behind the Scenes Video

Geek Ben Jaffe whipped out this [sweet behind the scenes GeekSpeak video|http://www.vimeo.com/2238836].

[[behind_the_scenes.jpg|Behind The Scenes]|http://www.vimeo.com/2238836]
', 1, '2008-11-15 09:44:02.987532', '2009-01-12 16:55:13.871696', 'live', '2008-11-15 10:00:00', 269, NULL, 13);
INSERT INTO shows VALUES (154, 'Tequila into Diamonds', NULL, NULL, 'The week in Geek News followed by your questions and comments about technology.', NULL, 1, '2008-11-08 09:33:11.107427', '2008-11-08 11:48:40.987172', 'live', '2008-11-08 10:00:00', 257, NULL, 4);
INSERT INTO shows VALUES (177, 'Swimming in a Sea of Internet Fraud', NULL, NULL, 'There is in amazing amount of Internet fraud going on through-mail. Our guest, Sergeant Dean Ackemann, works for the San Jose Police Department Financial Crimes Unit. His job is to handle Internet fraud cases and often sees people falling for the same scams over and over. He will be on to talk about some common scams and potentially take a few calls.
', 'To read about online scams, and to check to see if people are trying to scam you, check out http://www.snopes.com/', 18, '2009-04-02 13:29:26.465398', '2009-04-11 11:58:19.064851', 'live', '2009-04-11 10:00:00', 283, NULL, 4);
INSERT INTO shows VALUES (199, 'Paper Video and Snow Leopard ', NULL, NULL, 'Snake Robots, Flash Exploits that Mozilla warns, and much more.', NULL, 1, '2009-09-05 09:47:40.200179', '2009-09-12 06:43:00.261388', 'live', '2009-09-05 10:00:00', 302, NULL, 13);
INSERT INTO shows VALUES (126, 'Software Development Tools', NULL, NULL, '[IDE|Integrated Development Environment]s allow quicker and easier development of applications, but how does one go about creating a good IDE? Guest David Intersimone from CodeGear will chat with the Geeks about making software for software development.', '! David Intersimone

“David I” is responsible for working closely with the developer community, ensuring the requirements of the individual programmer to development teams in larger enterprises are folded into CodeGear’s strategic product plans. He is a long-standing champion of software developers and the importance of their role in the industry, and continues to love doing programming. Nearly 22 years ago, David joined Borland to direct its product services group, where he has held a variety of engineering/development positions, created the developer relations group, and became very well known in the developer community worldwide. Prior to joining Borland, he was Director of Product Services for Softsel Computer Products, Inc. (now Merisel). David holds a B.S. in Computer Science from California Polytechnic State University at San Luis Obispo and is Vice President of Developer Relations for [CodeGear|http://www.codegear.com/] .', 1, '2008-05-15 09:03:33.433869', '2008-05-24 09:34:05.874136', 'live', '2008-05-31 10:00:00', NULL, NULL, 7);
INSERT INTO shows VALUES (129, 'Notary Public in a Notable Republic', NULL, NULL, 'The Geeks cover some news including: Firefox goes for world record, virtual strip searches, oil sucking nano paper and much more.', '! Extra Help
* Sean suggested [Ontrack Data Recovery|http://www.ontrackdatarecovery.com] as a solution to recover erased data on a working hard drive. This was to help Rick in Felton try and recover some lost images.
* There are some [service pack 3 suggestions/links on the GS forum|http://forums.geekspeak.org/viewtopic.php?f=12&t=51] thanks to erwin247.', 9, '2008-06-07 09:55:47.466452', '2008-06-12 22:35:33.384234', 'live', '2008-06-07 10:00:00', NULL, NULL, 6);
INSERT INTO shows VALUES (131, 'Kathleen Ann Goonan''s ''In War Times''', NULL, NULL, 'The Geeks welcome Rick Kleffel to the show to discuss a handful of the latest science fiction books, including ''In War Times'' by [Kathleen Ann Goonan|http://www.goonan.com/]. Please read ''In War Times'', and then call or email during the show to add to the discussion. Book recommendations will also be discussed.

Kathleen Ann Goonan''s ''In War Times'' - [A review of the book by Rick Kleffel|http://www.trashotron.com/agony/reviews/2007/goonan-in_war_times.htm]', '! Book Recommendations 

*! Kathleen''s Recommendations

* Greg Egan - [Permutation City|http://en.wikipedia.org/wiki/Permutation_City]

* Robert Buderi - [The Invention that Changed the World|http://technology.newscientist.com/channel/tech/aviation/mg15220545.100]

* Sir Max Hastings - [Armageddon: The Battle for Germany, 1944-1945|http://en.wikipedia.org/wiki/Max_Hastings]

* Dr. Jill Bolte Taylor - [My Stroke of Insight|http://drjilltaylor.com/book.html] (Taylor at [TED, speaking about her stroke|http://www.ted.com/talks/view/id/229]) 

* Norman Doidge, M.D. - [The Brain That Changes Itself| http://www.normandoidge.com/]

* John Toland - [The Last Hundred Days|http://tinyurl.com/58ehze]


*! Rick''s Recommendations

* Charles Stross - [Saturn''s Children|http://www.fantasticfiction.co.uk/s/charles-stross/saturn-s-children.htm]

* John Scalzi - [Zoe’s Tale|http://www.scalzi.com/whatever/?p=906]

* Jay Lake - [Mainspring|http://www.sfreviews.net/mainspring.html]

* Jay Lake - [Escapement|http://www.scifi.com/sfw/books/sfw18952.html]

* Daniel H. Wilson & Anna C. Long - [Mad Scientist Hall of Fame: Muwahahahaha!|http://www.amazon.com/Mad-Scientist-Hall-Fame-Muwahahahaha/dp/0806528796]

* Andrew Davidson - [The Gargoyle|http://www.randomhouse.com/catalog/display.pperl?isbn=9780385524940]

* Jeff & Ann Vandermeer - [Steampunk|http://www.tachyonpublications.com/book/Steampunk.html]

* Philip K. Dick - [Martian Time-Slip|http://www.philipkdick.com/works_novels_martiantimeslip.html]


*! Geek Recommendations

* Kathleen Ann Goonan - [In War Times|http://www.trashotron.com/agony/reviews/2007/goonan-in_war_times.htm]

* Alfred Bester - [The Stars My Destination|http://en.wikipedia.org/wiki/The_Stars_My_Destination]

* Frank Herbert - [Dune|http://www.dunenovels.com/books/dune.html]

* Robert A. Heinlein - [The Moon is a Harsh Mistress|http://en.wikipedia.org/wiki/The_Moon_Is_a_Harsh_Mistress]

* Neal Stephenson - [Snow Crash|http://en.wikipedia.org/wiki/Snow_Crash]

* Dan Simmons - [Hyperion|http://en.wikipedia.org/wiki/Hyperion_%28novel%29]

* Gordon R. Dickson - [Tactics of Mistake|http://en.wikipedia.org/wiki/Tactics_of_Mistake]

* David Weber - [Path of the Fury|http://en.wikipedia.org/wiki/Path_of_the_Fury]

* James Schmitz - [Witches of Karres|http://www.sfsite.com/02a/wk97.htm]

* Orson Scott Card - [Ender''s Game|http://en.wikipedia.org/wiki/Ender%27s_Game]

* Kim Stanley Robinson - [Red Mars, Green Mars, Blue Mars|http://en.wikipedia.org/wiki/Mars_trilogy]

* Mike Baron & Steve Rude - [NEXUS|http://www.darkhorse.com/profile/profile.php?sku=10-634]

* Alan Moore & Steve Gibbons - [Watchmen|http://en.wikipedia.org/wiki/Watchmen]

* Warren Ellis & John Cassaday - [Planetary|http://tinyurl.com/67urcq]




', 5, '2008-06-14 11:21:54.487188', '2008-07-09 12:21:40.446504', 'live', '2008-06-21 10:00:00', 211, NULL, 16);
INSERT INTO shows VALUES (130, 'Probing Space, Rootkits, and Supercomputers', NULL, NULL, 'NASA is launching a probe to the Sun and a satellite to probe the secrets of super-massive black holes outside our own galaxy.  This and more including rootkit woes and supercomputers on this week''s episode of Geek Speak.', '! More Information

!! [Ubuntu|http://www.ubuntu.com/]
You can [download|http://www.ubuntu.com/getubuntu/download] or [request|https://shipit.ubuntu.com/] a free Ubuntu CD from the website.

!! [Firefox Download Day|http://developer.mozilla.org/devnews/index.php/2008/06/11/coming-tuesday-june-17th-firefox-3/]
Tuesday, June 17th is the official Firefox 3 download record attempt.  The Mozilla Foundation gets some publicity and you, the individual downloader, gets one of the best web browsers available free of charge!', 9, '2008-06-14 10:29:28.561353', '2008-06-14 11:18:49.201191', 'live', '2008-06-14 10:00:00', NULL, NULL, 5);
INSERT INTO shows VALUES (127, 'Sound We Can''t Hear and GeekNews', NULL, NULL, 'Stanford instructor and regular Geek Ben Jaffe informs us about ultrasound and infra-sound. And we all cover the Week in GeekNews.', '!!Infrasound and Ultrasound Notes

The Range of human hearing is 20hz-20khz
We can feel sound below 20hz (infrasound), and ultrasonic pitches can affect us, though we can''t hear them.

!!!Infrasound (below 20 hertz)
* Some film soundtracks and music use infrasound to produce unease or disorientation in the audience and listeners
* A 17 Hz tone was integrated into random samples of music, and the study participants were not told which pieces included the tone. About 1/4 of respondents reporting anxiety, uneasiness, sorrow, nervousness, chills down the spine, or physical reactions.
* The Department of Defense - phased arrays of infrasonic emitters -- i.e. HUGE custom subwoofer (normal ones stop at 20 Hz lowest), and output of this sub goes via pipes to several openings which are usually the distance of 1 wavelength apart. Outputs at about 7 Hz, and each of these openings output in phase with each other, so you get a bit more directionality.
* The so-called "Brown Note" is a sub-20Hz tone that allegedly causes people to involuntarily vacate their bowles. This has been debunked several times. Rick says that if this were true, it should be used as colonoscopy prep.
* Research has shown that the frequencies of 19 Hz can be responsible for optical hallucinations in one''s peripheral vision. Nasa found the resonant frequency of the eye to be approximately 18 Hz, and the resonation of one''s eyeball can cause these visuals.

!!Ultrasound
* Dog Whistle is around 18-22 kHz, which is why children can often hear the whistles
30-40kHz Animals and Chemistry
* Bats use echolocation to navigate caves and find prey. Nocuid moths have a reflex that those frequencies trigger, which causes them to drop a few inches in flight
* 250kHz - 2mHz Medical Diagnostic Ultrasound
* 1-10MHz Chemotherapy (Acoustic Targeted Drug Delivery), also used to find flaws in dense materials, measure thickness

!!Producing Directional Sound Using Ultrasound
Correlation between the directionality of sound, and its frequency, so ultrasonic frequencies are far more focused than audible sound
Technology was first developed 30 years ago, but could only reproduce simple tones. The audio quality was poor, but now, the quality is usable for commercial applications.
High intensity ultrasonic frequencies are required to produce the effect. The SPL (sound pressure level) involved was typically greater than 100dB of ultrasound at a nominal distance of 1m from the face of the ultrasonic transducer. (The threshold of pain for audio within our hearing range is 120-130dB. 100 dB is about the audio level of 
Exposure to more intense ultrasound over 140dB near the audible range (20-40kHz) can lead to a syndrome involving manifestations of nausea, headache, tinnitus, pain, dizziness and fatigue, but the technology does not use levels this high, and the frequencies it uses are often higher.

!!Links
Here are some interesting pages about these topics:
* [Hearing Range|http://en.wikipedia.org/wiki/Hearing_range]
* [Infrasound|http://en.wikipedia.org/wiki/Infrasound]
  * [Brown Note|http://en.wikipedia.org/wiki/Brown_note]
* [Ultrasound|http://en.wikipedia.org/wiki/Ultrasound]
* [Sound from Ultrasound|http://en.wikipedia.org/wiki/Sound_from_ultrasound]
', 1, '2008-05-24 09:30:44.147307', '2008-06-07 10:48:16.005233', 'live', '2008-05-24 10:00:00', NULL, NULL, 9);
INSERT INTO shows VALUES (128, 'Per J.D. -- Pending: Mythbusting with Adam Savage', NULL, NULL, 'Per J.D. --Something Like: In addition to acting as a lead myth buster on the Discovery Channel show of that name, Adam Savage is an avid model maker and builds props for film.', NULL, 16, '2008-06-06 16:27:53.341041', '2008-08-27 15:57:05.516904', 'new', '2008-10-06 10:00:00', NULL, NULL, 2);
INSERT INTO shows VALUES (157, 'GeekSpeak Rick Rolled', NULL, NULL, 'Rick Astley [rick rolls|http://en.wikipedia.org/wiki/Rickrolling] the New York Thanksgiving Parade and more GeekNews.', '! More Information

* [AirPort [VPN|Virtual Private Network]| http://discussions.apple.com/thread.jspa?messageID=4046689 ] problems, discussion, and solutions.

', 1, '2008-11-29 09:55:33.998584', '2008-12-01 09:25:12.535568', 'live', '2008-11-29 10:00:00', 260, NULL, 15);
INSERT INTO shows VALUES (156, 'Adaptive Computing', NULL, NULL, 'Computers are generally designed for the sighted user, but there are tools to enable almost anyone to use a computer. Learn about adaptive computing with Calais Ingel who runs the [Assistive Technology Lab|http://tinyurl.com/6p8r2n] at Cabrillo College in Aptos, California.', '! More Information

Technology, classes, and other resources from [The Assistive Technology Lab|http://tinyurl.com/6p8r2n] at Cabrillo College.

[Podcasts and videos of assistive technologies and their users|http://www.assistiveware.com/podcasts.php] provided courtesy of AssistiveWare.', 1, '2008-11-17 14:30:51.519273', '2008-11-22 11:38:50.5872', 'live', '2008-11-22 10:00:00', 259, NULL, 17);
INSERT INTO shows VALUES (158, 'Free Cycle, Reuse Stuff', NULL, NULL, 'Free Cycle is a national non-profit which promotes the re-use of stuff by giving it away. Do you have something at your place that you don''t need, but someone else might want? Well try out FreeCycle, and off your stuff to people in your community.', '[kerri.jpg|Kerri Hallbeck has moderated the Santa Cruz chapter of Free Cycle for the last two years.]

* www.freecycle.org
* www.freemesa.org
* www.earthcarerecycling.com', 1, '2008-12-06 09:55:03.425424', '2009-01-12 16:52:40.348632', 'live', '2008-12-06 10:00:00', 268, NULL, 9);
INSERT INTO shows VALUES (159, 'GeekSpeak Without a Safety Net (Lyle is on vacation)', NULL, NULL, 'Miles, Ryder, and Sean attempt to run the show without Lyle, who is on vacation this week. Join the geeks as they discuss the week in news and take calls.', '*! More Information

* [Perian | http://www.perian.org ] is a free, open source QuickTime component that adds native support for many popular video formats. 

* [Flip4Mac | http://www.telestream.net/flip4mac-wmv/overview.htm ] WMV Components for QuickTime - Make, edit, play WMV on your Mac', 5, '2008-12-13 11:10:55.587131', '2008-12-15 14:30:47.847956', 'live', '2008-12-13 10:00:00', 262, NULL, 18);
INSERT INTO shows VALUES (195, 'The Drabblecast on GeekSpeak', NULL, NULL, 'Norm Sherman narrated and producer of the wonderful Drabblecast join Geeks Al and Lyle and special geek guest [Jessse Wilkins|http://wilkinsconsulting.us] to chat about the [wonderful flash fiction podcast, The Drabblecast|http://web.mac.com/normsherman/Site/Podcast/Podcast.html] .', NULL, 1, '2009-08-09 23:08:05.359542', '2009-08-09 23:18:36.338965', 'live', '2009-08-08 10:00:00', 297, NULL, 6);
INSERT INTO shows VALUES (160, 'Geeky Gifts and Geek News', NULL, NULL, 'The geeks share their gift ideas, cover the Week in Geek News, and take your calls.', '! Learning Online
* [Berkley Podcasts | http://webcast.berkeley.edu/courses.php]
* [Stanford''s Podcasts |http://itunes.stanford.edu/]
* [Free Class Videos QCF | http://www.gcflearnfree.org]

! Geek Gift Ideas
* [Logitech VX Nano mouse | http://www.logitech.com/index.cfm/mice_pointers/mice/devices/3271]
* [Roku Netflix Player | http://www.roku.com/netflixplayer/]
* [Illuminated Keyboards | http://www1.shopping.com/xPP-keyboards_and_mice-illuminated_keyboard]
* [XKCD Comic T-shirts | http://store.xkcd.com/]
* [Flickr Photo Sharing | http://www.flickr.com/]
* [Apple Time Capsule | http://store.apple.com/us/product/MB276LL/A]
* [Intel Mainstream SATA Solid-State Drives | http://www.intel.com/design/flash/nand/mainstream/index.htm]

! Cheap Geek Gift Stores to Check Out
* [Think Geek | http://www.thinkgeek.com/]
* [KlearGear | http://www.kleargear.com/gifts.html]


', 1, '2008-12-20 09:34:15.809277', '2008-12-22 10:22:00.069737', 'live', '2008-12-20 10:00:00', 263, NULL, 7);
INSERT INTO shows VALUES (145, 'Almost Green, James Glave', NULL, NULL, 'Saving the planet is not an easy thing to do; [James Glave|http://glave.com/] did his part by making his eco-shed. And in his recently released book "Almost Green" James shows the lighter side of trying to be green in America.

We''ll chat about the technical difficulties and plain humor in Glace''s personal story.', NULL, 1, '2008-08-27 16:23:38.849738', '2008-10-18 11:43:44.530488', 'live', '2008-09-06 10:00:00', 238, NULL, 10);
INSERT INTO shows VALUES (134, 'Jay Lake''s ''Escapement'' and ''Mainspring''', NULL, NULL, 'The Geeks speak with [Jay Lake|http://www.jlake.com/] in the studio about his new book ''Escapement'', the sequel to his hit ''Mainspring''. These books envision a steampunk-esque alternative 19th century Earth complete with gears and a mainspring hidden at its center. You see, Lake''s universe is actually an enormous clockwork. The Geeks, joined by Rick Kleffel of [The Agony Column|http://www.trashotron.com/agony/], discuss this unique universe and the science behind it. (picture © 2006 M. Lake)', '! Signing and Talk

Jay will be signing at [Borderland''s Books|http://www.borderlands-books.com/] in San Francisco on Saturday, July 12th at 3:00 pm.

Later that night, Jay and Susan Palwick are guests of [SF in SF|http://www.sfinsf.org/] at the Variety Preview Room in the Hobart Building, 582 Market Street. It starts at 7:00 pm.

! Jay Lake Biography

Jay Lake has been described as one of the rising stars of the science fiction and fantasy genre. Since first appearing on the scene in late 2001, he has seen over 200 short stories published, along with three novels out, and five more forthcoming over the next few years. His work has received starred reviews in Publisher’s Weekly and Booklist, and significant recognition within the science fiction and fantasy field. He has won two of the most prestigious awards in science fiction and been nominated for numerous others.

Lake was born and raised overseas as the son of a United States diplomat. His childhood experiences in Asia, African and Europe have given him a wealth of cultural and geographical detail to draw from when creating exotic settings and strange situations. He has, after all, lived them. His professional career has been in advertising and marketing for the high technology field, which gives Lake a lifetime of exposure to technology issues and trends. Taken together, these go a long way to explaining his choice of writing fields.

Lake is a frequent guest at writing conferences and conventions, where his readings are well attended. He also workshops with newer writers, paying forward all the help and mentoring he has received and continues to benefit from. With his distinctive attire and quirky, improvisational humor, Lake is a familiar figure and a fan favorite all over the West Coast.

He also maintains a blog which has been ranked as a top 25 science fiction blog. There Lake talks about writing, photography, politics, his experiences as a parent, as well as posting travelogs of his trips to some unlikely destinations, such as a recent outing to a long-abandoned Titan I missile silo. Lake also regularly posts online reprints of his older work, and a biweekly podcast consisting of recorded readings, panels and interviews conducted during his travels.

Today Jay Lake lives in Portland, Oregon, where he works on multiple writing and editing projects. His 2007 book Mainspring received a starred review in Booklist. His 2008 novels are Escapement from Tor Books and Madness of Flowers from Night Shade Books, while his short fiction appears regularly in literary and genre markets worldwide. Jay is a winner of the John W. Campbell Award for Best New Writer, and a multiple nominee for the Hugo and World Fantasy Awards. Jay can be reached through his Web site at www.jlake.com.

! Rick''s Interview with Jay Lake about Mainspring 

Rick Kleffel interviewed Jay Lake in early 2007 about his book Mainspring and The Clockwork Universe. [Check it out here.|http://tinyurl.com/6eahmt]


! Photos

We took some photos right after the show. Jay was a great guy to chat with and a Geek, which is always nice.

[2008_07_12_2814_400.jpg|Jay Lake] [large|2008_07_12_2814_800.jpg]

[2008_07_12_2822_400.jpg|Sean, Rick, Jay Lake, Lyle, and Miles] [large|2008_07_12_2822_800.jpg]

[2008_07_12_2825_400.jpg|Jay Lake with KUSP Sign] [large|2008_07_12_2825_800.jpg]
', 5, '2008-07-09 12:29:20.305644', '2008-07-14 10:56:04.17382', 'live', '2008-07-12 10:00:00', 214, NULL, 27);
INSERT INTO shows VALUES (133, 'Mars Ice and Portable Bikes', NULL, NULL, 'There are pictures of water ice on Mars, Ben has a new bike, breach notification laws are not so effective, and maybe we can stop telecom immunity. ', '! Ben has a new Bike

[2008_06_28_ben_bike.jpg|Ben has a new folding bike, and a goofy smile. The model is the Dahon D7 (the aluminum version)].

! Try using to remotely display computer desktops
* [TightVNC|http://www.tightvnc.com] is one implementation that can be freely downloaded.

! Free Credit Reports too
Alex mentioned that he gets a credit report every once in a while to make sure no one is using his identity. 

Listener Fallon writes:

"Alex had mentioned getting a credit report annually, and that it could cost $30. I wanted listeners to know you can obtain a free credit report from each of the reporting agencies annually, per a relatively new law. I believe https://www.annualcreditreport.com/ will get ''ya there."
', 1, '2008-06-28 09:44:56.520182', '2008-07-09 13:07:34.905489', 'live', '2008-06-28 10:00:00', 215, NULL, 15);
INSERT INTO shows VALUES (135, 'The Ultimate CSS GeekSpeak', NULL, NULL, 'Tommy Olsson, co-Author of [The Ultimate CSS Reference|http://www.sitepoint.com/books/cssref1/] joins the Geeks to chat about web development. We will also cover the Week in Geek News and take your calls with questions and comments about technology.', '*! CSS Resources
* [Dean Edward''s "IE7" tool|http://dean.edwards.name/IE7/]
* [CSS Examples|http://pmob.co.uk/] by Paul O''Brien

*! Fonts on Sites
* an [A List Apart article explaining the issue|http://www.alistapart.com/articles/cssatten/]
* [a font repository with some free|http://www.dafont.com/]
* [Hundreds of original Free Fonts|http://www.larabiefonts.com/]
* [Fonts by Dieter Steffmann|http://moorstation.org/typoasis/designers/steffmann/]', 1, '2008-07-15 16:41:41.676215', '2008-10-18 11:44:56.628767', 'live', '2008-07-19 10:00:00', 223, NULL, 10);
INSERT INTO shows VALUES (144, 'Terry Brooks,  Genesis of Shannara Series', NULL, NULL, 'In our on-going GeekSpeak Science Fiction Author Series, we dive deep into fantasy with author Terry Brooks. Terry won instant acclaim with his New York Times bestseller The Sword of Shannara.

In his latest book, The Gypsy Morph, the world is in flux as the mortal realm yields to a magical one; as the champions of the Word and the Void clash for the last time to decide what will be and what must cease; and as, from the remnants of a doomed age, something altogether extraordinary rises.', '[2008_09_13_3861_400.jpg|Miles, Lyle, Terry Brooks, Rick Kleffel and Sean] 
[larger copy|2008_09_13_3861_800.jpg]

[2008_09_13_3871_400.jpg|Terry Brooks] [larger copy|2008_09_13_3871_800.jpg]


[2008_09_13_3867_400.jpg|Judine Alba Brooks and Lyle had a great conversation about digital photography.] [larger copy|2008_09_13_3867_800.jpg]', 1, '2008-08-27 16:12:02.281387', '2008-09-23 00:38:14.388135', 'live', '2008-09-13 10:00:00', 239, NULL, 20);
INSERT INTO shows VALUES (164, 'MacWorld 2009, FaceBook, and More', NULL, NULL, '[Al Luckow| http://www.luckow.com/] and Ben Jaffe attended MacWorld and we chat a bit about the Apple announcements and other GeekNews of the week. And a bit about what Al does, like [WOZ''s mettle business card|http://www.luckow.com/clients/woz/cards.html] and more.', '* [Al''s interview of WOZ|http://www.facebook.com/video/video.php?v=1072083367592]
* [Al''s iPhone earbud fix video|http://www.luckow.com/iphone/]

! Rename Files
On a Mac the finder is not that great at renaming. Al recommends [A Better Finder Rename|http://www.publicspace.net/ABetterFinderRename/], and it works well. Ben recommends [Name Mangler|http://www.manytricks.com/namemangler/].
', 1, '2009-01-10 09:57:14.746876', '2009-01-16 14:04:02.660381', 'live', '2009-01-10 10:00:00', 266, NULL, 18);
INSERT INTO shows VALUES (170, 'Valentines Day, Woz Dance and Epoch Time', NULL, NULL, 'Al helps with last minute Valentines Day suggestions, Lyle jabs about Geeking out on Math; epoch time, Friday the 13th, and February is divisible by 7. And much more including Woz on Dancing with the Stars, oh, and GeekNews and listener''s questions. ', '! Valentines Last Minute

* [Jib Jab| http://sendables.jibjab.com/]
* [Nintendo printable valentines| http://www.4colorrebellion.com/archives/2008/02/12/its-valentines-day-show-your-geek-that-you-care/]
* [Love Names|http://www.mydearvalentine.com/love-names/index.php]
* [Plasma heart|http://usb.brando.com.hk/prod_detail.php?prod_id=00788&cat_id=035&dept_id=015]
* [Paint sampler wreath|http://www.popularmechanics.com/home_journal/workshop/4303199.html]
', 1, '2009-02-14 09:25:41.361715', '2009-02-14 15:31:15.059526', 'live', '2009-02-14 10:00:00', 274, NULL, 14);
INSERT INTO shows VALUES (161, '2008 Technology in Review', NULL, NULL, 'The geeks do the news and chat about the 2008 technology in review. Special guest [Dr. Dawn|http://www.jivamedia.com/askdrdawn/askdrdawn.php] joins the geeks for the first time to ask the geeks a question, which is a first for GeekSpeak! Typically, it''s the geeks asking Dr. Dawn the questions.', '! [Hulu|http://www.hulu.com/] - TV on Web

TV delivered via the web.

', 1, '2008-12-27 10:22:02.130102', '2008-12-27 16:15:27.787387', 'live', '2008-12-27 10:00:00', 264, NULL, 11);
INSERT INTO shows VALUES (171, 'Cats on Facebook playing Pong with Wifi', NULL, NULL, 'Can a cat answer a User Agreement? What happened this time of year in Geek history,  Pong 1974, Apple.com 1987 and much more.', '! Other Links

* [Archive of Everything| http://archive.org/]
* [MetaVid| metavid.org] <- archive of congress 
* [Test bandwidth | http://www.speedtest.net/]
', 1, '2009-02-21 09:58:40.205487', '2009-02-22 00:48:12.266749', 'live', '2009-02-21 10:00:00', 275, NULL, 13);
INSERT INTO shows VALUES (198, 'High-Speed Tongue Sees UFOs', NULL, NULL, 'The geeks chat about tech news, covering a wide variety of bizarre topics. Join us for a full hour of tech news.', 'This week''s podcast mention is [Scam School|http://revision3.com/scamschool]', 13, '2009-08-29 10:05:20.116793', '2009-09-09 10:34:15.002618', 'live', '2009-08-29 10:00:00', 300, NULL, 13);
INSERT INTO shows VALUES (200, 'Evolution of Facebook Battery Algae', NULL, NULL, 'The geeks cover a gaggle of news items, and take calls with questions and comments about technology.', '! More about online Identity

Lyle likes [this wonderful 2005 OSCON keynote about Identity 2.0|http://identity20.com/media/OSCON2005/] .', 13, '2009-09-12 06:27:15.231994', '2009-09-12 11:47:50.311586', 'live', '2009-09-12 10:00:00', 301, NULL, 7);
INSERT INTO shows VALUES (136, 'David Weber''s ''By Schism Rent Asunder''', NULL, NULL, 'The Geeks welcome writer David Weber, author of the popular and bestselling Honor Harrington novels. Weber joins the geeks to discuss his latest novel ''By Schism Rent Asunder'', the sequel to last year''s bestseller ''Off Armageddon Reef''. These novels form a new series that sees a nearly destroyed humanity driven from home to a new colony, where they are forced to give up scientific inquiry, technology, and higher mathematics in an attempt to avoid detection by a an aggressive alien race known as the Gbaba. Weber is a master of science fiction, and has deftly handled future technologies and physics in the worlds and universes he creates. Rick Kleffel of [The Agony Column|http://www.trashotron.com/agony/] will also be in the studio.', '! Reading and Signing

David Weber will be reading from ''By Schism Rent Asunder'' (Tor) at 3:00 and signing books at [Borderland''s Books|http://www.borderlands-books.com/] in San Francisco on Saturday, August 2nd at 3:00 pm.

! David Weber Biography

David Weber is an American science fiction and fantasy author who has been called science fiction’s biggest phenomenon of the last 20 years. In his stories, he creates a consistent and rationally explained technology and society. Even when dealing with fantasy themes, the magical powers are treated like another technology with supporting rational laws and principles.

Many of his stories have military, particularly naval, themes, and fit into the military science fiction genre. He challenges current gender roles in the military by assuming that a gender-neutral military service will exist in his futures, and by frequently placing female leading characters in what have previously been seen as traditionally male roles, he has explored the challenges faced by women in the military and politics.

His popular Honor Harrington novels are New York Times bestsellers, and can’t come out fast enough for his devoted readers.  In addition to the Honor Harrington series, he has written many top-selling science fiction novels, including Mutineers’ Moon, The Armageddon Inheritance, Heirs of Empire, and Path of Fury, Off Armageddon Reef, and By Schism Rent Asunder.  David Weber currently lives with his family in South Carolina.


! ''Off Armageddon Reef''
[weber_off_armageddon_reef.jpg| After fleeing the vicious Ghaba, the survivors of the human race retreat to the distant planet of Safehold, where they sacrifice basic human rights for the preservation of the species. To avoid detection by the aliens, all technological advancement is forbidden, effectively throwing Safehold back into a dark age that is centered on a newfound religion. But there is a small faction of Safeholdians--aided by a cybernetic avatar from the distant past--that still believes in individual freedom and thought, and that technology is vital for man’s ultimate survival. A daring, and dangerous, plan is hatched and Off Armageddon Reef peaks in a navel battle led by the Kingdom of Charis--a battle that could change the entire future of Safehold...]


! ''By Schism Rent Asunder''
[weber_by_schism_rent_asunder.jpg|In ''By Schism Rent Asunder'', Safehold has been revolutionized. The mercantile kingdom of Charis has prevailed over the alliance designed to exterminate it. Armed with better sailing vessels, better guns, and better devices of all sorts, Charis faced the combined navies of the rest of the world at Darcos Sound and Armageddon Reef, and broke them. Now, despite the implacable hostility of the Church of God Awaiting, Charis still stands—still free and still tolerant—an island of innovation in a world in which the Church has worked for centuries to keep locked in a medieval level of existence. But the powerful men who run the Church aren’t going to take their defeat lying down. Charis may control the world’s seas, but it barely has an army worthy of the name. And as King Cayleb knows, far too much of the kingdom’s recent good fortune is due to the secret manipulations of the being that calls himself Merlin—a being that is more than human. For on Merlin’ shoulders rests the last chance for humanity’s freedom. 	Now, as Charis and its archbishop make the rift with Mother Church complete, the storm gathers. Schism has come to the world of Safehold, and nothing will ever be the same.]

! At the end of this episode

"Every step that our technology advances gives us a greater ability to live up to our supposed belief in the dignity of the individual human being and the rights and the options of the individual human being." -- David Weber, August 2nd 2008.
', 5, '2008-07-21 16:00:30.412181', '2008-08-04 10:20:14.365955', 'live', '2008-08-02 10:00:00', 224, NULL, 33);
INSERT INTO shows VALUES (117, 'Pledge Drive Give Away', NULL, NULL, 'We will be asking for your pledges of gifts to KUSP because we know that KUSP is important to you, and, let''s face it, we need to pay the bills.

As a thank you we will be giving away gifts. During the hour of the show, just call in on the pledge line, 1 (888) 777-1507, and, even without a pledge, you can put your name in the hat for a free [USB|Universal Serial Bus] 2.0 DVD burner or an internal Blu-Ray player. ', '! Links Mentioned
* For repairing a drive try [Spin Rite|http://www.grc.com/sr/spinrite.htm] which only runs on Windows, but works on all types of disks. So if you have a broken Macintosh formated drive, and you have access to a Windows machine you might want to try out Spin Rite.

! Give Away

Thanks to Sony we have five items to give away. Anyone who pledges via phone or web, even with a zero dollar amount, for the hour of GeekSpeak will be put into the drawing. 

!! Pledging and Entering the Drawing
* 1 (888) 777-1507
* [Pledge Online at KUSP.org|http://www.kusp.org/donate/]

You do not need to pledge any money to enter the drawing, just enter "0" for the amount.

!! Give Away Items
* Sony Blu-Ray disc player [BD-ROM Drive BDU-X10S]
* And four Sony DVD burners [DVD R 20x DRX-840U]
', 1, '2008-02-26 01:33:37.374402', '2008-07-15 21:58:27.167564', 'live', '2008-03-15 10:00:00', NULL, NULL, 12);
INSERT INTO shows VALUES (178, 'The Network with Aaron Hughes', NULL, NULL, 'Network expert Aaron Hughes will join us for a discussion of the physical layer of the internet backbone and the protocols that are used to route network traffic. How robust is the internet, actually?', 'Aaron is President and CTO of 6connect, Inc., and senior technology leader with 15+ years of experience in senior systems and network engineering and architecture along with automation and technology strategies. He has a background in networking, and systems automation with management level experience with various US agencies and Internet Service Providers.', 1, '2009-04-16 08:09:14.24079', '2009-04-18 11:45:53.255863', 'live', '2009-04-18 10:00:00', 284, NULL, 7);
INSERT INTO shows VALUES (148, 'Bill Tancer ''Click: What Millions do Online and Why it Matters''', NULL, NULL, 'Are you fascinated by polls and survey data? As the Internet becomes more ingrained in our lives, from reading the news, to communicating through email and social networks, to transacting online, the byproduct of our aggregate movements provides an even deeper insight into who we are. Join the geeks as they welcome Bill Tancer to discuss his book [Click: What Millions of People do Online and Why it Matters|http://www.billtancer.com/] .', '! Click: What Millions of People do Online and Why it Matters
What time of year do teenage girls search for prom dresses online? How does the quick adoption of technology affect business success (and how is that related to corn farmers in Iowa)? How do time and money affect the gender of visitors to online dating sites? And how is the Internet itself affecting the way we experience the world? In Click, Bill Tancer takes us behind the scenes into the massive database of online intelligence to reveal the naked truth about how we use the Web, navigate to sites, and search for information--and what all of that says about who we are.


! Bill Tancer Bio:
Bill Tancer is the general manager of global research at Hitwise, the world’s leading online competitive intelligence services. Tancer and his team of analysts are widely quoted throughout the industry on the latest Internet trends. He appears as a frequent guest on CNBC, has been quoted in The Wall Street Journal, The New York Times, the Washington Post and USAToday on topics ranging from the state of e-commerce to predicting American Idol winners using search term research. Tancer also writes a weekly column for Time magazine (Time.com) entitled "The Science of Search.".

He was also named Television Week''s "12 to Watch" for 2008. Bill has served on the board of directors for SEMPO and he is currently on the advisory board for the PEW Internet and American Life Project. Prior to joining Hitwise, Bill has led market research and strategy teams at LookSmart, Zaplet, NBC Internet and Pacific Bell Internet Services. Bill has also covered the Internet sector for Gartner Group as a senior technology marketplace consultant. Bill has a Bachelor of Science degree from the University of Florida in Quantitative Management and a Juris Doctorate degree from the Walter F. George School of Law, Mercer University.

You can catch Bill Tancer''s weblog at hitwise here: http://weblogs.hitwise.com/bill-tancer/

*! A few of Bill Tancer''s Time.com articles:
* [Searching for Palin''s ''Hot Photos''|http://tinyurl.com/58ox4l]
* [The Web''s Word: Obama Is Not the Antichrist|http://tinyurl.com/5bdj3r]
* [Even Gen X is aTwitter|http://tinyurl.com/56p5rz]
* [Pinching Pennies Online|http://tinyurl.com/6dz67a]
* [Scouting Micro Social Networks|http://tinyurl.com/49cjxt]
* [More Articles Here|http://tinyurl.com/time-tancer]



Information about [how Hitwise does what it does|http://hitwise.com/products-services/how-we-do-it.php]  .

! Related Links:
* [Google Trends|http://www.google.com/trends]
* [Google Analytics|http://www.google.com/analytics]
', 5, '2008-09-23 16:59:46.792951', '2008-10-18 11:28:16.41911', 'live', '2008-09-27 10:00:00', 249, NULL, 30);
INSERT INTO shows VALUES (273, 'Black holes and Babies on Robots in Stitches', NULL, NULL, 'Death by Death Ray and GPS.  AL and Ben talk about their own Facebook foibles, and Miles alerts us that the The Bombay High Court has Ruled Astrology to be a Science (simply because its so old). ', NULL, 18, '2011-02-05 11:01:23.61552', '2011-02-05 11:42:45.203828', 'live', '2011-02-05 10:00:00', NULL, NULL, 4);
INSERT INTO shows VALUES (180, 'Viruses and a Fast "Camera"', NULL, NULL, 'Ben, Al and Lyle are joined by Alex Sleeis to get an update on Conficker that nasty computer virus. We also chat about some news of the week and take calls.', '! Conficker

* [Conficker Working Group website| http://www.confickerworkinggroup.org/wiki/]
* [Conficker Timeline| http://www.confickerworkinggroup.org/wiki/pmwiki.php/ANY/Timeline]
* [Good Microsoft article on protecting against Conficker| http://technet.microsoft.com/en-us/security/dd452420.aspx]

! More from Ben
* [MenuMeters| http://www.ragingmenace.com/software/menumeters/] is a free monitoring menubar app. Ben loves it, and Lyle also uses it.
* [Little Snitch| http://www.obdev.at/products/littlesnitch/] is a shareware application which informs you of any outbound traffic, and allows you to block it.

! Windows Virus

The Geeks recommend [Free AVG|http://free.avg.com] for virus checking and removal.

', 1, '2009-05-01 12:41:23.439784', '2009-05-02 11:44:33.003073', 'live', '2009-05-02 10:00:00', 286, NULL, 15);
INSERT INTO shows VALUES (146, 'GeekNews and Calls - John''s Here!', NULL, NULL, 'Critiques of Comcast internet service, magic reading wands, NASA cancer sniffers, and a memorial for Steve Jobs.  These stories, your calls, and more on this episode of Geek Speak.', NULL, 1, '2008-08-30 10:30:44.664301', '2008-08-30 11:38:05.534837', 'live', '2008-08-30 10:00:00', NULL, NULL, 7);
INSERT INTO shows VALUES (147, 'Geeking With Computer Voice', NULL, NULL, 'This week we had some fun with Apple''s voice "Alex" reading some of the station business. We also covered a bunch of news and took some calls. This is one of those episodes where we focused on having fun and secondarily informed listeners. ', '!!Links
[NeoOffice|http://www.neooffice.org]

[VirtualBox|http://www.virtualbox.org] is a free x86 virtualization software option for Windows, OSX, Linux and Solaris operating systems.', 1, '2008-09-20 09:31:45.785079', '2008-09-22 14:41:31.907698', 'live', '2008-09-20 10:00:00', NULL, NULL, 14);
INSERT INTO shows VALUES (201, 'Blood Bot and Oklahoma High', NULL, NULL, 'GeekNews is so much fun! Join the Geeks for some wonderful tech news items on today''s show.', '* http://escapepod.org/2009/04/10/ep194-exhalation/', 1, '2009-09-19 09:57:54.5974', '2009-09-19 11:25:48.085443', 'live', '2009-09-19 10:00:00', 303, NULL, 6);
INSERT INTO shows VALUES (179, 'Exoplanetary Bluetooth Burkas', NULL, NULL, 'The Geeks discuss news, and take calls, using the burka analogy more than once.', '! More Information

[Book a Book|http://www.book-a-book.com/] is a book sharing service similar to the idea of a library, but without the library of course.  Also (contrary to the on-air description) it allows authors and readers to give each other feedback on unpublished manuscripts.', 13, '2009-04-25 10:30:02.602434', '2009-04-25 11:52:27.592142', 'live', '2009-04-25 10:00:00', 285, NULL, 11);
INSERT INTO shows VALUES (165, 'Lightroom 2, Digital Asset Management', NULL, NULL, 'Tom Hogarty, product manager of Photoshop Lightroom at Adobe, joins the Geeks to talk about digital asset management and using Adobe Lightroom 2.', '! Our Guest
[tom_hogarty.jpg|Tom Hogarty is the Senior Product Manager for Adobe Systems Professional Digital Imaging Department. His primary product and marketing responsibilities center around Adobe Photoshop Lightroom, Camera Raw and the DNG File Format. Prior to joining Adobe, Hogarty worked in New York City as a consultant to many of the industry’s leading professional photographers as they converted film to a digital workflow.]


! The Geeks Registrar Choices
* [GKG|http://gkg.net] - Lyle
* [Joker|http://joker.com] - Miles, good non-USA company.
* [GoDaddy|http://godaddy.com/] - Lyle, Alex (it is really cheep, but other Geeks say - no!)
* [Network Solutions|http://networksolutions.com/] - Al uses it, but other Geeks hate it.
* [Domain Discover|http://domaindiscover.com/] - Lyle uses this one too.

! Caller Feedback

 *! Backup Solutions
 * [Super Duper|http://www.shirt-pocket.com/SuperDuper/SuperDuperDescription.html] (Shareware)
 * [Carbon Copy Cloner|http://bombich.com/ccc] (Free)

 *! Digital Camera Information
 * [Steve''s Digicams|http://steves-digicams.com/]
 * [Digital Photography Review|http://dpreview.com/]
 * [Keeble and Schuchat Photography|http://www.kspphoto.com/]

!! Michael DeCosta, III sent a message on our website with this info:

There''s some debate but because a shipping crate containing the Robot
popped up in one episode with the first letters in red paint of each word
with the others in black stacked thusly on a side panel:

* G(eneral)
* U(tility)
* N(on-)
* TH(eorizing)
* E(nvironmental)
* R(obot)

that ToS LOST IN SPACE Robot''s name was Gunther or Gunter. Jonathan Harris
(Dr. Smith) has said he personally preferred the pun Claude (clawed).

', 1, '2009-01-15 12:54:09.172987', '2009-01-26 08:08:09.101233', 'live', '2009-01-24 10:00:00', 270, NULL, 18);
INSERT INTO shows VALUES (215, 'Cellphones in Tunnels and Brain Implants ', NULL, NULL, 'Miles, Ben and Lyle cover the news in tech.

Only half of the show was recorded, sorry folks.', NULL, 1, '2009-12-26 09:51:46.237597', '2009-12-26 16:17:23.94454', 'live', '2009-12-26 10:00:00', 318, NULL, 4);
INSERT INTO shows VALUES (214, 'Some Radiation is Not Fun', NULL, NULL, 'Geeks Lyle, Al, and Miles cover the latest in shopping robots and Netflix lawsuits.  Oh yeah, and cell phones don''t cause brain cancer.', '  *! Audio for Android
  * Streamfurious (MP3 streaming)
  * Google''s Listen (Podcasts)
  * Dogcatcher (Podcasts)
  * The NPR app (Podcasts)

  *! Audio Streaming for iPhone
  * The NPR app (Podcasts and live streams)
  * Public Radio App
', 1, '2009-12-19 10:12:39.725759', '2009-12-19 11:44:12.602373', 'live', '2009-12-19 10:00:00', 317, NULL, 7);
INSERT INTO shows VALUES (213, 'Confirmation Bias', NULL, NULL, 'Professor [Dominic Massaro|http://mambo.ucsc.edu/dwm.html] joins the Geeks to speak about how human beings are "hard wired" to confirm their biases. And what you can do about it to understand the world better.', 'Todays teaser comic is by Ben Jaffe and [Yachin "Bonny" You|http://www.yachinyou.com]', 1, '2009-12-12 09:57:42.40192', '2009-12-19 11:45:07.830707', 'live', '2009-12-12 10:00:00', 316, NULL, 7);
INSERT INTO shows VALUES (212, 'GeekSpeak in a Holiday Parade!', NULL, NULL, 'The Geeks broadcast a show live from the back of a parade truck, during the Downtown Association''s Annual Holiday Parade in Santa Cruz! Parade audience members ask questions in the second half of the show.

We''d like to extend our sincerest thanks to Eric Mack and Joe Weiss from the UCSC Theater Arts Department, for driving the truck and helping with setup. Thanks also to Chip, for helping facilitate GeekSpeak''s involvement in the parade.

What a blast!', NULL, 13, '2009-12-05 00:00:06.602336', '2009-12-19 11:46:12.556075', 'live', '2009-12-05 10:00:00', 315, NULL, 7);
INSERT INTO shows VALUES (216, 'Resurrecting Goats and Steel Velcro ', NULL, NULL, 'Ben''s new year''s resolution is to disregard his new year''s resolutions. Error: boolean logic fault.', 'Al''s recommended video podcast is "Terra - The Nature of our World." http://www.lifeonterra.com/', 1, '2010-01-02 09:30:37.183586', '2010-01-02 18:53:27.569649', 'live', '2010-01-02 10:00:00', 319, NULL, 8);
INSERT INTO shows VALUES (223, 'A Mouthful of USB', NULL, NULL, 'Technical Barbie, White House Tweet,  Tablet Talk, Jet Packs, Robot Assembly, Lego Rubix Cube solver, and tech calls.', '! Jim - Big Sur called in

* [My Book Studio Edition|http://www.wdc.com/en/products/products.asp?driveid=409]
* [RAID 1 | http://www.sohoconsult.ch/raid/raid1.html] Explained



! Sunil from Chicago

* [magic jack|http://www.magicjack.com/] should I be skeptical?  

! Mark from Salinas

Does anyone know of a way of doing texting by voice?

* Lyle mentiones [EverNote|http://www.evernote.com/]
* We chat about [Dragon Naturally Speaking|http://www.nuance.com/naturallyspeaking/], and if anyone uses it.', 7, '2010-02-20 09:34:46.40378', '2010-02-27 09:48:15.531015', 'live', '2010-02-20 10:00:00', 326, NULL, 7);
INSERT INTO shows VALUES (217, 'Lithium and Five New Planets', NULL, NULL, 'Al on Li, Ben excited by exoplanets, and Miles (almost) comes in late.', NULL, 1, '2010-01-09 09:49:11.901563', '2010-01-09 11:14:11.862788', 'live', '2010-01-09 10:00:00', 320, NULL, 3);
INSERT INTO shows VALUES (233, 'Lyle isn''t Spineless ', NULL, NULL, 'iPhone leak, Internet may fail (DNSSEC), Adobe CS5,  HTML5 Video,  and much more.', '! Memristors
We talked about it last year when HP made the first ones, but now there''s a [presentation on memristors|http://www.youtube.com/watch?v=bKGhvKyjgLY] that fleshes out what exactly they are, how they can be used, and where they fit in to the grand scheme of electronics.', 1, '2010-05-01 09:29:57.631977', '2010-05-01 11:49:06.733145', 'live', '2010-05-01 10:00:00', 331, NULL, 4);
INSERT INTO shows VALUES (168, 'Pi, Polka, Cheese, and David Merrill', NULL, NULL, '[David Merrill| http://tinyurl.com/cfenjy] joins the Geeks to chat about different forms of interacting with computers. We all know about the keyboard and mouse, but the future is wide open - hey even the now is fairly amazing.', '! Links from David

* [Chumby | http://www.chumby.com/ ]
* [txteagle | http://txteagle.com/ ]
* David took [pictures of the Geek China tour 2009 | http://www.flickr.com/photos/davidmerrill/sets/72157614620318065/]
* [Playpower | http://playpower.org/]
* [Bug Labs | http://www.buglabs.net/]
* [WattzOn | http://www.wattzon.com/]
* [Better Place | http://www.betterplace.com/]

! DIY technology sources

* [Spark Fun Electronics | http://sparkfun.com/]
* [Evil Mad Scientist | http://www.evilmadscientist.com/]
* [Seeed Studio | http://www.seeedstudio.com/blog/]




! Pledge Drive Show
Special thanks to Maiya, Ed, Darlene, Allison, Steve, Peter, Jeannie, Niki, Maureen, Trish, John, Lauren, and three anonymous donors. Thank you for pledging to KUSP, and supporting public radio!
', 1, '2009-01-30 12:09:52.104271', '2009-03-14 21:57:38.659045', 'live', '2009-03-14 10:00:00', 279, NULL, 23);
INSERT INTO shows VALUES (221, 'Worms in Space welcome Dave Portera and Atari Videos', NULL, NULL, 'Definitely a show of nostalgia, Dave Portera [Por-Ter-a] talks with us about his involvement and roles in the earlier Atari video games.', NULL, 13, '2010-02-06 10:29:31.895508', '2010-02-07 09:14:10.426345', 'live', '2010-02-06 10:00:00', NULL, NULL, 8);
INSERT INTO shows VALUES (218, 'USB PSA, CC, China IE woes', NULL, NULL, 'New Theme song, Google and China troubles because of IE, Creative Commons (CC) of GeekSpeak, hydrogen cell phones, watch out for power outages, and what you can do about them.

And much more on this first and best and longest episode of GeekSpeak that has ever happened on January 16th 2010. And finishing it off, a live USB Public Service Announcement- tattoos.', NULL, 1, '2010-01-16 09:55:58.38498', '2010-01-16 11:52:22.521486', 'live', '2010-01-16 10:00:00', 321, NULL, 3);
INSERT INTO shows VALUES (219, 'Liquid Diamonds and Cold Eyeballs', NULL, NULL, 'Older computers, new HTML/CSS/JavaScript stuff, and more.', NULL, 1, '2010-01-23 09:38:17.232', '2010-01-23 10:12:10.415207', 'live', '2010-01-23 10:00:00', 323, NULL, 3);
INSERT INTO shows VALUES (224, 'Death of IE6 and Enhance iTunes', NULL, NULL, 'IE6 Funeral, TuneUp and 1Password - Ben''s Software Pick, Earth and Environmental Systems Podcast, The 4K Sector Transition Begins, 
Gamma Error in Picture Scaling, and Crazy USB: Fundue

And the Geeks take your calls.', '! Content from Listeners 

Using our [Etherpad|http://etherpad.com/geekspeak] page.

Hey everyone! Thanks for joining us here on the etherpad!

[Santa Cruz Electronics | http://www.santacruzelectronics.com/]

[Google dropping support for IE6 | http://www.digitaltrends.com/computing/google-to-stop-supporting-internet-explorer-6/]

[IE6 Funeral in Denver | http://thenextweb.com/us/2010/02/24/attend-ie6s-funeral-denver/]

[Announcement and RSVP web site|  http://ie6funeral.com/]

Thursday, March 4, 2010, at 7:00 p.m, Forest Room 5, 2532 15th Street, Denver, CO 80211-3902.
[IE6 funeral memories|http://ie6funeral.com/memories]

Upgrade and testing expenses.  We''re going through that at T-Mo.  PITA.  Worse, some of our newer apps continue to require a specific browser, albeit newer.  HP/Mercury''s BAC 8 requires IE7 and breaks in other browsers.  I''m pissed.

Oooh...EtherPad tells of each user''s browser and IP?  Hmmm...Where do you see this?
Float over the names in the upper right-hand window.Ah.  Thanks

[Image Scaling Gamma Bug - nice technical explanation | http://www.4p8.com/eric.brasseur/gamma.html]

[MacWorld Expo 2010 San Francisco | http://www.macworldexpo.com/]


! Music Meta Data

[TuneUp|http://www.tuneupmedia.com/] - "Your music collection is a mess. TuneUp fixes it. Automagically"  Free download  for 100 song clean-ups.  $19.95 per year for a single computer.  $29.95 for single computer lifetime.

Assumes CDDB to be correct.  GraceNote has tighted the controls, which is good in one respect but makes updates harder.  Now only the artist or label can update an entry, and there is a process by which that can be done.  Radio stations that self-publish collections of local live in-studio performances often have to be educated in the proper way to format and then present the data to GraceNote.

[Freedb music database|http://www.freedb.org/]

[GraceNote music database | http://www.gracenote.com/business_solutions/music_id/]

There are enough performance differences that audio ID can use a specific sample to identify a single tune from its peers, such as a live perf versus original studio release versus a compilation version.

[AudioID | http://en.wikipedia.org/wiki/AudioID] which is how you finger print audio files by their sound - not how CDDB works.


! [Western Digital advanced disk format| http://www.theregister.co.uk/2009/12/14/wd_advanced_format/]

* [ Disk Sector| http://en.wikipedia.org/wiki/Disk_sector]
* [Western Digital Advanced  Format Technology white paper| http://www.wdc.com/wdproducts/library/WhitePapers/ENG/2579-771430.pdf] pdf
* [WD Advanced Format Hard Drive Download Utility | http://www.wdc.com/en/products/advancedformat/]
* XP-foo...gonna have to check Safari for that detail.
*[WS Advanced format - article that discusses Windows XP issues | http://hothardware.com/Articles/WDs-1TB-Caviar-Green-w-Advanced-Format-Windows-XP-Users-Pay-Attention/]
* Heh!  "Advanced Format is not optimized for outdated operating systems such as Windows XP".

Yeah, man...light-switch-plate-art-foo!

! Podcast Mention 

Colorado School of Mines - [Earth and Environmental Systems Podcast  | http://earthonline.wordpress.com/2007/12/09/earth-and-evironmental-systems-podcast/] and [the Earth and Environmental Systems feed | http://geology.mines.edu/courses/sygn101/podcast/earth.xml]


! [Pacific Tsunami Warning Center| http://www.prh.noaa.gov/ptwc/]

* [Tsunami Warning - Message #14 - Hawaii specific warning | http://www.prh.noaa.gov/ptwc/messages/hawaii/2010/hawaii.2010.02.27.175330.txt]
* [Pacific General warning | http://www.prh.noaa.gov/ptwc/?region=1&id=pacific.2010.02.27.175055]

! Password Management:

* [1Password (Mac only) | http://agilewebsolutions.com/products/1Password]
* [Password Management Roundup: 5 Apps to Keep Your Passwords Safe |http://theappleblog.com/2009/03/24/password-management-roundup-five-apps-to-keep-your-passwords-safe/]
* [KeePass Password Safe - open source | http://keepass.info/]
* [Password management - top 10 reviews | http://password-management-software-review.toptenreviews.com/]

! iTunes Utilities:

* [http://download.cnet.com/windows/itunes-utilities/|http://download.cnet.com/windows/itunes-utilities/]
* http://en.onsoftware.com/top-10-utilities-for-itunes/
* http://downloads.zdnet.com/Software/iTunes+and+iPod+Software/iTunes+Utilities/
* http://www.versiontracker.com/windows/ipod-itunes/itunes-utilities

! How do you right-click on a Mac?

* Press Ctrl then click
* Would a Mac user think of that action as right-click?  I guess I should ask of a "typical Mac user"...
* Excellent!  Good explanation.

! AppleScripts for iTunes:

* http://dougscripts.com/itunes/
* http://lifehacker.com/239864/hack-attack-top-13-itunes-applescripts
* http://mysite.verizon.net/teridon/itunesscripts/index.html
* A Fantastic AppleScript Resource: [DougScripts|http://dougscripts.com/itunes/]

! Cloning Mac G5 hard drive:

* [Super Duper | http://www.shirt-pocket.com/SuperDuper/SuperDuperDescription.html]
* [Carbon Copy Cloner (Free) | http://www.bombich.com/]

Good advice and good plan...now, write that out in five simple clear steps in English.
yeah right! :-)  I like the ''in English'', cause it''d be easier in code and comments.
Shucks, for any four yo computer it ought to be easy to get a similar drive in an enclosure for dirt cheap...whammo...cheap backup.

! Crazy USB device of the week

*  [USB Fundue | http://www.thinkgeek.com/stuff/41/fundue.shtml]

Where''s my credit card!!!  Stolen? :)
In the pot.  Damn.
Ciao!
Ciao, thanks all!
', 13, '2010-02-27 09:49:19.026686', '2010-02-28 17:03:27.397662', 'live', '2010-02-27 10:00:00', 327, NULL, 10);
INSERT INTO shows VALUES (220, 'Google paying for Bugs', NULL, NULL, 'Government Data, Google paying people that find security bugs in chrome, 1 year anniversary of Al on GeekSpeak, Spirt Death, the iPad and much more.', '! Laptop Recycle

* Cynthia in SC recommends recycling thru Gray bears
* Bill Mensch, recycles PC in Santa Cruz and he does take out drives,- SC 425-8740


! Theme Song

This week we played the song from [Newman|http://fashionablecookie.com/petstarmusic.html]

! Copyright

This episode of GeekSpeak is [Creative Commons: Attribution-Noncommercial-Share Alike 3.0 United States License|http://creativecommons.org/licenses/by-nc-sa/3.0/us/]. ', 1, '2010-01-30 10:03:59.000366', '2010-06-14 11:48:40.780352', 'live', '2010-01-30 10:00:00', NULL, NULL, 6);
INSERT INTO shows VALUES (222, 'Pencils, Frisbees, Grenades and Avatar', NULL, NULL, 'Guest Geeks Lindsey Lonne and Alex Sleeis join regulars Al and Lyle to talk about the GeekNews and take calls.', '! Power Assure - Al Designs

[ventidea400max.jpg|Al''s [bevel design for Power Assure|ventidea.jpg]]', 1, '2010-02-13 10:01:06.367714', '2010-02-13 11:19:36.893529', 'live', '2010-02-13 10:00:00', NULL, NULL, 5);
INSERT INTO shows VALUES (225, 'Leaving Google and Supporting KUSP', NULL, NULL, 'The Geeks cover the news and ask for your help in supporting the station.', NULL, 1, '2010-03-06 09:58:08.549463', '2010-03-06 13:24:52.771696', 'live', '2010-03-06 10:00:00', NULL, NULL, 1);
INSERT INTO shows VALUES (167, 'Santa Cruz Geeks with Sean Tario', NULL, NULL, 'The local social scene for Geeks in Santa Cruz has always been impressive. Ever since the Geek Houses of the 80s, Santa Cruz has had its technically savvy folks who like to spend time socializing. In recent months there has been a resurgence of this Santa Cruz staple. Sean Tario is one of the geeks accidently leading over 250 geeks in the Santa Cruz area to hang out and chat, to share their brilliance, and enjoy life like only a geek can.', '! Sean Tario, our Guest
Sean joined UnitedLayer in April 2007 and is responsible for managing sales and business development opportunities. The company has grown from a $1.2M run rate to an over $7M run rate in the 20 months he''s been there.

Sean started his professional career as an entrepreneur while still a student in college, helping to launch AllDorm Inc., a collegiate media and marketing company. He served on the Executive Management Team for five years as the primary employee responsible for managing and growing the retail division of the company from its initial idea phase to a profitable division. Since this experience, he has worked with dozens of start-ups and growing companies in Director roles and as a general advisor, consultant and fundraiser, primarily focused on implementing and developing systems and processes that will ensure scalability and transparency.

Sean works actively to develop meaningful and valuable relationships and partnerships in all areas of his life. He has helped launch a number of successful organizations that aim to achieve this goal, such as the Santa Clara University Center for Innovation and Entrepreneurship, Santa Cruz NEXT, and Santa Cruz Geeks.  

Sean received his Bachelor''s degree in Political Science and Economics from Santa Clara University.

! Santa Cruz Geeks
* [2008 Was a Great Year for Santa Cruz Geeks|http://seantario.com/2009/01/2008-was-a-great-year-for-santa-cruz-geeks/]
* [Sean Tario''s Blog|http://seantario.com]
* [Santa Cruz Geeks|http://santacruzgeeks.com]

! 12 Seconds
* [12 Seconds|http://12seconds.tv]
* [ Sean Tario on 12seconds.tv|http://12seconds.tv/channel/eurotario/]
* [Lyle''s 12seconds.tv|http://12seconds.tv/channel/lyle/]

! Other Local Business
* [NextSpace.us | http://NextSpace.us/] is a communal work environment in down town Santa Cruz.
* [Santa Cruz Business Portal|http://www.cruzbusiness.com/]
* [UserVoice|http://www.uservoice.com]
* [Digital Media Factory|http://digitalmediafactory.net/]
* [RideSpring|http://ridespring.com]
* [Zazengo|http://www.zazengo.com/]
* [ProductOps|http://productops.com/]
* RoomQuick.com (their site is not live yet)', 1, '2009-01-29 07:59:32.21313', '2009-01-31 21:11:48.135489', 'live', '2009-01-31 10:00:00', 272, NULL, 29);
INSERT INTO shows VALUES (169, 'Web Cams and GeekNews', NULL, NULL, 'Nick Cuniffe from Logitech joins the geeks for a discussion of online video chat and web cameras. We give two web cameras away, and are actually impressed by their quality.', '! Our Guest

Nick Cuniffe, Product Marketing Manager for the Internet Communications Business unit at Logitech is our guest. After his Political Science degree from Berkly, Nick started focusing on user experience software and has been working at Logitech for the past three years.

To learn more about the Logitech and how to use a different video calling solutions - with how two videos, go ahead and visit the [Logitech''s QuickCam site|http://www.logitech.com/quickcam/] website.


! Trying out the Camera

* I put up [a small video which I made with the logitech camera|http://www.facebook.com/video/video.php?v=577428496568] talking about the camera.
* [Another video using the Logitech QuickCam Vision Pro| http://www.facebook.com/video/video.php?v=577435836858] with my thoughts and issues using the camera on OS X.', 1, '2009-02-07 09:17:22.808695', '2009-02-09 13:09:42.259836', 'live', '2009-02-07 10:00:00', 273, NULL, 14);
INSERT INTO shows VALUES (226, 'Tasty Hydrophobic Explosive URLs', NULL, NULL, 'The Geeks cover recent news in the tech world, and ask for your donations for KUSP.', NULL, 1, '2010-03-13 10:02:56.86794', '2010-03-13 11:37:29.57585', 'live', '2010-03-13 10:00:00', NULL, NULL, 4);
INSERT INTO shows VALUES (227, 'Translating Fearful Viruses  ', NULL, NULL, 'The Geeks chat about the trouble with translations, virus protection, faster internet and much more. Plus a call or two from you.', '! Anti Virus Software 

Alex suggested [Avira|http://www.avira.com/] for anti virus software.

Alex also suggested reading his [blog entry on internet connectivity and safe computing|http://geekspeak.org/blog/2007/07/07/internet-connectivity-and-safe-computing] .


! Wipe your System Information

This is a nuclear option when it comes with cleaning your system. You erase all software and install windows clean. It take a long time and you loose all information on the machine, so you need to have your content someplace else.

eHow, has an article on [How to Wipe Your Computer and Reinstall|http://www.ehow.com/how_5907104_wipe-computer-reinstall.html], you will need a lot. You might want to pay someone to do this. Know a geek who likes something you do? Do you cook - and they like to eat? Make a trade.

! Contributed Content

This is from the  [Etherpad|http://etherpad.com/geekspeak] page.

[Comcast 100mb network service | http://www.multichannel.com/article/450400-Comcast_100_Meg_Residential_Service_Coming_This_Year.php]

[Galaxy Zoo 2: help astronomers explore the universe | http://www.galaxyzoo.org/]

* [ The UCSB Quantum Feline alive and dead at the same time | http://www.sciencenews.org/view/generic/id/57385/title/Physicists_observe_quantum_properties_in_the_world_of_objects ]
* [Andrew Cleland - UCSB |http://www.physics.ucsb.edu/~clelandgroup/cleland.html]
* [Schroedinger''s Cat | http://en.wikipedia.org/wiki/Schr%C3%B6dinger%27s_cat]

Watch out for [iTunes Fraudulent charges | http://credit.about.com/b/2010/03/06/watch-out-for-unauthorized-charges-from-itunes.htm]

! Translation

* Add translation to your website - [World Wide Lexicon dot org |http://www.worldwidelexicon.org/] .  [About Worldwide lexicon| http://blog.worldwidelexicon.org/?page_id=2] .  [API fpr developers|  http://www.worldwidelexicon.org/api]
* Sack / Brooks art project [Translation Map|http://translationmap.walkerart.org/]
* [Google Translate|http://translate.google.com/]
* [Yahoo! Babel Fish|http://babelfish.yahoo.com/]
* Hitch-Hiker''s Guide to the Galaxy, [The Babel Fish|http://www.bbc.co.uk/cult/hitchhikers/guide/babelfish.shtml]


! Email Issues
11th Circuit Court Decision - largely [eliminates 4th Amendment protection in E-Mail| http://volokh.com/2010/03/15/eleventh-circuit-decision-largely-eliminates-fourth-amendment-protection-in-e-mail/. http://www.liberalwhoppers.com/2010/03/15/eleventh-circuit-decision-largely-eliminates-fourth-amendment-protection-in-e-mail/] . Case: [Rehberg vs Paulk/Hodges/Burke| http://www.ca11.uscourts.gov/opinions/ops/200911897.pdf] .  "The Eleventh Circuit held that constitutional protection in stored copies of e-mail held by third parties disappears as soon as any copy of the communication is delivered.”

* [Pretty Good Privacy (PGP)| http://en.wikipedia.org/wiki/Pretty_Good_Privacy]
* [OpenPGP Alliance| http://www.openpgp.org/]

!! Like this subject - read more about it...
* Cory Doctorow - [Little Brother - free download| http://craphound.com/littlebrother/download/] , Apparently not related to E.L. Doctorow...or not directly related.
* [Bruce Schneier - Schneier on Security: http://www.schneier.com/]


[New password-stealing Facebook virus|  http://network.nationalpost.com/NP/blogs/posted/archive/2010/03/18/new-password-stealing-virus-targets-facebook.aspx] could affect millions of users:
[Koobface|http://en.wikipedia.org/wiki/Koobface] ...so many folks have been hit...gee, what a mess. 

McAffee Koobface (FaceBook sort of backwards and inside out) [virus information| http://vil.nai.com/vil/content/v_148955.htm] 

I''ve always thought of the "big boys" as being more vulnerable.  I''ve faught virii hand-to-hand and witnessed Norton and McAfee be targetted for kill where less-well-known AV apps are not.  Suggestions for other Anti-Virus solutions/software?
You guys are naming good alternatives.

[Avira anti-virus software|http://www.avira.com/en/pages/index.php]

[AntiVirus Software Reviews 2010|http://anti-virus-software-review.toptenreviews.com/]

Wipe system, install Linux, then VMWare, then Windows VM, grab periodic images of the base of the system as alternate restore points, use shared volume from Linux system for personal files, etc.  Too bad that''s not for amateurs.

I use Spybot Search & Destroy on Windows in addition to McAfee VirusScan Enterprise, Windows Defender, Windows Firewall:  http://www.safer-networking.org/en/home/index.html
Like an onion!  Getting folks to understand and appreciate that used to be so hard.

[Opera Mail|http://www.opera.com/mail/]:  .  e-mail client built into the browser.

Cisco CRS-3:  [322 terabits per second router|http://newsroom.cisco.com/dlls/2010/prod_030910.html]  
Yeah, but Bombay to Hollywood would still take hours what with all the Bollywood films they make on a nearly daily basis.
', 1, '2010-03-20 11:22:18.404755', '2010-03-25 23:10:51.685505', 'live', '2010-03-20 10:00:00', NULL, NULL, 13);
INSERT INTO shows VALUES (172, 'NextSpace and Helicopters', NULL, NULL, 'Jeremy Neuner Founder of Santa Cruz coworking environment NextSpace joins the Geeks to talk about innovation and flying helicopters.', '! Our Guest

[jeremy.jpg| Jeremy Neuner is the Co-Founder and CEO of [NextSpace Coworking + Innovation, Inc. | http://nextspace.us/  ] , a coworking space and entrepreneurial catalyst located in downtown Santa Cruz, CA.  Jeremy has over 15 years of experience—as a helicopter pilot in the U.S. Navy, as a management consultant, as an economic development professional, and as a successful entrepreneur—in creating, motivating, and leading team to accomplish amazing, challenging, and sometimes wacky things.  Jeremy holds a bachelor’s degree in literature from Georgetown University and a master’s degree in business and government policy from Harvard.  But he’s learned the most from playing LEGO’s with his kids.  Jeremy tries to live by this rule:  take your job seriously, but not yourself.  Also, Jeremy is very funny, but often he''s the only person who thinks so. ]



! Collaborative Work Systems

* Ehterpad - Join us in the etherpad.com [show chat|http://etherpad.com/geekspeak]  .
* [Group Mind Express | http://groupmindexpress.com/ ]
* [Ning|http://www.ning.com/]
* The Geeks plan shows with [Basecamp | http://basecamphq.com/ ]', 1, '2009-02-28 09:39:47.430191', '2009-02-28 13:49:57.461676', 'live', '2009-02-28 10:00:00', 277, NULL, 13);
INSERT INTO shows VALUES (234, 'Claustrophobic Net Neutrality in Space', NULL, NULL, 'Lyle, Al, and Miles talk with listeners.', NULL, 7, '2010-05-08 09:56:47.545744', '2010-05-10 16:02:02.053914', 'live', '2010-05-08 10:00:00', NULL, NULL, 5);
INSERT INTO shows VALUES (235, 'Hey, That''s My Phone!', NULL, NULL, 'Lyle, Al, Miles, and Ben discuss phones, book notes, and other personal property as well as their theft.', NULL, 7, '2010-05-15 10:11:22.237555', '2010-05-15 11:02:54.114462', 'live', '2010-05-15 10:00:00', NULL, NULL, 3);
INSERT INTO shows VALUES (239, 'Made by Hand, Mark Frauenfelder', NULL, NULL, 'Mark Frauenfelder (Editer of [Make Magazine|http://makezine.com/] and founder of [Boing Boing|http://boingboing.net/]) explores the [DIY|Do It Yourself] revolution with his own hands in his first person account book [Made by Hand, Searching for Meaning in a Throwaway World|http://www.boingboing.net/madebyhand/] .', NULL, 1, '2010-06-12 09:48:34.27839', '2010-06-14 11:43:35.289496', 'live', '2010-06-12 10:00:00', NULL, NULL, 9);
INSERT INTO shows VALUES (228, 'Printers Are Evil', NULL, NULL, 'The Geeks cover news and take calls from listeners with questions and comments about technology.', '! Content from David I...

[Can Mushrooms overtake Styrofoam|http://blogs.discovermagazine.com/discoblog/2010/03/01/in-the-packaging-wars-can-shrooms-overtake-styrofoam/] ?
 
[HP printer ink costs almost twice as much as human blood|http://www.maximumpc.com/article/news/hp_printer_ink_costs_almost_twice_much_human_blood]
 
[Solid ink|http://en.wikipedia.org/wiki/Solid_ink]
 
[University of Wisconsin Green Bay changes font, saves cash|http://www.wbay.com/Global/story.asp?S=12204248] 

"The University of Wisconsin-Green Bay switched the default font on its e-mail system from Arial to Century Gothic."
 
[Bias Called Persistent Hurdle for Women in Sciences| http://www.nytimes.com/2010/03/22/science/22women.html]

"A report on the underrepresentation of women in science and math by the American Association of University Women, to be released Monday, found that although women have made gains, stereotypes and cultural biases still impede their success."

[Graph|http://graphics8.nytimes.com/images/2010/03/22/science/22women-graphic/22women-graphic-articleInline.jpg]
 
! Missing Galaxies

[Most of Missing Universe found|http://worldofweirdthings.com/2010/03/24/newsflash-most-of-missing-universe-found/]
 
! Computer and office related pranks to play on April Fools day

* http://www.techcult.com/high-tech-pranks/
* http://www.marcofolio.net/other/top_10_pc_pranks.html
* http://www.walyou.com/blog/2008/03/31/top-10-computer-and-office-related-pranks-to-do-on-april-fools/
* http://lifehacker.com/373817/top-10-harmless-geek-pranks
* http://www.instructables.com/id/A-Collection-of-Easy-Office-Pranks/
* http://www.womansday.com/Articles/Family-Lifestyle/Work/10-Outrageous-Office-Pranks.html
* http://aprilfoolzone.com/
* http://www.entrepreneur.com/humanresources/article176430.html
* http://www.pcworld.com/article/45270/top_pc_pranks_for_april_fools_day.html
 
! Photo Sharing Sites

* http://picasa.google.com/
* http://www.flickr.com/
* http://www.smugmug.com/
* http://photobucket.com/
* https://www.photoshop.com/
* http://www.webshots.com/
* [Reviews of photo sharing sites|http://photo-sharing-services-review.toptenreviews.com/]
 ', 1, '2010-03-27 09:54:07.445752', '2010-03-27 11:24:26.368409', 'live', '2010-03-27 10:00:00', NULL, NULL, 4);
INSERT INTO shows VALUES (174, 'Rich Internet Applications', NULL, NULL, 'Walt Schlender will be joining us to discuss Adobe Flash, Flex, Air, Microsoft Silverlight, and how they all fit together.

Walt is a Flex architect and entrepreneur living in Berkeley, CA. He''s been playing with Flash, ActionScript and Flex for the past 3 years. Half that time found him working on a software startup called Mousecloud that tried to connect people in real-time over the internet - currently he''s enjoying helping companies figure out how to build LARGE web applications - over the years he''s played with a lot of cool web technologies and loves talking about how they fit into the real world.', '!Energy-Saving Tips

BuyMyTronics.com wants to buy your used, new and broken Electronics today! They offer a fast, simple, and eco-friendly way to get money for your device.
http://www.buymytronics.com

TED Footprints is dynamic software that allows you to log your electricity usage on your PC for graphing, charting, seeing trends, load-profiling and much more! It gives you a more comprehensive look at your electricity usage; you can really ''see'' where you may be wasting electricity (and money!)
http://www.theenergydetective.com/what/overview.html

WattzOn is an online survey that tells you how much extra energy your lifestyle consumes.
http://www.wattzon.com

EcoCell is the premiere cell phone recycling program for environmentally minded fundraisers. Our passion is to provide our conservation partners with the most profitable, easy to use and environmentally sound cell phone recycling program possible.

Fluid lets you create Site-Specific Browsers. Check it out!
http://www.fluidapp.com', 13, '2009-03-14 09:58:43.517976', '2009-03-21 11:01:09.856496', 'live', '2009-03-21 10:00:00', 280, NULL, 6);
INSERT INTO shows VALUES (230, 'A Leak Too Far?', NULL, NULL, 'Lyle, Al, Ben, and Miles discuss the news and various decisions by big players in the world of tech and government. Also, what is up with Apple''s new [SDK|Software Development Kit] rules.', NULL, 7, '2010-04-10 09:46:35.174451', '2010-04-10 11:33:33.410255', 'live', '2010-04-10 10:00:00', NULL, NULL, 3);
INSERT INTO shows VALUES (229, 'OmniFocus, GTD, April Fools and iPad Stuff', NULL, NULL, 'Brian Covey, Super Support Ninja for [OmniGroup|http://www.omnigroup.com/], joins us to discuss [OmniFocus|http://www.omnigroup.com/products/omnifocus/]. The geeks also discuss geeky April Fools jokes, and other news.', NULL, 13, '2010-04-03 10:36:34.692064', '2010-04-03 11:36:02.893135', 'live', '2010-04-03 10:00:00', NULL, NULL, 5);
INSERT INTO shows VALUES (175, 'Visual Effects with Mark Christiansen', NULL, NULL, 'We will be joined by [Mark Christiansen|http://christiansen.com], artist, animator and author. His most recent book, "After Effects CS4: Visual Effects and Compositing Studio Techniques," covers color correction, keying, rotoscoping, motion tracking, and much more in After Effects CS4.', NULL, 13, '2009-03-14 16:30:22.914213', '2009-04-04 09:59:57.531405', 'live', '2009-04-04 10:00:00', 282, NULL, 6);
INSERT INTO shows VALUES (173, 'Pluto Emotions, Star Trek Geekery and More', NULL, NULL, 'The new Star Trek movie trailer, people still talking about Pluto and more GeekNews.', 'Corrections: Our planets are named after the Roman gods.

! More Information
* [Trek Wiki| http://memory-alpha.org/en/wiki/Portal:Main]
* [Johannes Kepler|http://en.wikipedia.org/wiki/Johannes_Kepler]
* [Watch Twitter traffic based on strings|http://www.monitter.com/]', 13, '2009-03-06 21:59:01.157847', '2009-03-10 13:15:05.680776', 'live', '2009-03-07 10:00:00', 278, NULL, 10);
INSERT INTO shows VALUES (176, 'Mobile Geeks and Green Tech', NULL, NULL, 'Mobile geek corrospondents Chris Dunphy, and Cherie Ve Ard join us on the air. The geeks talk about news items, and take calls from listeners with questions and comments about technology.', 'Check out Chris Dunphy and Cherie Ve Ard''s home, at their site: http://www.technomadia.com/', 13, '2009-03-26 00:37:02.926833', '2009-03-29 14:59:50.580543', 'live', '2009-03-28 10:00:00', 281, NULL, 10);
INSERT INTO shows VALUES (231, 'An Embarrassment of Geeks', NULL, NULL, 'Lyle says that 6 out of 20 is not 30% and other silly things; Geek Fail!
A full house including Al, Ben, Lindsey, Miles, and Lyle discuss the Week in Geek.', '! Six out of 20 is 30%

Ben covered a story that talked about 27 planetary systems 6 of them showed that the exoplanets were orbiting in the opposite direction then the rotation of their star. Lyle then said something about how 6 out of 20 was a big percentage. And then later we had a caller say that 6 out of 20 was %30, Lyle said this was off a bit and was completely wrong. But, the story was  6 out of 27. Witch is 22.222...%.

! Art Shows

* Steve Laufer - landscape show - davenportgallery.org
* Graduate Recital: Philip Daniel Lamperski, composition, Saturday, April 17, 2010 - 7:30pm, Music Center Recital Hall, UCSC





', 7, '2010-04-17 10:09:44.833614', '2010-04-17 11:15:50.022519', 'live', '2010-04-17 10:00:00', NULL, NULL, 3);
INSERT INTO shows VALUES (181, 'Smells Like Color Calibration', NULL, NULL, 'Son Do, from [Rods and Cones|http://www.rodsandcones.com/], a locally-based color calibration company, joins the geeks to talk about color, and why color calibration is so important for graphic artists.

"Son Do co-founded Rods and Cones, Inc., in 1996. He provides technical expertise and insight on color management and its integration into a digital workflow. His years spent in the trenches of color management''s emerging technologies have given him exposure to most color management products, in most industries, including design and advertising, prepress, printing, and digital photography. He has a BS in Bioengineering from the UC Berkeley and worked as researcher at Genentech, Inc."', NULL, 13, '2009-05-02 23:58:21.353753', '2009-05-09 11:53:19.469912', 'live', '2009-05-09 10:00:00', 287, NULL, 8);
INSERT INTO shows VALUES (232, 'Chainsaw, Tree, Lyle and Spine', NULL, NULL, 'A 15min update on why we didn''t do a normal episode of GeekSpeak this week.', 'Lyle talks about his trip to the hospital and his spine damage caused by a jump and a tree hit. He also chats about his experience using an iPad.

!Links

[Harmony | http://mrdoob.com/projects/harmony/] is a wondeful sketching tool to use in recent browsers. HTML5 supported browsers. ', 1, '2010-04-30 09:56:51.898938', '2010-04-30 10:43:02.173227', 'live', '2010-04-24 10:00:00', NULL, NULL, 2);
INSERT INTO shows VALUES (182, 'Guns Don''t Kill People, Robots Do', NULL, NULL, 'The Geeks discuss the Hubble Space Telescope, other geek news, and take your calls with questions and comments about technology.', '! Listener Photo of Hubble
Listener Don sent us a link to [his picture of Hubble|http://www.flickr.com/photos/doneastwest/3526188633/in/set-72057594110936581/] on flickr. Thanks Don!', 13, '2009-05-13 16:15:02.985305', '2009-05-16 11:38:02.511192', 'live', '2009-05-16 10:00:00', 288, NULL, 5);
INSERT INTO shows VALUES (187, 'Steve Wozniak, Uber-Geek', NULL, NULL, '[Woz|http://woz.org/] is the creator of the personal computer, an inventor, engineer, prankster, and genuine good guy. Woz is the main Geek of our time. Al and Lyle joined him in his home to chat about who he is and what he likes. A very personal conversation with Steve Wozniak.', '! Hey, where is that Video?

Al and I will put more video and pictures up here, or links to them, as time permits. If you ask us (read pester) via email it might help us get motivated.

! Notes from Listeners

* IWM, [Integrated Woz Machine pdf|http://www.downloads.reactivemicro.com/Public/Users/David_Craig/AppleIWMSpec1982.pdf]

Woz''s "Blue Box" use in College
* [His site, email interview|http://www.woz.org/letters/general/03.html] .
* [Picture of Wozniak''s Blue Box at the Computer History Museum | http://www.computerhistory.org/collections/accession/102627263 ]
* [Wikipedia''s Blue Box page| http://en.wikipedia.org/wiki/Blue_box ]
* [Picture of Jobs and Woz looking at blue box|http://www.paulgraham.com/bluebox.html]
* [Markus Ehrenfried history of the Apple Mac|http://www.markusehrenfried.de/mac/applehistory.html]

! What is your name backwards?

* Steve Wozniak = Evets Kainzow


! USB Heating Slippers

Another link to the [usb slippers| http://www.usbgeek.com/prod_detail.php?prod_id=0502]

', 1, '2009-06-19 14:41:03.677488', '2009-06-22 11:25:29.995349', 'live', '2009-06-20 10:00:00', 292, NULL, 9);
INSERT INTO shows VALUES (237, 'Cloud Bacteria & Human Computer Virus', NULL, NULL, 'A fun episode stuffed full of weekly geek news with Al, Alex, Lindsey and Lyle.', NULL, 1, '2010-05-29 11:02:25.884431', '2010-06-12 12:08:05.564812', 'live', '2010-05-29 10:00:00', NULL, NULL, 3);
INSERT INTO shows VALUES (193, 'Glowing Humans and Robot Rats', NULL, NULL, 'We [ask for your favorite podcast|http://forums.geekspeak.org/viewtopic.php?f=2&t=26], cover the the week in geek news and take some calls.
', '! Podcasts, What do you listen to?

Join the GeekSpeak forums and add to [our list of geek podcasts|http://forums.geekspeak.org/viewtopic.php?f=2&t=26] your favorite podcasts.', 1, '2009-07-25 10:21:39.606125', '2009-08-01 11:42:15.691149', 'live', '2009-07-25 10:00:00', 295, NULL, 11);
INSERT INTO shows VALUES (188, 'NASA Twiddles the Knob With Imperial Units', NULL, NULL, 'Geeks Miles, Ben, Alex, and Lindsey talk about the week''s news including imperiled Space Shuttles and ringtones as public performances while they answer your calls and comments.', 'The geeks cover news, and take calls. Alex Sleeis and Lindsey Lonne join us!', 7, '2009-06-27 10:00:20.805642', '2009-06-27 12:05:56.850167', 'live', '2009-06-27 10:00:00', NULL, NULL, 7);
INSERT INTO shows VALUES (192, 'Pee, Poop, Robots and Onions ', NULL, NULL, 'Robots that eat organic material, power from pee and onions, Orwellian Kindles, police typewriters, and more.', NULL, 1, '2009-07-18 09:57:05.31803', '2009-07-18 11:37:07.370667', 'live', '2009-07-18 10:00:00', NULL, NULL, 4);
INSERT INTO shows VALUES (191, 'How to Program', NULL, NULL, 'In this 1 hour GeekSpeak you will learn to program.... or at least how to start to learn to program.

Chris Pine, author of [Lear to Program, 2nd Edition|http://pine.fm/LearnToProgram/] from [The Pragmatic Bookshelf|http://www.pragprog.com/titles/ltp2/learn-to-program-2nd-edition] joins the geeks to talk about how to teach and how to learn to program computers. 

', NULL, 1, '2009-07-17 13:48:54.858122', '2009-07-18 11:37:21.200044', 'pending', '2009-08-18 10:00:00', 294, NULL, 5);
INSERT INTO shows VALUES (189, 'Robots, Hulu, and You', NULL, NULL, 'The geeks discuss robot development, and Miles welcomes our robot overlords. Guess which of the geeks is the real robot!', NULL, 1, '2009-07-04 10:14:07.213015', '2009-07-04 11:12:37.198168', 'live', '2009-07-04 10:00:00', NULL, NULL, 3);
INSERT INTO shows VALUES (236, 'Google, God, and Geeks', NULL, NULL, 'Miles, Al, Ben, and Lindsey take your calls and questions.', NULL, 7, '2010-05-22 08:44:38.902973', '2010-05-22 11:43:43.298146', 'live', '2010-05-22 10:00:00', NULL, NULL, 4);
INSERT INTO shows VALUES (190, 'Practically Practical Particle Physics ', NULL, NULL, 'Physicist Linda Carpenter joins us to give us the dirt on Dark Matter and tell us why the Higgs Particle is so important.', NULL, 1, '2009-07-09 16:52:22.729715', '2009-07-11 11:44:09.521675', 'live', '2009-07-11 10:00:00', 293, NULL, 6);
INSERT INTO shows VALUES (163, 'Photoshop CS4', NULL, NULL, 'The geeks discuss graphics applications, and the technologies that drive them with Adobe Photoshop Product Manager, Brian Hughes. 

Bryan O''Neil Hughes is a Product Manager on the Photoshop Team and a Product Evangelist for the Lightroom Team.  Bryan has spent the last ten years helping to test, drive, develop and demonstrate Adobe''s professional imaging solutions.  He speaks worldwide on behalf of Adobe and can often be found leading seminars and workshops.  Beyond Adobe, Bryan is a published book author, editor and photographer.', '! Review of Gimp
[AresTechnica has a review/comparison of GIMP | http://arstechnica.com/reviews/apps/gimp-2-6-review.ars] which is the  open source alternative to Photoshop. 

! Black and White book
Bryan is co-author with Leslie Alsheimer of the version two of [Black and White in Photoshop CS4 and Lightroom|http://tinyurl.com/7ewksj] which will be out in March.

! Adobe Resources
* [Photoshop Feature Demos|http://www.adobe.com/products/photoshop/photoshopextended/features/?view=topnew&promoid=DRHXH]
* [Photoshop Labs|http://labs.adobe.com/]

! Our Guest

[2009_01_17_7591.jpg|Bryan Hughes is a Product Manager on the Photoshop Team and a Product Evangelist for the Lightroom Team.  Bryan has spent the last ten years helping to test, drive, develop and demonstrate Adobe''s professional imaging solutions.  He speaks worldwide on behalf of Adobe and can often be found leading seminars and workshops.  Beyond Adobe, Bryan is a published book author, editor and photographer.]', 13, '2009-01-08 19:29:06.835213', '2009-07-30 10:30:54.736302', 'live', '2009-01-17 10:00:00', 267, NULL, 20);
INSERT INTO shows VALUES (194, 'Transparent Al and BayFed Security', NULL, NULL, 'Ryder, Ben, and Lyle are joined by special geek guest [Jessse Wilkins|http://wilkinsconsulting.us] to cover the week in geek news and take calls with questions and comments about technology.', '! From Listener Jeff Croteau

* [The Brainy Gamer|http://www.brainygamer.com/]
* [Robots Podcast|http://www.robotspodcast.com/]

! From our Public EtherPad

[Apple Apple 3.0.1 update - notes from Apple Support|http://support.apple.com/kb/HT3754]

Is anyone worried about the [possible shut down of Skype by eBay|http://computerworld.co.nz/news.nsf/netw/F7401C4DAE68D953CC2576040017BAE0] ? Patent license disagreement!

"Ebay bought Skype in 2005 for about US$2.6 billion but that deal didn''t include the peer-to-peer networking technology on which it runs. That technology is owned by a company called Joltid and licensed to Skype, but the two sides have fallen out over the licensing agreement."

"Although Skype is confident of its legal position, as with any litigation, there is the possibility of an adverse result if the matter is not resolved through negotiation," the company said. "Skype has begun to develop alternative software to that licensed through Joltid."

eBay [10-Q for June 2009 Quarter|http://www.sec.gov/Archives/edgar/data/1065088/000119312509157212/d10q.htm]

[Microsoft/Yahoo search deal in simple terms |http://searchengineland.com/microsoft-yahoo-search-deal-simplified-23299]

MS Bing/Yahoo won''t start happening until next year -  "Both companies hope to close the deal in “early 2010.” Then they’ll implement the deal in major countries around the world, the US being one of them. They say the transition will take three to six months. So those Bing results should be showing up on Yahoo between summer to fall of 2010."


!! Japanese Crawling Robot - YouTube videos:
* [Creepy Crawling v.1|http://www.youtube.com/watch?v=glUnzzoFUxg]
* [Creepy Crawling v.2|http://www.youtube.com/watch?v=djJDvgUOL7E]


!! Data Backup 3 for Mac

* [Prosoft Engineering|http://www.prosofteng.com/products/] is what Jesse recommends.
* [Super Duper|http://www.shirt-pocket.com/SuperDuper/SuperDuperDescription.html] is what Ben uses.


!! Web CMS software:

* [Drupal| http://drupal.org/]
* [Wordpress| http://wordpress.org/]
* [Joomla| http://www.joomla.org/]

* [Santa Cruz Drupal user group|http://groups.drupal.org/santa-cruz]
* [Santa Cruz Geeks dot com|http://santacruzgeeks.com/]


Sleep is not an efficient use of time :)
Depend on how much you need it ..

! Internet Exploder!  FireFox is faster!!

Do you use Chrome? - finding it nice & fast
I also have tried Chrome - some pages are fast - FireFox 3.x seems to load most pages even faster - but it may be my perception.  I also test using Safari as well.

FireBug - [Firebox debugger|http://getfirebug.com/] - it is fantastic!!! - gives you all sorts of info about how to make your web pages better, faster, etc - 

Lyle Mentioned Google''s slowdown causing service for web log analysis, it is called [Google Analytics|http://www.google.com/analytics/] and at the website [Google Website|http://www.google.com/intl/en/websiteoptimizer/analytics]

This was all compiled by [David I|http://geekspeak.org/shows/2008/05/31], thank you so much David!

You''re welcome!!! I am happy to help the show (when I can be online)


', 1, '2009-08-01 09:48:59.471294', '2009-08-01 11:46:07.369215', 'live', '2009-08-01 10:00:00', NULL, NULL, 9);
INSERT INTO shows VALUES (208, 'Rogue Amoeba Geek', NULL, NULL, 'Paul Kafasis from [Rogue Amoeba|http://rogueamoeba.com/] is joining the Geeks to chat about all the awesome that RA makes. Best know for Audio Hijack Pro, Rogue Amoeba makes some yummy audio apps for Apple Macintosh

Check out [the freebie apps|http://www.rogueamoeba.com/freebies/] !', '! Podcast Mention

The [Stuff You Should Know Podcast|http://blogs.howstuffworks.com/category/stuff-you-should-know/] features writers Charles W. Bryant and Josh Clark from the [How Stuff Works|http://howstuffworks.com] website. They cover tones of cool things on their podcast. And their blog is full of good writing. Here are some recent titles of the episodes:

* How Product Placement Works
* Can you remember being born?
* How Witness Protection Works
* Do zombies really exist?
 
And much more.

! Rouge Amoeba

* [Audio Hijack Pro|http://rogueamoeba.com/audiohijackpro/]
** [Sound Flower|http://www.cycling74.com/downloads/soundflower] is kinda a free alternative.
* [Nice Cast|http://rogueamoeba.com/nicecast/] -audio radio broadcast
* [AirFoil|http://rogueamoeba.com/airfoil/] - send audio to hardware in your house... like the Airport Express.
* [Fission|http://rogueamoeba.com/fission/] - Edit mp3s without loosing audio quality.', 1, '2009-11-02 15:52:04.856373', '2009-11-25 14:09:22.69365', 'live', '2009-11-07 10:00:00', 309, NULL, 14);
INSERT INTO shows VALUES (241, '6 Squared equals 36 Geeks', NULL, NULL, 'Six geeks in the house - a full contingent. ', '! Giveaway USB Camera

[img_5939.jpeg| FV RouchCam N1, is an HD 720p USB Video Camera. And we gave one away to Mike, from Santa Cruz for knowing that the music from the sun was produced from images of the Sun''s coronal loops. ]

! Backstage Geek Video!
Ben Made this [quick backstage of GeekSpeak video|http://vimeo.com/12878198] showing off the above camera''s performance - and you can meet all the geeks!
', 1, '2010-06-26 09:44:03.439343', '2010-06-26 11:57:27.275444', 'live', '2010-06-26 10:00:00', NULL, NULL, 8);
INSERT INTO shows VALUES (259, 'Holloween and Death by Invention', NULL, NULL, 'Al, Lindsey, Alex, and Lyle (back after two weeks) do the GeekNews of the week.', NULL, 1, '2010-10-30 09:51:06.783732', '2010-10-30 11:41:34.756157', 'live', '2010-10-30 10:00:00', NULL, NULL, 4);
INSERT INTO shows VALUES (260, 'Robotic Car, DNS Security and Sewing Machines', NULL, NULL, 'With just Miles and Lyle, one more GeekSpeak in the can, as they say.', NULL, 1, '2010-11-04 09:37:13.570935', '2010-11-27 11:26:05.612412', 'live', '2010-11-27 10:00:00', NULL, NULL, 5);
INSERT INTO shows VALUES (238, 'Some say "Skepticism" is the Topic', NULL, NULL, 'D.J. Grothe, president of the James Randi Educational Foundation, joins the geeks this week to talk about the JREF and TAM 8, a yearly meeting about science and skepticism. The Geeks also cover Geek News.', '! Our Guest 

D.J. has lectured widely on topics at the intersection of education, science and belief at universities such as Stanford, Harvard, Yale, UCLA, UC Berkeley, and dozens of others. Formerly a professional magician, he has special interests in the psychology of belief and processes of deception and self-deception. He hosts the radio show and podcast For Good Reason , prior to which he hosted over 200 episodes of the popular interview program Point of Inquiry, which he and his partner Thomas Donnelly created in 2005. 

The Amaz!ng Meeting is a celebration of critical thinking and skepticism sponsored by the James Randi Educational Foundation. Thinking people travel the world to share learning, laughs and life with fellow skeptics and distinguished guest speakers.

Finally, in honor of the spirit of wonder and discovery of all scientists, we give you [Richard Feynman on the beauty of a flower|http://www.youtube.com/watch?v=ZbFM3rn4ldo] in contrast to the biological, physical, and chemical observations.

! Optical Illusion 

[380px_leaningtower1.jpg|Leaning Tower]
This is an example of the [Leading Tower Illusion| http://www.scholarpedia.org/article/Leaning_tower_illusion] in which your brain thinks the tower are at different amount of leaning .... it''s the exact same photo.', 13, '2010-06-05 09:39:03.273756', '2010-06-17 22:05:38.063472', 'live', '2010-06-05 10:00:00', NULL, NULL, 14);
INSERT INTO shows VALUES (246, 'Gaming Renewable Energy Without Bias', NULL, NULL, 'Lyle, Alex, and Miles cover the Week in Geek, talk about bias, and take your calls and questions.', NULL, 1, '2010-07-19 07:41:45.410469', '2010-07-24 11:50:51.570101', 'live', '2010-07-24 10:00:00', NULL, NULL, 6);
INSERT INTO shows VALUES (245, 'Robots and Moon Milage', NULL, NULL, 'Miles is back from [TAM|The Amazing Meeting], Al covers some robot and human enhancing machinery, Lunokhod travels on the Moon, bad science and medicine on the Huffington post, and Lyle runs the board.', '! Homeopathy

And we had a small debate about Homeopathy from a Huffington Post. 

Listener Ed Sent in an Email:

"I was reaching for the radio to turn it off during the homeopathy call.  It
is painful to listen to this nonsense.  But before I could turn it off you
guys spoke up and clearly said what you said.  Thanks for politely and
respectfully not humoring that stuff."', 1, '2010-07-17 09:53:26.713485', '2010-07-17 11:42:51.952949', 'live', '2010-07-17 10:00:00', 336, NULL, 5);
INSERT INTO shows VALUES (247, 'Security and News', NULL, NULL, 'Alex and Lindsay join us from Defcon, and the Geeks cover the news of the week.', 'From a listener:
Jared Dick 

Hey guys, 
One of the things I like most about your program is that before you begin
to comment or give advice on anything, you list the credentials of every
person in the room,most of which include substantial programing knowledge.
This way the average listener can feel confident that you know what you''re
talking about--it''s one thing to simply call oneself a geek, it''s another
to actually have the know-how. 
As a technology enthusiast, I read a large assortment of tech-blogs and
listen to podcasts on a daily basis (Engadget, Gizmodo, TechCrunch, Silicon
Alley Insider, CNET, etc.), one of the things that always irks me is that
the large majority of these publications do not post the qualifications of
the writers/podcasters. Furthermore, when I am able to uncover their alma
mater, their major in college, or even their resume, it always seems to be
a B.A in communications or english from a small liberal arts college
(generally located in CA or New England), and then their work has only been
in reporting or blogging.  What I find myself wondering is how these people
are able to comment so thoroughly on issues with software or hardware,
without ever having actually built or studied that kind of product
themselves. I understand that these people deal with those types of
products everyday, and so become decently familiar with them. The analogy I
submit to you is that the large majority of the technology media, in my
opinion, have a mechanic''s understanding of a car--they understand what
each part of the car does, what features makes that part better, and why it
needs to be in the engine, but they couldn''t explain HOW the part works.
They simply don''t have the fundamental understanding of the core concepts
that the automotive engineer who designed the car utilized when choosing
those parts. What this means is that it would be hard for them to comment
on the precise nature of a problem. Still, this is exactly what many
bloggers attempt to do when it comes to tech. 
The gross example of this is "antenna-gate." Where almost everywhere you
read about how Apple could do this or that and it would DEFINITELY resolve
the problem without them bumper solution. I saw everything from coat the
phone in a resin to moving the antenna around. The problem here is that:
that''s not engineering! Elegant and simple solutions certainly exist, but
they are almost never a one step-fix, and certainly not in a complex gadget
like the iphone. Moving things around and adding additional elements to the
phone will without doubt have additional effects. To go back to the
analogy, I can''t just slap the drivetrain from a ferrari on my ''99 Subaru
and expect to go 150 mph, it just doesn''t work like that (these are things
we learn when we take college courses or work in the actual industry, you
gain an "engineering sense", an innate inclination about whether something
will work or not). 
So my question to the geeks is: How important is it for the technology
media to have the knowledge of these fundamental concepts so crucial to the
design phase? Wouldn''t it help to have a reviewer looking at app source
code and saying things like, this is very clunky, but it does have some
innovative ways of doing this or that smoother than before, here''s why?  Am
I just blowing smoke? 
Anyway, thanks again guys, even though I''m all the way out here in PA by
way of Boston, I love listening to GeekSpeak every Monday on Google Listen.


Love the show, Jared 
PS> I just reread that and it sounds alot harsher (and long winded) than I
meant it to sound. As the exception to the rule though, I am really
interested in what you guys think about this. ', 1, '2010-07-24 11:50:11.790287', '2010-08-02 14:21:32.464541', 'live', '2010-07-31 10:00:00', NULL, NULL, 3);
INSERT INTO shows VALUES (244, 'Death is Screwed Up', NULL, NULL, 'Coffins that screw into the earth, SSL certs that can''t be trusted, corrections and other fun Geeky stuff.', NULL, 1, '2010-07-12 12:12:16.57036', '2010-08-14 11:04:06.338416', 'live', '2010-08-14 10:00:00', NULL, NULL, 2);
INSERT INTO shows VALUES (209, 'Water Confirmed on Moon!', NULL, NULL, 'Al''s USB of the week is useless- UseleSsB. We chat about water on the moon, a rock DVD that lasts 1000 years, Google poetry (antisi-poems), genetically engineered non-rotting apple, a Facebook post that exonerates prisoner and more tech news.

In the second half we answer some awesome questions from listeners.', '! Our Public EtherPad

Listeners David I and Scott listend live and added tones of info for the show. Here is a copy of the EhterPad that they created during the show:

November 14, 2009

!!Water on the moon!!!  :) LCROSS

* - http://www.nasa.gov/mission_pages/LCROSS/main/prelim_water_results.html
* - http://edition.cnn.com/2009/TECH/space/11/13/water.moon.nasa/index.html
* - http://lcross.arc.nasa.gov/


!! [Santa Cruz Electronics | http://www.santacruzelectronics.com/]


!! Cranberry Diamond Disc - 1000 year DVD storage

* - http://www.cranberry.com/
* - http://www.cranberry.com/about_cranberry_disc.php

!! FINALLY!  Archival-quality discs!
A studio in AZ has water?  HAHAHAHA!

I was just in Phoenix on Thursday - and I bought a jug of purified water.  People I met with all told me about the major water filter devices they had in their houses.  They said all the good water was being shipped to Los Angeles for profit.
Yeah...prolly moon water.
It''s prolly Martian water ejected by some ancient impact that landed in AZ and killed the dinosaurs.
Yep...LA sucks it all.

They are still speculating where the water on the moon came from.  Could have been created by moon activity, comets, from the Earth or who knows where. So you may be right!
If the moon was formed by an impact with ancient Earth then it''s logical it would have taken water with it.  Much if not most of Earth''s water is below the crust.


!! Color Correction Filters for Night Photography - APUG

* - http://www.apug.org/forums/forum48/67919-color-correction-filters-night-photography.html

My red Toyota Prius looks blue/grey at the San Jose Airport long term parking lot.  Thanks to my car remote control and personalized license plate - I could find it in the lot.
Can''t see orange stars from SJA?  Escaped prisoners look like maintenance workers.

!! Chinese Scientists Engineer the World''s Smartest Rat | Popular Science

- http://www.popsci.com/science/article/2009-10/scientists-create-worlds-smartest-rat
Notably, the rats stopped saying "Narf!"

!! Chinese Scientists Develop Database on the Liver

- http://health.usnews.com/articles/health/healthday/2009/11/13/chinese-scientists-develop-database-on-the-liver.html

Whew!  I thought it would be Microsoft SQL Liver 8 or something.


!! Scientists Develop Rot-Proof Apple that Stays Fresh for 4 Months ...

* - http://www.treehugger.com/files/2009/11/scientists-develop-rot-proof-apple-stays-fresh-four-months.php
* - http://www.independent.co.uk/life-style/food-and-drink/news/scientists-develop-apple-that-uwontu-rot-1817713.html

Yeah, but is it rat-proof, too?  Smart rats are increasing in number and size!


!! Tinysong | Type in a song and make a free music link to share

* - http://www.tinysong.com/
* - http://apidocs.tinysong.com/ - RESTful API

How does one spell "Grue Shark"?  Oh...Grooveshark.  I wonder how many folks ask "why ''groove''?"
Dude...in stereo!  I know...I''m old.

!! Pirate Radio - the movie

* - http://www.imdb.com/title/tt1131729/
* - http://www.filminfocus.com/focusfeatures/film/pirate_radio/


!! Google Logo mentions water on the moon

[wateronmoon09_hp.jpg| They change their logo a lot.]

* - http://www.mysterygoogle.com/



Ew!  Tinkerbell?

!! Google Poems

* - http://www.gpeters.com/google-poem-gallery/

Chinese scientists ''filmed UFO for 40 minutes''

- http://www.telegraph.co.uk/news/newstopics/howaboutthat/ufo/6148974/Chinese-scientists-filmed-UFO-for-40-minutes.html

!! Facebook member - "His Facebook Status Now? ‘Charges Dropped’

* - http://fort-greene.blogs.nytimes.com/2009/11/11/his-facebook-status-now-charges-dropped/
* - http://www.nbcnewyork.com/news/local-beat/Facebook-Status-Update-Saves-Teen-From-Jail-69841497.html

“This is the first case that I’m aware of in which a Facebook update has been used as alibi evidence,” said John Browning, a lawyer and member of the Dallas Bar Association who studies social networking and the law. “We are going to see more of that because of how prevalent social networking has become.” 

Hmm...how close is the nearest high-speed service?  There are point-to-point WiFi solutions that, with good directional antennas and enough boost could get a good distance.

!! Mobile high-speed?

Even 2.5G is faster than dialup.  I''m on a hilly island and get good cell coverage in most places.  Hughesnet/satellite is somewhat cheaper nowadays, whether uplink is via dialup or sat as well.

!! Satellite Internet providers:

* - http://www.hughesnet.com/
* - http://www.skywayusa.com/
* - http://www.wildblue.com/

!! Lyle has good speeds at work

* Internet2 - http://www.internet2.edu/

Oh...good test method, but have WiFi off: http://www.MobileSpeedTest.com

Solid-state drives and multiple NICs with true high-speed switches.
Large-caching...solid-state would be good for high-speed writes, too, so stowing data is good.

RAID-10 so you get dual concurrent reads off the two stripes.
- http://en.wikipedia.org/wiki/Solid-state_drive

Windows 7 and Optimization for Solid State Drives - Tom''s Hardware
- http://www.tomshardware.com/news/windows-solid-state-drives-ssd,7717.html

RAID - http://en.wikipedia.org/wiki/RAID

AT&T Wireless'' network is well-known to have speed issues due to backbone capacity...of all things, backbone capacity for AT&T...sad.  I have two AT&TW folks in my vanpool...I am soooo glad I work for T-Mo...AT&TW is not a fun place to work right now.

!! Verizon Droid phone

* - http://www.android.com/
* - http://www.techcrunch.com/2009/10/18/verizon-droid-is-the-real-deal/
* - http://www.droiddoes.com/
* - http://www.boygeniusreport.com/2009/10/19/motorola-droid-hands-on/
* - http://www.wired.com/gadgetlab/2009/11/verizon-droid-mod/comment-page-1

I rooted my G1 and now have tethering via BT, USB, and WiFi.  Love my Cyanogenmod.  Still I got tethering via BT and USB from my WinMo phone in 2007...w/o hack.

Yes yes yes!!!  Always do a dry run, especially on-site.  That''s why I book new rooms 30-60 minutes before the start.

Flip4Mac WMV - http://dynamic.telestream.net/downloads/download-flip4macwmv.htm

GoogleDocs rocks.  I think the local app may cache docs for offline work.  Checking...
- http://docs.google.com/

Where do we get one and for how much?  I know many many folks on whom I''d like to inflict this to whom I''d like to give one.

! USB Blender Alarm Clock

* - http://usb.brando.com/prod_detail.php?prod_id=00364
* - http://www.youtube.com/watch?v=iG3ouBZtNUs


Thanks you guys. See you next week.  even if the Geeks are reading this in real time, they will get this conversation after the fact.  
Maybe - I''ll be down in Argentina - in the country side
- http://www.hughesnet.com/ ?  For the money-no-object crowd.
I hear they may have the Internets down thar, too?
Ciao!
', 1, '2009-11-14 09:58:53.909935', '2009-11-25 14:07:41.567795', 'live', '2009-11-14 10:00:00', 313, NULL, 17);
INSERT INTO shows VALUES (242, 'One Man Geek', NULL, NULL, 'All the geeks were out of town this weekend. So, what does a GeekSpeak host do with no geeks? Find out with this episode of GeekSpeak. - Lyle alone.', NULL, 1, '2010-07-03 16:20:21.167429', '2010-07-03 17:16:54.797124', 'live', '2010-07-03 10:00:00', NULL, NULL, 2);
INSERT INTO shows VALUES (243, 'T-Shirts Powered by Moon Cheese', NULL, NULL, 'Al and Lyle do an episode with crazy movies, living in the woods, 3D phones, calls from california and much more.', NULL, 1, '2010-07-10 10:10:43.080009', '2010-07-10 11:26:46.10015', 'live', '2010-07-10 10:00:00', 335, NULL, 4);
INSERT INTO shows VALUES (249, 'Moon-Shrinking Antimatter Toothbrush', NULL, NULL, 'Ben says the moon is shrinking, Lyle says antimatter is 1% less likely then matter in our universe, and Lindsey tells us about solar powered toothbrushes. Miles hosts this beast!', NULL, 1, '2010-08-21 01:07:43.927809', '2010-08-24 15:04:41.865318', 'live', '2010-08-21 10:00:00', 337, NULL, 6);
INSERT INTO shows VALUES (250, 'Face GPS and So''s Your Face', NULL, NULL, 'UPS Pet Rock, Expect GPS Tracking by Police, Trademark "Face", Smart Vending Machines, Dry Water (year right!), Dead Records, and Free Ice Cream next week!', '! Ice Cream - T-Shirts and 10 Years of GeekSpeak

Next week after the show come down to [The Penny Ice Creamery|http://thepennyicecreamery.com/] ([Penny Ice Creamery on Yelp|http://www.yelp.com/biz/the-penny-ice-creamery-santa-cruz]) at 913 Cedar St, Santa Cruz. You can meet the Geeks, get a t-shirt and be lucky and get a free ice-cream and t-shirt.', 1, '2010-08-28 07:49:09.98983', '2010-09-02 09:58:52.654905', 'live', '2010-08-28 10:00:00', 338, NULL, 11);
INSERT INTO shows VALUES (251, 'Geek Birthdays All Around', NULL, NULL, 'It''s a full house with Alex, Lindsey, Ben, Al, Miles, and Lyle.  It''s also a birthday for Al, Alex, and GeekSpeak!

We visited the [The Penny Ice Creamery - Santa Cruz, CA|http://www.yelp.com/biz/the-penny-ice-creamery-santa-cruz] after the show and they gave away some ice cream and we gave away a bunch of cool GeekSpeak T-shirts, thanks to [ImageQuest|http://itunes.apple.com/us/app/imagequest/id354602525?mt=8] for the shirts!', NULL, 7, '2010-09-04 10:18:17.43202', '2010-09-04 16:07:47.625839', 'live', '2010-09-04 10:00:00', 339, NULL, 8);
INSERT INTO shows VALUES (252, 'Half Side of the Moon', NULL, NULL, 'Miles, Ben and Lyle chat about the week in geek news.', NULL, 1, '2010-09-13 17:57:47.629218', '2010-09-18 11:12:46.84144', 'live', '2010-09-11 10:00:00', 341, NULL, 3);
INSERT INTO shows VALUES (253, 'Diamonds, Pi, and Legos', NULL, NULL, 'LEGO! We chat about Google being sued for monopolistic practices with the Android OS, HUGE stellar diamonds, and how to calculate quadrillions of digits of pi. We also take a call and discuss other tech news of the week', NULL, 1, '2010-09-18 09:45:32.366555', '2010-09-18 11:42:22.918937', 'live', '2010-09-18 10:00:00', 340, NULL, 10);
INSERT INTO shows VALUES (254, 'Air Purification and a Whole Lot of Flapping', NULL, NULL, 'The Geeks Lyle, Al, Ben, and Miles cover the news and take your calls.', NULL, 7, '2010-09-25 09:49:28.790126', '2010-09-25 10:54:17.573938', 'live', '2010-09-25 10:00:00', NULL, NULL, 2);
INSERT INTO shows VALUES (255, 'Apple TV, Cheap Space, and KUSP', NULL, NULL, 'KUSP station manager, Terry Green, joins Al and Lyle for a pledge drive show. Al and Lyle keep the Geek News fresh and flowing.', NULL, 1, '2010-10-02 10:10:16.470627', '2010-10-02 11:31:15.652305', 'live', '2010-10-02 10:00:00', NULL, NULL, 2);
INSERT INTO shows VALUES (257, 'Privacy and Bee-Mysteries', NULL, NULL, 'Police GPS in my bumper, two billion is too big for criminal tagging, fine a Facebook spammer, droid droid, and much Geek News.', '! Geek Bit

Photos of the [microscopic world|http://www.dailymail.co.uk/sciencetech/article-1318795/Feeling-chipper-wood-ant-caught-bringing-science-life.html] from an electron scanning microscope.', 1, '2010-10-09 10:03:06.469067', '2010-10-09 11:38:40.196336', 'live', '2010-10-09 10:00:00', NULL, NULL, 6);
INSERT INTO shows VALUES (256, 'Voting by Tractor Beams', NULL, NULL, 'Voting machines, tractor beams, Google power... oh my!  Miles, Al, and Lindsey go over geek news and take your calls.', '! Additional Links and Information for Caller Questions

Here''s a link regarding [Facebook''s advertising terminology|http://www.facebook-log.com/facebook-ads.htm]

Here''s an summary from article on [Printing from an old Mac|http://harvey.nu/lpr_on_mac_osx.html]:

Go to the OS9 Machine and find the "Desktop Printer Utility" which might be in Applications (Mac OS 9) > Utilities and open it. You should get a window entitled "New Desktop Printer" and a popup menu "With" which should be set to "LaserWriter 8" under which you should see the "Create Desktop..." options, of which you should choose "Printer (LPR)" then hit OK

You should get a window entitled "New Desktop Printer" and a popup menu "With" which should be set to "LaserWriter 8" under which you should see the "Create Desktop..." options, of which you should choose "Printer (LPR)" then hit OK', 1, '2010-10-04 16:21:05.327374', '2010-10-16 11:56:09.117731', 'live', '2010-10-16 10:00:00', NULL, NULL, 38);
INSERT INTO shows VALUES (258, 'Plastics: Recycle But Don''t Inhale', NULL, NULL, 'Al Luckow and Miles Elam cover the Week in Geek.', NULL, 7, '2010-10-23 09:52:27.994197', '2010-10-23 11:38:00.859753', 'live', '2010-10-23 10:00:00', NULL, NULL, 3);
INSERT INTO shows VALUES (261, 'Happy Birthday Asimo!', NULL, NULL, 'The right to forget, voting update, LimeWire gone, and much more week in geek news with Miles, Ben, Al and Lyle.', 'From Listener Randolph
"Hi Geeks, I love your show!!! Thank you for making it available on podcast.


However, you are mistaken about DSL download times of HD shows from
iTunes. As I am sure you know, download speed is inversely proportional to
distance from the CO. DSL guarentees about 400 KBit service or they will
not provide it. I am grandfathered in, very early adopter of DSL, or I
would not be able to get DSL. I rented my house for awhile & when I moved
back in I was informed DSL service for my house was not available, too far
from the CO. I informed them I had DSL before and was aware of the distance
limitations so they let me have the service. About 3 years ago, I was
calling to disconnect my DSL & go with cable. They informed they had
re-done some wiring and would like to try my lines again. The service lady
said the lines were just short of the 900 Kbit capacity &  could not
support their 900 KBit standards. I thanked her for her time & told her if
they could make 900 KBit I would stay with DSL. She checked whatever box
she needed to override & told me to try it. If the service was too spotty
or not to my satifaction, call back & they would disconnect me. I
consistently get 900 to 1.0/1.1 MBit download speeds.

Five to five and a half hours is typical for an HD show @ approximately
300 MBit download speed. If the caller is at the bleeding edge of DSL
service, 5 hours is very typical and that is what it used to take me to
get Heroes when I would miss the episode due to weather, Dish Network.
Otherwise, there is most certainly nothing wrong with the caller''s
connection, computer or the internet, it is just the limitations of DSL."', 1, '2010-11-06 09:57:54.277521', '2010-11-08 19:40:01.774349', 'live', '2010-11-06 10:00:00', NULL, NULL, 6);
INSERT INTO shows VALUES (262, 'Hybrid Hard Drives', NULL, NULL, 'John Moon, Design Engineer at Seagate, joins the Geeks to talk about Hybrid Hard Drives and specifically the  Momentus® XT Solid State Hybrid Hard Drive. And in the first half the geeks cover the week in geek news: Kinect Game System, Light-Sensitive Concrete, Size of Eris, Multi Touch: Stretchable electronic skin, newly (by the west) discovered cloning lizard, and a bit more.', '! Our Guest

John Moon, has 29 years of experience in design engineering and design management of hard disc drives. He has been with Seagate for the last 20 years. His design responsibilities have spanned all aspects of electrical design from servo & read/write to [ASIC|http://en.wikipedia.org/wiki/Application-specific_integrated_circuit]s & interface. He has been involved in Seagate''s hybrid design efforts from the beginning, most recently serving as the lead design engineer for the launch of the Momentus XT.

John''s hobbies include making robotic skeletons and  [GeoCaching|http://en.wikipedia.org/wiki/Geocaching], though his wife likes to call "Nerd in the Woods."

! Geek Bits
* Marie Curie was born Nov 7, 1867 and remains the only person to ever win the Nobel Prize in two different disciplines.
* A [400MPH Jet|http://www.wimp.com/mphplane/], only small and remote controlled
* The stupendous [Galaxy Zoo|http://www.galaxyzoo.org/] has a [mobile app|http://blogs.zooniverse.org/galaxyzoo/2010/06/21/announcing-the-galaxy-zoo-iphone-app/], so get out there and do some science!
', 18, '2010-11-13 09:38:25.450198', '2010-11-13 12:29:52.320651', 'live', '2010-11-13 10:00:00', 342, NULL, 15);
INSERT INTO shows VALUES (264, 'Security Theater', NULL, NULL, 'Ben, Alex, Lindsey, and Miles cover the Week in Geek and airline security.', NULL, 7, '2010-11-20 09:39:00.731426', '2010-11-20 12:26:18.186655', 'live', '2010-11-20 10:00:00', NULL, NULL, 5);
INSERT INTO shows VALUES (263, 'Santa Cruz Holiday Parade', NULL, NULL, 'Broadcasting live from a float in the Santa Cruz holiday parade, we will cover geek news of the week and chat about the lovely town of Santa Cruz.', 'This show was a lot of fun - a technical challenge - but the audio is just not good enough to re-broadcast... well ok, here it is, but the quality is really bad.', 1, '2010-11-17 11:34:13.652344', '2010-12-11 12:02:25.420652', 'live', '2010-12-04 10:00:00', NULL, NULL, 6);
INSERT INTO shows VALUES (265, 'A Railgun for Ada', NULL, NULL, 'Miles and Lyle celebrate Ada Lovelace''s birthday, discuss the Week in Geek, and take your calls.', NULL, 1, '2010-12-11 09:47:13.537293', '2010-12-11 12:04:31.506235', 'live', '2010-12-11 10:00:00', NULL, NULL, 3);
INSERT INTO shows VALUES (266, 'Translating Nuclear Viruses and DVD Regions', NULL, NULL, 'Real Time Translating, Fixing A Fridge, Lyle in a Show, viruses target to Iran centrifuge and much, much more.', '! Links for caller questions
[Wikipedia article on DVD Region Codes|http://en.wikipedia.org/wiki/DVD_region_code]

[meteornearorion.jpg|Meteor Near Orion Constellation]', 1, '2010-12-18 09:38:36.885983', '2010-12-18 11:31:30.218685', 'live', '2010-12-18 10:00:00', 344, NULL, 10);
INSERT INTO shows VALUES (267, 'Molten Solar Salt Powered Christmas ', NULL, NULL, 'The Geeks wish everyone a happy holidays and cover the Week in Geek.', NULL, 7, '2010-12-22 21:55:52.485788', '2010-12-28 21:45:22.209649', 'live', '2010-12-25 10:00:00', NULL, NULL, 2);
INSERT INTO shows VALUES (268, '1-1-11', NULL, NULL, 'Happy New Year from the geeks including the unoriginally ambitious Ben.', '! News Years Resolutions

* Miles: "This year I am going to Teach a math concept to one person a week."
* Ben: "I''m going to teach more math."
* Lyle: "This year I am going to ask more stupid questions on air to initiate more explanation and better radio."
* Ben: "This year I am going to ask more questions."

', 13, '2011-01-01 10:58:48.135348', '2011-01-01 19:06:40.766521', 'live', '2011-01-01 10:00:00', 345, NULL, 7);
INSERT INTO shows VALUES (132, 'William Gibson''s ''Spook Country''', NULL, NULL, 'This episode of GeekSpeak is a re-airing of Tuesday June 10th''s episode of Talk of the Bay. [Rick Kleffel|http://www.trashotron.com/agony/] hosted this discussion with [William Gibson|http://en.wikipedia.org/wiki/William_Gibson], Sean Cleveland and Lyle Troxell about [Spook Country|http://en.wikipedia.org/wiki/Spook_Country], William''s most recent book. ', 'Originally aired on June 10th''s episode of Talk of the Bay.', 1, '2008-06-19 16:32:24.036541', '2011-01-03 13:01:39.785648', 'live', '2008-07-05 10:00:00', 212, NULL, 13);
INSERT INTO shows VALUES (269, 'Vaccinating Against 241543903 Live', NULL, NULL, 'Touch screens that touch back, head freezing meme, skype 3G, and much more geek news of the week.', '! More Suggestions

Recording Audio at home, making good audio, is tricky. Take a look at http://transom.org which is awesome.', 1, '2011-01-08 11:03:33.458639', '2011-01-08 11:58:23.034337', 'live', '2011-01-08 10:00:00', 346, NULL, 9);
INSERT INTO shows VALUES (270, 'What''s Your Sign? (Mine is USB)', NULL, NULL, 'iPad Guitar, Astrology put straight, movies made entirely on the iPhone, 2010 by the numbers, everything you wanted to know about video codecs, but never cared to ask.', NULL, 1, '2011-01-15 09:55:57.836399', '2011-01-15 11:52:35.426945', 'live', '2011-01-15 10:00:00', NULL, NULL, 6);
INSERT INTO shows VALUES (271, 'Going Tech Potty at Solar Speeds', NULL, NULL, 'Geeks Ben, Al, Alex, Lindsey, and Miles take your calls and cover the Week in Geek: Solar Car Speed record, the first [HDR|High Dynamic Range] video camera, the new iPoo Android tablet, and astrology word clouds.', NULL, 18, '2011-01-22 11:00:14.389016', '2011-01-22 11:37:42.355631', 'live', '2011-01-22 10:00:00', NULL, NULL, 5);
INSERT INTO shows VALUES (272, 'Pirates vs Lasers with Translation', NULL, NULL, 'Our take on Egypt, lasers fighting pirates, HDMI MacBook call, Google soft censorship, portable translation software and more.', NULL, 1, '2011-01-29 09:54:43.028942', '2011-01-29 11:20:57.784978', 'live', '2011-01-29 10:00:00', NULL, NULL, 2);
INSERT INTO shows VALUES (16, 'The Infrant ReadyNAS NV Network Attached Storage Device', NULL, NULL, 'Interested in NAS (Network Attached Storage) devices? If you''ve ever dreamed of a single device large enough to store all of your digital files that was accessible not only from your local computers, but from any computer connected to the Internet around the World, then a NAS may be just the ticket for you. Did we mention that your data would be safe, even from drive failure? Join [Sam Feng | http://geekspeak.org/shows/2005/04/01/], Product Manager at [Infrant Technologies| http://www.infrant.com/], as the geeks learn about the latest in home and small/medium/large business network storage servers. They''re more reasonable than you think!

Plus, as a special bonus, the Geek Speak theme sung the Geeks in all its a capella glory. ', '!!Side Note
The Geeks use [GRISOFT AVG|http://free.grisoft.com/] for virus protection.

! Article about the ReadyNAS NV from [InFrant Technologies|http://www.infrant.com/]
We''ve had many discussions on GeekSpeak regarding the volatility of hard drives and the importance of data backup. These discussions begin, invariably, with a listener calling into the show. They inquire about data recovery software for their failing hard drive, mimic the grinding noise their drive is making (at judicious prompting from Lyle), or simply lament the passing of their drive completely. We''ve said many times on the air; it''s not a matter of whether your hard drive will fail, it''s when. If you''ve never lost data to hard drive failure, count yourself lucky, because those of us who have truly understand just how quickly it can be lost. Once you''ve actually lost data, you understand just how precious it was. But of course, by then, it''s too late.

In this article, we''ll be discussing [NAS|Network Attached Storage] devices. Specifically, we will be discussing the ReadyNAS NV NAS from [InFrant Technologies|http://www.infrant.com/]. NAS devices use multiple hard drives to store data. If a drive were to fail, the data would be safe and a simple replacement of the drive would restore data protection. If you''re not quite sure what a hard drive is, how a hard drive works, or what types of hard drive connections technologies exist (like Serial ATA), please refer to our [article on hard drive technologies |http://geekspeak.org/articles/12/].

! What is a NAS?
[NAS|Network Attached Storage] is an abbreviation for Network Attached Storage. A NAS is typically a box that contains multiple drives that appear as one large volume of space. If a NAS supports four drives, like the ReadyNAS NV, and you place four 500[GB|A gigabyte is 1,000 megabytes] drives in it, you effectively see one very large 2000GB drive, or 2[TB|a terabytes is 1000 gigabytes] of data. TWO TERABYTES! 

NAS devices use a technology called [RAID|Redundant Array of Independent Drives] that allows the hard drives used by the NAS to be configured in such a way that if one drive fails, the data on the volume is not lost. There are different flavors of RAID that offer different features. These are explained in a bit more detail in the RAID section.

Why is a NAS device important? Because it protects data that is most important to you, such as archived tax returns, financial statements, your music collection, digital pictures, contacts, old emails, and anything else important to you--as long as you keep that data on your NAS device. Keeping your data on the hard drive in your computer or on external hard drives that attach with [USB|Universal Serial Bus] and [Firewire|Also known as 1394] connectors is a form of digital Russian Roulette with odds that get progressively worse over time.

! The Infrant ReadyNAS NV
We had the opportunity to test Infrant''s ReadyNAS 600 unit, the predecessor of the NV, and found it to be small, durable and very well made. However, the ReadyNAS 600 pales in comparison to the ReadyNAS NV''s sturdy, double-steel construction. The NV is beefy, sturdy and very well made. If you like Macs, you''ll love the ReadyNAS NV.
[readynas_front.jpg|The ReadyNAS NV is 7.9 inches (200 mm) tall, 5.2 inches (132 mm) wide, and 8.7 inches (222 mm) deep.]

The NV''s mirrored front panel is simple and somewhat elegant. The blue power button reminds us of the [Prius|The Toyota Prius is one of the world''s first commercially mass-produced and marketed hybrid automobiles.] start button and the grill is heavy-gauge metal that not only provides a nice, industrial feel, but allows airflow to flow from the fan in the back to the front and across the four hard drives. The NV is also completely lead (Pb) free and compliant with the European [RoHS | Restriction of Hazardous Substance] environmental standard.
[readynas_back.jpg|Infrant says the handle is strong enough to be grabbed and carried quickly should the need arise. If this is where your precious data resides, keeping it close on hand is not a bad idea.]

The back of the unit has two USB ports for connecting portable hard drives or USB printers, a gigabit Ethernet port, and a large 120mm fan that blows into the unit and out through the front grill. It even has a handle in the back that''s sturdy enough to support the weight of the 15 pound chassis (with hard drives)!
[readynas_drive_tray.jpg|The front door is sturdy and closes with a magnetic snap. You''ll find yourself opening and closing it over and over...]

The NV holds up to four hard drives that are housed in special drive trays that slide directly into the unit and connect with a snap. Once in place, the drives are safe and secure. The ReadyNAS NV can be configured with only a single drive and more can be added later to increase the size of the volume and to add data protection. This is good for those on a budget; you can buy an empty unit and buy drives at your convenience. Also, the fact that the ReadyNAS NV has hot-swappable drive trays means replacing drives is easy. When the unit is off, you can pull a drive to quickly get the make and model number and insert it back into the NV without affecting your data.
[readynas_uses.jpg|The ReadyNAS NV has many uses.]

The ReadyNAS NV can be used with a Windows Media Center PC to stream digital videos, music, and pictures. We were not able to fully test this function and will provide more information in this area when we revisit this article with benchmark data.

Since a NAS can pretty much reside anywhere where a network cable can be strung, they can be easily tucked away out of sight as long as it has proper airflow. Hiding it in a closed closet may not be a good idea.

! Gigabit Ethernet
In the past, a NAS with typical 10/100 [Ethernet|Ethernet is a frame-based computer networking technology for local area networks (LANs)] connectivity was more than sufficient for any network. 10/100 refers to the speed of the network connection, so 10/100 supports both 10[Mb|A megabit is 1,000 bits] and 100[Mb|A megabit is 1,000 bits] connections. Megabits are different than megabytes. A byte is made up of 8 bits, so a megabyte is 8,000 bits. To get the megabyte equivalent for 10/100, which is 10,000,000 bits and 100,000,000 bits, divide the numbers by 8 and you get 1.25 megabytes of bandwidth for a 10 megabit Ethernet connection and 12.5 megabytes of bandwidth for a 100 megabit connection. Those sizes refer to the amount of data that can be sent across the line of an Ethernet network connection per second.

Gigabit Ethernet is much faster. A gigabit Ethernet connection is 1000 megabits, so it has a data rate of 125 megabytes per second. 

Let''s put this in perspective. What if you want your cutting-edge media server or NAS device to stream HD content to your TV and various computers. What type of network would you need? Most video is compressed, which reduces the amount of bandwidth needed to stream the video over a Network without dropping frames, so a 10/100 Ethernet connection may cut it, but it''s doubtful. To stream uncompressed [HD|High Definition] content, your network would need to support data rates of 82 to 124 megabytes per second. If your video has a lot of scene changes and movement, such as ocean shots of water, it cannot be compressed very much, so a 10/100 Ethernet connection won''t cut it.

The ReadyNAS NV not only supports gigabit Ethernet connections, it also has support for jumbo frames, as long as your gigabit switch supports jumbo frames. This is how it works: on the receiving end (write performance), the frame size is auto detected (up to 8K) and adjusted accordingly. The Network card or [NIC|Network Interface Card] also needs to be set to use 8K packets (or something larger--during the negotiation process, the client/NAS will communicate at the lowest common denominator) in order to realize the best performance. On the send side (Read Performance), Infrant does not use jumbo frames yet in order to minimize compatibility issues. Infrant claims that things can get tricky if multiple clients are communicating on a network and only some support jumbo frames. This may be changed later.

! RAID
[RAID|Redundant Array of Independent Drives] is an acronym for Redundant Array of Independent Drives. It is sometimes referred to as Inexpensive drives, but we prefer Independent because larger Serial ATA drives are not inexpensive.

[readynas_raid_config.jpg|This RAID chart provides an idea of the amount of space that is available using the various RAID configurations. The green is the total amount of volume available to you while the blue slices denote how much space is dedicated to protection (also called redundancy)]

In a RAID 0 array, the ReadyNAS "stripes" data across the drives, breaking up large files into smaller blocks and then performing disk reads and writes across the drives in parallel. RAID 0 is ideal for applications that require high bandwidth but do not require fault tolerance, or protection. It provides the best performance and capacity of any RAID level, but the lowest availability (no fault tolerance). In a RAID 0 array, if one drive fails, the entire array fails because part of the data is missing with no way to recover it other than restoring from a backup, and since a NAS device is your backup, you could be in big trouble. RAID 0 is a great as a separate RAID array dedicated to work-in-progress applications like compressing very large videos. 

In a RAID 1 array, every read and write is carried out in parallel across two disk drives.
The mirrored--or backup--copy of the data resides on the second redundant drive in the array. RAID 1 provides complete data redundancy, but at the cost of space. Since both drives essentially hold the same data, the overall space is halved. Performance is roughly the same as for a single drive, although in some instances the dual write may be somewhat slower.

RAID 5 stripes both data and parity information across three or more drives. RAID 5 writes data and parity blocks across all the drives in the array. Protection, or fault tolerance, is maintained by ensuring that the parity information for any given block of data is placed on a different drive from those used to store the data itself. RAID 5 provides an ideal combination of good performance, good fault tolerance, and high capacity and storage efficiency.

Infrant''s patented X-RAID technology allows easy expandability of a RAID volume by simply plugging in new hard drives. Infrant''s automatic volume expansion technology sets up drive security and expands the overall capacity without damaging your data. Infrant X-RAID technology offers scalable capacity and protection as drives are added:
*1 Drive = NAS
*2 Drives (RAID1) = NAS + Protection
*3 Drives (RAID5) = NAS + Protection + Double Capacity
*4 Drives (RAID5) = NAS + Protection + Triple Capacity

! RAIDar
RAIDar is a pun on radar without losing its root meaning--it looks for the NV''s RAID volume. 
[readynas_raidar_launch.jpg]

Yes, that''s the RAIDar Radar.
[readynas_raidar_setup.jpg]

After RAIDar has located the NV unit, it can be used to access the configuration settings of the NV unit, to launch an Explorer window to the files (via the Browse button), or to locate a selected ReadyNAS unit should you have several. This is done using the Locate button that makes the buttons blink on the selected ReadyNAS unit.

[readynas_volume_setup.jpg]

The snapshot feature allows a certain amount of drive space to be set aside when the volume is created to be used for backing up volumes so they can be recovered should a virus crop up.

! FrontView
Infrant''s ReadyNAS NV is administered using a standard browser-based interface. The embedded RAIDiator OS provides a bunch of advanced features including automated backup capabilities, stream media using built-in media server capabilities, auto update utility and auto shut-down options. 
[readynas_welcome.jpg]

Actually, all of the ReadyNAS NV screens are much wider than the screenshots we show here. Located in the bottom-right corner is a graphical representing the health of various aspects of the unit. The [LED|Light Emitting Diodes]s change depending on the health of the unit. This screenshot was taken when the NV unit was in the middle rebuilding the volume after the right drive was pulled. The health of the Fan in the back of the unit, the temperature of the unit, and status of the [UPS| Universal Power Supply] if the NV is connected to one. 
[readynas_welcome_full.jpg]

The first time you enter FrontView, you must go through a Setup Wizard that walks you step-by-step through a numerous screens. Once done, your ReadyNAS NV is essentially ready to run. Of course, you may want to manually tweak settings.
[readynas_ethernet.jpg]

The ReadyNAS NV can automatically detect a network connection or it can be configured manually. In the best-case scenario, you have a [DHCP|Dynamic Host Configuration Protocol] server already, so you would have no need to enter a static IP, net mask, gateway, or DNS--it is all done automatically for you. In case you don''t have a DHCP server, the ReadyNAS NV can provide those services for you. This means that it will automatically dole out IP addresses to all of your computers, making it easy to add computers to your network.

! Security
The ReadyNAS NV supports three different security modes:
 [readynas_security_mode.jpg]

The first mode is called "Home and small office". In this mode, security is granted on a per-share basis. This means access to the NAS is limited based on who has the share password. If you want to prevent kids from accessing the NV, simply donÔøΩt tell them the password. As the name implies, this mode is sufficient for a home or a small office environment.

The second mode is the "Medium-sized office and workgroup". In this mode, a larger number of users may exist, with users perhaps grouped into functional groups, such as Sales or Accounting. This mode requires an explicit login using a user id and a user password to access the NAS. Once logged in, the user can access only the shares that the user or the group that he or she belongs to are given access to. This security mode requires a little more maintenance because user and group accounts must be maintained on the NAS using FrontView.

The last security mode is the "Department or corporate environment". This mode is very similar to the second mode, however, instead of maintaining the accounts on the NAS, accounts from the company''s central Windows domain controller or [PDC|Primary Domain Controller] or the [ADS|Active Directory Service] are accepted. In corporate environments, having a central server allows for reduced overall maintenance considering the number of servers on the network.
[readynas_accounts.jpg]

This is what the options look like when User access it selected. From here, you can click on the various protocols that you have enabled (here we chose Win and Web for Windows and Web HTTP access) and you can specify read/write access to the various shares.

! Shares
Shares are the actual directories/folders that you and your users will see over the network. 
[readynas_shares.jpg]

The Backup and Media shares are created automatically by the ReadyNAS NV after the volume is created. You can add files using your Windows Explorer. You can add additional shares using this interface.
[readynas_internet_share.jpg]

Since my home does not have a static IP address, there is no way for me to know what IP address my router at home is using, so I could not access my ReadyNAS NV remotely. However, the [SonicWall TZ150|http://www.sonicwall.com/products/tz150_wireless.html] that I''m testing has a capability called Dynamic DNS that connects to a website called [DynDNS|http://www.dyndns.com/] that provides web redirection for those with dynamic IP addresses. Once I had it all set up, I could connect to my ReadyNAS from anywhere in the world with an Internet connection. This is what it looks like. Sweet.
[readynas_protocols.jpg]

The ReadyNAS supports a large number of Internet and networking protocols. If you prefer FTP access so you can copy entire directories easily, you only need to enable FTP access to your ReadyNAS.
[readynas_usb_storage.jpg]

By default, the backup button located on the front of the ReadyNAS Nv will copy all contents from the ''Backup'' share onto any external USB storage device that is connected to the front USB port. With this functionality, you can copy data to and from local shares, network shares, attached USB devices, and remote Rsync servers. Data can also be copied from remote websites and remote FTP sites.

This is really simple stuff. All you need to do is connect your USB hard disk or flash drive to the front USB port and it will automatically be detected and will be listed in the Frontview Manager. Currently, ReadyNAS supports the following files systems: Fat32, [NTFS|NT File System] (Read Only), Ext2, and Ext3.
[readynas_streaming_protocol.jpg]

The ReadyNAS NV contains embedded server software used to stream videos, music, and pictures networked devices including DVD players such as Momitsu and IOData. It also supports UPnP AV Devices. Simply copy your media files to the Videos, Music, and Pictures folders in the Media share and the files are available on your player. A version of TwonkyVisions [DLNA|Digital Living Network Alliance] Certified Media Server is available for the ReadyNAS family of devices, which enables users to share music, pictures and videos with standard UPnP-enabled client devices throughout the home.

! Performance
Instead of throwing a barrage of tests at the ReadyNAS, we determined to dig into its features. We geeks are more concerned about availability of data via a remote Internet connection and ability to stream various types of media rather than raw data throughput. Copying data from one drive to another or across the network is something that''s done in the background, and multitasking in today''s PC and Mac environment makes this possible without bringing your computer to its knees. 

Infrant''s [IT3107|http://www.infrant.com/products_IT310x.htm] [NSP|Native Signal Processor] is a NAS-on-a-chip that Infrant claims provides approximately a 20 percent increase in performance over the previous version processor used in the ReadyNAS 600. The IT3107 is a 32-bit [RISC|Reduced Instruction Set Computer, a microprocessor CPU design philosophy] [CPU|Central Processing Unit] that includes a 4-channel [SATA|Serial ATA] controller, 64-bit [DDR|Double Data Rate]-[SRAM|Static Random Access Memory] controller, 3 [DES|Data Encryption Standard] encryption/decryption engine, DataJunction [DMA|Direct Memory Access] and Gigabit Ethernet [MAC|Machine Access Code]. It supports [RAID|Redundant Array of Independent Disks] (0/1/5/xRAID) and has a [PCI|Peripheral Connection Interface] host/[USB|Universal Serial Bus] interface

Performance on the ReadyNAS NV can be optimized via the user interface.
[readynas_performance.jpg]

According to the Reviewer''s Guide sent to us by Infrant, here are the performance tuning options for ÔøΩWriteÔøΩ performance:
*Enable Disk Write Cache ÔøΩ On each hard disk drive, there is usually an 8 megabyte cache designed to enhance write performance. If there is a sudden data power loss situation, all data that exists in the cache at that moment will be lost.  Since the ReadyNAS can have up to 4 hard drives, there is the chance of losing up to 32 MB of data if this option is enabled and there is a sudden power outage situation while the device is executing a write.
*Enable Fast CIFS Writes - It is more accurate to say ''Force Fast CIFS writes''. The CIFS connection is forced to always perform in ''writeback'' mode as opposed to ''writethrough'' mode.  If this option is not enabled, it is left up to the OS or Application to decide which mode the writes should operate in.
*Enable FAST USB Disk Writes - again, the only danger occurs if you are constantly plugging and unplugging USB drives into the USB ports. The safe way to unmount is to go into frontview->Shares->USB and select unmount. If you prefer not to unmount every time, it is recommended that you leave this option unchecked, at the cost of some USB write performance.
*Disable Full Data Journaling ÔøΩ As mentioned above, with this option, you run the risk of the RAID Write Hole, where a portion of the data is written, but the rest is not, and the parity bit is incorrectly calculated.
*Disable Journaling ÔøΩ This feature is merely for speeding up the disk and volume check procedure when the device recovers from a sudden power loss situation. It does not enhance data integrity in any way. Such a check can be quite lengthy depending on the amount of data you have stored on the device.
*Enable Jumbo Frames ÔøΩ For transferring files over 5 Megabytes in size, enabling Jumbo Frames can substantially improve performance because it essentially lowers the TCP/IP overhead by utilizing larger size packets. Again, this feature does not affect data integrity.
*Optimize for OS X ÔøΩ For Macintosh users using the latest operating system from Apple. Enabling this option will enhance transfer performance. However, please make sure you do not have any Windows NT 4.0 clients that need to access this NAS device. This feature does not affect the data integrity.

! Status, Log Files, and Backup
[readynas_backup.jpg]

The integrated Backup Manager is new to Infrant''s ReadyNAS line of devices. It offers a choice of either performing backups from the client or initiating backups from the ReadyNAS. The latter is the better choice to avoid multiple network hops. The centralized management screen above makes it easy to view and initiate backup schedules and logs.
[readynas_logs.jpg]

If you ever find yourself in a jam, the log files can help you determine what went wrong. I had an issue with what I thought was a drive failure and I worked with Infrant support to figure out the issue. All they asked for was a copy of my log and they got me back up and running. Other features include email alerts that can be configured to notify you about hard drive failures or other NAS issues that may arise. 

! Conclusion
Aside from a few minor issues when we first set it up--most likely due to user error--we had no trouble with the unit. We love the NV''s form factor and it''s small, sturdy design. It is certainly quieter than the ReadyNAS 600, but not so quiet that you would want it on the desk next to your monitor, especially in a quiet office. Of course, it''s so good looking, that''s exactly where you want it!

We especially like the Data Journaling feature. This feature comes in handy if the ReadyNAS NV is inadvertently powered down by a kicked cord or power outage. How long does it take it bring the NAS back online? Without journaling, it can take hours. With RAIDiator data journaling, the ReadyNAS typically takes just a few seconds longer than the normal power-up time! This mode can affect overall performance.

The most important aspect of a NAS, especially for home and small businesses, is ease of use. The ReadyNAS NV is fairly straightforward and the quick start guide out of the box provides all the information you need to get the NV running. However, we had to do some searching on the Infrant website to learn more about the FrontView browser-based user interface. A user manual in the box would have been nice. We will update this review in the near future with performance numbers and feedback regarding the media streaming capabilities. If you have any questions about the ReadyNAS NV, please feel free to drop us a line or ask us a question on the air.

Manufacturer: [InFrant Technologies| http://www.infrant.com/]
Availability: Now


! SPECIFICATIONS
*! General
*Infrant IT3107 Network Storage Processor
*4 Serial ATA Hot Swappable and Lockable Disk Trays
*Compatible with SATA 1.0 and SATA II disks
*10/100/1000 Ethernet
*3 USB 2.0 Ports
*256MB PC2700 DDR-SDRAM SO-DIMM, expandable to 512MB
*Embedded 64MB Flash Memory for OS
*Compatible with Windows, Mac, UNIX, & Linux
*DHCP Server and Print Server
*! RAID
*Hardware RAID 0, 1, 5 or X-RAID
*Hardware X-RAID Single Volume Auto Expansion (New disk must be equal or larger in size, original disks are replaceable with larger disks one by one for unlimited volume expansion
*Multiple Volume Support for RAID 0, 1, 5
*Disk Capacity Supported: 80/120/160/200/250/300/400/500GB
*! Volumes
*Volume Management
*Single Volume Auto Expansion (X-RAID)
*Journal and non-Journal Mode
*User, Group, and Share-level Quotas
*!Network File Services
*CIFS/SMB for Windows
*AFP 3.1 for Mac OS 9/X
*NFS v2 / v3 for Linux and UNIX
*HTTP/S for Web Browsers
*Anonymous and User-level FTP/S
*! Media Streaming
*UPnP AV
*SlimServer
*Network DVD Player Compatible
*! Network Security
*Secure Socket Layer (SSL)
*Windows ACL
*Share Access Control
*All Network Logins utilizing Encryption
*Selectable Share, User, and Domain/ADS modes
*! Backup
*Backup button for USB Drive or Preconfigured
*Integrated Backup Manager
*Backup to/from CIFS/NFS/FTP/HTTP/RSYNC
*Backup to/from USB disks
*Genie-soft Windows Backup Software Included
*!Network Options
*DHCP or Static IP
*WINS, NTP
*! System Management
*Performance Options
*Device Status
*Email Alerts
*Event Logs
*SNMP
*! USB Device Supported
*USB Disks and Flash
*Printers
*UPS Monitoring and Auto Shutdown
*Wireless Network Adapters
*! Web Browsers Supported
*Internet Explorer 6.0+
*Netscape Navigator 7.0+
*Opera 7.0+; Safari 1.22+
*Mozilla Firefox 1.03+
*! Languages
*Management UI: English, Japanese, Chinese, German
*File Name: Unicode
*! Electrical
*Server-rated AC Power Supply
*Temperature Sensitive Power Supply Fan
*Voltage: 100~240 VAC Auto-ranging
*Input Frequency: 50/60Hz
*! Power Consumption
*55 W typical (with 4 x 250GB disks)
*! Thermal
*92 mm Ball-bearing Chassis Cooling Fan
*Fan Failure Email Alert
*Disk High Temperature Email Alert and Auto Shutdown
*! Operating Environmental
*0C - 40C
*20 - 80% Humidity (non-condensing)
*! Safety and Environment
*FCC, UL, CE, RoHS Compliance
*! Physical
*Kensington Lock Security Hole
*Easy Carry Handle
*Height: 7.9 in (200 mm)
*Width: 5.2 in (132 mm)
*Depth: 8.7 in (222 mm)
*Weight: 10.2 pounds (4.6 Kg) without Hard Disks
*! Optional Spare Parts
*Lockable Disk Tray, Set of four (P/N: RNV1-DTR1-4)
*92 mm Chassis Fan (P/N: RNV1-FAN1)
*AC Power Supply (P/N: RNV1-PSU1)
', 5, '2006-03-25 00:50:14', '2011-02-05 10:54:22.691765', 'live', '2006-03-25 10:00:00', 12, NULL, 3);
INSERT INTO shows VALUES (274, 'Snip, Burn, Solder, Shred', NULL, NULL, 'Our guest, David Erik Nelson, joins us to talk about more maker-revolution stuff. His new book [Snip, Burn, Solder, Shred" by David Erik Nelson, Seriously Geeky Stuff to Make with Your Kids|http://oreilly.com/catalog/9781593272593/] is a wonderful romp about making stuff. Chat with a Hands-On-Geeks.', '! David Erik Nelson 

David Erik Nelson is a freelance writer and former high school teacher. His fiction has appeared in Asimov''s, The Best of Lady Churchill''s Rosebud Wristlet, and Steampunk II: Steampunk Reloaded. He is a contributor to the “Ask the Giant Squid” advice column at Poor Mojo''s Almanac(k), a weekly online literary journal.

[A Stick, Some Wire, A Can, and Some Wax: The $10 Electric Guitar|http://www.davideriknelson.com/sbsb/2011/02/free_online_event_a_stick_some.html] is a wonderful hour long audio tour of how to make the Electric Guitar - also in his book.', 1, '2011-02-11 14:59:49.157117', '2011-03-07 20:50:52.50406', 'live', '2011-02-12 10:00:00', 347, NULL, 8);
INSERT INTO shows VALUES (275, 'Radioactive Tree Sharks in Space', NULL, NULL, 'This is what happens when you don''t send the Sun a Valentine''s Day gift.', NULL, 1, '2011-02-19 09:46:03.451408', '2011-03-07 20:51:08.461803', 'live', '2011-02-19 10:00:00', NULL, NULL, 5);
INSERT INTO shows VALUES (276, 'Eye Strain for Search Transparency', NULL, NULL, 'Dr Dawn starts out this show to talk about DS3 Eye Strain. We also chat about Google Search and their secretive power, selling bogus terrorist data, and a bunch more GeekNews.', NULL, 1, '2011-02-26 09:45:19.561435', '2011-03-07 20:51:14.166849', 'live', '2011-02-26 10:00:00', NULL, NULL, 4);
INSERT INTO shows VALUES (277, 'Pledge drives don''t bug me..', NULL, NULL, 'The Geeks intertwine tech news with the pledge drive. Bugs: causing recalls of Mazdas, Having sex in amber, enhancing their bodies with robotics. Problems with Cisco''s routers not supporting IPV6.', '! GeekBit

[Google Art Project |http://www.googleartproject.com/] is a wonderful museum tour system by Google. ', 18, '2011-03-05 09:50:44.971369', '2011-03-07 20:51:21.797', 'live', '2011-03-05 10:00:00', NULL, NULL, 8);
INSERT INTO shows VALUES (278, '10-Gallon Cranium Unit', NULL, NULL, 'Lindsey brings up a story about a robot "soldier" that will soon be called to "duty," researchers show how to hack an off-the-shelf (?) car remotely, and a big thank you to the civil engineers around the world!', '! Special Guest

[Laurel Kline|http://www.linkedin.com/in/laurelkline] , Developer Relations Expert and Geek Girl Extraordinaire!

! Math is a Doodle!

For today''s Geek Bit, we present you with "[Doodling in Math Class: Infinity Elephants|http://www.youtube.com/watch?v=DK5Z709J2eo]" for your consideration.', 1, '2011-03-12 09:52:38.077467', '2011-03-12 11:58:36.904973', 'live', '2011-03-12 10:00:00', NULL, NULL, 7);
INSERT INTO shows VALUES (279, 'Earth and Environmental Science Baby! ', NULL, NULL, 'Dr. Christian Shorey joins us for a talk on the earth and it''s power. We also cover some geek news.', '! Our Guest

[Christian Shorey|http://inside.mines.edu/~cshorey/], Ph. D. from University of Iowa in Geoscience. He has a wonderful podcast about [Earth and Environmental Science Podcast|http://inside.mines.edu/~cshorey/pages/sygn.html] and is fantastic! (-Lyle) 

! Effects of Radiation on the Body

Dr. Dawn mentioned this [How to Detox Your Body of Depleted Uranium Residues, the Effects of Radiation, and Radioactive Contamination|http://proliberty.com/observer/20050826.htm]', 1, '2011-03-19 09:44:07.377292', '2011-03-19 11:44:02.982789', 'live', '2011-03-19 10:00:00', NULL, NULL, 4);
INSERT INTO shows VALUES (280, 'Past Future Rain and FireFox 4', NULL, NULL, 'Laurel, Lindsey, Lyle and Luckow offer their opinions about the week-in-geek-news.', '! ZIP Files

 Laurel suggests [7-ZIP|http://www.7-zip.org/] as a zip compress and uncompress utility.

! Multiple Firefox Profiles

 Run two Firefox profiles [simultaneously|http://lifehacker.com/#!231646/geek-to-live--manage-multiple-firefox-profiles]. Good for running a clean Firefox for testing, and your real Firefox profile.

! TabMixPlus
 
 Choose which Firefox profile to [restore|https://addons.mozilla.org/en-US/firefox/addon/tab-mix-plus/]. Great if your last session had too many tabs.', 1, '2011-03-26 09:48:15.961986', '2011-03-26 11:45:28.714483', 'live', '2011-03-26 10:00:00', NULL, NULL, 6);
INSERT INTO shows VALUES (281, 'Dog DNA Kinects non-Habitable Mercury', NULL, NULL, 'The geeks discuss genetic testing for your dog, April Fools pranks, and pictures from Mercury. Callers bring up the Microsoft Kinect, nuclear power and ways to get Netflix on your TV.  Habitable or Habitable; Lindsey and Lyle debate.', NULL, 1, '2011-03-29 09:20:06.329195', '2011-04-02 12:02:15.325663', 'live', '2011-04-02 10:00:00', NULL, NULL, 14);
INSERT INTO shows VALUES (282, 'Black Hole Submarine Not Worth Saving', NULL, NULL, 'One trillion sun star death, submarine [DARPA|Defense Advanced Research Projects Agency] game, Film history of UIs, the new Commodore 64, more news and calls from our listeners about their computer woes.', NULL, 1, '2011-04-09 09:46:00.964662', '2011-04-09 11:55:21.802639', 'live', '2011-04-09 10:00:00', NULL, NULL, 5);
INSERT INTO shows VALUES (283, 'NASA Shuttles Retire and Robots Regret XXX AT-AT', NULL, NULL, 'Miles and Lindsey cover the imminent AT-AT assault, robotic regrets, and more while discussing your calls and comments.', '! Geek Bits

* [Life cycle assessment|http://en.wikipedia.org/wiki/Life_cycle_assessment], a technique to assess environmental impacts associated with all the stages of a product''s life from-cradle-to-grave.  Find out more about [life cycle assessment of laptops|http://www.lcacenter.org/LCA9/presentations/120.pdf] (PDF), [their contribution to greenhouse gas emissions|http://archivos.labcontrol.cl/wcce8/offline/techsched/manuscripts/eipzav.pdf] (PDF), and [hybrid life cycle assessment of energy use in laptop computer manufacturing|http://www.computer.org/portal/web/csdl/doi/10.1109/ISSST.2009.5156722].

* Well now we''ve seen everything!  [Search algorithms taught through Hungarian dance|http://www.youtube.com/user/AlgoRythmics] -- a wonderful resource to explain a subject normally reserved for truly dedicated individuals.  And teaches search algorithms too...', 19, '2011-04-16 11:20:11.932154', '2011-04-18 22:31:37.633302', 'live', '2011-04-16 10:00:00', NULL, NULL, 25);
INSERT INTO shows VALUES (284, 'Password is Bad', NULL, NULL, 'A quick, hour-long, discussion about passwords: Or how I learned to stop worrying and embrace the entropy.', '! Learn to Program

A 12-year old from Santa Cruz asks, "What programming language do you sugest I learn?"
We endorse [Processing|http://processing.org], which is simply awesome to learning how to program.


', 7, '2011-04-23 09:44:29.903193', '2011-04-23 11:38:38.172205', 'live', '2011-04-23 10:00:00', NULL, NULL, 9);
INSERT INTO shows VALUES (285, 'The Questionable Science of Royal Weddings', NULL, NULL, 'Royal wedding news. No just kidding (sorta). Stolen camera finder, [SETI|Search for Extra-Terrestrial Intelligence] turned off, chemistry sets without chemicals. ', NULL, 18, '2011-04-30 10:57:53.1394', '2011-04-30 11:53:10.325235', 'live', '2011-04-30 10:00:00', NULL, NULL, 7);
INSERT INTO shows VALUES (286, 'One-sided Conversations with Admiral Ackbar', NULL, NULL, 'Lyle and Miles discuss one-way sound, take your calls, and note that we still don''t have Admiral Ackbar''s birth certificate yet.', '! Credits

A big "thank you" to the [Reddit|http://www.reddit.com/] user porkchop98 for his Admiral Ackbar parody.
', 1, '2011-05-07 09:43:11.150714', '2011-05-07 11:41:04.864857', 'live', '2011-05-07 10:00:00', NULL, NULL, 4);
INSERT INTO shows VALUES (287, 'Google, Facebook, and Skype, oh my!', NULL, NULL, 'Miles and Lindsey discuss geek news of the week and take calls from listeners.', 'Simple Photo Editing tools:
*[Photoshop Elements|http://tryit.adobe.com/us/photoshopelements/?sdid=FIIHP&skwcid=TC|22180|photoshop%20elements||S|b|6770086994]
*[Paint.NET|http://www.getpaint.net/]
*[Pixlr|http://pixlr.com/]
*[Flickr|http://www.flickr.com/]

Microsoft "The feature you are trying to use is on a network resource that is unavailable" error message:
*[MS KB Article 828376|http://support.microsoft.com/kb/828376]
', 19, '2011-05-14 11:13:38.710456', '2011-05-14 11:37:10.650346', 'live', '2011-05-14 10:00:00', NULL, NULL, 3);
INSERT INTO shows VALUES (288, 'Miles is Always Right', NULL, NULL, 'Lyle and Miles discuss ISP data cap, the newest version of Ubuntu Linux and a few more stories. And, of course, calls from listeners.', NULL, 1, '2011-05-21 10:09:12.102824', '2011-05-21 11:49:38.157265', 'live', '2011-05-21 10:00:00', NULL, NULL, 3);
INSERT INTO shows VALUES (289, 'Getting Ready for Geek-Dad-Day', NULL, NULL, '[Ken Denmead|http://www.kendenmead.com/], a Geeky blogger and author, joins  the Geeks to talk about his new book [The Geek Dad''s Guide to Weekend Fun: Cool Hacks, Cutting-Edge Games, and More Awesome Projects for the Whole Family|http://www.amazon.com/gp/product/1592406440/ref=as_li_tf_tl?ie=UTF8&tag=geespe-20&linkCode=as2&camp=217145&creative=399349&creativeASIN=1592406440] .

', '!! Our Guest: Ken Denmead 

Ken is a husband and father from the San Francisco Bay Area, where he works as a civil engineer. He’s also the editor of [GeekDad at Wired|http://geekdad.com/], the parenting blog for Wired magazine’s online presence, where along with a group of other dedicated, geeky parents he posts projects, book and movie reviews, weekly podcasts, and more about being a parent and being a geek.

This new book joins 
 [Geek Dad: Awesomely Geeky Projects and Activities for Dads and Kids to Share|http://www.amazon.com/gp/product/B0043RT890/ref=as_li_qf_sp_asin_tl?ie=UTF8&tag=geespe-20&linkCode=as2&camp=217145&creative=399349&creativeASIN=B0043RT890]  to make a great collection that helps bring Geekyness back into the home. ', 1, '2011-05-25 11:48:24.043242', '2011-05-31 16:04:19.248671', 'live', '2011-05-28 10:00:00', 350, NULL, 21);
INSERT INTO shows VALUES (290, 'Copyright and Mickey Mouse''s Long Tail', NULL, NULL, 'Michael Mount, a copyright lawyer, joins the Geeks for a discussion on Intellectual Property. And we cover some GeekNews of the week.', '! Our Guest: Michael Mount

Michael is an attorney in Santa Cruz focusing on Intellectual Property including Licensing of Intellectual Property. Michael, formerly Senior Counsel for Sun Microsystems, is currently an Attorney at Axiom servicing companies like Accenture and eBay . 

This is Michael''s second appearance on GeekSpeak, you can checkout the [August 12th, 2005 episode of GeekSpeak|http://geekspeak.org/shows/2005/08/12/]  to hear more.

', 1, '2011-05-25 12:22:18.596599', '2011-06-04 11:48:44.677108', 'live', '2011-06-04 10:00:00', NULL, NULL, 5);
INSERT INTO shows VALUES (291, 'Well of Course the Black Mutant Dies', NULL, NULL, 'The recent X-Men movie, IPv6 Day, political tech, and more of the week in geek with Lyle and Miles.', NULL, 7, '2011-06-11 11:04:24.007852', '2011-06-11 11:54:15.224645', 'live', '2011-06-11 10:00:00', 352, NULL, 6);
INSERT INTO shows VALUES (292, 'Nuclear Teenagers and Security Failures', NULL, NULL, 'A teenager invents a handheld radiation detector, Dropbox not so private, and the public''s password foibles, today on Geek Speak with Lyle, Miles, and Lindsey.', NULL, 7, '2011-06-18 10:55:01.520402', '2011-06-18 11:51:00.772155', 'live', '2011-06-18 10:00:00', NULL, NULL, 3);
INSERT INTO shows VALUES (293, '616: The Number of the Beast', NULL, NULL, 'Brian Suda joins the geeks to talk about information visualization. And the big question "Satan and Miles''s birthday: is there a connection?"', '! Our Guest

Brian Suda is an informatician currently residing in Reykjavík, Iceland. He has spent a good portion of each day connected to Internet after discovering it back in the mid-01990s. Most recently, he has been focusing more on the mobile space and future predictions. How smaller devices will augment our every day life and what that means to the way we live, work and are entertained. People will have access to more information, so how do we present this in a way that they can begin to understand and make informed decisions about things they encounter in their daily life. This could include better visualizations of data, interactions, work-flows and ethnographic studies of how we relate to these digital objects.

His own little patch of Internet can be found at [suda.co.uk|http://suda.co.uk] where many of his past projects and crazy ideas can be found.', 7, '2011-06-25 10:35:43.698392', '2011-06-25 11:42:31.996887', 'live', '2011-06-25 10:00:00', NULL, NULL, 6);
INSERT INTO shows VALUES (294, 'A Social Barometer: Google+ Facebook-', NULL, NULL, 'Google releases Google+, Barometers are in cell phones, Thunderbolt is fast, and we discuss how we should measure time. Join the geeks in this podcast, and join the conversation on our Facebook page!', NULL, 13, '2011-07-02 11:05:57.363407', '2011-07-03 09:18:07.645185', 'live', '2011-07-02 10:00:00', NULL, NULL, 7);
INSERT INTO shows VALUES (295, 'Rare Earth Space Kindles', NULL, NULL, 'Rare Earth minerals discovered on the ocean floor, the Space Shuttle launches its final mission, and more while Ben and Miles take your calls.', '! Today''s Geek Bit

Philanthropist [Bill Gates discusses energy production|http://www.ted.com/talks/bill_gates.html] on TED.
Google Maps App for Android will [download and cache offline maps|http://news.cnet.com/8301-17939_109-20077714-2/google-map-downloads-cut-the-data-cord/?part=rss&subj=news&tag=2547-1_3-0-20].', 7, '2011-07-09 11:06:38.92463', '2011-07-09 11:48:30.680952', 'live', '2011-07-09 10:00:00', NULL, NULL, 4);
INSERT INTO shows VALUES (296, 'Social Network Who Must Not be Named', NULL, NULL, 'Skype vulnerable, Harry Potter, hear with your Brain, remember with Google, and much more all while avoiding Facebook and Google+.', NULL, 13, '2011-07-16 11:01:00.92218', '2011-07-16 11:53:19.293848', 'live', '2011-07-16 10:00:00', NULL, NULL, 4);
INSERT INTO shows VALUES (297, 'Google+ Spotify = Great Show', NULL, NULL, 'Social networks, streaming audio, and more with Lyle, Ben, and Miles.', NULL, 7, '2011-07-23 11:11:45.966247', '2011-07-23 11:42:47.290178', 'live', '2011-07-23 10:00:00', NULL, NULL, 3);
INSERT INTO shows VALUES (298, 'Glowing Dogs Fetching Public Keys', NULL, NULL, 'Germany goes nuclear free while lowering carbon emissions, iOS Safari has a serious vulnerability, and a South Korean dog glows in the dark.  This, your calls, and more on this week''s episode of Geek Speak.', '! Fun with Fibonacci

Need to figure out [miles to kilometers|http://www.futilitycloset.com/2008/07/09/applied-math/]?  Sure, anyone can use 0.6 as a conversion number, but The Geeks recommend using the [Fibonacci|http://en.wikipedia.org/wiki/Fibonacci_number] sequence instead.

0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55...

A little inaccurate at the low end, but it gets better quick!  5 miles = 8 kilometers.  8 miles = 13 kilometers.  13 miles = 21 kilometers.  21 miles = 44 kilometers.  And so on...  Neat, hunh?
', 7, '2011-07-30 11:16:29.067725', '2011-07-30 11:39:55.873306', 'live', '2011-07-30 10:00:00', NULL, NULL, 6);
INSERT INTO shows VALUES (299, 'Face Matching Hacking Body Scanning', NULL, NULL, 'Face-matching with Facebook profiles, Non-naked airport passengers in Germany, Hackers Wireless Medical Devices Susceptible to Attacks,  DARPA and the hazard of hacked hardware and  5/8ths inch head radiation.', NULL, 1, '2011-08-06 09:48:48.819277', '2011-08-06 11:59:47.734247', 'live', '2011-08-06 10:00:00', NULL, NULL, 6);
INSERT INTO shows VALUES (301, 'MineCraft Super Cookies', NULL, NULL, 'Wyatt Troxell joins the Geeks to geek out about MineCraft, Ben fills us in on the half-a 3.5mm connector from Apple, and Miles tells us all about Super Cookies!', NULL, 1, '2011-08-20 09:50:22.97157', '2011-08-24 15:01:07.381776', 'live', '2011-08-20 10:00:00', NULL, NULL, 3);
INSERT INTO shows VALUES (302, 'Who Watches the Watchers'' Mac Addresses?', NULL, NULL, 'Citizens'' right to record the police, social media''s impact on undercover cops, IPs are not people, and your comments and questions.', NULL, 7, '2011-08-27 11:12:39.121773', '2011-08-27 12:03:41.849766', 'live', '2011-08-27 10:00:00', NULL, NULL, 3);
INSERT INTO shows VALUES (300, 'Ready Player One', NULL, NULL, 'Perseids Meteor shower, new theme park and an interview and discussion with Ernest Cline  about his wonderful futuristic 80''s packed book, Ready Player One.', '! Ready Player One

Go ahead and pick up [Ready Player One from Book Shop Santa Cruz|http://www.bookshopsantacruz.com/aff/lyle/book/v/9780307887436] and enjoy one of the best books of the year. -Lyle', 1, '2011-08-13 09:44:24.764575', '2011-08-31 23:24:19.5269', 'live', '2011-08-13 10:00:00', NULL, NULL, 6);
INSERT INTO shows VALUES (328, 'Fake 3D Models of 30,000-Year-Old Seeds', NULL, NULL, '3D Printer Kickstarter, Really Old Plants, Multiple Photos or Video to make 3d files, 123 year old recordings, could your phone be your computer? And much more Week-In-Geek News with Lyle, Al and Lindsey.', NULL, 19, '2012-02-25 11:19:11.649172', '2012-02-26 22:20:00.766914', 'live', '2012-02-25 10:00:00', NULL, NULL, 4);
INSERT INTO shows VALUES (303, 'Security and Super Novas ', NULL, NULL, 'Haystack Passwords baby- full paper encryption, UPnP router problems,  Macintosh Lion woes and security problems, AT&T mobile deal a no-go and more GeekNews.', '! Other Notes and Such

Lyle mentioned the [bit about AT&T breaking up and coming back together|http://www.youtube.com/watch?v=rsCp-1hgfxI] which was from Colbert Report.

!! Router Solutions

For the news stories on making your router safer, if you have a Linksys router, you could install [Tomato|http://www.polarcloud.com/tomato] or [DD-WRT|http://www.dd-wrt.com/]. And [UBiQUiTi|http://www.ubnt.com/] makes great gear as well.

Lyle freaks out about PDF forms and how much of a pain they are!

! The Hear After Here Contest

Ben is working on a [Tandy Beal production|http://www.tandybeal.com/], [Here After Here|http://www.tandybeal.com/projects-hereafterhere.html], the contest question was "how far away is M101?" The answer, given by many, was "21 Million Light Years". 

', 1, '2011-09-03 09:27:19.423258', '2011-09-03 11:46:39.044772', 'live', '2011-09-03 10:00:00', NULL, NULL, 10);
INSERT INTO shows VALUES (304, 'Flywheels and Data Centers', NULL, NULL, 'The Week in Geeks News covers data centers and fly wheels followed by Lyle, Ben and Miles taking your calls and comments.', NULL, 13, '2011-09-10 10:30:43.178798', '2011-09-10 11:51:33.423689', 'live', '2011-09-10 10:00:00', NULL, NULL, 6);
INSERT INTO shows VALUES (305, 'Exoplanets in Hexadecimal', NULL, NULL, 'Exoplanets revolving around binary stars; exoplanets revolving around each other; Exoplanets!  Ben and Miles answer your questions and comments about technology and hexadecimal as well.', NULL, 7, '2011-09-17 11:33:17.823854', '2011-09-17 11:40:59.17132', 'live', '2011-09-17 10:00:00', NULL, NULL, 7);
INSERT INTO shows VALUES (306, 'Blurry, Soggy, Black Holes Now Available from E-Libraries', NULL, NULL, 'Horrible segways during The Week in Geek News while Miles, Lyle, Ben, and Alex get all your calls and questions answered incorrectly.', '! Getting Ubuntu

If you''re having problems downloading and burning your own CD or DVD of Ubuntu, you can always [get a copy from Canonical|http://shop.canonical.com/product_info.php?products_id=852], the company behind Ubuntu Linux.', 7, '2011-09-24 11:04:40.315024', '2011-09-24 11:23:41.608719', 'live', '2011-09-24 10:00:00', NULL, NULL, 3);
INSERT INTO shows VALUES (307, 'Kindles and Other Stuff', NULL, NULL, 'The new Amazon Kindles and other non-related news items.  All of this while Lyle, Ben, and Miles take your live calls and comments.', NULL, 1, '2011-10-01 09:37:46.500826', '2011-10-01 11:28:57.847201', 'live', '2011-10-01 10:00:00', NULL, NULL, 5);
INSERT INTO shows VALUES (308, 'So Long and Thanks For All the iPods.', NULL, NULL, 'A fond farewell to the irreplaceable Steve Jobs.  Also quasicrystals, earthquake monitoring, living bridges, and more while Lyle, Terry and Miles extol the virtues of community radio.  Pledge KUSP today!', NULL, 1, '2011-10-08 10:08:39.191661', '2011-10-08 11:38:33.038367', 'live', '2011-10-08 10:00:00', NULL, NULL, 3);
INSERT INTO shows VALUES (309, 'Dennis Ritchie, You Will Be Sorely Missed', NULL, NULL, 'We mourn the passing of [Dennis Ritchie, creator of C, co-creator of Unix|http://herbsutter.com/2011/10/12/dennis-ritchie/], and one of the biggest influences on modern computing.  Not for wealth, not for fame, but simply because the challenges existed.  He will be remembered fondly by those who knew him as well as by those of us who unfortunately never had the honor.', '! Thank You

A big thank you to KUSP for airing Geek Speak all these years.  We hope you''ll recognize the value of this radio station and [pledge your support|http://kusp.org/]. Also a special thank you to Terry Green for being on the show this episode.', 7, '2011-10-15 11:02:43.708055', '2011-10-15 12:19:18.95556', 'live', '2011-10-15 10:00:00', NULL, NULL, 7);
INSERT INTO shows VALUES (310, 'Camera, Tank and Keyboards', NULL, NULL, 'A new camera that you can focus later, Skype can connect your username to your IP address, new infrared camouflage system for tanks, seeing through walls with cool tech, and lots of calls from listeners. Assistive typing with devorak vs qwerty keyboards or use a camera-microphone-pen and more. Al is back with a Crazy USB and Ben and Lyle are there too.', NULL, 1, '2011-10-22 09:38:29.627948', '2011-10-24 17:40:54.997229', 'live', '2011-10-22 10:00:00', 353, NULL, 7);
INSERT INTO shows VALUES (312, 'November 5th, Shmomember 5th!', NULL, NULL, 'Guest geek Katie Dutcher (Linguistics and Religious Studies major from Pomona College) joins us to help us understand how amazing 11-02-2011 actually was.', '! Desalinate or Not
Last week we had a show about Desalination solutions for Santa Cruz.  Listener Rick suggested that we share some [Alternatives to Desalination| http://desalalternatives.org] .
', 7, '2011-11-05 10:58:05.120481', '2011-11-10 11:59:10.394421', 'live', '2011-11-05 10:00:00', NULL, NULL, 10);
INSERT INTO shows VALUES (313, 'Exfoliate Your Facebook ', NULL, NULL, 'Political robo-calls to your cellphone if you don''t act, Facebook is big and complex and we are all trapped, Russian Phobos to return to earth the #fail way.
Lindsey and Lyle take on the geek news of the week and take your calls.', '! We Mentioned [Pinterest | http://pinterest.com/semilshah/]
* The [Rise Of Pinterest And The Shift From Search To Discovery|http://techcrunch.com/2011/11/06/rise-pinterest-shift-search-discovery/]

* [TechCrunch --> Pinterest For Men|http://techcrunch.com/2011/11/11/pinterest-for-men/]', 1, '2011-11-12 09:49:48.322836', '2011-11-13 23:20:12.812589', 'live', '2011-11-12 10:00:00', NULL, NULL, 12);
INSERT INTO shows VALUES (311, 'Desalinate 7 Billion Brain Simulations', NULL, NULL, 'Mike Rodkin, former Mayor of Santa Cruz, will join us for a discussion on Santa Cruz water issues. Is a high-price desalination plant a good solution?', '! Mike Rodkin

Starting in 1979 Mike has serviced six terms as a Santa Cruz City Council member and has been a council Santa Cruz Mayor five times. Mike is also a lecture and Director of Filed Studies in Community Studies at UCSC. Mike was formally against the Santa Cruz Desalination Project and is now in support of desalination.

For more information, go to the [SCWD|http://www.scwd.com/]''s web site, SCWD.com.

! Other Perspectives

Though I (Lyle) think Mike''s take on Santa Cruz going to desalination makes sense there are others who think there are [Alternatives to Desalination|  http://desalalternatives.org/], take a look for more info.', 1, '2011-10-25 06:02:13.717951', '2011-11-17 10:15:28.49068', 'live', '2011-10-29 10:00:00', NULL, NULL, 12);
INSERT INTO shows VALUES (315, 'Tracking Loans, License Plates, and Heat', NULL, NULL, 'Kiva.org for gifts that are actually loans, how ovens work, thinking about temperature around your house, pluto might have an ocean, Google has more servers then you, and may other things like your license plates are being tracked.', NULL, 1, '2011-11-26 09:49:16.284302', '2011-11-29 14:37:15.184653', 'live', '2011-11-26 10:00:00', NULL, NULL, 5);
INSERT INTO shows VALUES (316, 'No Reason At All', NULL, NULL, 'Pew Research finds there''s no reason at all to learn about mobile madness malware and the rest of the "Week in Geek" news with Miles, Al and Lyle.  Bonus: the triumphant return of the Crazy USB of the Week!', '! Geek Bits

Next time someone needs a little perspective, show them [where they stand|http://imgur.com/yb17A] in the scheme of things.  Big open spaces not impressive enough?  How about [wowing them with history|http://i.imgur.com/Fbsyx.jpg] of all things.', 1, '2011-12-03 09:51:51.408048', '2011-12-03 14:57:07.054595', 'live', '2011-12-03 10:00:00', NULL, NULL, 6);
INSERT INTO shows VALUES (314, 'I, For One, Welcome Our DNS Censor Overlords', NULL, NULL, 'Ionized plasmas for sterilizers, 2D game performance in browser, and some little bills called SOPA and ProtectIP.', '! AntiVirus Software

The Geeks don''t endorse any one vendor of antivirus software for Windows, but you can check out [antivirus comparisons and reviews|http://www.av-comparatives.org/] online and choose the best one that fits your needs and your budget.

! Windows XP transferable?

We chatted with Bruce about trying to get Windows XP to install in Parallels. But Bruce had a Dell, and Windows XP came with his Dell, so, we were assuming that his license of Windows XP was non transferable. 

!! Wendy wrote in with this comment:

"Two shows ago, you lamented that a Windows XP license isn''t transferable
to an Apple computer for dual booting purposes.  Can a license of Apple''s
OS get installed onto a Window''s machine?  Doesn''t Apple defend their
copyrights as aggressively as Microsoft?

"Yes, sometimes I get my feathers ruffled at all the fanboies out there,
but love you guys!

!! And I responded: 

Actually Microsoft''s Windows XP is transferable. But not when it is an OEM install. So, you buy a machine from Dell and it comes with Windows - chances are that the Windows license is not transferable.  But, if you purchase Windows XP (when you could) as a stand alone install disk you can install it on any hardware. (assuming it is only active on one, or maybe two machines at a time.)

Apple has a similar situation from what I understand. But, Apple dose not authenticate their OS. If you get an Apple OS CD it is fairly easy to install it on any machine. However, if you get OS discs with a Macintosh, that disc is specific to that hardware, making it less portable - kinda like the OEM situation from Microsoft -> Dell. 

The legality of installing OS X on  non-Apple hardware is interesting. Apple says it is against their policy, but that can''t really hold up in court. But, in order to install OS X onto non-apple hardware you have to break some security, which Apple claims is a violation of the DMCA. 


So, we were talking about OEM versions of Windows. And that if you have an OEM version it is against policy, and that was the "bummer" we were offering to the listener.


- now if only I spent time fixing up our website, so I could quote people!', 1, '2011-11-19 09:46:30.11318', '2011-12-06 15:20:47.057595', 'live', '2011-11-19 10:00:00', NULL, NULL, 10);
INSERT INTO shows VALUES (317, 'Fire-Breathing Ponies and Climate Change', NULL, NULL, 'The Week in Geek: the rise of the Internet Surveillance state, Unicode for the masses, and more while Jordan, Lindsey, and Miles take your calls and comments.', NULL, 7, '2011-12-10 11:04:40.367132', '2011-12-10 11:43:04.000122', 'live', '2011-12-10 10:00:00', NULL, NULL, 3);
INSERT INTO shows VALUES (318, 'Messing up with Magnets, Copyright, and Siri', NULL, NULL, 'Lionel Peter Church joins Linsey Lonne, Miles Elam, and Lyle Troxell. ', NULL, 1, '2011-12-17 09:38:50.191024', '2011-12-18 18:49:26.958728', 'live', '2011-12-17 10:00:00', 354, NULL, 7);
INSERT INTO shows VALUES (319, 'Geeks Need a New Home', NULL, NULL, 'GeekSpeak needs a new server home - do you want to help? We are leaning towards [Linode|http://www.linode.com/]  as our new [VPS|http://en.wikipedia.org/wiki/Virtual_private_server] host. On this episode we cover a bunch of tech news, from Black Holes to Aids Vaccines. Ben Jaffe and Alex Sleeis join Lyle Troxell via Skype.', '! Lyle Suggests Domain Name Registrars 
* [GKG|http://gkg.net/]
* [Domain Discover|http://DomainDiscover.com]
* Miles likes [Joker|http://joker.com/]
* Alex uses, but dosen''t like: GoDaddy
* Ben likes [NEarly Free Speech DNS|https://www.nearlyfreespeech.net/]

Humm... it seems like we might have [listed our registrar usage before|http://geekspeak.org/shows/2009/01/24/] on GeekSpeak.', 13, '2011-12-24 11:05:19.086668', '2011-12-24 12:29:02.647213', 'live', '2011-12-24 10:00:00', NULL, NULL, 13);
INSERT INTO shows VALUES (320, 'Even Dead People are Against SOPA', NULL, NULL, 'Kepler finds Earth-sized planets, Congress is using the internet like all of us, should we use a new calendar, is your IP router IPv6 ready, and SOPA still sucks! - Ben, Lyle and Miles.', NULL, 1, '2012-01-02 00:37:49.220231', '2012-01-02 00:46:20.587611', 'live', '2011-12-31 10:00:00', NULL, NULL, 3);
INSERT INTO shows VALUES (326, 'Prom Week Game', NULL, NULL, 'Facebook publishes deleted images, Android vs iOS crashes, 12345 Syrian password "hacked", AT&T throttling, NASA killing Mars and more GeekNews. In the second half Mike Treanor from UCSC''s Center for Games and Playable Media joins The Geeks to talk about game development and AI.', '! Prom Week

The game [Prom Week|http://games.soe.ucsc.edu/project/prom-week], that our guest Mike Treanor  has been working on for about 2 and a half years, is a finalist for the 2012 Independent Games Festival Main Competition - in the technical excellence category. 

Mike Trainer, has a BA in computer science with game focus, then a Master of Fine Arts in Digital Arts and New Media (thats the program I help run at UCSC) and is currently working on his PHd in Computer Science in the Center for Games and Playable Media  working with the expressive intelligence studio - games, artificial intelligence and art making.


', 1, '2012-02-11 10:01:33.657931', '2012-02-11 11:33:12.637557', 'live', '2012-02-11 10:00:00', NULL, NULL, 5);
INSERT INTO shows VALUES (323, 'SOPA Dead!', NULL, NULL, 'SOPA/PIPA gets a timeout, 12 atoms per bit, and various ways that you and criminals can move information (WiGig & auto theft) while Miles and Lyle take your calls and comments.', '! Calls

OFF AIR - Ed Aptos.  on the blackout day,  Wikipedia actually posted an open hint as how to circumvent the black page:  turn off Java script.  The hint was somewhere in the details, when you clicked on the SOPA explanation link

Line 1 -  Molly - Monterey - are you going to join the Swedish church of (worship) of copying?  right.  The file sharing church.
 
Line 2 - Mark - Monterey county - do I need a new mouse? 
 Short cut keys  pull down the Edit menu.  from Explorer displays the short-cuts for Copy Cut Paste
wireless!  mouse(s)
I like my bluetooth mouse', 1, '2012-01-21 09:48:38.482919', '2012-01-21 12:01:31.401839', 'live', '2012-01-21 10:00:00', NULL, NULL, 3);
INSERT INTO shows VALUES (321, 'GeekSpeak Resolutions', NULL, NULL, 'New years resolutions - Back Up Your Data and Upgrade your Ram! MAME on Chrome, WiFi Vulnerability - turn off WPS, Copyright Rant, other news and calls with Lyle and Miles.', NULL, 1, '2012-01-07 10:00:17.409865', '2012-01-12 22:16:03.178309', 'live', '2012-01-07 10:00:00', NULL, NULL, 3);
INSERT INTO shows VALUES (322, 'Waterproof Your Phone', NULL, NULL, 'Jesse Wilkins joins Ben and Lyle for a bit of GeekSpeak News.', '! Guest Geek Jesse Wilkins


[Computer Center Santa Cruz|http://computercentersantacruz.com] is Jesse''s company.

- viruses - safe browsing 
Browse safely by keeping yourself updated, and away from ‘questionable’ sites.
windows security

current and updated software is paramount

-antivirus - AVG, Avast, MS security essentials, antivir, norton, mcafee, kaspersky, and many others
-antispyware -malwarebytes, spybot, super antispyware
-other - CCleaner

-windows; java; javascript; flash; adobe reader
-use secuniapsi.com to keep you updated

-malicious or infected web ads can infect you via non-updated software

-browser add-ons to block javascript and flash; no script, adblock plus
-run your browser in a virtual environment to keep it away from your actual system-sandboxie
-DNS-use a ''safer'' dns host other than your ISP; opendns, googledns

  ', 1, '2012-01-19 17:41:12.544692', '2012-01-19 17:48:44.272934', 'live', '2012-01-14 10:00:00', NULL, NULL, 2);
INSERT INTO shows VALUES (324, 'Easy Privacy Come, Easy Privacy Go', NULL, NULL, 'Supreme Court privacy decisions, Google privacy changes, EU privacy protections, oh my!  Miles and Lyle publicly take your calls and comments while talking about privacy.', NULL, 1, '2012-01-28 09:46:52.619615', '2012-01-30 15:45:01.173813', 'live', '2012-01-28 10:00:00', NULL, NULL, 2);
INSERT INTO shows VALUES (325, 'Technical Difficulties', NULL, NULL, 'Spider silk, the french attack Google, Our Moon, Ubusoft Dow, 100 year old gamer, and much more. The geek news with Miles, Ben, and Jordan.', NULL, 1, '2012-02-11 07:26:57.340419', '2012-02-11 07:37:01.876647', 'live', '2012-02-04 10:00:00', NULL, NULL, 1);
INSERT INTO shows VALUES (327, 'Privacy Pshaw!', NULL, NULL, 'Who needs privacy when you are selling something?  Online Dating Websites keep your data, Target Inc. knows your daughter is pregnant, Cyber attacks of Nortel, SSL for Google Maps still leaks data, and more Geek News and in the second half Alex, Miles and Lyle answer technical questions from listeners.', NULL, 1, '2012-02-18 09:33:32.884552', '2012-02-18 11:14:37.208205', 'live', '2012-02-18 10:00:00', NULL, NULL, 3);
INSERT INTO shows VALUES (329, 'Warped: Drives, Speech, and Space Cups', NULL, NULL, 'We take your calls and comments while covering the Week in Geek.', '! Eudora [OSE|Open Source Edition]
https://wiki.mozilla.org/Eudora_OSE

! Spots for Science and Astronomy for Kids (and Adults!)
* [Chabot Space & Science Center|http://www.chabotspace.org/]
* [Bad Astronomy|http://blogs.discovermagazine.com/badastronomy/] blog

! GeekBit

Robert from Aromas, California suggest we take a look at a recent [TED Talk on arial robots|http://arstechnica.com/science/news/2012/03/robots-swarm-the-stage-at-ted.ars], esp about 12 minutes in.', 7, '2012-03-03 10:23:10.47967', '2012-03-03 12:49:15.849669', 'live', '2012-03-03 10:00:00', NULL, NULL, 5);
INSERT INTO shows VALUES (330, 'Reliability Testing Art Teaching', NULL, NULL, 'Systems Reliability Geek, Steve Brenner, and Geeky Artists, Nick Lally join Lyle to chat about some week-in-geek news and their professions. We even took a couple calls!', '! Geeks

[Steve Brenner|http://steve.brenner.com/] is a Reliability Consultant - and we cover what that means on this show. Steve holds a Bachelors degree in Engineering from New York Institute of Technology and is a theatrical director. Go and see his show at [Mountain Community Theater|http://www.mctshows.org], Crimes of the Heart, which opens March 16th in Ben Lomond at [Park Hall|http://ParkHall.BenLomond.org] . 


[Nick Lally|http://www.nicklally.com/] - Digital Artists - is an adjunct professor at California Collage for the Arts and San Fransisco Art Institute. Nick Holds an MFA from the [Digital Arts and New Media Program|http://danm.ucsc.edu] at UCSC.', 1, '2012-03-14 22:29:58.193282', '2012-03-14 23:18:59.909587', 'live', '2012-03-10 10:00:00', NULL, NULL, 2);
INSERT INTO shows VALUES (331, 'Mark Crilley - Mastering Manga', NULL, NULL, 'Comic artist and author joins Lyle Troxell for a discussion about marketing using YouTube... well more like how to be awsome like Mark Crilley and about comic book art. In the first half Charlie Lang, and KUSP station manager Terry Green talk about This American Life''s retraction of their Foxconn/Apple story, and a bit about SPDY.', NULL, 1, '2012-03-17 11:43:23.440758', '2012-03-17 11:58:43.172304', 'live', '2012-03-17 10:00:00', NULL, NULL, 1);
INSERT INTO shows VALUES (332, 'Remember to Wear Your Seatbelts on the Internet', NULL, NULL, 'Backup, watch your URLs, make sure you read those license agreements, and more on a special show chock full of the Week in Geek.', NULL, 7, '2012-03-24 11:16:31.042089', '2012-03-24 11:18:17.524367', 'live', '2012-03-24 10:00:00', NULL, NULL, 1);
INSERT INTO shows VALUES (335, 'Enterprising Cosmic Whale Vomit', NULL, NULL, 'Learn a little about the Geeks and what''s interesting about whale barf. And much more about the week in geek tech with Miles, Ben, and Lyle. Also, Rick is back, so we take some calls!', NULL, 7, '2012-04-14 11:21:31.427262', '2012-04-14 11:45:29.631534', 'live', '2012-04-14 10:00:00', NULL, NULL, 4);
INSERT INTO shows VALUES (333, 'Garth Sundem, Science, and Space Mummies', NULL, NULL, '[Garth Sundem|http://garthsundem.com/], author of his most recent book, "[Brain Trust|http://www.randomhouse.com/book/208655/brain-trust-by-garth-sundem]", joins the Geeks and their quest to keep KUSP safe from the rogue neutron stars and space mummies.  Mrrrrrrr!!!', NULL, 7, '2012-03-31 11:10:01.572794', '2012-03-31 11:49:12.024511', 'live', '2012-03-31 10:00:00', NULL, NULL, 5);
INSERT INTO shows VALUES (334, 'Free Speech of Yoctograms and Planets', NULL, NULL, 'High School Student expelled for Tweeting, One-Yoctogram isn''t much, White House "free speech is more important then anti-piracy laws, and more GeekNews of the week.', NULL, 1, '2012-04-10 10:52:41.062326', '2012-04-10 10:54:11.488164', 'live', '2012-04-07 10:00:00', NULL, NULL, 1);
INSERT INTO shows VALUES (343, 'Internet TV up in Flame', NULL, NULL, 'Bonnie Jean Primbsch joins Miles and Lyle to talk a bit about KUSP, pledging to the station, the Flame bot net, and TV advertising both online and off.', NULL, 1, '2012-06-09 11:18:50.670034', '2012-06-09 11:38:14.926003', 'live', '2012-06-09 10:00:00', NULL, NULL, 4);
INSERT INTO shows VALUES (341, 'Bar Scene, There''s an App for That', NULL, NULL, 'Miles and Ben do the Geek News and take the calls.', NULL, 1, '2012-05-27 14:18:50.61609', '2012-05-27 14:19:09.188597', 'live', '2012-05-19 10:00:00', NULL, NULL, 2);
INSERT INTO shows VALUES (340, 'Superhydrophobic or Raspberry Pink Dogs', NULL, NULL, 'Tractor Beams, SpaceX to ISS, eyes change, security expert tricks trickers, Real Life Tony Stark, "you are more wrong then you thought you are", and much more with Miles, Ben and Lyle.', NULL, 13, '2012-05-26 10:55:55.714039', '2012-05-27 14:28:22.031229', 'live', '2012-05-26 10:00:00', NULL, NULL, 5);
INSERT INTO shows VALUES (336, 'Games to Help Depressed Batteries Go Mach 20', NULL, NULL, 'Thousands to lose Internet access due to the FBI, the hardest-working man on Wikipedia, the rest of the Week in Geek, and Lyle and Miles respond to your questions and comments.', NULL, 1, '2012-04-21 09:57:58.092676', '2012-04-23 18:51:29.423085', 'live', '2012-04-21 10:00:00', NULL, NULL, 5);
INSERT INTO shows VALUES (337, 'Ummm Network, You Look a Little Bloated', NULL, NULL, 'Wartime bootleggers, the birth and death of Firewire, geeky movies, losing yourself in Manila, and more while we take your calls and questions.', NULL, 7, '2012-04-28 11:11:23.338281', '2012-04-28 11:53:37.916093', 'live', '2012-04-28 10:00:00', NULL, NULL, 2);
INSERT INTO shows VALUES (338, 'Search Engins for the People', NULL, NULL, 'Facebook free speech and teacher usage, new search engines, global climate change activism, and more while Lyle and Miles take your calls and comments.', NULL, 7, '2012-05-05 11:01:21.194485', '2012-05-05 11:21:20.578471', 'live', '2012-05-05 10:00:00', NULL, NULL, 1);
INSERT INTO shows VALUES (347, 'Quantum Astronomical Quotidian', NULL, NULL, 'Higgs is statistical, Twitter trying to trump trolling and throws us transparency, Miles learns Quotidian and will now be even more "right",  Dark matter filament questions and more Geek News of the week with Miles, Ben and Lyle.', NULL, 1, '2012-06-19 16:58:50.511074', '2012-07-07 11:22:57.233275', 'live', '2012-07-07 10:00:00', NULL, NULL, 3);
INSERT INTO shows VALUES (339, 'Robutt Apocalypse ', NULL, NULL, 'Goldilocks range around red-dwarf stars is smaller then we thought, how tides work, robot buttocks, Japan loosing population, harvest asteroids, facebook new feature that you pay for, Mayan calendar goes beyond 2012, and much more, plus calls from listeners. Steve Brenner, Ben Jaffe, and Lyle Troxell.', NULL, 13, '2012-05-12 09:45:12.080957', '2012-05-16 14:08:05.064218', 'live', '2012-05-12 10:00:00', NULL, NULL, 2);
INSERT INTO shows VALUES (342, 'Banana Equivalent Dosage', NULL, NULL, 'Living for 3 billion years for really good reasons, how much banana is that tuna? The Geeks—Ben, Miles, Lyle, and special geek guest Joanna Bresee—cover news and answer calls.', NULL, 13, '2012-06-02 11:19:14.461927', '2012-06-02 11:31:36.835001', 'live', '2012-06-02 10:00:00', NULL, NULL, 2);
INSERT INTO shows VALUES (345, 'Big Camera, Mega Camera, 360 Camera, No Camera', NULL, NULL, 'Lots of talk of cameras, a very expensive Apple I, games make you smarter, water color electric sheep, and much more news of the week with Alex, Al, and Lyle.', NULL, 1, '2012-06-19 16:53:59.087613', '2012-06-27 17:55:53.553708', 'live', '2012-06-23 10:00:00', NULL, NULL, 5);
INSERT INTO shows VALUES (346, 'Astroid ePaper Pizza', NULL, NULL, 'Rock Paper Scissors Robot, Pizza Vending Macine Robot and non-robot stories - full episode of GeekNews with Lindsey, Miles, Ben and host Lyle.', NULL, 1, '2012-06-19 16:56:25.899173', '2012-06-30 12:14:59.182175', 'live', '2012-06-30 10:00:00', NULL, NULL, 3);
INSERT INTO shows VALUES (348, 'Lyle, Lindsey, Ben', NULL, NULL, 'dd', NULL, 1, '2012-06-19 16:59:18.639512', '2012-06-19 16:59:18.639512', 'new', '2012-07-28 10:00:00', NULL, NULL, 0);
INSERT INTO shows VALUES (349, 'Lyle, Miles', NULL, NULL, 'asdf', NULL, 1, '2012-06-19 16:59:39.672811', '2012-06-19 16:59:39.672811', 'new', '2012-07-14 10:00:00', NULL, NULL, 0);
INSERT INTO shows VALUES (350, 'Lyle, Miles, Maybe Ben', NULL, NULL, 'asdf', NULL, 1, '2012-06-19 17:00:44.451856', '2012-06-19 17:00:44.451856', 'new', '2012-07-21 10:00:00', NULL, NULL, 0);
INSERT INTO shows VALUES (344, 'I can see clearly now', NULL, NULL, 'New Apple MacBooks are throwaway, no upgrades... but it looks so good.', NULL, 1, '2012-06-16 09:54:53.242604', '2012-06-20 13:18:12.849363', 'live', '2012-06-16 10:00:00', NULL, NULL, 1);


--
-- Name: shows_pkey; Type: CONSTRAINT; Schema: public; Owner: geekspeak; Tablespace: 
--

ALTER TABLE ONLY shows
    ADD CONSTRAINT shows_pkey PRIMARY KEY (id);


--
-- Name: shows; Type: ACL; Schema: public; Owner: geekspeak
--

REVOKE ALL ON TABLE shows FROM PUBLIC;
REVOKE ALL ON TABLE shows FROM geekspeak;
GRANT ALL ON TABLE shows TO geekspeak;
GRANT SELECT ON TABLE shows TO readgs;


--
-- PostgreSQL database dump complete
--

