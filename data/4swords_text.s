	.INCLUDE "macro.inc"

	.SECTION .rodata

	.GLOBAL gText_4swords_08641608
gText_4swords_08641608:
	.ASCII "TLPID\x0F\x10", "INFO\x0F\x10", "000\0"

	.GLOBAL gText_4swords_08641619
gText_4swords_08641619:
	.ASCII "Full hearts...Rupee fever!\n"
	.ASCII "Rupees are now worth double!\0"

	.GLOBAL gText_4swords_08641651
gText_4swords_08641651:
	.ASCII "Time: ", "\x02\x80", " min. ", "\x02\x81", " sec.!\n"
	.ASCII "Bonus: ", "\x02\x82", " Rupees x ", "\x02\x83", "\0"

	.GLOBAL gText_4swords_0864167E
gText_4swords_0864167E:
	.ASCII "Dash into the ice wall!\0"

	.GLOBAL gText_4swords_08641696
gText_4swords_08641696:
	.ASCII "Only one is real!\0"

	.GLOBAL gText_4swords_086416A8
gText_4swords_086416A8:
	.ASCII "One will always see!\0"

	.GLOBAL gText_4swords_086416BD
gText_4swords_086416BD:
	.ASCII "Whose color do you see?\n"
	.ASCII "Share it with the others!\0"

	.GLOBAL gText_4swords_086416EF
gText_4swords_086416EF:
	.ASCII "Reflect the colored shots\n"
	.ASCII "with your sword!\0"

	.GLOBAL gText_4swords_0864171A
gText_4swords_0864171A:
	.ASCII "Play it many times and hit\n"
	.ASCII "the flashing shot.\0"

	.GLOBAL gText_4swords_08641748
gText_4swords_08641748:
	.ASCII "Deflect it with your shield to\n"
	.ASCII "pass it to another.\0"

	.GLOBAL gText_4swords_0864177B
gText_4swords_0864177B:
	.ASCII "Push back the flame with\n"
	.ASCII "your sword and shield.\0"

	.GLOBAL gText_4swords_086417AB
gText_4swords_086417AB:
	.ASCII "Attack the flower that\n"
	.ASCII "matches your tunic!\0"

	.GLOBAL gText_4swords_086417D6
gText_4swords_086417D6:
	.ASCII "Two must attack the\n"
	.ASCII "two-toned flower!\0"

	.GLOBAL gText_4swords_086417FC
gText_4swords_086417FC:
	.ASCII "Pull something to reveal the\n"
	.ASCII "blossom!\0"

	.GLOBAL gText_4swords_08641822
gText_4swords_08641822:
	.ASCII "Pull them both to reveal the\n"
	.ASCII "blossom!\0"

	.GLOBAL gText_4swords_08641848
gText_4swords_08641848:
	.ASCII "             P", "\x02\x80", " PAUSE!\0"

	.INCBIN "baserom.gba", 0x641860, 0x64187C-0x641860

	.GLOBAL gText_4swords_0864187C
gText_4swords_0864187C:
	.ASCII "TLPID\x0F\x10", "TOHOHO\x0F\x10", "000\0"

	.GLOBAL gText_4swords_0864188F
gText_4swords_0864188F:
	.ASCII "A Rupee Wraith appeared!\n"
	.ASCII "If he touches you, you'll\n"
	.ASCII "start losing Rupees!\n"
	.ASCII "\x02\x88", " Touch someone else!\0"

	.GLOBAL gText_4swords_086418EE
gText_4swords_086418EE:
	.ASCII "The Rupee Wraith vanished!\0"

	.GLOBAL gText_4swords_08641909
gText_4swords_08641909:
	.ASCII "Someone is being attacked\n"
	.ASCII "by the Rupee Wraith!\0"

	.GLOBAL gText_4swords_08641938
gText_4swords_08641938:
	.ASCII "TLPID\x0F\x10", "TOHOHO\x0F\x10", "004\0"

	.INCBIN "baserom.gba", 0x64194B, 0x641964-0x64194B

	.GLOBAL gText_4swords_08641964
gText_4swords_08641964:
	.ASCII "TLPID\x0F\x10", "DOKURO\x0F\x10", "000\0"

	.GLOBAL gText_4swords_08641977
gText_4swords_08641977:
	.ASCII "P", "\x02\x80", " is down!\n"
	.ASCII "You lose ", "\x02\x81", " Rupees!\n"
	.ASCII "The next time it will cost\n"
	.ASCII "\x02\x82", " Rupees.\0"

	.GLOBAL gText_4swords_086419BE
gText_4swords_086419BE:
	.ASCII "TLPID\x0F\x10", "DOKURO\x0F\x10", "002\0"

	.GLOBAL gText_4swords_086419D1
gText_4swords_086419D1:
	.ASCII "You don't have enough\n"
	.ASCII "Rupees to be revived!\0"

	.GLOBAL gText_4swords_086419FD
gText_4swords_086419FD:
	.ASCII "Without ", "\x02\x82", " Rupees, the\n"
	.ASCII "game will end!\0"

	.GLOBAL gText_4swords_08641A23
gText_4swords_08641A23:
	.ASCII "TLPID\x0F\x10", "DOKURO\x0F\x10", "005\0"

	.INCBIN "baserom.gba", 0x641A36, 0x641A54-0x641A36

	.GLOBAL gText_4swords_08641A54
gText_4swords_08641A54:
	.ASCII "TLPID\x0F\x10", "RUPEE\x0F\x10", "000\0"

	.GLOBAL gText_4swords_08641A66
gText_4swords_08641A66:
	.ASCII "P", "\x02\x80", " got a Rupee Shard!\n"
	.ASCII "Get four to get ", "\x02\x82", " Rupees!\0"

	.GLOBAL gText_4swords_08641A98
gText_4swords_08641A98:
	.ASCII "P", "\x02\x80", " got a Rupee Shard!\n"
	.ASCII "Now find ", "\x02\x81", " more!\0"

	.GLOBAL gText_4swords_08641AC1
gText_4swords_08641AC1:
	.ASCII "P", "\x02\x80", " got the last shard\n"
	.ASCII "for ", "\x02\x82", " bonus Rupees!\0"

	.INCBIN "baserom.gba", 0x641AED, 0x641B72-0x641AED

	.GLOBAL gText_4swords_08641B72
gText_4swords_08641B72:
	.ASCII "         Linking with other systems...       \n"
	.ASCII "Please wait a moment.\0"

	.GLOBAL gText_4swords_08641BB6
gText_4swords_08641BB6:
	.ASCII "This is a Multi-Pak multiplayer game.\0"

	.GLOBAL gText_4swords_08641BDC
gText_4swords_08641BDC:
	.ASCII "Please connect your systems for the\n"
	.ASCII "appropriate number of players\x0Bx\n"
	.ASCII "as shown in the diagram, then turn\n"
	.ASCII "the power OFF and ON again.\x06\xFF\0"

	.GLOBAL gText_4swords_08641C61
