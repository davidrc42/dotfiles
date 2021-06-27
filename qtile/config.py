from typing import List  # noqa: F401
from libqtile import bar, layout, widget
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal

# CUSTOM VARIABLES
gaps = 4
border_width = 2
color1 = "#015477"
#color1 = "#070D18"
color2 = "#282A36"
color3 = "#982123"
color4 = "#1F242C" 
color5 = "#2E3440"

mod = "mod4"
terminal = "alacritty"
browser = "brave"
vscode = "code"
gimp = "gimp"
fileManager = "thunar"


keys = [
    # Switch between windows
    Key([mod], "h", lazy.layout.left(), desc="Move focus to left"),
    Key([mod], "l", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "j", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "k", lazy.layout.up(), desc="Move focus up"),
    Key([mod], "space", lazy.layout.next(), desc="Move window focus to other window"),
    # Move windows between left/right columns or move up/down in current stack.
    # Moving out of range in Columns layout will create new column.
    Key(
        [mod, "shift"], "h", lazy.layout.shuffle_left(), desc="Move window to the left"
    ),
    Key(
        [mod, "shift"],
        "l",
        lazy.layout.shuffle_right(),
        desc="Move window to the right",
    ),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down(), desc="Move window down"),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up(), desc="Move window up"),
    # Grow windows. If current window is on the edge of screen and direction
    # will be to screen edge - window would shrink.
    Key([mod, "control"], "h", lazy.layout.grow_left(), desc="Grow window to the left"),
    Key(
        [mod, "control"], "l", lazy.layout.grow_right(), desc="Grow window to the right"
    ),
    Key([mod, "control"], "j", lazy.layout.grow_down(), desc="Grow window down"),
    Key([mod, "control"], "k", lazy.layout.grow_up(), desc="Grow window up"),
    Key([mod], "n", lazy.layout.normalize(), desc="Reset all window sizes"),
    # Toggle between split and unsplit sides of stack.
    # Split = all windows displayed
    # Unsplit = 1 window displayed, like Max layout, but still with
    # multiple stack panes
    Key(
        [mod, "shift"],
        "Return",
        lazy.layout.toggle_split(),
        desc="Toggle between split and unsplit sides of stack",
    ),
    Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal"),
    Key([mod], "t", lazy.spawn(fileManager), desc="Launch file manager"),
    Key([mod], "w", lazy.spawn(browser), desc="Launch browser"),
    Key([mod], "c", lazy.spawn(vscode), desc="Launch visual studio code"),
    Key([mod], "d", lazy.spawn("rofi -show run"), desc="Launch rofi"),
    Key([mod], "g", lazy.spawn("gimp"), desc="Launch gimp"),
    Key(
        [mod],
        "n",
        lazy.spawn("amixer -D pulse sset Master 5%-"),
        desc="increase volume",
    ),
    Key(
        [mod],
        "m",
        lazy.spawn("amixer -D pulse sset Master 5%+"),
        desc="decrease volume",
    ),
    Key(
        [mod],
        "XF86AudioMute",
        lazy.spawn("amixer -q sset Master,0 toggle"),
        desc="decrease volume",
    ),
    # Key([mod], "r", lazy.spawn("ranger"), desc="Launch ranger"),
    # Toggle between different layouts as defined below
    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod], "q", lazy.window.kill(), desc="Kill focused window"),
    Key([mod, "control"], "r", lazy.restart(), desc="Restart Qtile"),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
    # Key([mod], "r", lazy.spawncmd(),
    #    desc="Spawn a command using a prompt widget"),
]

groups = [Group(i) for i in "123456789"]

for i in groups:
    keys.extend(
        [
            # mod1 + letter of group = switch to group
            Key(
                [mod],
                i.name,
                lazy.group[i.name].toscreen(),
                desc="Switch to group {}".format(i.name),
            ),
            # mod1 + shift + letter of group = switch to & move focused window to group
            # Key([mod, "shift"], i.name, lazy.window.togroup(i.name, switch_group=True),
            #     desc="Switch to & move focused window to group {}".format(i.name)),
            # Or, use below if you prefer not to switch to that group.
            # # mod1 + shift + letter of group = move focused window to group
            Key(
                [mod, "shift"],
                i.name,
                lazy.window.togroup(i.name),
                desc="move focused window to group {}".format(i.name),
            ),
        ]
    )

# LAYOUTS
layouts = [
    layout.Columns(
        border_focus=color1,
        border_normal=color2,
        margin=gaps,
        border_width=border_width,
        border_on_single=True,
        grow_amount=2
    ),
    layout.Max(),
    # layout.Stack(num_stacks=2),
    # layout.Bsp(),
    # layout.Matrix(),
    # layout.MonadTall(),
    # layout.MonadWide(),
    # layout.RatioTile(),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]

widget_defaults = dict(font="monospace bold", fontsize=14, padding=3, background=color4)
extension_defaults = widget_defaults.copy()

screens = [
    Screen(
        top=bar.Bar(
            [
                widget.GroupBox(),

                widget.Prompt(),
                widget.WindowName(background=color4, padding=10),
                widget.TextBox(
                         text = '',
                         foreground = color3,
                         background=color4,
                         padding = 0,
                         fontsize = 59
                    ),
                widget.Battery(
                    charge_char='',
                    discharge_char='',
                    empty_char='',
                    format='{percent:2.0%}',
                    background=color3
                ),
                widget.TextBox(
                         text = '',
                         foreground = color1,
                         background=color3,
                         padding = 0,
                         fontsize = 59
                    ),
                widget.Clock(format="%Y-%m-%d %I:%M %p", background=color1),
            ],
            24,
        ),
    ),
    Screen(
    ),
]

# Drag floating layouts.
mouse = [
    Drag(
        [mod],
        "Button1",
        lazy.window.set_position_floating(),
        start=lazy.window.get_position(),
    ),
    Drag(
        [mod], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()
    ),
    Click([mod], "Button2", lazy.window.bring_to_front()),
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: List
main = None  # WARNING: this is deprecated and will be removed soon
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(
    float_rules=[
        # Run the utility of `xprop` to see the wm class and name of an X client.
        *layout.Floating.default_float_rules,
        Match(wm_class="confirmreset"),  # gitk
        Match(wm_class="makebranch"),  # gitk
        Match(wm_class="maketag"),  # gitk
        Match(wm_class="ssh-askpass"),  # ssh-askpass
        Match(title="branchdialog"),  # gitk
        Match(title="pinentry"),  # GPG key password entry
    ]
)


auto_fullscreen = True
focus_on_window_activation = "smart"

# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "LG3D"
