
static const char col_background[]  		= "#282A36";
static const char col_background_sel[]       	= "#282A36";
static const char col_foreground[]     		= "#F8F8F2";
static const char col_red[]       		= "#FF5555";
static const char col_green[]        		= "#50FA7B";
static const char col_purple[]        		= "#BD93F9";
static const char col_pink[]        		= "#FF79C6";
static const char col_yellow[]        		= "#F1FA8C";
static const char col_orange[]        		= "#FFB86C";
static const char col_blue[]        		= "#6272A4";

/* appearance */
static const unsigned int borderpx  = 1;        /* border pixel of windows */
static const unsigned int snap      = 32;       /* snap pixel */
static const unsigned int gappih    = 10;       /* horiz inner gap between windows */
static const unsigned int gappiv    = 10;       /* vert inner gap between windows */
static const unsigned int gappoh    = 10;       /* horiz outer gap between windows and screen edge */
static const unsigned int gappov    = 10;       /* vert outer gap between windows and screen edge */
static       int smartgaps          = 0;        /* 1 means no outer gap when there is only one window */
static const int showbar            = 1;        /* 0 means no bar */
static const int topbar             = 1;        /* 0 means bottom bar */
static const int user_bh            = 7;        /* 2 is the default spacing around the bar's font */
static const char *fonts[]          = { "JetBrainsMono Nerd Font:size=10", "FontAwesome:size=10", "monospace:size=10" };
static const char dmenufont[]       = "JetBrainsMono Nerd Font:size=10";
static const char *colors[][3]      = {
        /*               fg                     bg              border   */
        [SchemeNorm] = { col_foreground, col_background, col_background },
        [SchemeSel]  = { col_foreground, col_background_sel,  col_orange  },
};

static const char *tagsel[][2] = {
   /*   fg               bg    */
  { col_foreground, col_background }, /* norm */
  { col_orange, col_background_sel  }, /* sel */
  { col_blue,  col_background }, /* occ but not sel */
  { col_red,  col_background_sel }, /* has pinned tag */
};
/* tagging */
static const char *tags[] = { "main", "dev", "dev2", "testing", "learn", "dsc", "mail", "fun", "www" };

