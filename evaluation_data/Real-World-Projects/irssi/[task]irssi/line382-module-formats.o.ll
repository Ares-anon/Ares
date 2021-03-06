; ModuleID = './line382-module-formats.o.i'
source_filename = "./line382-module-formats.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._FORMAT_REC = type { i8*, i8*, i32, [10 x i32] }

@.str = private unnamed_addr constant [8 x i8] c"fe-text\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Text user interface\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Lastlog\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"lastlog_too_long\00", align 1
@.str.4 = private unnamed_addr constant [94 x i8] c"/LASTLOG would print $0 lines. If you really want to print all these lines use -force option.\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"lastlog_count\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"{hilight Lastlog}: $0 lines\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"lastlog_start\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"{hilight Lastlog}:\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"lastlog_end\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"{hilight End of Lastlog}\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"lastlog_separator\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"lastlog_date\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%%F \00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Windows\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"refnum_not_found\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"Window number $0 not found\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"window_too_small\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"Not enough room to resize this window\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"cant_hide_last\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"You can't hide the last window\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"cant_hide_sticky_windows\00", align 1
@.str.23 = private unnamed_addr constant [64 x i8] c"You can't hide sticky windows (use /SET autounstick_windows ON)\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"cant_show_sticky_windows\00", align 1
@.str.25 = private unnamed_addr constant [64 x i8] c"You can't show sticky windows (use /SET autounstick_windows ON)\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"window_not_sticky\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"Window is not sticky\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"window_set_sticky\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"Window set sticky\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"window_unset_sticky\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"Window is not sticky anymore\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"window_info_sticky\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"%#Sticky  : $0\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"window_info_scroll\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"%#Scroll  : $0\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"window_scroll\00", align 1
@.str.37 = private unnamed_addr constant [29 x i8] c"Window scroll mode is now $0\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"window_scroll_unknown\00", align 1
@.str.39 = private unnamed_addr constant [51 x i8] c"Unknown scroll mode $0, must be ON, OFF or DEFAULT\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"window_hidelevel\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"Window hidden level is now $0\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"Statusbars\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"statusbar_list_header\00", align 1
@.str.44 = private unnamed_addr constant [67 x i8] c"%#Name                           Type   Placement Position Visible\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"statusbar_list_footer\00", align 1
@.str.46 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"statusbar_list\00", align 1
@.str.48 = private unnamed_addr constant [30 x i8] c"%#$[30]0 $[6]1 $[9]2 $[8]3 $4\00", align 1
@.str.49 = private unnamed_addr constant [20 x i8] c"statusbar_info_name\00", align 1
@.str.50 = private unnamed_addr constant [26 x i8] c"%#Statusbar: {hilight $0}\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"statusbar_info_type\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"%#Type     : $0\00", align 1
@.str.53 = private unnamed_addr constant [25 x i8] c"statusbar_info_placement\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"%#Placement: $0\00", align 1
@.str.55 = private unnamed_addr constant [24 x i8] c"statusbar_info_position\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"%#Position : $0\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"statusbar_info_visible\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"%#Visible  : $0\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"statusbar_info_item_header\00", align 1
@.str.60 = private unnamed_addr constant [69 x i8] c"%#Items    : Name                                Priority  Alignment\00", align 1
@.str.61 = private unnamed_addr constant [27 x i8] c"statusbar_info_item_footer\00", align 1
@.str.62 = private unnamed_addr constant [25 x i8] c"statusbar_info_item_name\00", align 1
@.str.63 = private unnamed_addr constant [29 x i8] c"%#         : $[35]0 $[9]1 $2\00", align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"statusbar_not_found\00", align 1
@.str.65 = private unnamed_addr constant [28 x i8] c"Statusbar doesn't exist: $0\00", align 1
@.str.66 = private unnamed_addr constant [26 x i8] c"Statusbar is disabled: $0\00", align 1
@.str.67 = private unnamed_addr constant [25 x i8] c"statusbar_item_not_found\00", align 1
@.str.68 = private unnamed_addr constant [33 x i8] c"Statusbar item doesn't exist: $0\00", align 1
@.str.69 = private unnamed_addr constant [26 x i8] c"statusbar_unknown_command\00", align 1
@.str.70 = private unnamed_addr constant [30 x i8] c"Unknown statusbar command: $0\00", align 1
@.str.71 = private unnamed_addr constant [23 x i8] c"statusbar_unknown_type\00", align 1
@.str.72 = private unnamed_addr constant [42 x i8] c"Statusbar type must be 'window' or 'root'\00", align 1
@.str.73 = private unnamed_addr constant [28 x i8] c"statusbar_unknown_placement\00", align 1
@.str.74 = private unnamed_addr constant [46 x i8] c"Statusbar placement must be 'top' or 'bottom'\00", align 1
@.str.75 = private unnamed_addr constant [29 x i8] c"statusbar_unknown_visibility\00", align 1
@.str.76 = private unnamed_addr constant [62 x i8] c"Statusbar visibility must be 'always', 'active' or 'inactive'\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"Pasting\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"paste_warning\00", align 1
@.str.79 = private unnamed_addr constant [81 x i8] c"Pasting $0 lines to $1. Press Ctrl-K if you wish to do this or Ctrl-C to cancel.\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"paste_prompt\00", align 1
@.str.81 = private unnamed_addr constant [38 x i8] c"Hit Ctrl-K to paste, Ctrl-C to abort?\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"Welcome\00", align 1
@.str.83 = private unnamed_addr constant [13 x i8] c"irssi_banner\00", align 1
@.str.84 = private unnamed_addr constant [105 x i8] c" ___           _%:|_ _|_ _ _____(_)%: | || '_(_-<_-< |%:|___|_| /__/__/_|%:Irssi v$J - https://irssi.org\00", align 1
@.str.85 = private unnamed_addr constant [18 x i8] c"welcome_firsttime\00", align 1
@.str.86 = private unnamed_addr constant [435 x i8] c"- - - - - - - - - - - - - - - - - - - - - - - - - - - -\0AHi there! If this is your first time using Irssi, you%:might want to go to our website and read the startup%:documentation to get you going.%:%:Our community and staff are available to assist you or%:to answer any questions you may have.%:%:Use the /HELP command to get detailed information about%:the available commands.%:- - - - - - - - - - - - - - - - - - - - - - - - - - - -\00", align 1
@.str.87 = private unnamed_addr constant [22 x i8] c"welcome_init_settings\00", align 1
@.str.88 = private unnamed_addr constant [40 x i8] c"The following settings were initialized\00", align 1
@gui_text_formats = global [49 x %struct._FORMAT_REC] [%struct._FORMAT_REC { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 0, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 0, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.4, i32 0, i32 0), i32 1, [10 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct._FORMAT_REC { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0), i32 1, [10 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct._FORMAT_REC { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i32 0, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0), i32 0, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i32 0, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 0, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 0, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i32 0, i32 0), i32 1, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i32 0, i32 0), i32 0, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i32 0, i32 0), i32 0, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.23, i32 0, i32 0), i32 0, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.25, i32 0, i32 0), i32 0, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0), i32 0, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0), i32 0, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i32 0, i32 0), i32 0, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0), i32 1, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), i32 1, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.37, i32 0, i32 0), i32 1, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.39, i32 0, i32 0), i32 1, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i32 0, i32 0), i32 1, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0), i32 0, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.44, i32 0, i32 0), i32 0, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.46, i32 0, i32 0), i32 0, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.48, i32 0, i32 0), i32 5, [10 x i32] [i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct._FORMAT_REC { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.50, i32 0, i32 0), i32 1, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i32 0, i32 0), i32 1, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i32 0, i32 0), i32 1, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i32 0, i32 0), i32 1, [10 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct._FORMAT_REC { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i32 0, i32 0), i32 1, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.60, i32 0, i32 0), i32 0, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.46, i32 0, i32 0), i32 0, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.63, i32 0, i32 0), i32 3, [10 x i32] [i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct._FORMAT_REC { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.65, i32 0, i32 0), i32 1, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.66, i32 0, i32 0), i32 1, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.68, i32 0, i32 0), i32 1, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.70, i32 0, i32 0), i32 1, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.72, i32 0, i32 0), i32 1, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.74, i32 0, i32 0), i32 1, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.76, i32 0, i32 0), i32 1, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0), i32 0, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.79, i32 0, i32 0), i32 2, [10 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct._FORMAT_REC { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.81, i32 0, i32 0), i32 0, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0), i32 0, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.84, i32 0, i32 0), i32 0, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([435 x i8], [435 x i8]* @.str.86, i32 0, i32 0), i32 0, [10 x i32] zeroinitializer }, %struct._FORMAT_REC { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.88, i32 0, i32 0), i32 0, [10 x i32] zeroinitializer }, %struct._FORMAT_REC zeroinitializer], align 16

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!24, !25}
!llvm.ident = !{!26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "line382-module-formats.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{}
!3 = !{!4}
!4 = distinct !DIGlobalVariable(name: "gui_text_formats", scope: !0, file: !5, line: 24, type: !6, isLocal: false, isDefinition: true, variable: [49 x %struct._FORMAT_REC]* @gui_text_formats)
!5 = !DIFile(filename: "module-formats.c", directory: "/home/lichi/Desktop/irssi/task1")
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 25088, align: 64, elements: !22)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "FORMAT_REC", file: !8, line: 35, baseType: !9)
!8 = !DIFile(filename: "../../src/fe-common/core/themes.h", directory: "/home/lichi/Desktop/irssi/task1")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_FORMAT_REC", file: !10, line: 30, size: 512, align: 64, elements: !11)
!10 = !DIFile(filename: "../../src/fe-common/core/formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!11 = !{!12, !15, !16, !18}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !9, file: !10, line: 31, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !9, file: !10, line: 32, baseType: !13, size: 64, align: 64, offset: 64)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !9, file: !10, line: 34, baseType: !17, size: 32, align: 32, offset: 128)
!17 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "paramtypes", scope: !9, file: !10, line: 35, baseType: !19, size: 320, align: 32, offset: 160)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 320, align: 32, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 10)
!22 = !{!23}
!23 = !DISubrange(count: 49)
!24 = !{i32 2, !"Dwarf Version", i32 4}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
