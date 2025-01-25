// SPDX-License-Identifier: Unlicense

import QtQuick 2.0
import ".."

KeyboardLayout {
	type: "thai"
	capsLockSupported: false
	splitSupported: true

	KeyboardRow {
		splitIndex: 6

		CharacterKey { caption: "ผ"; captionShifted: "ฎ"; symView: "1"; symView2: "๑"; accents: "["; }
		CharacterKey { caption: "ป"; captionShifted: "ภ"; symView: "2"; symView2: "๒"; accents: "๚"; }
		CharacterKey { caption: "ง"; captionShifted: "ษ"; symView: "3"; symView2: "๓"; accents: "๛"; }
		CharacterKey { caption: "ล"; captionShifted: "ถ"; symView: "4"; symView2: "๔"; accents: "$"; }
		CharacterKey { caption: "ต"; captionShifted: "ฏ"; symView: "5"; symView2: "๕"; accents: "{"; }

		CharacterKey { caption: "แ"; captionShifted: "ฝ"; symView: "6"; symView2: "๖"; }
		CharacterKey { caption: "◌ิ"; captionShifted: "◌ึ"; symView: "7"; symView2: "๗"; text: keyText.replace("◌", ""); }
		CharacterKey { caption: "◌่"; captionShifted: "◌๋"; symView: "8"; symView2: "๘"; accents: "@"; text: keyText.replace("◌", ""); }
		CharacterKey { caption: "◌้"; captionShifted: "◌็"; symView: "9"; symView2: "๙"; accents: "&"; text: keyText.replace("◌", ""); }
		CharacterKey { caption: "ใ"; captionShifted: "ฆ"; symView: "0"; symView2: "๐"; }

		BackspaceKey {}
	}

	KeyboardRow {
  		splitIndex: 6

		CharacterKey { caption: "ห"; captionShifted: "ฟ"; symView: "!"; symView2: "'"; accents: "]"; }
		CharacterKey { caption: "ก"; captionShifted: "ซ"; symView: "\""; symView2: "\\"; accents: "◌"; }
		CharacterKey { caption: "ร"; captionShifted: "ข"; symView: "#"; symView2: "{"; accents: "ฅ"; }
		CharacterKey { caption: "น"; captionShifted: "จ"; symView: ","; symView2: "}"; accents: "ฌ"; }
		CharacterKey { caption: "ด"; captionShifted: "ธ"; symView: "%"; symView2: "["; accents: "}"; }
		CharacterKey { caption: "◌ี"; captionShifted: "◌ื"; symView: "?"; symView2: "]"; accents: ":"; text: keyText.replace("◌", ""); }

		CharacterKey { caption: "า"; captionShifted: "ำ"; symView: "."; symView2: "^"; accents: "ๅ"; }
		CharacterKey { caption: "ย"; captionShifted: "พ"; symView: "("; symView2: "<"; accents: "◌ฺ"; text: keyText.replace("◌", ""); }
		CharacterKey { caption: "อ"; captionShifted: "ช"; symView: ")"; symView2: ">"; accents: "◌ํ"; text: keyText.replace("◌", ""); }
		CharacterKey { caption: "ว"; captionShifted: "โ"; symView: "_"; symView2: "`"; accents: ";"; }
		CharacterKey { caption: "◌ู"; captionShifted: "ฬ"; symView: "="; symView2: "~"; text: keyText.replace("◌", ""); }
		CharacterKey { caption: "◌์"; captionShifted: "ฯ"; symView: "-"; symView2: "🙏"; text: keyText.replace("◌", ""); }
	}

	KeyboardRow {
		splitIndex: 6

		ShiftKey {}

		CharacterKey { caption: "บ"; captionShifted: "ฒ"; symView: "←"; symView2: "¤"; }
		CharacterKey { caption: "ท"; captionShifted: "ฉ"; symView: "↑"; symView2: "$"; accents: "ฦ"; }
		CharacterKey { caption: "ส"; captionShifted: "ฐ"; symView: "↓"; symView2: "₫"; accents: "ฃ"; }
		CharacterKey { caption: "ม"; captionShifted: "ณ"; symView: "→"; symView2: "€"; }
		CharacterKey { caption: "ค"; captionShifted: "ญ"; symView: "°"; symView2: "₭"; }

		CharacterKey { caption: "◌ั"; captionShifted: "ฮ"; symView: "/"; symView2: "₱"; accents: "\u0E4E"; text: keyText.replace("◌", ""); }
		CharacterKey { caption: "เ"; captionShifted: "ฑ"; symView: ";"; symView2: "₹"; }
		CharacterKey { caption: "ะ"; captionShifted: "ศ"; symView: ":"; symView2: "¥"; }
		CharacterKey { caption: "ไ"; captionShifted: "◌๊"; symView: "ๆ"; symView2: "๏"; text: keyText.replace("◌", ""); }
		CharacterKey { caption: "◌ุ"; captionShifted: "ฤ"; symView: "฿"; symView2: "|"; text: keyText.replace("◌", ""); }
	}

	SpacebarRow {}
}
