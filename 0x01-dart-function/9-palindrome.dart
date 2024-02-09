/// Accepts one argument String and returns True if the input String is a palindrome otherwise it returns False.
bool isPalindrome(String s) {

  // strings less than 3 chars don't count
  if (s.length < 3) return false;

  // left and right pointers to check chars
  int l = 0, r = s.length - 1;

  // loop through s, as long is l is smaller than r
  while (l < r) {
    // If the 2 chars match, keep going. if not, it's not a palindrome.
    if (s[l] == s[r]) {
      l++;
      r--;
    } else
      return false;
  }
  // If we got all the way through, it must be a palindrome.
  return true;
}
