layout('us');			// US keyboard layout
typingSpeed(0,0);
for (var i = 0; i <= 9999; i++) {
  newstr = '';
  if (i < 10) {
    newstr = '000' + i;
  } else if (i < 100){
    newstr = '00' + i;
  } else if (i < 1000){
    newstr = '0' + i;
  } else if (i < 10000){
    newstr = i;
  }
  type("" + newstr);
  press("ENTER");
  delay(1000 * 30); // 30 Seconds
}
