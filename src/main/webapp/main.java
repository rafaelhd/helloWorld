package src.main.webapp;

import sun.security.util.Length;

public class Prueba{
public static void main (String args[]){

    System.out.print("hola");
     Prueba prueba = new prueba();

     System.out.println(prueba.lengthPlus("2"));
     
}
public int lengthPlus(String str) {
    int len = 2;
    try {
      len += str.length();
    }
    catch (NullPointerException e) {
      log.info("argument was null");
    }
    return len;
  }
}