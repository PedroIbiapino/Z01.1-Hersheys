/**
 * Curso: Elementos de Sistemas
 * Arquivo: Code.java
 */

package assembler;

import java.util.HashMap;

/**
 * Traduz mnemônicos da linguagem assembly para códigos binários da arquitetura Z0.
 */
public class Code {

    /**
     * Retorna o código binário do(s) registrador(es) que vão receber o valor da instrução.
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 4 bits) com código em linguagem de máquina para a instrução.
     */
    public static String dest(String[] mnemnonic) {

        HashMap<String, String> map = new HashMap<String, String>();
        map.put("%A","0001");  //Put elements in Map
        map.put("%D","0010");
        map.put("(%A)","0100");
        String op = mnemnonic[0];
        String destine = mnemnonic[mnemnonic.length - 1];
        if (mnemnonic.length < 2){
            return "0000";
        } else if (mnemnonic.length < 4 || (mnemnonic.length == 4 && !(op.equals("movw"))) ) {
            return map.get(destine);
        } else if (mnemnonic.length == 4 && (op.equals("movw"))){
            int number1 = Integer.parseInt(map.get(mnemnonic[mnemnonic.length - 1]), 2);
            int number2 = Integer.parseInt(map.get(mnemnonic[mnemnonic.length - 2]), 2);
            int number3 = number1 + number2;
            String output = Integer.toBinaryString(number3);
            while (output.length() < 4){
                output = '0' + output;
            }
            System.out.println(output);
            return output;
        }
    	return "";
    }

    /**
     * Retorna o código binário do mnemônico para realizar uma operação de cálculo.
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 7 bits) com código em linguagem de máquina para a instrução.
     */
    public static String comp(String[] mnemnonic) {
        String output = "00";
        String r0 = "";
        boolean flag = false;
        String op = mnemnonic[0];
        for (String symbol: mnemnonic){
            if (symbol.equals("(%A)")) {
                r0 = "1";
                flag = true;
            }
        }
        if (!flag){
            r0 = "0";
        }

        if (op.equals("movw")){
            String origin = mnemnonic[1];
            String calc;
            switch (origin) {
                case "%A": calc = "110000";
                case "(%A)": calc = "110000";
                case "%D": calc = "001100";
            }
        }

        if (op.equals("addw")){
            String a = mnemnonic[1];
            String b = mnemnonic[2];
            String destiny = mnemnonic[3];
            if (flag) {

            } else{
                //
            }

        }






    	return "";
    }

    /**
     * Retorna o código binário do mnemônico para realizar uma operação de jump (salto).
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 3 bits) com código em linguagem de máquina para a instrução.
     */
    public static String jump(String[] mnemnonic) {
        switch (mnemnonic[0]){
            case "jg" : return "001";

            case "je" : return "010";

            case "jge" : return "011";

            case "jl" : return "100";

            case "jne" : return "101";

            case "jle" : return "110";

            case "jmp"  : return "111";

            default    : return "000";
        }
    }

    /**
     * Retorna o código binário de um valor decimal armazenado numa String.
     * @param  symbol valor numérico decimal armazenado em uma String.
     * @return Valor em binário (String de 15 bits) representado com 0s e 1s.
     */
    public static String toBinary(String symbol) {
        int number = Integer.parseInt(symbol);
        String output = Integer.toBinaryString(number);
        while(output.length() < 16) {
            output = '0' + output;
        }
    	return output;
    }

}
