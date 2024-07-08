// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

library MolarMassCalculator {

    function getAtomicMass(string memory element) public pure returns (uint256) {
        bytes32 elementHash = keccak256(abi.encodePacked(element));
        if (elementHash == keccak256(abi.encodePacked("H"))) {
            return 1008;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("He"))) {
            return 4003;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Li"))) {
            return 6941;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Be"))) {
            return 9012;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("B"))) {
            return 10811;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("C"))) {
            return 12011;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("N"))) {
            return 14007;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("O"))) {
            return 15999;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("F"))) {
            return 18998;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Ne"))) {
            return 20180;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Na"))) {
            return 22990;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Mg"))) {
            return 24305;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Al"))) {
            return 26982;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Si"))) {
            return 28085;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("P"))) {
            return 30974;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("S"))) {
            return 32065;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Cl"))) {
            return 35453;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Ar"))) {
            return 39948;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("K"))) {
            return 43000;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Ca"))) {
            return 44053;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Sc"))) {
            return 46747;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Ti"))) {
            return 48745;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("V"))) {
            return 50942;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Cr"))) {
            return 51996;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Mn"))) {
            return 54938;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Fe"))) {
            return 55845;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Co"))) {
            return 58933;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Ni"))) {
            return 58693;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Cu"))) {
            return 63546;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Zn"))) {
            return 65380;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Ga"))) {
            return 69723;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Ge"))) {
            return 72640;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("As"))) {
            return 74866;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Se"))) {
            return 77446;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Br"))) {
            return 79904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Kr"))) {
            return 82790;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Rb"))) {
            return 85890;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Sr"))) {
            return 89090;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Y"))) {
            return 91690;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Zr"))) {
            return 93590;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Nb"))) {
            return 95690;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Mo"))) {
            return 98000;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Tc"))) {
            return 101070;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Ru"))) {
            return 103070;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Rh"))) {
            return 106070;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Pd"))) {
            return 108070;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Ag"))) {
            return 110070;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Cd"))) {
            return 112070;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("In"))) {
            return 114070;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Sn"))) {
            return 116070;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Sb"))) {
            return 118070;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Te"))) {
            return 120070;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("I"))) {
            return 126904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Xe"))) {
            return 129904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Cs"))) {
            return 132904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Ba"))) {
            return 137904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("La"))) {
            return 139904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Ce"))) {
            return 140904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Pr"))) {
            return 141904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Nd"))) {
            return 142904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Pm"))) {
            return 144904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Sm"))) {
            return 145904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Eu"))) {
            return 147904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Gd"))) {
            return 151904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Tb"))) {
            return 153904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Dy"))) {
            return 157904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Ho"))) {
            return 159904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Er"))) {
            return 161904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Tm"))) {
            return 165904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Yb"))) {
            return 167904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Lu"))) {
            return 173904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Hf"))) {
            return 175904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Ta"))) {
            return 181904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("W"))) {
            return 183904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Re"))) {
            return 186904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Os"))) {
            return 190904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Ir"))) {
            return 192904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Pt"))) {
            return 195904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Au"))) {
            return 197904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Hg"))) {
            return 201904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Tl"))) {
            return 204904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Pb"))) {
            return 207904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Bi"))) {
            return 209904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Po"))) {
            return 209904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("At"))) {
            return 209904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Rn"))) {
            return 209904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Fr"))) {
            return 223904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Ra"))) {
            return 226904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Ac"))) {
            return 227904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Th"))) {
            return 232904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Pa"))) {
            return 231904;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("U"))) {
            return 238940;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Np"))) {
            return 237940;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Pu"))) {
            return 244940;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Am"))) {
            return 243940;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Cm"))) {
            return 247940;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Md"))) {
            return 258940;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("No"))) {
            return 259940;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Lr"))) {
            return 266940;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Rf"))) {
            return 267940;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Db"))) {
            return 268940;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Sg"))) {
            return 269940;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Bh"))) {
            return 270940;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Hs"))) {
            return 271940;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Mt"))) {
            return 278940;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Ds"))) {
            return 281940;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Rg"))) {
            return 282940;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Cn"))) {
            return 285940;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Nh"))) {
            return 286940;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Fl"))) {
            return 289940;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Mc"))) {
            return 290940;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Lv"))) {
            return 293940;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Ts"))) {
            return 294940;
        } else if (keccak256(abi.encodePacked(element)) == keccak256(abi.encodePacked("Og"))) {
            return 294940;
        } else {
            return 0;
        }
    }

    function calculateMolarMass(string memory formula) public pure returns (uint256) {
        uint256 molarMass = 0;
        uint256 i = 0;

        while (i < bytes(formula).length) {
            bytes1 currentChar = bytes(formula)[i];

            if (currentChar >= "A" && currentChar <= "Z") { // Element symbol
                string memory element = string(abi.encodePacked(currentChar));
                uint256 atomicMass = getAtomicMass(element);
                require(atomicMass > 0, "Invalid element");
                uint256 quantity = 1;
                if (i + 1 < bytes(formula).length && bytes(formula)[i + 1] >= "0" && bytes(formula)[i + 1] <= "9") {
                    quantity = uint256(uint8(bytes(formula)[i + 1])) - 48; // Convert ASCII to number
                    i++; // Skip the quantity digit
                }
                molarMass += atomicMass * quantity;
            }

            i++;
        }

        return molarMass / 1000; // Adjust for scaling
    }
}