gText_4swords_08641C61:
	.ASCII "A communication error has occurred.\n"
	.ASCII "\n"
	.ASCII "Please check all connections\n"
	.ASCII "and make sure all systems are ON.\n"
	.ASCII "Returning to the title screen...\0"

	.GLOBAL gText_4swords_08641CE6
gText_4swords_08641CE6:
	.ASCII "\x05\xFF Continue\n"
	.ASCII "\x05\xFF Quit\0"

	.GLOBAL gText_4swords_08641CFA
gText_4swords_08641CFA:
	.ASCII "P", "\x02\x80", " PAUSE!\0"

	.GLOBAL gText_4swords_08641D05
gText_4swords_08641D05:
	.ASCII "\x07\x01", "- DIRECTOR -\n"
	.ASCII "\x07\x04", "\n"
	.ASCII "HIDEMARO FUJIBAYASHI\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\x07\x01", "- PLANNERS -\n"
	.ASCII "\x07\x04", "\n"
	.ASCII "HIDEMARO FUJIBAYASHI\n"
	.ASCII "\n"
	.ASCII "SU CHOL LEE\n"
	.ASCII "\n"
	.ASCII "MITSUAKI ARAKI\n"
	.ASCII "\n"
	.ASCII "JOKO KAZUKI\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\x07\x01", "- PROGRAMMING -\n"
	.ASCII "\x07\x04", "\n"
	.ASCII "TOSHIHIKO HONDA\n"
	.ASCII "\n"
	.ASCII "SHIMITAN\n"
	.ASCII "\n"
	.ASCII "YOSHIYUKI FUJIKAWA\n"
	.ASCII "\n"
	.ASCII "K.YOSHIDA\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\x07\x01", "- OBJECT DESIGN -\n"
	.ASCII "\x07\x04", "\n"
	.ASCII "KIMOKIMO\n"
	.ASCII "\n"
	.ASCII "ERI KIMOTO\n"
	.ASCII "\n"
	.ASCII "MINOBE HIROAKI\n"
	.ASCII "\n"
	.ASCII "SHIBAKI\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\x07\x01", "- SCROLL DESIGN -\n"
	.ASCII "\x07\x04", "\n"
	.ASCII "ASAE.N\n"
	.ASCII "\n"
	.ASCII "A.OHNISHI\n"
	.ASCII "\n"
	.ASCII "Y.TAKAHASHI\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\x07\x01", "- MUSIC -\n"
	.ASCII "\x07\x04", "\n"
	.ASCII "Y.TAKEHARA\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\x07\x01", "- SOUND EFFECTS -\n"
	.ASCII "\x07\x04", "\n"
	.ASCII "HIROAKI KONDO\n"
	.ASCII "\n"
	.ASCII "TAKAJO YUUKISS\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\x07\x01", "- CHARACTER DESIGN -\n"
	.ASCII "\x07\x04", "\n"
	.ASCII " HARUKI SUETSUGU\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\x07\x01", "- EDITORIAL DESIGN -\n"
	.ASCII "\x07\x04", "\n"
	.ASCII "MIDUHO TOYONAGA\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\x07\x01", "- TITLE LOGO -\n"
	.ASCII "\x07\x04", "\n"
	.ASCII "SHOEI\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\x07\x01", "- SUPERVISORS -\n"
	.ASCII "\x07\x04", "\n"
	.ASCII "Y.YAMADA\n"
	.ASCII "\n"
	.ASCII "M.NARITA\n"
	.ASCII "\n"
	.ASCII "T.TEZUKA\n"
	.ASCII "\n"
	.ASCII "Y.YAMASHITA\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\x07\x01", "- SOUND ADVISOR -\n"
	.ASCII "\x07\x04", "\n"
	.ASCII "K.KONDO\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\x07\x01", "- PLANNER SUPPORT -\n"
	.ASCII "\x07\x04", "\n"
	.ASCII "NOSETAKE\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\x07\x01", "- NORTH AMERICAN LOCALIZATION -\n"
	.ASCII "\x07\x04", "\n"
	.ASCII "NATE BIHLDORFF\n"
	.ASCII "\n"
	.ASCII "BILL TRINEN\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\x07\x01", "- LOCALIZATION MANAGEMENT -\n"
	.ASCII "\x07\x04", "\n"
	.ASCII "JEFF MILLER\n"
	.ASCII "\n"
	.ASCII "LESLIE SWAN\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\x07\x01", "- SPECIAL THANKS -\n"
	.ASCII "\x07\x04", "\n"
	.ASCII "SUPER MARIO CLUB\n"
	.ASCII "\n"
	.ASCII "CAPCOM BCR\n"
	.ASCII "\n"
	.ASCII "MEGAMAN CLUB\n"
	.ASCII "\n"
	.ASCII "NOA ENGINEERING DEBUG TEAM\n"
	.ASCII "\n"
	.ASCII "ORIGINAL ZELDA STAFF\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\x07\x01", "- PRODUCERS -\n"
	.ASCII "\x07\x04", "\n"
	.ASCII "NORITAKA FUNAMIZU\n"
	.ASCII "\n"
	.ASCII "YOSHIHIRO SUDO\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\x07\x01", "- GENERAL PRODUCERS -\n"
	.ASCII "\x07\x04", "\n"
	.ASCII "SHIGERU MIYAMOTO\n"
	.ASCII "\n"
	.ASCII "YOSHIKI OKAMOTO\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\x07\x01", "- EXECUTIVE PRODUCER -\n"
	.ASCII "\x07\x04", "\n"
	.ASCII "SATORU IWATA\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "Developed by\n"
	.ASCII "\n"
	.ASCII "\n"
	.ASCII "\x02\x90", "\x02\x90", "\x02\x90", "\x02\x90", "\n"
	.ASCII "\n"
	.ASCII "\x02\x90", "\x02\x90", "\x02\x90", "\n"
	.ASCII "All Rights, including the copyrights of\n"
	.ASCII "Game, Scenario, Music and Program,\n"
	.ASCII "reserved by NINTENDO.\0"

	.GLOBAL gText_4swords_086421C9
gText_4swords_086421C9:
	.ASCII "\n"
	.ASCII "There are no files to copy.\n\0"

	.GLOBAL gText_4swords_086421E7
gText_4swords_086421E7:
	.ASCII "\n"
	.ASCII "There are no files to erase.\n\0"

	.GLOBAL gText_4swords_08642206
gText_4swords_08642206:
	.ASCII "\n"
	.ASCII "There are no empty files.\n\0"

	.GLOBAL gText_4swords_08642222
gText_4swords_08642222:
	.ASCII "\n"
	.ASCII "The game did not save properly.\n\0"

	.GLOBAL gText_4swords_08642244
gText_4swords_08642244:
	.ASCII "File ", "\x02\x80", "'s saved data is\n"
	.ASCII "corrupted.\0"

	.GLOBAL gText_4swords_08642267
gText_4swords_08642267:
	.ASCII "\n"
	.ASCII "Now copying...\n"
	.ASCII "Do not turn the power off.\n\0"

	.GLOBAL gText_4swords_08642293
gText_4swords_08642293:
	.ASCII "\n"
	.ASCII "The file couldn't be copied.\n\0"

	.GLOBAL gText_4swords_086422B2
