<?php

function utf8_wordwrap($string, $width, $break, $cut) {
  if ($cut) {
    // Match anything 1 to $width chars long followed by whitespace or EOS,
    // otherwise match anything $width chars long
    $search  = '/(.{1,' . $width . '})(?:\s|$)|(.{' . $width . '})/uS';
    $replace = '$1$2' . $break;
  } else {
    // Anchor the beginning of the pattern with a lookahead
    // to avoid crazy backtracking when words are longer than $width
    $pattern = '/(?=\s)(.{1,' . $width . '})(?:\s|$)/uS';
    $replace = '$1' . $break;
  }

  return preg_replace($search, $replace, $string);
}