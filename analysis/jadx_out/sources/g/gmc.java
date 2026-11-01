package g;

/* loaded from: classes.dex */
public enum gmc {
    LINE(0, "// ", ""),
    BLOCK(1, " * ", "\n */"),
    BLOCK_CONDENSED(2, " * ", " */"),
    JAVADOC(3, " * ", "\n */"),
    JAVADOC_CONDENSED(4, " * ", " */");

    private final String end;
    private final String onNewLine;
    private final String start;

    gmc(int i, String str, String str2) {
        this.start = r2;
        this.onNewLine = str;
        this.end = str2;
    }

    public final String b() {
        return this.end;
    }

    public final String c() {
        return this.onNewLine;
    }

    public final String d() {
        return this.start;
    }
}
