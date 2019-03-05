// Generated from ac.g4 by ANTLR 4.7.2
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link Parser}.
 */
public interface Listener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link Parser#prog}.
	 * @param ctx the parse tree
	 */
	void enterProg(Parser.ProgContext ctx);
	/**
	 * Exit a parse tree produced by {@link Parser#prog}.
	 * @param ctx the parse tree
	 */
	void exitProg(Parser.ProgContext ctx);
	/**
	 * Enter a parse tree produced by {@link Parser#dcls}.
	 * @param ctx the parse tree
	 */
	void enterDcls(Parser.DclsContext ctx);
	/**
	 * Exit a parse tree produced by {@link Parser#dcls}.
	 * @param ctx the parse tree
	 */
	void exitDcls(Parser.DclsContext ctx);
	/**
	 * Enter a parse tree produced by {@link Parser#dcl}.
	 * @param ctx the parse tree
	 */
	void enterDcl(Parser.DclContext ctx);
	/**
	 * Exit a parse tree produced by {@link Parser#dcl}.
	 * @param ctx the parse tree
	 */
	void exitDcl(Parser.DclContext ctx);
	/**
	 * Enter a parse tree produced by {@link Parser#stmts}.
	 * @param ctx the parse tree
	 */
	void enterStmts(Parser.StmtsContext ctx);
	/**
	 * Exit a parse tree produced by {@link Parser#stmts}.
	 * @param ctx the parse tree
	 */
	void exitStmts(Parser.StmtsContext ctx);
	/**
	 * Enter a parse tree produced by {@link Parser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterStmt(Parser.StmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link Parser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitStmt(Parser.StmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link Parser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExpr(Parser.ExprContext ctx);
	/**
	 * Exit a parse tree produced by {@link Parser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExpr(Parser.ExprContext ctx);
	/**
	 * Enter a parse tree produced by {@link Parser#val}.
	 * @param ctx the parse tree
	 */
	void enterVal(Parser.ValContext ctx);
	/**
	 * Exit a parse tree produced by {@link Parser#val}.
	 * @param ctx the parse tree
	 */
	void exitVal(Parser.ValContext ctx);
}