// Generated from ac.g4 by ANTLR 4.7.2
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link acParser}.
 */
public interface acListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link acParser#prog}.
	 * @param ctx the parse tree
	 */
	void enterProg(acParser.ProgContext ctx);
	/**
	 * Exit a parse tree produced by {@link acParser#prog}.
	 * @param ctx the parse tree
	 */
	void exitProg(acParser.ProgContext ctx);
	/**
	 * Enter a parse tree produced by {@link acParser#dcls}.
	 * @param ctx the parse tree
	 */
	void enterDcls(acParser.DclsContext ctx);
	/**
	 * Exit a parse tree produced by {@link acParser#dcls}.
	 * @param ctx the parse tree
	 */
	void exitDcls(acParser.DclsContext ctx);
	/**
	 * Enter a parse tree produced by {@link acParser#dcl}.
	 * @param ctx the parse tree
	 */
	void enterDcl(acParser.DclContext ctx);
	/**
	 * Exit a parse tree produced by {@link acParser#dcl}.
	 * @param ctx the parse tree
	 */
	void exitDcl(acParser.DclContext ctx);
	/**
	 * Enter a parse tree produced by {@link acParser#stmts}.
	 * @param ctx the parse tree
	 */
	void enterStmts(acParser.StmtsContext ctx);
	/**
	 * Exit a parse tree produced by {@link acParser#stmts}.
	 * @param ctx the parse tree
	 */
	void exitStmts(acParser.StmtsContext ctx);
	/**
	 * Enter a parse tree produced by {@link acParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterStmt(acParser.StmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link acParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitStmt(acParser.StmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link acParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExpr(acParser.ExprContext ctx);
	/**
	 * Exit a parse tree produced by {@link acParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExpr(acParser.ExprContext ctx);
	/**
	 * Enter a parse tree produced by {@link acParser#val}.
	 * @param ctx the parse tree
	 */
	void enterVal(acParser.ValContext ctx);
	/**
	 * Exit a parse tree produced by {@link acParser#val}.
	 * @param ctx the parse tree
	 */
	void exitVal(acParser.ValContext ctx);
}