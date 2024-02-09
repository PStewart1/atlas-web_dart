/// Accepts one argument [str] and returns its longest non-repeating substring.
/// Employs the Optimised Sliding Window algorithm.
String longestUniqueSubstring(String str) {

  // left and right ends of window
  int l = 0, r = 1;
  // length of longest substring, will be at least 
  int maxLen = 1;
  // set of unique strings, initialzed with first char of str
  Set<String> substrSet = {str[0]};
  
  // loop through the str, while right end of our window is within the scope of str.
  while(r < str.length) {
    // If the next char is within our current window, move the left end of the window up.
    if (str.substring(l, r).contains(str[r])) {
        // make sure our window is at least 1 char wide.
        if (r == l + 1 ) r++;
        l++;
    } else {
      // if next char is not in current window, add it with window into our set.
      substrSet.add(str.substring(l, r + 1));
      // the length our added substring
      int len = str.substring(l, r + 1).length;
      // update the maximum length if needed
      maxLen = maxLen > len ? maxLen : len;
      r++;
    }
  }

  // finally, return our first, longest string in the set.
  String subStr = substrSet.firstWhere((sub) => sub.length == maxLen);
  return subStr;
}
