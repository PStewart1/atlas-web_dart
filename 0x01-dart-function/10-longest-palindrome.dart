import '9-palindrome.dart';

/// accepts one argument String and returns the longest palindrome substring.
String longestPalindrome(String str) {

   // left and right ends of window
  int l = 0, r = 3;
  // length of longest substring, will be at least 3 if one exists
  int maxLen = 3;
  // set of unique strings
  Set<String> substrSet = {};
  
  // loop through the str, while right end of our window is within the scope of str.
  while(r <= str.length) {
    // call previous palindrome function to check substring
    if (!isPalindrome(str.substring(l, r))) {
        // if none, keep moving
        r++;
        l++;
    } else {
      // if it is a palindrome, add substring to set
      substrSet.add(str.substring(l, r));
      // the length our added substring
      int len = str.substring(l, r).length;
      // update the maximum length if needed
      maxLen = maxLen > len ? maxLen : len;
      // new window limits
      int i = l-1, j = r+1;
      // expand window to check if surrounding substring is also a pally
      while ( i >= 0 && j <= str.length) {
        // if it is add it to our collection
        if (isPalindrome(str.substring(i, j))) {
          substrSet.add(str.substring(i, j));
          len = str.substring(i, j).length;
          maxLen = maxLen > len ? maxLen : len;
          // keep expanding!
          j++;
          i--;
        }
        else
          break;
      }
      // keep moving with our first window
      r++;
      l++;
    }
  }

  // check to see if we even have pallys to report.
  if (substrSet.isEmpty)
    return 'none';

  // finally, return our first, longest palindrome in the set.
  String subStr = substrSet.firstWhere((sub) => sub.length == maxLen);
  return subStr;
}