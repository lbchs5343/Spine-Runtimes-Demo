package g;

/* loaded from: classes.dex */
public enum be {
    EXTENDS(1, "? extends "),
    UNBOUND(0, "?"),
    SUPER(-1, "? super ");

    private final int num;
    private final String str;

    be(int i, String str) {
        this.num = i;
        this.str = str;
    }

    public final String b() {
        return this.str;
    }
}
