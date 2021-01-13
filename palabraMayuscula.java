    public static String palabraMayuscula(String cadena) {

        String palabrasEncontradas[] = cadena.split("\\s"); // split Divide la cadena en palabras, "\\s" encuentra espacios

        String palabraMayuscula = ""; // Cadena Nueva donde vamos a guardar la cadena resultante

        for (String palabra : palabrasEncontradas) { // Con el for recorremos el String palabrasEncontradas para rellenar el array con las palabras encontradas

            String primeraLetra = palabra.substring(0, 1); // Divide la primera letra de cada palabra

            String siguientesLetras = palabra.substring(1); // Divide las siguiente letras de cada palabra

            palabraMayuscula += primeraLetra.toUpperCase() + siguientesLetras + " ";// Variable final donde ponemos en mayuscula la primera  de cada palabra con toUpperCase y concatenamos las siguientes letras 

        }

        return palabraMayuscula.trim(); //Devuelve el resultado y recortamos con trim el espacio final

    }
