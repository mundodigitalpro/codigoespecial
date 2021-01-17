package cadenainvertida;
// Ejercicio de muestra de los metodos length, charAt y getChars de la clase String


public class CadenaInvertida {

    public static void main(String[] args) {

        String s1 = "Hola a todos";
        char arregloChar[] = new char[5];
        
        System.out.printf( "s1: %s", s1 );
        
        // metodo length mide la cantidad de caracteres de una cadena
        System.out.printf("\n Longitud de s1: %d", s1.length());
        
        //El bulce for itera atraves de los caracteres en s1 con charAt y muestra  la cadena invertida
        System.out.print("\n La cadena invertida es: ");
        // Imprime los caracteres de la cadena s1 en orden inverso (y separados por espacios)
        for (int cuenta = s1.length() - 1; cuenta >= 0; cuenta--)
            System.out.printf("%s ", s1.charAt(cuenta));//devuelve el carácter ubicado en una posición específica en la cadena
        
        s1.getChars(0, 4, arregloChar, 0);// copia los caracteres de la cadena a arregloChar
        System.out.print("\n El arreglo de caracteres es: ");
        
        for (char caracter : arregloChar)
            System.out.print(caracter);
        
        System.out.println();
    }//fin del main   
}//fin de la clase
