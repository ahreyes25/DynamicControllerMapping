/// @description	Translate unicode values from the keyboard and gamepad to string
//					values for drawing menu and current controls
/// @param Unicode

switch(argument0) {
	case 81:
		return "Q";
	case 87:
		return "W";
	case 69:
		return "E";
	case 82:
		return "R";
	case 84:
		return "T";
	case 89:
		return "Y";
	case 85:
		return "U";
	case 73:
		return "I";
	case 79:
		return "O";
	case 80:
		return "P";
	case 65:
		return "A";
	case 83:
		return "S";
	case 68:
		return "D";
	case 70:
		return "F";
	case 71:
		return "G";
	case 72:
		return "H";
	case 74:
		return "J";
	case 75:
		return "K";
	case 76:
		return "L";
	case 90:
		return "Z";
	case 88:
		return "X";
	case 67:
		return "C";
	case 86:
		return "V";
	case 66:
		return "B";
	case 78:
		return "N";
	case 77:
		return "M";
	case 37:
		return "Left Arrow";
	case 39:
		return "Right Arrow";
	case 38:
		return "Up Arrow";
	case 40:
		return "Down Arrow";
	case 32:
		return "Spacebar";
	case 48:
		return "0";
	case 49:
		return "1";
	case 50:
		return "2";
	case 51:
		return "3";
	case 52:
		return "4";
	case 53:
		return "5";
	case 54:
		return "6";
	case 55:
		return "7";
	case 56:
		return "8";
	case 57:
		return "9";
	case 161:
		return "Right Shift";
	case 162:
		return "Left Shift";
	case 91:
		return "Right Command";
	case 92:
		return "Left Command";
	case 164:
		return "Left Alt";
	case 165:
		return "Right Alt";
	case 162:
		return "Left Ctrl";
	case 32783:
		return "Dpad Left";
	case 32784:
		return "Dpad Right";
	case 32781:
		return "Dpad Up";
	case 32782:
		return "Dpad Down";
	case 32771:
		return "Left Face Button";
	case 32770:
		return "Right Face Button";
	case 32772:
		return "Up Face Button";
	case 32769:
		return "Down Face Button";
	case 32773:
		return "Left Bumper";
	case 32775:
		return "Left Trigger";
	case 32774:
		return "Right Bumper";
	case 32776:
		return "Right Trigger";
	case 32778:
		return "Start";
	case 32777:
		return "Select";
	case 32779:
		return "Left Stick Click";
	case 32780:
		return "Right Stick Click";
	default:
		return argument0;
}