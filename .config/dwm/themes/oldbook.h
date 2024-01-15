
static const char col_background[]  		= "#E9E2C9";
static const char col_background_sel[]       	= "#E9E2C9";
static const char col_foreground[]     		= "#585148";
static const char col_red[]       		= "#7A1405";
static const char col_green[]        		= "#333F0A";
static const char col_purple[]        		= "#513E56";
static const char col_pink[]        		= "#674F6E";
static const char col_yellow[]        		= "#957C16";
static const char col_orange[]        		= "#583A24";
static const char col_blue[]        		= "#2A5173";

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
static const char *tags[] = { "", "", "", "", "", "", "", "", "" };

