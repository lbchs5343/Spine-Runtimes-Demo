package g;

/* loaded from: classes.dex */
public enum ges {
    EQ("=="),
    NE("!="),
    LT("<"),
    LE("<="),
    GT(">"),
    GE(">=");

    private final String symbol;

    ges(String str) {
        this.symbol = str;
    }

    public final String b() {
        return this.symbol;
    }

    public final ges c() {
        switch (heg.f19334a[ordinal()]) {
            case 1:
                return NE;
            case 2:
                return EQ;
            case 3:
                return GE;
            case 4:
                return GT;
            case 5:
                return LE;
            case 6:
                return LT;
            default:
                throw new gck("Unknown if operations type: " + this);
        }
    }
}
