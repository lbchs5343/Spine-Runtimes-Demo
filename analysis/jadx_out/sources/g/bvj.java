package g;

/* loaded from: classes.dex */
public enum bvj {
    ADD("+"),
    SUB("-"),
    MUL("*"),
    DIV("/"),
    REM("%"),
    AND("&"),
    OR("|"),
    XOR("^"),
    SHL("<<"),
    SHR(">>"),
    USHR(">>>");

    private final String symbol;

    bvj(String str) {
        this.symbol = str;
    }

    public final String b() {
        return this.symbol;
    }

    public final boolean c() {
        int i = fir.f16854a[ordinal()];
        return i == 1 || i == 2 || i == 3;
    }
}