gText_4swords_086422B2:
	.ASCII "\n"
	.ASCII "The file couldn't be created.\n\0"

	.GLOBAL gText_4swords_086422D2
gText_4swords_086422D2:
	.ASCII "\n"
	.ASCII "Erasing data...\n"
	.ASCII "Do not turn the power off.\n\0"

	.GLOBAL gText_4swords_086422FF
gText_4swords_086422FF:
	.ASCII "\n"
	.ASCII "Now saving...\n"
	.ASCII "Do not turn power off.\n\0"

	.BYTE 0, 0, 0, 0, 0, 0, 0

	.GLOBAL gText_4swords_0864232D
gText_4swords_0864232D:
	.ASCII "You can now journey through\n"
	.ASCII "the palace of the Four Sword\n"
	.ASCII "in A Link to the Past!\0"

	.GLOBAL gText_4swords_0864237D
gText_4swords_0864237D:
	.ASCII "Take your bug-catching net to\n"
	.ASCII "the woodcutter's house in\n"
	.ASCII "A Link to the Past.\0"

	.GLOBAL gText_4swords_086423C9
gText_4swords_086423C9:
	.ASCII "You will now shoot out sword\n"
	.ASCII "beams when your life meter is\n"
	.ASCII "full in Four Swords!\0"

	.GLOBAL gText_4swords_08642419
gText_4swords_08642419:
	.ASCII "You can now do the Hurricane Spin\n"
	.ASCII "in Four Swords!\0"

	.GLOBAL gText_4swords_0864244B
gText_4swords_0864244B:
	.ASCII "\n"
	.ASCII "Save completed...\n\0"

	.INCBIN "baserom.gba", 0x64245F, 0x6424B1-0x64245F

	.GLOBAL gText_4swords_086424B1
gText_4swords_086424B1:
	.ASCII "\x02\x93", "We have arrived.\n"
	.ASCII "\x0BZ\n"
	.ASCII "That is the sacred blade I spoke of,\n"
	.ASCII "the Four Sword. Sealed away in its\x0BZ\n"
	.ASCII "forged steel is Vaati, the wind mage.\n"
	.ASCII "Lately I have been sensing weakness\x0BZ\n"
	.ASCII "in the seal. It worries me.\n"
	.ASCII "That is why we have come here...\x06x\x06\xFF\0"

	.GLOBAL gText_4swords_0864259E
gText_4swords_0864259E:
	.ASCII "\x02\x93", "Be careful.\n"
	.ASCII "\x0BZ\n"
	.ASCII "It is said that the body of one who\n"
	.ASCII "touches this blade will be shattered\x0BZ\n"
	.ASCII "to pieces. It has mysterious powers...\n"
	.ASCII "\x0BZ\n"
	.ASCII "Legends say that when mighty Vaati\n"
	.ASCII "attacked, a hero arose and saved the\x0Bx\n"
	.ASCII "people from destruction. They go on to\n"
	.ASCII "say that by using this sword, the one\x0Bx\n"
	.ASCII "was as four, and the four combined\n"
	.ASCII "their strength!\x06x\x06\xFF\0"

	.GLOBAL gText_4swords_086426F4
gText_4swords_086426F4:
	.ASCII "\x02\x93", "Let's check the seal...\n"
	.ASCII "Step back a moment.\x06Z\x06\xFF\0"

	.GLOBAL gText_4swords_08642726
gText_4swords_08642726:
	.ASCII "\x02\x94", "Hoh hoh hoh hoh! Have you some\n"
	.ASCII "business with me?\x0B\x96\n"
	.ASCII "So, you noticed that the seal was\n"
	.ASCII "weakening?\x06\x96\x06\xFF\0"

	.GLOBAL gText_4swords_0864278C
gText_4swords_0864278C:
	.ASCII "\x02\x93", "How rude!\x06< Release me!\x06x\x06\xFF\0"

	.GLOBAL gText_4swords_086427AA
gText_4swords_086427AA:
	.ASCII "\x02\x94", "Eh?\n"
	.ASCII "\x0B<\n"
	.ASCII "I sensed a great power approaching,\n"
	.ASCII "so I hid myself.\x0BZ\n"
	.ASCII "But my, what a lovely catch! Surely\n"
	.ASCII "you must be some noble maiden.\x0BZ\n"
	.ASCII "My name is Vaati. I am the great wind\n"
	.ASCII "mage! The seal is broken...\x0BZ\n"
	.ASCII "so I shall rage yet again!\n"
	.ASCII "\x0BZ\n"
	.ASCII "Hoh hoh hoh! And what a gift awaits my\n"
	.ASCII "return! I shall make you my bride!\x0BZ\n"
	.ASCII "Onward we go, to my palace of winds!\n"
	.ASCII "Hoh hoh hoh!\x06Z\x06\xFF\0"

	.GLOBAL gText_4swords_08642913
gText_4swords_08642913:
	.ASCII "\x02\x93", "EEEEEEK! Help me!\x06", "Z\x06\xFF\0"

	.GLOBAL gText_4swords_0864292B
gText_4swords_0864292B:
	.ASCII "\x02\x91", "Open your eyes...\x06", "x\x06\xFF\0"

	.GLOBAL gText_4swords_08642943
gText_4swords_08642943:
	.ASCII "\x02\x91", "Young hero...\x06", "d\x06\xFF\0"

	.GLOBAL gText_4swords_08642957
gText_4swords_08642957:
	.ASCII "\x02\x91", "The Princess Zelda has been carried\n"
	.ASCII "off to Vaati's Palace.\x0B", "x\n"
	.ASCII "Hurry! You must go to her...\x06", "x\x06\xFF\0"

	.GLOBAL gText_4swords_086429B7
gText_4swords_086429B7:
	.ASCII "\x02\x91", "But you cannot go alone...\x06", "x\x06\xFF\0"

	.GLOBAL gText_4swords_086429D8
gText_4swords_086429D8:
	.ASCII "\x02\x91", "You have need of the Four Sword...\x06", "x\x06\xFF\0"

	.GLOBAL gText_4swords_08642A01
gText_4swords_08642A01:
	.ASCII "\x02\x91", "Draw out the blade...\x06", "x\x06\xFF\0"

	.GLOBAL gText_4swords_08642A1D
gText_4swords_08642A1D:
	.ASCII "\x02\x91", "No matter how mighty the enemy, with\n"
	.ASCII "the power of four, you can defeat it...\x06", "x\x06\xFF\0"

	.GLOBAL gText_4swords_08642A70
gText_4swords_08642A70:
	.ASCII "\x02\x91", "The Great Fairies ahead know the path\n"
	.ASCII "to his palace...\x06", "x\x06\xFF\0"

	.GLOBAL gText_4swords_08642AAD
gText_4swords_08642AAD:
	.ASCII "\x02\x91", "If the Great Fairies acknowledge your\n"
	.ASCII "abilities, they will show you the way.\x06", "x\x06\xFF\0"

	.GLOBAL gText_4swords_08642B00
