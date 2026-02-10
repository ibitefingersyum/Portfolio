//Alex Zheng | 9/25/25 | Calculator
// 2x Scaled
String dVal;
float left;
//idk what im missing here


Button[] buttons = new Button[22];

void setup() {
  size (280, 420);

  buttons[0] = new Button(60, 394, 40, 20, #acea38, #aceaa8, '.');
  buttons[1] = new Button(120, 394, 40, 20, #acea38, #aceaa8, '0');
  buttons[2] = new Button(180, 394, 40, 20, #acea38, #aceaa8, '√');
  buttons[3] = new Button(240, 350, 40, 20, #acea38, #aceaa8, '+');
  buttons[4] = new Button(240, 380, 40, 20, #acea38, #aceaa8, '=');
  buttons[5] = new Button(60, 364, 40, 20, #acea38, #aceaa8, '1');
  buttons[6] = new Button(120, 364, 40, 20, #acea38, #aceaa8, '2');
  buttons[7] = new Button(180, 364, 40, 20, #acea38, #aceaa8, '3');

  buttons[8] = new Button(240, 320, 40, 20, #acea38, #aceaa8, '-');
  buttons[9] = new Button(240, 290, 40, 20, #acea38, #aceaa8, 'x');

  buttons[10] = new Button(60, 334, 40, 20, #acea38, #aceaa8, '4');
  buttons[11] = new Button(120, 334, 40, 20, #acea38, #aceaa8, '5');
  buttons[12] = new Button(180, 334, 40, 20, #acea38, #aceaa8, '6');

  buttons[13] = new Button(240, 260, 40, 20, #acea38, #aceaa8, '/');
  buttons[14] = new Button(240, 230, 40, 20, #acea38, #aceaa8, '?');

  buttons[15] = new Button(60, 304, 40, 20, #acea38, #aceaa8, '7');
  buttons[16] = new Button(120, 304, 40, 20, #acea38, #aceaa8, '8');
  buttons[17] = new Button(180, 304, 40, 20, #acea38, #aceaa8, '9');

  buttons[18] = new Button(240, 200, 40, 20, #acea38, #aceaa8, '?');
  buttons[19] = new Button(240, 170, 40, 20, #acea38, #aceaa8, '?');
  buttons[20] = new Button(240, 140, 40, 20, #acea38, #aceaa8, 'C');

  // make ellipse button ???
  buttons[21] = new Button(120, 200, 140, 140, #acea38, #aceaa8, '?');
}

void draw() {
  background(150);
  for (int i=0; i < buttons.length; i++) {
    buttons[i].display();
    buttons[i].hover(mouseX, mouseY);
  }
  updateDisplay();
}

void mousePressed() {
  for (int i=0; i<buttons.length; i++) {
    if (buttons[i].on && buttons[i].isNum) {
      handleEvent(str(buttons[i].val), true);
    } else if (buttons[i].on && buttons[i].isNum) {
      handleEvent(str(buttons[i].val), true);
    } else if (buttons[i].on && !buttons[i].isNum && buttons[i].val == 'C') {
      clearCalc();
    } else if (buttons[i].on && !buttons[i].isNum && buttons[i].val == '+') {
      handleEvent("+", false);
    } else if (buttons[i].on && !buttons[i].isNum && buttons[i].val == '-') {
      left = false;
      dVal = "0";
      op = "-";
    } else if (buttons[i].on && !buttons[i].isNum && buttons[i].val == 'X') {
      left = false;
      dVal = "0";
      op = "X";
    } else if (buttons[i].on && !buttons[i].isNum && buttons[i].val == '/') {
      left = false;
      dVal = "0";
      op = "/";
    } else if (buttons[i].on && !buttons[i].isNum && buttons[i].val == '=') {
      performCalc();
    } else if (buttons[i].on && !buttons[i].isNum && buttons[i].val == '±') {
      if (left) {
        l = -l;
        dVal = str(l);
      } else {
        r = -r;
        dVal = str(r);
      }
    } else if (buttons[i].on && !buttons[i].isNum && buttons[i].val == '√') {
      if (left) {
        l = sqrt(l);
        dVal = str(l);
      } else {
        r = sqrt(r);
        dVal = str(r);
      }
    }
  }
  printVals();
}


void updateDisplay() {
  rectMode(CENTER);
  fill(255);
  rect(121, 45, 225, 105, 8);
  fill(0);
  textSize(15);
  //text("dVal", 80, 37, 37.5);
}
void keyPressed() {
  println("key:" + key);
  println("keycode:" + keyCode);
  if (key == 0 || keyCode == 96 || keyCode == 48) {
    handleEvent("0", true);
  } else if (key == 1 || keyCode == 97 || keyCode == 49) {
    handleEvent("1", true);
  } else if (key == '+' || keyCode == 17) {
    handleEvent("+", false);
  }
  printVals();
}

void handleEvent(String keyVal, boolean isNum) {
  if (left && dVal.length()<12 && isNum) {
    if (dVal.equals("0")) {
      dVal = keyVal;
    } else {
      dVal += keyVal;
    }
    l = float(dVal);
  } else if (!left && dVal.length()<12 && isNum) {
    if (dVal.equals("0")) {
      dVal = keyVal;
    } else {
      // Set l to dVal and check length of dVal
      dVal += keyVal;
    }
    r = float(dVal);
  } else if (keyVal.equals("+") && !isNum) {
    left = false;
    dVal = "0";
    op = "+";
  }
}

void performCalculation() {
  // didn't get to copy this part
  if {op==
}

// void num() {
}
