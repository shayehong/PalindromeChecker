public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}

public boolean palindrome(String word)
{
  //your code here
  String backward = new String();

  for(int i = word.length()-1; i >= 0; i--){
      backward = backward + word.substring(i,i+1);
      //return backward;
  }
  if(word.equalsIgnoreCase(backward)){
    return true;
  }
  else{
    return false;
  }
  //with out case
  if(noSpaces(word).equalsIgnoreCase(noSpaces(word))){
    return true;
  }
}

public String noSpaces(String word){
  String s = new String();
  String nothing = new String();
  for(int i =0; i<sWord.length(); i++){
      if(sWord.substring(i,i+1).equals(" ")){
        nothing = "";
         s += nothing;
      }
      else{
          s += sWord.substring(i,i+1);
      }
  }
  return s;
}
  