gText_4swords_08642B00:
	.ASCII "\x02\x91", "If you are able to gather many Rupees\n"
	.ASCII "along the path to the Great Fairies,\x0B", "x\n"
	.ASCII "they will likely acknowledge your\n"
	.ASCII "courage...\x06", "x\x06\xFF\0"

	.GLOBAL gText_4swords_08642B80
gText_4swords_08642B80:
	.ASCII "\x02\x91", "Please rescue the princess...\x06", "x\x06\xFF\0"

	.INCBIN "baserom.gba", 0x642BA4, 0x642C98-0x642BA4
	.GLOBAL gText_4swords_08642C98
gText_4swords_08642C98:
	.ASCII "Welcome to our cave, young heroes!\n"
	.ASCII "You will find many traps and puzzles\n"
	.ASCII "in the areas ahead.\n"
	.ASCII "We will give you advice that will aid you\n"
	.ASCII "in your quest. Do not fail to heed it.\n"
	.ASCII "\x07\x82", "When each of you stands on a red ", "\x07\x80", "warp\n"
	.ASCII "zone", "\x07\x82", ", all will be transported to\n"
	.ASCII "another floor, where you will learn\n"
	.ASCII "about many items.\n"
	.ASCII "Begin by standing on the ", "\x07\x80", "warp zones", "\x07\x82", "\n"
	.ASCII "ahead. The one below will take you\n"
	.ASCII "back to the map.\0"

	.GLOBAL gText_4swords_08642E24
gText_4swords_08642E24:
	.ASCII "\x07\x82", "The lovely jewel you have found is a\n"
	.ASCII "\x0D\x12", "Rupee. Your Rupees are counted in\n"
	.ASCII "the bottom-right corner of your\n"
	.ASCII "screen. The Rupees each of you\n"
	.ASCII "gather are pooled in a single wallet\n"
	.ASCII "for all. If one of you fails in your\n"
	.ASCII "quest, he can be revived for\n"
	.ASCII "50 Rupees. But the cost for revival will\n"
	.ASCII "increase each time one of you fails...\n"
	.ASCII "And while there is one wallet, your\n"
	.ASCII "individual efforts are being watched\n"
	.ASCII "by us fairies. And your efforts shall\n"
	.ASCII "certainly be rewarded.\n"
	.ASCII "He who gathers the most Rupees will be\n"
	.ASCII "acknowledged as the greatest hero.\0"

	.GLOBAL gText_4swords_08643035
gText_4swords_08643035:
	.ASCII "\x07\x86", "The ", "\x0D\x5B", " and ", "\x0D\x5C", " that you see on the\n"
	.ASCII "ground are switches.\n"
	.ASCII "Step on the switches to move traps and\n"
	.ASCII "stones.\n"
	.ASCII "A switch ", "\x0D\x5B", " only operates while one of\n"
	.ASCII "you is standing on it.\0"

	.GLOBAL gText_4swords_086430DB
gText_4swords_086430DB:
	.ASCII "\x07\x86", "There are some ", "\x07\x84", "blocks", "\x07\x86", " you can push.\n"
	.ASCII "If you see a conspicuous ", "\x07\x84", "block", "\x07\x86", ",\n"
	.ASCII "\x07\x8C", "press ", "\x0D\xDD", " in the direction you want to\n"
	.ASCII "\x07\x86", "push the ", "\x07\x84", "block", "\x07\x86", ".\n"
	.ASCII "Everyone will have to cooperate to\n"
	.ASCII "push ", "\x07\x84", "big blocks", "\x07\x86", ".\0"

	.GLOBAL gText_4swords_0864319F
gText_4swords_0864319F:
	.ASCII "\x0D\xC8", " If you strike your swords\n"
	.ASCII "together, sparks will fly!\n"
	.ASCII "Try this in places where you want to\n"
	.ASCII "light a fire.\0"

	.GLOBAL gText_4swords_0864320A
gText_4swords_0864320A:
	.ASCII "\x07\x86", "\x0D\x5B", " If you all step on switches at the\n"
	.ASCII "same time, a nearby device will move.\n"
	.ASCII "If you do not have enough people, try\n"
	.ASCII "placing ", "\x07\x84", "statues", "\x07\x86", " on switches.\0"

	.GLOBAL gText_4swords_0864329F
gText_4swords_0864329F:
	.ASCII "Some switches are too strong for one\n"
	.ASCII "person to press them down.\n"
	.ASCII "All will need to step on these.\0"

	.GLOBAL gText_4swords_086432FF
gText_4swords_086432FF:
	.ASCII "We don't need this, do we?\0"

	.GLOBAL gText_4swords_0864331A
gText_4swords_0864331A:
	.ASCII "\x07\x82", "\x0D\x15", " If you have a ", "\x07\x80", "Small Key", "\x07\x82", ", you can\n"
	.ASCII "\x07\x86", "use it to get past ", "\x07\x84", "locked blocks", "\x07\x86", ".\0"

	.GLOBAL gText_4swords_0864336C
gText_4swords_0864336C:
	.ASCII "\x07\x86", "You will find areas of ", "\x07\x84", "shallow", "\x07\x86", " and ", "\x07\x84", "deep\n"
	.ASCII "water", "\x07\x86", ". Once you enter ", "\x07\x84", "deep water", "\x07\x86", ", you\n"
	.ASCII "can only climb out of it into nearby\n"
	.ASCII "\x07\x84", "shallow water", "\x07\x86", " areas. When swimming in\n"
	.ASCII "\x07\x84", "deep water", "\x07\x86", " press", "\x0D\xC0", "\x07\x8C", "to swim and", "\x0D\xC1", "\n"
	.ASCII "to dive.\n"
	.ASCII "Take care not to get sucked in by the\n"
	.ASCII "\x07\x84", "whirlpools", "\x07\x86", ".\0"

	.GLOBAL gText_4swords_0864347C
gText_4swords_0864347C:
	.ASCII "\x07\x86", "You will also find ", "\x07\x84", "currents", "\x07\x86", " and ", "\x07\x84", "rapids\n"
	.ASCII "\x07\x86", "in the water. If you exert some effort,\n"
	.ASCII "you can swim against ", "\x07\x84", "currents", "\x07\x86", ", but\n"
	.ASCII "you'll never get past ", "\x07\x84", "rapids", "\x07\x86", ".\0"

	.GLOBAL gText_4swords_0864351E
gText_4swords_0864351E:
	.ASCII "If you strike cracked walls with your\n"
	.ASCII "sword ", "\x0D\xC8", " , the walls may break.\0"

	.GLOBAL gText_4swords_08643564
gText_4swords_08643564:
	.ASCII "You can stand in front of an item and\n"
	.ASCII "press", "\x0D\xC0", "to trade the item you have\n"
	.ASCII "for the one before you.\n"
	.ASCII "But remember...you will find some\n"
	.ASCII "enemies cannot be defeated without\n"
	.ASCII "\x07\x86", "using a Shield ", "\x0D\x49", ".\0"

	.GLOBAL gText_4swords_0864361E
