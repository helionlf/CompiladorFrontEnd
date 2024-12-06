import java_cup.runtime.Symbol;
import java.io.FileReader;

public class Main {
    public static void main(String[] args) {
        try {
            scanner scanner = new scanner(new FileReader("input.txt"));
            parser parser = new parser(scanner);
            Symbol result = parser.parse(); // Inicia a análise sintática

            System.out.println("Análise sintática concluída com sucesso.");
            System.out.println("Árvore sintática:");

            printTree(result, 0);
        } catch (Exception e) {
            System.err.println("Erro durante a análise sintática: " + e.getMessage());
        }
    }

    public static void printTree(Symbol symbol, int depth) {
        for (int i = 0; i < depth; i++) {
            System.out.print("  ");
        }
        if (symbol.value != null) {
            System.out.println(symbol.value);
        } else {
            System.out.println(symbol.toString());
        }
    }
}