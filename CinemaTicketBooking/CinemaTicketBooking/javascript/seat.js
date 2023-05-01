let CheckValue = 0;
let CheckStatus;
let amt = 0;
let id;
let temp_ticket_numb = "";
let ticket_numb1 = "";
let ticket_numb2 = "";
let ticket_numb3 = "";
let ticket_numb4 = "";
let ticket_numb5 = "";
let disable_count = 0;
let count = 1;
let temp_ticket;


function retrieve_id(ele) {
    id = ele.id;
    CheckStatus = document.getElementById(id);
    numb_of_ticket();

    //if (ele.id == "checkbox10b" ||
    //    ele.id == "checkbox11b" ||
    //    ele.id == "checkbox12b" ||

    //    ele.id == "checkbox10c" ||
    //    ele.id == "checkbox11c" ||
    //    ele.id == "checkbox12c" ||

    //    ele.id == "checkbox10d" ||
    //    ele.id == "checkbox11d" ||
    //    ele.id == "checkbox12d" ||

    //    ele.id == "checkbox10e" ||
    //    ele.id == "checkbox11e" ||
    //    ele.id == "checkbox12e" ||

    //    ele.id == "checkbox10f" ||
    //    ele.id == "checkbox11f" ||
    //    ele.id == "checkbox12f" ||

    //    ele.id == "checkbox10g" ||
    //    ele.id == "checkbox11g" ||
    //    ele.id == "checkbox12g" ||

    //    ele.id == "checkbox10h" ||
    //    ele.id == "checkbox11h" ||
    //    ele.id == "checkbox12h" ||

    //    ele.id == "checkbox10i" ||
    //    ele.id == "checkbox11i" ||
    //    ele.id == "checkbox12i" ||

    //    ele.id == "checkbox10j" ||
    //    ele.id == "checkbox11j" ||
    //    ele.id == "checkbox12j" ||

    //    ele.id == "checkbox10k" ||
    //    ele.id == "checkbox11k" ||
    //    ele.id == "checkbox12k") {
    //    for (i = 4; i <= 6; i++) {
    //        temp_ticket_numb += String(document.getElementById(id).value)[i];
    //    }
    //} else {
    //    for (i = 4; i <= 5; i++) {
    //        temp_ticket_numb += String(document.getElementById(id).value)[i];
    //    }





    //temp_ticket = document.getElementById("no-of-ticket").innerHTML
};