gText_4swords_0864361E:
	.ASCII "\x07\x82", "You can become small when you wear\n"
	.ASCII "the Gnat Hat ", "\x0D\x11", ".\n"
	.ASCII "Then you can go through tiny holes\n"
	.ASCII "without any trouble at all!\n"
	.ASCII "But remember, you can carry only\n"
	.ASCII "one item at a time.\0"

	.GLOBAL gText_4swords_086436C8
gText_4swords_086436C8:
	.ASCII "Only one whose color matches what is\n"
	.ASCII "seen below can walk here.\n"
	.ASCII "Anyone else will fall through. It is a\n"
	.ASCII "very mystical path...\0"

	.GLOBAL gText_4swords_08643744
gText_4swords_08643744:
	.ASCII "Only one of the same color can see\n"
	.ASCII "the tiles ahead.\n"
	.ASCII "But even one who can't see them can\n"
	.ASCII "walk across them...\0"

	.GLOBAL gText_4swords_086437B0
gText_4swords_086437B0:
	.ASCII "This strange platform moves in the\n"
	.ASCII "direction of the arrow you stand on.\n"
	.ASCII "Be careful! Haste leads to trouble.\n"
	.ASCII "\n"
	.ASCII "\x07\x86", "The switch ", "\x0D\x5B", " beside you recalls\n"
	.ASCII "the platform to this spot.\0"

	.GLOBAL gText_4swords_0864385B
gText_4swords_0864385B:
	.ASCII "If you can get the ball on the floor\n"
	.ASCII "into the hole in the wall, you'll receive\n"
	.ASCII "a spectacular reward! Are you up to\n"
	.ASCII "the challenge?\0"

	.GLOBAL gText_4swords_086438DD
gText_4swords_086438DD:
	.ASCII "Congratulations! You've reached\n"
	.ASCII "the end!\n"
	.ASCII "\x07\x82", "Step on the ", "\x07\x80", "warp zones", "\x07\x82", " to return to\n"
	.ASCII "the previous floor.\0"

	.GLOBAL gText_4swords_08643944
gText_4swords_08643944:
	.ASCII "Press ", "\x0D\xC3", " when standing before a tuft\n"
	.ASCII "of grass, a rock, or a pot to lift it.\0"

	.GLOBAL gText_4swords_08643990
gText_4swords_08643990:
	.ASCII "If you all approach one side of a\n"
	.ASCII "large rock and combine your might,\n"
	.ASCII "you will be able to lift it over\n"
	.ASCII "your heads!\0"

	.GLOBAL gText_4swords_08643A02
gText_4swords_08643A02:
	.ASCII "You can even lift companions and throw\n"
	.ASCII "them across gaps.\0"

	.GLOBAL gText_4swords_08643A3B
gText_4swords_08643A3B:
	.ASCII "There are some monsters you cannot\n"
	.ASCII "defeat unless you pull them from the\n"
	.ASCII "left or right. Be wary of such beasts!\0"

	.GLOBAL gText_4swords_08643AAA
gText_4swords_08643AAA:
	.ASCII "There are some enemies you can lift\n"
	.ASCII "over your head and throw.\n"
	.ASCII "You can even throw them into flames!\0"

	.GLOBAL gText_4swords_08643B0D
gText_4swords_08643B0D:
	.ASCII "If you press ", "\x0D\xC3", " to grab the lever\n"
	.ASCII "below, you can press", "\x0D\xDD", " in the\n"
	.ASCII "opposite direction to pull the lever.\0"

	.GLOBAL gText_4swords_08643B73
gText_4swords_08643B73:
	.ASCII "You can press ", "\x0D\xC3", " to grab small\n"
	.ASCII "\x07\x84", "statues ", "\x07\x86", "and use", "\x07\x8C", "\x0D\xDD", " to pull them.\0"

	.GLOBAL gText_4swords_08643BB8
gText_4swords_08643BB8:
	.ASCII "Some enemies lose their shells when you\n"
	.ASCII "throw them. Without their shells,\n"
	.ASCII "they're defenseless!\0"

	.GLOBAL gText_4swords_08643C17
gText_4swords_08643C17:
	.ASCII "Press ", "\x0D\xC3", " to lift the shining blue\n"
	.ASCII "crystals. Then press it again to place\n"
	.ASCII "them on another pedestal. Doing so will\n"
	.ASCII "activate certain devices.\n"
	.ASCII "If you drop a crystal and it shatters,\n"
	.ASCII "you must do it all over again.\0"

	.GLOBAL gText_4swords_08643CE8
gText_4swords_08643CE8:
	.ASCII "Don't need this.\0"

	.GLOBAL gText_4swords_08643CF9
gText_4swords_08643CF9:
	.ASCII "\x07\x86", "You can use Bombs ", "\x0D\x4D", " to destroy\n"
	.ASCII "cracked ", "\x07\x84", "blocks", "\x07\x86", ".\n"
	.ASCII "\x07\x8C", "Press", "\x0D\xC0", " to take out a Bomb, then\n"
	.ASCII "press", "\x0D\xC0", " again to throw it.\n"
	.ASCII "If you press", "\x0D\xC0", " again after the Bomb\n"
	.ASCII "falls to the ground, you can blow it up!\0"

	.GLOBAL gText_4swords_08643DBA
gText_4swords_08643DBA:
	.ASCII "\x07\x86", "You can throw Bombs ", "\x0D\x4D", " over low walls\n"
	.ASCII "to blow things up on the other side.\0"

	.GLOBAL gText_4swords_08643E07
gText_4swords_08643E07:
	.ASCII "\x07\x86", "You can use Bombs ", "\x0D\x4D", " to blow open\n"
	.ASCII "cracked walls, too.\0"

	.GLOBAL gText_4swords_08643E3F
gText_4swords_08643E3F:
	.ASCII "Some walls that don't have cracks can\n"
	.ASCII "also be blown open.\n"
	.ASCII "Hold", "\x0D\xC1", "to hold out your sword ", "\x0D\xC8", " and\n"
	.ASCII "tap the wall. Listen for odd noises!\0"

	.GLOBAL gText_4swords_08643EC2
gText_4swords_08643EC2:
	.ASCII "\x07\x86", "You can also use Bombs ", "\x0D\x4D", " to\n"
	.ASCII "activate the red switch over there.\0"

	.GLOBAL gText_4swords_08643F05
gText_4swords_08643F05:
	.ASCII "\x07\x86", "If your Bombs ", "\x0D\x4D", " won't reach the area\n"
	.ASCII "you're trying to throw them to,\n"
	.ASCII "try throwing them from low walls.\0"

	.GLOBAL gText_4swords_08643F6F
gText_4swords_08643F6F:
	.ASCII "\x07\x8A", "With the Pegasus Shoes ", "\x0D\x8A", ", you can\n"
	.ASCII "\x07\x8C", "run quickly by holding", "\x0D\xC0", ".\n"
	.ASCII "You can even push your companions if\n"
	.ASCII "they are standing in a line.\n"
	.ASCII "You can also run up slippery slopes\n"
	.ASCII "that you couldn't climb otherwise.\0"

	.GLOBAL gText_4swords_08644039
gText_4swords_08644039:
	.ASCII "\x07\x8A", "It feels quite rubbery, but perhaps\n"
	.ASCII "with the Pegasus Shoes ", "\x0D\x8A", "...\0"

	.GLOBAL gText_4swords_0864407C
