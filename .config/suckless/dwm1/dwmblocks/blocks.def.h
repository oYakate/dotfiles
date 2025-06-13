//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
  
  {"[", "echo -", 		120,		0},

  {"🔊 ", "$HOME/.config/suckless/dwm/scripts/volume.sh", 		5,		0},

  {"💻 ", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g",	10,		0},

	{"🗓️ ", "date '+%b %d (%a)'",        					60,		0},
	
  {"🕒 ", "date +%I:%M%p",             					20,		0},
  

  {"-", "echo ]", 		120,		0},
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
