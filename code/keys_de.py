from typing import Set
from talon import Module, Context, actions, app
from .merge import merge
import sys

mod = Module()
ctx = Context()
ctx.matches = r"""
language: de_DE
"""

default_digits = "null eins zwei drei vier fünf sechs sieben acht neun zehn elf zwölf".split(" ")

mod.setting("german_unicode",
			type=int,
			default=1,
			desc="Enable proper unicode punctuation")


mod.list("letter", desc="The spoken phonetic alphabet")
ctx.lists["self.letter"] = {
	"alf": "a",
    "ära": "ä",
	"bett": "b",
	"cello": "c",
    #"chor": "ch",
	"du": "d",
	"edi": "e",
	"edach": "é",
	"fell": "f",
	"gut": "g",
	"horst": "h",
	"ida": "i",
	"jass": "j",
	"kilo": "k",
	"lidl": "l",
	"mett": "m",
	"nova": "n",
	"oskar": "o",
    "öko": "ö",
	"papa": "p",
	"quer": "q",
	"rom": "r",
	"sat": "s",
    #"schule": "sch",
    "tes": "ß",
	"tango": "t",
	"uni": "u",
    "büsi": "ü",
	"vik": "v",
	"wolf": "w",
	"xena": "x",
	"yak": "y",
	"zorro": "z",	
}

mod.list("key_number", desc="All number keys")
ctx.lists["self.key_number"] = {default_digits[i]: str(i) for i in range(10)}


mod.list("key_function", desc="All function keys")
ctx.lists["self.key_function"] = {
    f"F {default_digits[i]}": f"f{i}" for i in range(1, 13)}

mod.list("key_arrow", desc="All arrow keys")
ctx.lists["self.key_arrow"] = {
	"runter": "down",
    "links": "left",
    "rechts": "right",
    "hoch": "up",
	}

mod.list("key_special", desc="All special keys")
ctx.lists["self.key_special"] = merge(
    {
        "tab",
        "backspace",
        "menu",
    },
    {
		"einzug":		"enter",
		"löschen": 		"delete",
		"anfang":		"home",
		"ende":			"end",
		"einfügen":		"insert",
		"abbrechen": 	"escape",
        "Seite hoch":      "pageup",
        "Seite runter":    "pagedown",
        "print screen": "printscr",
        "caps lock":    "capslock",
        "num lock":     "numlock",
    }
)

mod.list("key_modifier", desc="All modifier keys")
ctx.lists["self.key_modifier"] = {
    "alt":          "alt",
    "control":      "ctrl",
    "shift":        "shift",
    "super":        "super",
}
# Symbols you want available BOTH in dictation and command mode.
mod.list("key_punctuation", desc="Symbols for inserting punctuation into text")
ctx.lists["self.key_punctuation"] = {
    "leerzeichen":      " ",  # will become spaces after all substitutions
    "komma":            ",",
    "punkt":            ".",
    "doppelpunkt":      ":",
    "semikolon":        ";",
    "fragezeichen":     "?",
    "ausrufezeichen":   "!",
    "bindestrich":      "-",
    "gedankenstrich":   "–",
    "unterstrich":      "_",
    "schrägstrich":     "/",
    "pflug":        "\\",
    "zitat":            '„',
	"zitat ende":       '“',
	"halbes zitat":     '‚',
	"halbes zitat ende":'‘',
	"apostroph":        "’",
	"klammer auf":      "(",
	"klammer zu":       ")",
	"at | klammeraffe": "@",
}

mod.list("key_symbol", desc="All symbols from the keyboard")
ctx.lists["self.key_symbol"] = {
	"leerzeichen":          " ",  # will become spaces after all substitutions
	"blank":                " ",
	"punkt":                ".",
	"beistrich":            ",",  # komma is often confused with komme
	"komma":                ",",  # komma is often confused with komme
	"fragezeichen":         "?",
	"ausrufezeichen":       "!",
	"doppelpunkt":          ":",
	"semikolon":            ";",
	"bindestrich": "-",
	"gedankenstrich": "–",
	"unterstrich": "_",
	"schrägstrich": "/",
	"backslash": "\\",
	"pipe": "|",
	"zitat": '„',
	"zitat ende": '“',
	"halbes zitat": '‚',
	"halbes zitat ende": '‘',
	"apostroph": "’",
	"klammer auf": "(",
	"klammer zu": ")",
	"eckig auf": "[",
	"eckig zu": "]",
	"geschweift auf": "{",
	"geschweift zu": "}",
	"at | klammeraffe": "@",
	"dollar": "$",
	"und zeichen": "&",
	"sternchen": "*",
	"kleiner zeichen": "<",
	"größer zeichen": ">",
	"gleich zeichen": "=",
	"raute": "#",
	"tilde": "~",
	"zirkumflex": "^",
}

requires_space = {
    "`",
    "^",
    "~",
}

@mod.capture
def key_modifiers() -> str:
	"""One or more modifier keys"""	

@ctx.capture("user.key_modifiers", rule="{user.key_modifier}+")
def key_modifiers(m) -> str:
    return "-".join(m.key_modifier_list)

@mod.capture
def key_symbol() -> str:
    """A single symbol key"""
  
@ctx.capture("user.key_symbol",
    rule="{self.key_symbol}"
)

@mod.capture
def key_unmodified() -> str:
    """A single key with no modifiers"""
  
@ctx.capture("user.key_unmodified",
    rule="{user.letter} | {self.key_number} | {self.key_symbol} | {self.key_special} | {self.key_arrow} | {self.key_function}"
)
def key_unmodified(m) -> str:
    if m[0] == " ":
        return "space"
    return m[0]

@mod.capture
def key_any() -> str:
    """A single key"""

@ctx.capture("user.key_any",rule="{self.key_modifier} | <self.key_unmodified>")
def key_any(m) -> str:
    return m[0]

@mod.capture
def spell() -> str:
    """Spell word phoneticly"""

@ctx.capture("user.spell", rule="spell {self.letter}+")
def spell(m) -> str:
    return "".join(m.letter_list)


@mod.capture
def any_alphanumeric_key() -> str:
    """any alphanumeric key"""

@ctx.capture("user.any_alphanumeric_key", rule="{self.letter} | {self.key_number} | {self.key_symbol}")
def any_alphanumeric_key(m) -> str:
    return str(m)


@mod.capture
def letter() -> str:
    """One letter in the alphabet"""

@ctx.capture("user.letter", rule="{self.letter}")
def letter(m) -> str:
    return str(m)

@mod.capture
def letters() -> str:
    """One or more letters in the alphabet"""

@ctx.capture("user.letters", rule="{self.letter}+")
def letters(m) -> str:
    return "".join(m.letter_list)


# Window specific context

ctx_win = Context()
ctx_win.matches = r"""
os: windows
language: de_DE
"""


@ctx_win.action_class("main")
class MainActions:
    def key(key: str):
        actions.next(key)
        if key in requires_space:
            actions.next(" ")