function numb_of_ticket() {
    if (CheckStatus.checked) {
        CheckValue += 1;
        document.getElementById("selectedTicekts").innerHTML = CheckValue;

        if (ticket_numb1 == "") {
            ticket_numb1 = id;
        }
        else if (ticket_numb2 == "" && !ticket_numb1 == "") {
            ticket_numb2 = id;
        }
        else if (ticket_numb3 == "" && !ticket_numb2 == "" && !ticket_numb1 == "") {
            ticket_numb3 = id;
        }
        else if (ticket_numb4 == "" && !ticket_numb3 == "" && !ticket_numb2 == "" && !ticket_numb1 == "") {
            ticket_numb4 = id;
        }
        else if (ticket_numb5 == "" && !ticket_numb4 == "" && !ticket_numb3 == "" && !ticket_numb2 == "" && !ticket_numb1 == "") {
            ticket_numb5 = id;
        }


        if (CheckValue == 5) {

            document.getElementById("A1").disabled = true;
            document.getElementById("A2").disabled = true;
            document.getElementById("A3").disabled = true;
            document.getElementById("A4").disabled = true;
            document.getElementById("A5").disabled = true;
            document.getElementById("A6").disabled = true;
            document.getElementById("A7").disabled = true;
            document.getElementById("A8").disabled = true;
            document.getElementById("A9").disabled = true;
            document.getElementById("A10").disabled = true;
            document.getElementById("A11").disabled = true;
            document.getElementById("A12").disabled = true;
            document.getElementById("A13").disabled = true;
            document.getElementById("A14").disabled = true;
            document.getElementById("A15").disabled = true;
            document.getElementById("A16").disabled = true;
            document.getElementById("A17").disabled = true;
            document.getElementById("A18").disabled = true;
            document.getElementById("A19").disabled = true;
            document.getElementById("A20").disabled = true;

            document.getElementById("B1").disabled = true;
            document.getElementById("B2").disabled = true;
            document.getElementById("B3").disabled = true;
            document.getElementById("B4").disabled = true;
            document.getElementById("B5").disabled = true;
            document.getElementById("B6").disabled = true;
            document.getElementById("B7").disabled = true;
            document.getElementById("B8").disabled = true;
            document.getElementById("B9").disabled = true;
            document.getElementById("B10").disabled = true;
            document.getElementById("B11").disabled = true;
            document.getElementById("B12").disabled = true;
            document.getElementById("B13").disabled = true;
            document.getElementById("B14").disabled = true;
            document.getElementById("B15").disabled = true;
            document.getElementById("B16").disabled = true;
            document.getElementById("B17").disabled = true;
            document.getElementById("B18").disabled = true;
            document.getElementById("B19").disabled = true;
            document.getElementById("B20").disabled = true;

            document.getElementById("C1").disabled = true;
            document.getElementById("C2").disabled = true;
            document.getElementById("C3").disabled = true;
            document.getElementById("C4").disabled = true;
            document.getElementById("C5").disabled = true;
            document.getElementById("C6").disabled = true;
            document.getElementById("C7").disabled = true;
            document.getElementById("C8").disabled = true;
            document.getElementById("C9").disabled = true;
            document.getElementById("C10").disabled = true;
            document.getElementById("C11").disabled = true;
            document.getElementById("C12").disabled = true;
            document.getElementById("C13").disabled = true;
            document.getElementById("C14").disabled = true;
            document.getElementById("C15").disabled = true;
            document.getElementById("C16").disabled = true;
            document.getElementById("C17").disabled = true;
            document.getElementById("C18").disabled = true;
            document.getElementById("C19").disabled = true;
            document.getElementById("C20").disabled = true;

            document.getElementById("D1").disabled = true;
            document.getElementById("D2").disabled = true;
            document.getElementById("D3").disabled = true;
            document.getElementById("D4").disabled = true;
            document.getElementById("D5").disabled = true;
            document.getElementById("D6").disabled = true;
            document.getElementById("D7").disabled = true;
            document.getElementById("D8").disabled = true;
            document.getElementById("D9").disabled = true;
            document.getElementById("D10").disabled = true;
            document.getElementById("D11").disabled = true;
            document.getElementById("D12").disabled = true;
            document.getElementById("D13").disabled = true;
            document.getElementById("D14").disabled = true;
            document.getElementById("D15").disabled = true;
            document.getElementById("D16").disabled = true;
            document.getElementById("D17").disabled = true;
            document.getElementById("D18").disabled = true;
            document.getElementById("D19").disabled = true;
            document.getElementById("D20").disabled = true;

            document.getElementById("E1").disabled = true;
            document.getElementById("E2").disabled = true;
            document.getElementById("E3").disabled = true;
            document.getElementById("E4").disabled = true;
            document.getElementById("E5").disabled = true;
            document.getElementById("E6").disabled = true;
            document.getElementById("E7").disabled = true;
            document.getElementById("E8").disabled = true;
            document.getElementById("E9").disabled = true;
            document.getElementById("E10").disabled = true;
            document.getElementById("E11").disabled = true;
            document.getElementById("E12").disabled = true;
            document.getElementById("E13").disabled = true;
            document.getElementById("E14").disabled = true;
            document.getElementById("E15").disabled = true;
            document.getElementById("E16").disabled = true;
            document.getElementById("E17").disabled = true;
            document.getElementById("E18").disabled = true;
            document.getElementById("E19").disabled = true;
            document.getElementById("E20").disabled = true;

            document.getElementById("F1").disabled = true;
            document.getElementById("F2").disabled = true;
            document.getElementById("F3").disabled = true;
            document.getElementById("F4").disabled = true;
            document.getElementById("F5").disabled = true;
            document.getElementById("F6").disabled = true;
            document.getElementById("F7").disabled = true;
            document.getElementById("F8").disabled = true;
            document.getElementById("F9").disabled = true;
            document.getElementById("F10").disabled = true;
            document.getElementById("F11").disabled = true;
            document.getElementById("F12").disabled = true;
            document.getElementById("F13").disabled = true;
            document.getElementById("F14").disabled = true;
            document.getElementById("F15").disabled = true;
            document.getElementById("F16").disabled = true;
            document.getElementById("F17").disabled = true;
            document.getElementById("F18").disabled = true;
            document.getElementById("F19").disabled = true;
            document.getElementById("F20").disabled = true;

            document.getElementById("G1").disabled = true;
            document.getElementById("G2").disabled = true;
            document.getElementById("G3").disabled = true;
            document.getElementById("G4").disabled = true;
            document.getElementById("G5").disabled = true;
            document.getElementById("G6").disabled = true;
            document.getElementById("G7").disabled = true;
            document.getElementById("G8").disabled = true;
            document.getElementById("G9").disabled = true;
            document.getElementById("G10").disabled = true;
            document.getElementById("G11").disabled = true;
            document.getElementById("G12").disabled = true;
            document.getElementById("G13").disabled = true;
            document.getElementById("G14").disabled = true;
            document.getElementById("G15").disabled = true;
            document.getElementById("G16").disabled = true;
            document.getElementById("G17").disabled = true;
            document.getElementById("G18").disabled = true;
            document.getElementById("G19").disabled = true;
            document.getElementById("G20").disabled = true;

            document.getElementById("H1").disabled = true;
            document.getElementById("H2").disabled = true;
            document.getElementById("H3").disabled = true;
            document.getElementById("H4").disabled = true;
            document.getElementById("H5").disabled = true;
            document.getElementById("H6").disabled = true;
            document.getElementById("H7").disabled = true;
            document.getElementById("H8").disabled = true;
            document.getElementById("H9").disabled = true;
            document.getElementById("H10").disabled = true;
            document.getElementById("H11").disabled = true;
            document.getElementById("H12").disabled = true;
            document.getElementById("H13").disabled = true;
            document.getElementById("H14").disabled = true;
            document.getElementById("H15").disabled = true;
            document.getElementById("H16").disabled = true;
            document.getElementById("H17").disabled = true;
            document.getElementById("H18").disabled = true;
            document.getElementById("H19").disabled = true;
            document.getElementById("H20").disabled = true;

            document.getElementById("I1").disabled = true;
            document.getElementById("I2").disabled = true;
            document.getElementById("I3").disabled = true;
            document.getElementById("I4").disabled = true;
            document.getElementById("I5").disabled = true;
            document.getElementById("I6").disabled = true;
            document.getElementById("I7").disabled = true;
            document.getElementById("I8").disabled = true;
            document.getElementById("I9").disabled = true;
            document.getElementById("I10").disabled = true;
            document.getElementById("I11").disabled = true;
            document.getElementById("I12").disabled = true;
            document.getElementById("I13").disabled = true;
            document.getElementById("I14").disabled = true;
            document.getElementById("I15").disabled = true;
            document.getElementById("I16").disabled = true;
            document.getElementById("I17").disabled = true;
            document.getElementById("I18").disabled = true;
            document.getElementById("I19").disabled = true;
            document.getElementById("I20").disabled = true;

            document.getElementById("J1").disabled = true;
            document.getElementById("J2").disabled = true;
            document.getElementById("J3").disabled = true;
            document.getElementById("J4").disabled = true;
            document.getElementById("J5").disabled = true;
            document.getElementById("J6").disabled = true;
            document.getElementById("J7").disabled = true;
            document.getElementById("J8").disabled = true;
            document.getElementById("J9").disabled = true;
            document.getElementById("J10").disabled = true;
            document.getElementById("J11").disabled = true;
            document.getElementById("J12").disabled = true;
            document.getElementById("J13").disabled = true;
            document.getElementById("J14").disabled = true;
            document.getElementById("J15").disabled = true;
            document.getElementById("J16").disabled = true;
            document.getElementById("J17").disabled = true;
            document.getElementById("J18").disabled = true;
            document.getElementById("J19").disabled = true;
            document.getElementById("J20").disabled = true;

            document.getElementById("K1").disabled = true;
            document.getElementById("K2").disabled = true;
            document.getElementById("K3").disabled = true;
            document.getElementById("K4").disabled = true;
            document.getElementById("K5").disabled = true;
            document.getElementById("K6").disabled = true;
            document.getElementById("K7").disabled = true;
            document.getElementById("K8").disabled = true;
            document.getElementById("K9").disabled = true;
            document.getElementById("K10").disabled = true;
            document.getElementById("K11").disabled = true;
            document.getElementById("K12").disabled = true;
            document.getElementById("K13").disabled = true;
            document.getElementById("K14").disabled = true;
            document.getElementById("K15").disabled = true;
            document.getElementById("K16").disabled = true;
            document.getElementById("K17").disabled = true;
            document.getElementById("K18").disabled = true;
            document.getElementById("K19").disabled = true;
            document.getElementById("K20").disabled = true;

            document.getElementById("L1").disabled = true;
            document.getElementById("L2").disabled = true;
            document.getElementById("L3").disabled = true;
            document.getElementById("L4").disabled = true;
            document.getElementById("L5").disabled = true;
            document.getElementById("L6").disabled = true;
            document.getElementById("L7").disabled = true;
            document.getElementById("L8").disabled = true;
            document.getElementById("L9").disabled = true;
            document.getElementById("L10").disabled = true;
            document.getElementById("L11").disabled = true;
            document.getElementById("L12").disabled = true;
            document.getElementById("L13").disabled = true;
            document.getElementById("L14").disabled = true;
            document.getElementById("L15").disabled = true;
            document.getElementById("L16").disabled = true;
            document.getElementById("L17").disabled = true;
            document.getElementById("L18").disabled = true;
            document.getElementById("L19").disabled = true;
            document.getElementById("L20").disabled = true;

            document.getElementById("M1").disabled = true;
            document.getElementById("M2").disabled = true;
            document.getElementById("M3").disabled = true;
            document.getElementById("M4").disabled = true;
            document.getElementById("M5").disabled = true;
            document.getElementById("M6").disabled = true;
            document.getElementById("M7").disabled = true;
            document.getElementById("M8").disabled = true;
            document.getElementById("M9").disabled = true;
            document.getElementById("M10").disabled = true;
            document.getElementById("M11").disabled = true;
            document.getElementById("M12").disabled = true;
            document.getElementById("M13").disabled = true;
            document.getElementById("M14").disabled = true;
            document.getElementById("M15").disabled = true;
            document.getElementById("M16").disabled = true;
            document.getElementById("M17").disabled = true;
            document.getElementById("M18").disabled = true;
            document.getElementById("M19").disabled = true;
            document.getElementById("M20").disabled = true;



            document.getElementById(ticket_numb1).disabled = false;
            document.getElementById(ticket_numb2).disabled = false;
            document.getElementById(ticket_numb3).disabled = false;
            document.getElementById(ticket_numb4).disabled = false;
            document.getElementById(ticket_numb5).disabled = false;

        }

        if (id[0] == "A" || id[0] == "B") {
            amt += 200;
        } else if (id[0] == "C" || id[0] == "D" || id[0] == "E" || id[0] == "F" || id[0] == "G") {
            amt += 300;
        } else if (id[0] == "H" || id[0] == "I" || id[0] == "J" || id[0] == "G" || id[0] == "K" || id[0] == "L" || id[0] == "M") {
            amt += 500;
        }

        document.getElementById("ticketNo").innerHTML = ticket_numb1 + " " + ticket_numb2 + " "+ ticket_numb3 + " "+ ticket_numb4 + " "+ ticket_numb5;

    } else {
        CheckValue -= 1;
        document.getElementById("selectedTicekts").innerHTML = CheckValue;


        if (ticket_numb1 == id) {
            ticket_numb1 = "";
        } else if (ticket_numb2 == id) {
            ticket_numb2 = "";
        } else if (ticket_numb3 == id) {
            ticket_numb3 = "";
        } else if (ticket_numb4 == id) {
            ticket_numb4 = "";
        } else if (ticket_numb5 == id) {
            ticket_numb5 = "";
        }

        document.getElementById("A1").disabled = false;
        document.getElementById("A2").disabled = false;
        document.getElementById("A3").disabled = false;
        document.getElementById("A4").disabled = false;
        document.getElementById("A5").disabled = false;
        document.getElementById("A6").disabled = false;
        document.getElementById("A7").disabled = false;
        document.getElementById("A8").disabled = false;
        document.getElementById("A9").disabled = false;
        document.getElementById("A10").disabled = false;
        document.getElementById("A11").disabled = false;
        document.getElementById("A12").disabled = false;
        document.getElementById("A13").disabled = false;
        document.getElementById("A14").disabled = false;
        document.getElementById("A15").disabled = false;
        document.getElementById("A16").disabled = false;
        document.getElementById("A17").disabled = false;
        document.getElementById("A18").disabled = false;
        document.getElementById("A19").disabled = false;
        document.getElementById("A20").disabled = false;

        document.getElementById("B1").disabled = false;
        document.getElementById("B2").disabled = false;
        document.getElementById("B3").disabled = false;
        document.getElementById("B4").disabled = false;
        document.getElementById("B5").disabled = false;
        document.getElementById("B6").disabled = false;
        document.getElementById("B7").disabled = false;
        document.getElementById("B8").disabled = false;
        document.getElementById("B9").disabled = false;
        document.getElementById("B10").disabled = false;
        document.getElementById("B11").disabled = false;
        document.getElementById("B12").disabled = false;
        document.getElementById("B13").disabled = false;
        document.getElementById("B14").disabled = false;
        document.getElementById("B15").disabled = false;
        document.getElementById("B16").disabled = false;
        document.getElementById("B17").disabled = false;
        document.getElementById("B18").disabled = false;
        document.getElementById("B19").disabled = false;
        document.getElementById("B20").disabled = false;

        document.getElementById("C1").disabled = false;
        document.getElementById("C2").disabled = false;
        document.getElementById("C3").disabled = false;
        document.getElementById("C4").disabled = false;
        document.getElementById("C5").disabled = false;
        document.getElementById("C6").disabled = false;
        document.getElementById("C7").disabled = false;
        document.getElementById("C8").disabled = false;
        document.getElementById("C9").disabled = false;
        document.getElementById("C10").disabled = false;
        document.getElementById("C11").disabled = false;
        document.getElementById("C12").disabled = false;
        document.getElementById("C13").disabled = false;
        document.getElementById("C14").disabled = false;
        document.getElementById("C15").disabled = false;
        document.getElementById("C16").disabled = false;
        document.getElementById("C17").disabled = false;
        document.getElementById("C18").disabled = false;
        document.getElementById("C19").disabled = false;
        document.getElementById("C20").disabled = false;

        document.getElementById("D1").disabled = false;
        document.getElementById("D2").disabled = false;
        document.getElementById("D3").disabled = false;
        document.getElementById("D4").disabled = false;
        document.getElementById("D5").disabled = false;
        document.getElementById("D6").disabled = false;
        document.getElementById("D7").disabled = false;
        document.getElementById("D8").disabled = false;
        document.getElementById("D9").disabled = false;
        document.getElementById("D10").disabled = false;
        document.getElementById("D11").disabled = false;
        document.getElementById("D12").disabled = false;
        document.getElementById("D13").disabled = false;
        document.getElementById("D14").disabled = false;
        document.getElementById("D15").disabled = false;
        document.getElementById("D16").disabled = false;
        document.getElementById("D17").disabled = false;
        document.getElementById("D18").disabled = false;
        document.getElementById("D19").disabled = false;
        document.getElementById("D20").disabled = false;

        document.getElementById("E1").disabled = false;
        document.getElementById("E2").disabled = false;
        document.getElementById("E3").disabled = false;
        document.getElementById("E4").disabled = false;
        document.getElementById("E5").disabled = false;
        document.getElementById("E6").disabled = false;
        document.getElementById("E7").disabled = false;
        document.getElementById("E8").disabled = false;
        document.getElementById("E9").disabled = false;
        document.getElementById("E10").disabled = false;
        document.getElementById("E11").disabled = false;
        document.getElementById("E12").disabled = false;
        document.getElementById("E13").disabled = false;
        document.getElementById("E14").disabled = false;
        document.getElementById("E15").disabled = false;
        document.getElementById("E16").disabled = false;
        document.getElementById("E17").disabled = false;
        document.getElementById("E18").disabled = false;
        document.getElementById("E19").disabled = false;
        document.getElementById("E20").disabled = false;

        document.getElementById("F1").disabled = false;
        document.getElementById("F2").disabled = false;
        document.getElementById("F3").disabled = false;
        document.getElementById("F4").disabled = false;
        document.getElementById("F5").disabled = false;
        document.getElementById("F6").disabled = false;
        document.getElementById("F7").disabled = false;
        document.getElementById("F8").disabled = false;
        document.getElementById("F9").disabled = false;
        document.getElementById("F10").disabled = false;
        document.getElementById("F11").disabled = false;
        document.getElementById("F12").disabled = false;
        document.getElementById("F13").disabled = false;
        document.getElementById("F14").disabled = false;
        document.getElementById("F15").disabled = false;
        document.getElementById("F16").disabled = false;
        document.getElementById("F17").disabled = false;
        document.getElementById("F18").disabled = false;
        document.getElementById("F19").disabled = false;
        document.getElementById("F20").disabled = false;

        document.getElementById("G1").disabled = false;
        document.getElementById("G2").disabled = false;
        document.getElementById("G3").disabled = false;
        document.getElementById("G4").disabled = false;
        document.getElementById("G5").disabled = false;
        document.getElementById("G6").disabled = false;
        document.getElementById("G7").disabled = false;
        document.getElementById("G8").disabled = false;
        document.getElementById("G9").disabled = false;
        document.getElementById("G10").disabled = false;
        document.getElementById("G11").disabled = false;
        document.getElementById("G12").disabled = false;
        document.getElementById("G13").disabled = false;
        document.getElementById("G14").disabled = false;
        document.getElementById("G15").disabled = false;
        document.getElementById("G16").disabled = false;
        document.getElementById("G17").disabled = false;
        document.getElementById("G18").disabled = false;
        document.getElementById("G19").disabled = false;
        document.getElementById("G20").disabled = false;

        document.getElementById("H1").disabled = false;
        document.getElementById("H2").disabled = false;
        document.getElementById("H3").disabled = false;
        document.getElementById("H4").disabled = false;
        document.getElementById("H5").disabled = false;
        document.getElementById("H6").disabled = false;
        document.getElementById("H7").disabled = false;
        document.getElementById("H8").disabled = false;
        document.getElementById("H9").disabled = false;
        document.getElementById("H10").disabled = false;
        document.getElementById("H11").disabled = false;
        document.getElementById("H12").disabled = false;
        document.getElementById("H13").disabled = false;
        document.getElementById("H14").disabled = false;
        document.getElementById("H15").disabled = false;
        document.getElementById("H16").disabled = false;
        document.getElementById("H17").disabled = false;
        document.getElementById("H18").disabled = false;
        document.getElementById("H19").disabled = false;
        document.getElementById("H20").disabled = false;

        document.getElementById("I1").disabled = false;
        document.getElementById("I2").disabled = false;
        document.getElementById("I3").disabled = false;
        document.getElementById("I4").disabled = false;
        document.getElementById("I5").disabled = false;
        document.getElementById("I6").disabled = false;
        document.getElementById("I7").disabled = false;
        document.getElementById("I8").disabled = false;
        document.getElementById("I9").disabled = false;
        document.getElementById("I10").disabled = false;
        document.getElementById("I11").disabled = false;
        document.getElementById("I12").disabled = false;
        document.getElementById("I13").disabled = false;
        document.getElementById("I14").disabled = false;
        document.getElementById("I15").disabled = false;
        document.getElementById("I16").disabled = false;
        document.getElementById("I17").disabled = false;
        document.getElementById("I18").disabled = false;
        document.getElementById("I19").disabled = false;
        document.getElementById("I20").disabled = false;

        document.getElementById("J1").disabled = false;
        document.getElementById("J2").disabled = false;
        document.getElementById("J3").disabled = false;
        document.getElementById("J4").disabled = false;
        document.getElementById("J5").disabled = false;
        document.getElementById("J6").disabled = false;
        document.getElementById("J7").disabled = false;
        document.getElementById("J8").disabled = false;
        document.getElementById("J9").disabled = false;
        document.getElementById("J10").disabled = false;
        document.getElementById("J11").disabled = false;
        document.getElementById("J12").disabled = false;
        document.getElementById("J13").disabled = false;
        document.getElementById("J14").disabled = false;
        document.getElementById("J15").disabled = false;
        document.getElementById("J16").disabled = false;
        document.getElementById("J17").disabled = false;
        document.getElementById("J18").disabled = false;
        document.getElementById("J19").disabled = false;
        document.getElementById("J20").disabled = false;

        document.getElementById("K1").disabled = false;
        document.getElementById("K2").disabled = false;
        document.getElementById("K3").disabled = false;
        document.getElementById("K4").disabled = false;
        document.getElementById("K5").disabled = false;
        document.getElementById("K6").disabled = false;
        document.getElementById("K7").disabled = false;
        document.getElementById("K8").disabled = false;
        document.getElementById("K9").disabled = false;
        document.getElementById("K10").disabled = false;
        document.getElementById("K11").disabled = false;
        document.getElementById("K12").disabled = false;
        document.getElementById("K13").disabled = false;
        document.getElementById("K14").disabled = false;
        document.getElementById("K15").disabled = false;
        document.getElementById("K16").disabled = false;
        document.getElementById("K17").disabled = false;
        document.getElementById("K18").disabled = false;
        document.getElementById("K19").disabled = false;
        document.getElementById("K20").disabled = false;

        document.getElementById("L1").disabled = false;
        document.getElementById("L2").disabled = false;
        document.getElementById("L3").disabled = false;
        document.getElementById("L4").disabled = false;
        document.getElementById("L5").disabled = false;
        document.getElementById("L6").disabled = false;
        document.getElementById("L7").disabled = false;
        document.getElementById("L8").disabled = false;
        document.getElementById("L9").disabled = false;
        document.getElementById("L10").disabled = false;
        document.getElementById("L11").disabled = false;
        document.getElementById("L12").disabled = false;
        document.getElementById("L13").disabled = false;
        document.getElementById("L14").disabled = false;
        document.getElementById("L15").disabled = false;
        document.getElementById("L16").disabled = false;
        document.getElementById("L17").disabled = false;
        document.getElementById("L18").disabled = false;
        document.getElementById("L19").disabled = false;
        document.getElementById("L20").disabled = false;

        document.getElementById("M1").disabled = false;
        document.getElementById("M2").disabled = false;
        document.getElementById("M3").disabled = false;
        document.getElementById("M4").disabled = false;
        document.getElementById("M5").disabled = false;
        document.getElementById("M6").disabled = false;
        document.getElementById("M7").disabled = false;
        document.getElementById("M8").disabled = false;
        document.getElementById("M9").disabled = false;
        document.getElementById("M10").disabled = false;
        document.getElementById("M11").disabled = false;
        document.getElementById("M12").disabled = false;
        document.getElementById("M13").disabled = false;
        document.getElementById("M14").disabled = false;
        document.getElementById("M15").disabled = false;
        document.getElementById("M16").disabled = false;
        document.getElementById("M17").disabled = false;
        document.getElementById("M18").disabled = false;
        document.getElementById("M19").disabled = false;
        document.getElementById("M20").disabled = false;


    if (id[0] == "A" || id[0] == "B") {
        amt -= 200;
    } else if (id[0] == "C" || id[0] == "D" || id[0] == "E" || id[0] == "F" || id[0] == "G") {
        amt -= 300;
    } else if (id[0] == "H" || id[0] == "I" || id[0] == "J" || id[0] == "G" || id[0] == "K" || id[0] == "L" || id[0] == "M") {
        amt -= 500;
    }

    }

    document.getElementById("ticketNo").innerHTML = ticket_numb1 + " " + ticket_numb2 + " " + ticket_numb3 + " " + ticket_numb4 + " " + ticket_numb5;


    pay_dec();
};


function pay_inc() {

    document.getElementById("amount").innerHTML = amt;
};

function pay_dec() {

    document.getElementById("amount").innerHTML = amt;
};