gText_4swords_0864407C:
	.ASCII "Don't need this.\0"

	.GLOBAL gText_4swords_0864408D
gText_4swords_0864408D:
	.ASCII "\x07\x82", "When using the Bow and Arrow ", "\x0D\x0E", ", hold\n"
	.ASCII "\x07\x8C", "\x0D\xC0", " to put power into your shot!\n"
	.ASCII "There are some objects in the dungeon\n"
	.ASCII "that will move when you shoot them.\0"

	.GLOBAL gText_4swords_08644121
gText_4swords_08644121:
	.ASCII "When you shoot the eye...\0"

	.GLOBAL gText_4swords_0864413B
gText_4swords_0864413B:
	.ASCII "\x07\x82", "Take a deep breath and release your\n"
	.ASCII "bowstrings ", "\x0D\x0E", " simultaneously!\0"

	.GLOBAL gText_4swords_0864417F
gText_4swords_0864417F:
	.ASCII "Don't need this.\0"

	.GLOBAL gText_4swords_08644190
gText_4swords_08644190:
	.ASCII "\x07\x82", "The Boomerang", "\x0D\x0F", " is great for\n"
	.ASCII "retrieving items that are out of reach.\0"

	.GLOBAL gText_4swords_086441D7
gText_4swords_086441D7:
	.ASCII "\x07\x82", "You can use the Boomerang", "\x0D\x0F", " to\n"
	.ASCII "activate switches from a distance.\0"

	.GLOBAL gText_4swords_0864421B
gText_4swords_0864421B:
	.ASCII "Press", "\x0D\xC0", " to jump with the Roc's\n"
	.ASCII "\x07\x86", "Cape ", "\x0D\x4B", ". ", "\x07\x8C", "Hold", "\x0D\xC0", " to jump further!\0"

	.GLOBAL gText_4swords_0864425F
gText_4swords_0864425F:
	.ASCII "\x07\x82", "You can use the Magnetic Glove ", "\x0D\x0C", " to\n"
	.ASCII "pull your companions toward you.\0"

	.GLOBAL gText_4swords_086442A7
gText_4swords_086442A7:
	.ASCII "\x07\x86", "What you see above is a ", "\x07\x84", "gate", "\x07\x86", ".\n"
	.ASCII "\n"
	.ASCII "You can jump up through the ", "\x07\x84", "gate", "\x07\x86", " or\n"
	.ASCII "land on it to jump down through it.\0"

	.GLOBAL gText_4swords_08644318
gText_4swords_08644318:
	.ASCII "\x07\x86", "That is a ", "\x07\x84", "Magnetic block", "\x07\x86", ".\n"
	.ASCII "\n"
	.ASCII "\x07\x82", "With the Magnetic Glove ", "\x0D\x0C", ", you can\n"
	.ASCII "pull yourself to or repel yourself from\n"
	.ASCII "them.\0"

	.GLOBAL gText_4swords_0864438D
gText_4swords_0864438D:
	.ASCII "Press", "\x0D\xC0", " to switch between", "\x07\x82", "\x0D\x1F", " and\n"
	.ASCII "\x07\x86", "\x0D\x60", ".\n"
	.ASCII "\x07\x82", "Use the ", "\x07\x80", "power of repulsion", "\x07\x82", " to cross\n"
	.ASCII "over to the other side.\0"

	.GLOBAL gText_4swords_086443F7
gText_4swords_086443F7:
	.ASCII "\x07\x82", "There are some creatures you cannot\n"
	.ASCII "defeat unless you use the\n"
	.ASCII "Magnetic Glove ", "\x0D\x0C", " against them.\n"
	.ASCII "Be wary of these beasts.\0"

	.GLOBAL gText_4swords_08644470
gText_4swords_08644470:
	.ASCII "\x07\x82", "You can use the Magnetic Glove ", "\x0D\x0C", " to\n"
	.ASCII "pull your companions along if you have\n"
	.ASCII "a wall between you. You can even walk\n"
	.ASCII "as you draw them to you.\0"

	.GLOBAL gText_4swords_086444FD
gText_4swords_086444FD:
	.ASCII "Have you learned much? If so, you\n"
	.ASCII "should be ready for the test below.\0"

	.GLOBAL gText_4swords_08644543
gText_4swords_08644543:
	.ASCII "The mystical seeds you see will\n"
	.ASCII "increase your power by two levels.\n"
	.ASCII "\x07\x80", "Razor Seeds ", "\x07\x82", "\x0D\x1A", " increase sword power.\n"
	.ASCII "\x07\x80", "Armor Seeds", "\x07\x86", " ", "\x0D\x59", " increase defense.\n"
	.ASCII "\x07\x80", "Pegasus Seeds", "\x07\x8A", "\x0D\x98", " increase speed.\0"

	.GLOBAL gText_4swords_086445F8
gText_4swords_086445F8:
	.ASCII "\x07\x82", "The yellow Rupees ", "\x0D\x1E", " that sometimes\n"
	.ASCII "appear after you open a chest or\n"
	.ASCII "defeat an enemy are ", "\x07\x80", "Rupee Shards", "\x07\x82", ".\n"
	.ASCII "If you collect four of them,\n"
	.ASCII "they combine to form a giant Rupee\n"
	.ASCII "worth a total of 500 Rupees.\0"

	.GLOBAL gText_4swords_086446C2
gText_4swords_086446C2:
	.ASCII "You may receive a bonus depending on\n"
	.ASCII "how quickly you are able to get to the\n"
	.ASCII "end of a dungeon. The less time you\n"
	.ASCII "take, the bigger your bonus.\0"

	.GLOBAL gText_4swords_0864474F
gText_4swords_0864474F:
	.ASCII "\x07\x82", "Step into this ", "\x07\x80", "warp zone", "\x07\x82", " to return to\n"
	.ASCII "the stage selection screen.\0"

	.GLOBAL gText_4swords_08644797
gText_4swords_08644797:
	.ASCII "\x07\x82", "Welcome to the first ", "\x07\x80", "warp zone", "\x07\x82", "!\n"
	.ASCII "Enter this ", "\x07\x80", "warp zone", "\x07\x82", " to learn the\n"
	.ASCII "first ", "\x07\x80", "basic techniques", "\x07\x82", " you'll need to\n"
	.ASCII "know for your quest.\0"

	.GLOBAL gText_4swords_08644822
gText_4swords_08644822:
	.ASCII "\x07\x82", "Enter this ", "\x07\x80", "warp zone", "\x07\x82", " to learn the\n"
	.ASCII "\x07\x80", "second set of techniques", "\x07\x82", " you'll need\n"
	.ASCII "on your quest. The ", "\x07\x80", "warp zones", "\x07\x82", " beyond\n"
	.ASCII "these will teach you about items.\0"

	.INCBIN "baserom.gba", 0x6448BE, 0x6448F9-0x6448BE

	.GLOBAL gText_4swords_086448F9
gText_4swords_086448F9:
	.ASCII "\x07\x86", "You got the Shield ", "\x0D\x49", " !  Use it to\n"
	.ASCII "deflect enemy attacks!\0"

	.GLOBAL gText_4swords_08644935
