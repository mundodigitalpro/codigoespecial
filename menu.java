import java.util.Scanner;
 
public class Menu {
 
    public static void main(String[] args) {
        boolean salir = false;
        Scanner in = new Scanner(System.in);
        do {
            System.out.println("Ingresa A para saludarte, y B para despedirme: ");
            switch (in.next()) {
                case "A":
                    System.out.println("Hola");
                    break;
                case "B":
                    System.out.println("Adios");
                    break;
            }
            System.out.println("¿Salir de este bucle?");
 
            if (in.next().equalsIgnoreCase("si")) {
                salir = true;
            } else {
                salir = false;
            }
        } while (!salir);
    }
}
