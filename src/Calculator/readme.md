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

// -------------------------------------------------------------

//

String dVal = "0";
boolean left = true;
float l = 0;
float r = 0;
String op = "";

Button[] buttons = new Button[22];

void setup() {
  size(280, 420);
  textAlign(RIGHT, CENTER);
  textSize(16);

  buttons[0] = new Button(60, 394, 40, 20, #acea38, #aceaa8, ".");
  buttons[1] = new Button(120, 394, 40, 20, #acea38, #aceaa8, "0");
  buttons[2] = new Button(180, 394, 40, 20, #acea38, #aceaa8, "√");
  buttons[3] = new Button(240, 350, 40, 20, #acea38, #aceaa8, "+");
  buttons[4] = new Button(240, 380, 40, 20, #acea38, #aceaa8, "=");
  buttons[5] = new Button(60, 364, 40, 20, #acea38, #aceaa8, "1");
  buttons[6] = new Button(120, 364, 40, 20, #acea38, #aceaa8, "2");
  buttons[7] = new Button(180, 364, 40, 20, #acea38, #aceaa8, "3");
  buttons[8] = new Button(240, 320, 40, 20, #acea38, #aceaa8, "-");
  buttons[9] = new Button(240, 290, 40, 20, #acea38, #aceaa8, "x");
  buttons[10] = new Button(60, 334, 40, 20, #acea38, #aceaa8, "4");
  buttons[11] = new Button(120, 334, 40, 20, #acea38, #aceaa8, "5");
  buttons[12] = new Button(180, 334, 40, 20, #acea38, #aceaa8, "6");
  buttons[13] = new Button(240, 260, 40, 20, #acea38, #aceaa8, "/");
  buttons[14] = new Button(240, 230, 40, 20, #acea38, #aceaa8, "±");
  buttons[15] = new Button(60, 304, 40, 20, #acea38, #aceaa8, "7");
  buttons[16] = new Button(120, 304, 40, 20, #acea38, #aceaa8, "8");
  buttons[17] = new Button(180, 304, 40, 20, #acea38, #aceaa8, "9");
  buttons[18] = new Button(240, 200, 40, 20, #acea38, #aceaa8, "C");
  buttons[19] = new Button(240, 170, 40, 20, #acea38, #aceaa8, "?");
  buttons[20] = new Button(240, 140, 40, 20, #acea38, #aceaa8, "?");
  buttons[21] = new Button(120, 200, 140, 140, #acea38, #aceaa8, "?");
}

void draw() {
  background(150);
  for (int i = 0; i < buttons.length; i++) {
    buttons[i].display();
    buttons[i].hover(mouseX, mouseY);
  }
  updateDisplay();
}

void mousePressed() {
  for (int i = 0; i < buttons.length; i++) {
    if (buttons[i].contains(mouseX, mouseY)) {
      String val = buttons[i].label;
      boolean isNum = buttons[i].isNum;
      if (isNum) {
        handleEvent(val, true);
      } else {
        if (val.equals("C")) {
          clearCalc();
        } else if (val.equals("+")) {
          handleEvent("+", false);
        } else if (val.equals("-")) {
          handleEvent("-", false);
        } else if (val.equals("x") || val.equals("X")) {
          handleEvent("x", false);
        } else if (val.equals("/")) {
          handleEvent("/", false);
        } else if (val.equals("=")) {
          performCalc();
        } else if (val.equals("±")) {
          if (left) {
            l = -l;
            dVal = floatToDisplay(l);
          } else {
            r = -r;
            dVal = floatToDisplay(r);
          }
        } else if (val.equals("√")) {
          if (left) {
            l = sqrt(max(0, l));
            dVal = floatToDisplay(l);
          } else {
            r = sqrt(max(0, r));
            dVal = floatToDisplay(r);
          }
        }
      }
      break;
    }
  }
  printVals();
}

void keyPressed() {
  if (key >= '0' && key <= '9') {
    handleEvent(str(key), true);
  } else if (key == '.') {
    handleEvent(".", true);
  } else if (key == '+') {
    handleEvent("+", false);
  } else if (key == '-') {
    handleEvent("-", false);
  } else if (key == '*' || key == 'x' || key == 'X') {
    handleEvent("x", false);
  } else if (key == '/') {
    handleEvent("/", false);
  } else if (key == ENTER || key == RETURN || key == '=') {
    performCalc();
  } else if (key == 'c' || key == 'C') {
    clearCalc();
  }
  printVals();
}

void handleEvent(String keyVal, boolean isNum) {
  if (isNum) {
    if (keyVal.equals(".") && dVal.indexOf('.') != -1) {
      return;
    }

    if (left) {
      if (dVal.equals("0") && !keyVal.equals(".")) {
        dVal = keyVal;
      } else {
        if (dVal.length() < 12) dVal += keyVal;
      }
      l = parseFloatSafe(dVal);
    } else {
      if (dVal.equals("0") && !keyVal.equals(".")) {
        dVal = keyVal;
      } else {
        if (dVal.length() < 12) dVal += keyVal;
      }
      r = parseFloatSafe(dVal);
    }
  } else {
    if (!op.equals("") && !left) {
      performCalc();
    }
    op = keyVal;
    left = false;
    dVal = "0";
  }
}

void performCalc() {
  float result = l;
  if (op.equals("+")) {
    result = l + r;
  } else if (op.equals("-")) {
    result = l - r;
  } else if (op.equals("x")) {
    result = l * r;
  } else if (op.equals("/")) {
    if (r == 0) {
      dVal = "ERR";
      l = 0;
      r = 0;
      op = "";
      left = true;
      return;
    } else {
      result = l / r;
    }
  } else {
    return;
  }

  dVal = floatToDisplay(result);
  l = result;
  r = 0;
  op = "";
  left = true;
}

void clearCalc() {
  dVal = "0";
  left = true;
  l = 0;
  r = 0;
  op = "";
}

void printVals() {
  println("L:", l, "OP:", op, "R:", r, "dVal:", dVal);
}

void updateDisplay() {
  rectMode(CENTER);
  fill(255);
  rect(121, 45, 225, 105, 8);
  fill(0);
  textSize(20);
  text(dVal, 229, 45);
}

float parseFloatSafe(String s) {
  if (s.equals("") || s.equals(".")) return 0;
  return float(s);
}

String floatToDisplay(float v) {
  if (abs(v - round(v)) < 1e-7) {
    String s = str((int)round(v));
    if (s.length() > 12) {
      return nf(v, 0, 6);
    }
    return s;
  } else {
    String s = str(v);
    if (s.length() > 12) {
      int decimals = max(0, 12 - (int)floor(log(abs(v))/log(10)) - 1);
      decimals = constrain(decimals, 0, 8);
      s = nf(v, 0, decimals);
      if (s.length() > 12) s = s.substring(0, 12);
    }
    return s;
  }
}

class Button {
  float x, y, w, h;
  color fillCol, hoverCol;
  String label;
  boolean isNum = false;
  boolean hovering = false;

  Button(float x_, float y_, float w_, float h_, color c1, color c2, String lbl) {
    x = x_;
    y = y_;
    w = w_;
    h = h_;
    fillCol = c1;
    hoverCol = c2;
    label = lbl;
    if (lbl.length() == 1 && (lbl.charAt(0) >= '0' && lbl.charAt(0) <= '9' || lbl.equals("."))) {
      isNum = true;
    }
  }

  void display() {
    rectMode(CENTER);
    stroke(0);
    if (hovering) fill(hoverCol); else fill(fillCol);
    if (w > h) {
      rect(x, y, w, h, 6);
    } else {
      rect(x, y, w, h, 6);
    }
    fill(0);
    textSize(12);
    textAlign(CENTER, CENTER);
    text(label, x, y);
  }

  void hover(float mx, float my) {
    hovering = contains(mx, my);
  }

  boolean contains(float mx, float my) {
    if (w > 1.2 * h && w > 100) {
      float rx = w/2;
      float ry = h/2;
      float dx = mx - x;
      float dy = my - y;
      return (dx*dx)/(rx*rx) + (dy*dy)/(ry*ry) <= 1.0;
    } else {
      return mx >= x - w/2 && mx <= x + w/2 && my >= y - h/2 && my <= y + h/2;
    }
  }
}
