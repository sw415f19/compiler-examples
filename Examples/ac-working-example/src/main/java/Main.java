import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeWalker;

public class Main {

    public static void main(String[] args)
    {
        CharStream cs = CharStreams.fromString(
                "f b\n" +
                "i a\n" +
                "a = 5\n" +
                "b = a + 3.2\n" +
                "p b");

        LLexer lLexer = new LLexer(cs);
        CommonTokenStream tokens = new CommonTokenStream(lLexer);

        Parser parser = new Parser(tokens);

        ParseTree parseTree = parser.prog();
        BaseListener baseListener = new BaseListener();

        ParseTreeWalker walker = new ParseTreeWalker();

        walker.walk(baseListener, parseTree);

    }
}
