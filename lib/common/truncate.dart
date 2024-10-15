String truncate(int cutOff, String myText) {
  return myText.length < cutOff ? myText : '${myText.substring(0, cutOff)}...';
}