gText_4swords_08644935:
	.ASCII "\x07\x86", "You got Bombs ", "\x0D\x4D", " !  Use them to blast\n"
	.ASCII "open suspicious walls!\n"
	.ASCII "\x07\x8C", "Press", "\x0D\xC0", " after setting them to\n"
	.ASCII "detonate them remotely!\0"

	.GLOBAL gText_4swords_086449AC
gText_4swords_086449AC:
	.ASCII "\x07\x82", "You got the Bow and Arrow ", "\x0D\x0E", " !\n"
	.ASCII "Grab, pull, and fire away!\0"

	.GLOBAL gText_4swords_086449E8
gText_4swords_086449E8:
	.ASCII "\x07\x82", "You got the Boomerang", "\x0D\x0F", "!\n"
	.ASCII "Use it to hit distant objects!\0"

	.GLOBAL gText_4swords_08644A22
gText_4swords_08644A22:
	.ASCII "\x07\x8A", "You got the Pegasus Shoes ", "\x0D\x8A", " !  Dash\n"
	.ASCII "with the speed of the legendary steed!\0"

	.GLOBAL gText_4swords_08644A70
gText_4swords_08644A70:
	.ASCII "\x07\x82", "You got the Magnetic Glove ", "\x0D\x0C", " !\n"
	.ASCII "Attract and repel with magnetic power!\n"
	.ASCII "Release the button to change polarity\n"
	.ASCII "between ", "\x0D\x1F", " and ", "\x0D\x60", ".\0"

	.GLOBAL gText_4swords_08644AF2
gText_4swords_08644AF2:
	.ASCII "\x07\x82", "You got the Gnat Hat ", "\x0D\x11", " !  Wear it\n"
	.ASCII "and watch as you become tiny!\0"

	.BYTE 0

	.GLOBAL gText_4swords_08644B36
gText_4swords_08644B36:
	.ASCII "\x07\x86", "You got BowWow ", "\x0D\x50", " !  He eats anything!\n"
	.ASCII "Beware the mad dog!\0"

	.GLOBAL gText_4swords_08644B73
gText_4swords_08644B73:
	.ASCII "\x07\x86", "You got the Roc's Cape ", "\x0D\x4B", " !  Soar\n"
	.ASCII "in the sky with an extra-long jump!\0"

	.BYTE 0

	.INCBIN "baserom.gba", 0x644BBC, 0x644C11-0x644BBC

	.GLOBAL gText_4swords_08644C11
gText_4swords_08644C11:
	.ASCII "I am the Great Fairy of Forest,\n"
	.ASCII "guardian of the Sea of Trees.\x0Bx\n"
	.ASCII "\x03\x04\0"

	.GLOBAL gText_4swords_08644C54
gText_4swords_08644C54:
	.ASCII "I am the Great Fairy of Ice. I am\n"
	.ASCII "the guardian of Talus Cave.\x0Bx\n"
	.ASCII "\x03\x04\0"

	.GLOBAL gText_4swords_08644C97
gText_4swords_08644C97:
	.ASCII "I am the Great Fairy of Flame,\n"
	.ASCII "guardian of Death Mountain.\x0B<\n"
	.ASCII "\x03\x04\0"

	.GLOBAL gText_4swords_08644CD7
gText_4swords_08644CD7:
	.ASCII "You have done well, young\n"
	.ASCII "adventurers.\x0Bx\n"
	.ASCII "This time, you have managed to collect\n"
	.ASCII "\x07\x8A", "\x0D\x92", " ", "\x02\x80", " Rupees.\x06x\x06\xFF\0"

	.GLOBAL gText_4swords_08644D3B
gText_4swords_08644D3B:
	.ASCII "Unfortunately, this is not enough for\n"
	.ASCII "me to acknowledge your courage.\x0Bx\n"
	.ASCII "Yet I shall remain here, waiting.\n"
	.ASCII "So show me your courage...\x0Bx\n"
	.ASCII "...by collecting more Rupees.\n"
	.ASCII "May we meet again!\x06x\x06\xFF\0"

	.GLOBAL gText_4swords_08644DF7
gText_4swords_08644DF7:
	.ASCII "You have done well to gather so\n"
	.ASCII "much treasure. I dub you...\x0Bx\n"
	.ASCII "little eggs, waiting to hatch into\n"
	.ASCII "heroes.\x0Bx\n"
	.ASCII "\x07\x82", "I grant you this ", "\x07\x80", "Silver Key", "\x07\x82", ".\x06x\x06\xFF\0"

	.GLOBAL gText_4swords_08644E89
gText_4swords_08644E89:
	.ASCII "Collecting this many Rupees is an\n"
	.ASCII "incredible feat! I dub you...\x0Bx\n"
	.ASCII "brave heroes, and grant you this\n"
	.ASCII "\x07\x80", "Golden Key", "\x07\x82", ".\x06x\x06\xFF\0"

	.GLOBAL gText_4swords_08644F00
gText_4swords_08644F00:
	.ASCII "\x07\x82", "There is nothing left to be said.\n"
	.ASCII "I dub you...\x0Bx\n"
	.ASCII "The greatest of heroes, and grant you\n"
	.ASCII "this ", "\x07\x80", "Hero's Key", "\x07\x82", ".\x06x\x06\xFF\0"

	.GLOBAL gText_4swords_08644F72
gText_4swords_08644F72:
	.ASCII "\x07\x82", "If all of you collect the three ", "\x07\x80", "Silver\n"
	.ASCII "Keys", "\x07\x82", " of the Great Fairies of Forest,\x0Bx\n"
	.ASCII "Ice, and Flame, the path to Vaati's\n"
	.ASCII "Palace shall open.\x0Bx\n"
	.ASCII "You can then make your way there to\n"
	.ASCII "rescue Princess Zelda.\x0Bx\n"
	.ASCII "Onward, little hero eggs!\x06x\x06\xFF\0"

	.GLOBAL gText_4swords_0864505A
gText_4swords_0864505A:
	.ASCII "\x07\x82", "You all seem to have collected the\n"
	.ASCII "three ", "\x07\x80", "Silver Keys", "\x07\x82", ".\x0Bx\n"
	.ASCII "Vaati's palace of winds is a great\n"
	.ASCII "castle that floats in the sky.\x0Bx\n"
	.ASCII "Now that you have gathered the keys\n"
	.ASCII "of the Fairies of Forest, Ice and\x0Bx\n"
	.ASCII "Flame, the palace shall appear.\n"
	.ASCII "Onward, young heroes! You must save\x0Bx\n"
	.ASCII "Princess Zelda!\x06x\x06\xFF\0"

	.GLOBAL gText_4swords_0864517E
gText_4swords_0864517E:
	.ASCII "What's that? You should already be\n"
	.ASCII "able to reach Vaati's Palace.\x0Bx\n"
	.ASCII "Hurry! You must rush to Princess\n"
	.ASCII "Zelda's aid! Onward, young heroes!\x06x\x06\xFF\0"

	.GLOBAL gText_4swords_08645209
