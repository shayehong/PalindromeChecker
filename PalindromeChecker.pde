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
  if(word.equalsIgnoreCase(backward(word)))
  {
    return true;
  }
  else if(noSpaces(word).equalsIgnoreCase(noSpaces(backward(word))))
  {
    return true;
  }
  else if(allLetters(word).equalsIgnoreCase(allLetters(backward(word))))
  {
    return true;
  }
  else{
    return false;
  }
}


public String backward(String word)
{
  String backward = new String();

  for(int i = word.length()-1; i >= 0; i--)
  {
      backward = backward + word.substring(i,i+1);
  }
  return backward;
}

public String noSpaces(String sWord){
  String s = new String();
  String nothing = new String();
  for(int i =0; i<sWord.length(); i++){
      if(sWord.substring(i,i+1).equals(" ") || sWord.substring(i,i+1).equals(" ") )
      {
          nothing = "";
          s += nothing;
      }
      else
      {
          s += sWord.substring(i,i+1);
      }
  }
  return backward(s);
}
  
public String allLetters(String sString){
  String allLet = new String();
  String nothing = new String();
  for(int i = 0; i<sString.length(); i++){
      if(Character.isLetter(sString.charAt(i)) == false){
        nothing = "";
        allLet +=  nothing;
      }
      else{
        allLet += sString.charAt(i);  

      }
  }
  return allLet;
}