gText_4swords_08645209:
	.ASCII "\x07\x82", "If all of you collect the three\n"
	.ASCII "\x07\x80", "Golden Keys", "\x07\x82", " of the Great Fairies of\x0Bx\n"
	.ASCII "Forest, Ice, and Flame...\n"
	.ASCII "...the path to Vaati's Palace\x0Bx\n"
	.ASCII "shall open! Onward, heroes!\x06x\x06\xFF\0"

	.GLOBAL gText_4swords_086452AF
gText_4swords_086452AF:
	.ASCII "\x07\x82", "At last all of you have collected the\n"
	.ASCII "three ", "\x07\x80", "Golden Keys", "\x07\x82", ".\x0Bx\n"
	.ASCII "You can now choose the path to \n"
	.ASCII "Vaati's Palace.\x0Bx\n"
	.ASCII "That path will likely be much more\n"
	.ASCII "dangerous than any you've seen yet.\x0Bx\n"
	.ASCII "And yet onward you must go,\n"
	.ASCII "great heroes!\x06x\x06\xFF\0"

	.GLOBAL gText_4swords_08645399
gText_4swords_08645399:
	.ASCII "\x07\x82", "If all of you gather the ", "\x07\x80", "Hero Keys", "\x07\x82", " of\n"
	.ASCII "the Great Fairies of Forest, Ice, and\x0Bx\n"
	.ASCII "Flame, a path to Vaati's Palace\n"
	.ASCII "shall open.\x0Bx\n"
	.ASCII "Onward, great heroes!\x06x\x06\xFF\0"

	.GLOBAL gText_4swords_08645435
gText_4swords_08645435:
	.ASCII "\x07\x82", "At long last all of you have gathered\n"
	.ASCII "the three ", "\x07\x80", "Hero's Keys", "\x07\x82", ".\x0Bx\n"
	.ASCII "You should now be able to choose the\n"
	.ASCII "path to Vaati's Palace.\x0Bx\n"
	.ASCII "It is a path of twelve levels, all more\n"
	.ASCII "dangerous than those you've seen.\x0Bx\n"
	.ASCII "Yet onward you must go, great heroes!\x06x\x06\xFF\0"

	.GLOBAL gText_4swords_0864552F
gText_4swords_0864552F:
	.ASCII "You have done well to collect so many\n"
	.ASCII "Rupees. But you must strive to reach\x0Bx\n"
	.ASCII "greater heights. Show us your courage\n"
	.ASCII "by gathering more Rupees!\x0Bx\n"
	.ASCII "\x07\x82", "Only then shall we dub you to be the\n"
	.ASCII "greatest of heroes, and only then\x0Bx\n"
	.ASCII "shall I grant you the ", "\x07\x80", "Key", "\x07\x82", " that opens a\n"
	.ASCII "harder path. May we meet again!\x06x\x06\xFF\0"

	.BYTE 0

	.INCBIN "baserom.gba", 0x645659, 0x645675-0x645659

	.GLOBAL gText_4swords_08645675
gText_4swords_08645675:
	.ASCII "\x02\x94", "Gwoh hoh hoh hoh hoh hoh!\n"
	.ASCII "\x0B<\n"
	.ASCII "Welcome to my palace!\n"
	.ASCII "\x06x\x06\xFF\0"

	.GLOBAL gText_4swords_086456AF
gText_4swords_086456AF:
	.ASCII "\x02\x94", "I never thought you would be so bold\n"
	.ASCII "as to pursue the maiden, Zelda, until\x0B<\n"
	.ASCII "you stood before me. Eh? What's that?\n"
	.ASCII "That blade you have...\x0B<\n"
	.ASCII "Is that not the accursed Four Sword?\n"
	.ASCII "\x0B<\n"
	.ASCII "So it is the power of that blade that\n"
	.ASCII "has brought you this far...\x0B<\n"
	.ASCII "Hoh hoh hoh hoh hoh!\n"
	.ASCII "\x06x\x0B<\n"
	.ASCII "Did you think a dull and rusty blade\n"
	.ASCII "such as that could defeat me again?\x0B<\n"
	.ASCII "You know not your own folly! Watch now\n"
	.ASCII "as the hunted becomes the hunter!\x06x\x06\xFF\0"

	.GLOBAL gText_4swords_0864585B
gText_4swords_0864585B:
	.ASCII "\x02\x94", "Gwoh hoh hoh hoh hoh hoh hoh!\n"
	.ASCII "\x0B<\n"
	.ASCII "Prepare to meet the full might of Vaati\n"
	.ASCII "the wind mage!\x06x\x06\xFF\0"

	.GLOBAL gText_4swords_086458B9
gText_4swords_086458B9:
	.ASCII "\x02\x94", "Gwohhhhh-ohhhhh-hohhhhh! Did you\n"
	.ASCII "think you could just leave? Fools!!!\x0B\x1E\n"
	.ASCII "Impertinent brats! I'll shatter the Four\n"
	.ASCII "Sword and cast its pieces to the wind!\x06\x1E\x06\xFF\0"

	.INCBIN "baserom.gba", 0x645957, 0x645980-0x645957

	.GLOBAL gText_4swords_08645980
gText_4swords_08645980:
	.ASCII "\x02\x94", "Gwohhhhhhhhhhh... I've been felled\n"
	.ASCII "by a bunch of young kids?! \x0B<\n"
	.ASCII "My b-body! My being! I'm being sucked\n"
	.ASCII "into the Four Sword!\x06x\x06\xFF\0"

	.GLOBAL gText_4swords_08645A02
gText_4swords_08645A02:
	.ASCII "\x02\x94", "Gwohhhhhhhhhh...\x06x\x06\xFF\0"

	.GLOBAL gText_4swords_08645A19
gText_4swords_08645A19:
	.ASCII "\x02\x93", "Uhhhnnn...\x06x\x06\xFF\0"

	.GLOBAL gText_4swords_08645A2A
gText_4swords_08645A2A:
	.ASCII "\x02\x93", "Oh! You saved me, didn't you?\n"
	.ASCII "Thank you!\x0B<\n"
	.ASCII "But this time, something seems\n"
	.ASCII "different...\x06x\x06\xFF\0"

	.GLOBAL gText_4swords_08645A87
gText_4swords_08645A87:
	.ASCII "\x02\x93", "Why!? There are ", "\x02\x80", " of you! So the\n"
	.ASCII "legend of the Four Sword was true!\x0B<\n"
	.ASCII "But how can we get you back to\n"
	.ASCII "normal?\x06x\x06\xFF\0"

	.GLOBAL gText_4swords_08645AFB
gText_4swords_08645AFB:
	.ASCII "\x02\x93", "The Four Sword is the only blade that\n"
	.ASCII "can contain the wind mage.\x0B<\n"
	.ASCII "Since you have fulfilled that destiny,\n"
	.ASCII "the sword's power over you will fade.\x0B<\n"
	.ASCII "Now, let us return!\n"
	.ASCII "And let us return the Four Sword\x0B<\n"
	.ASCII "to its shrine once again.\x06x\x06\xFF\0"

	.BYTE 0
