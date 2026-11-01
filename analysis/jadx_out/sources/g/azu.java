package g;

/* loaded from: classes.dex */
public enum azu {
    LAUNCH("launch"),
    JAVA("java"),
    NATIVE("native"),
    ANR("anr"),
    BLOCK("block"),
    ENSURE("ensure"),
    DART("dart"),
    CUSTOM_JAVA("custom_java"),
    ALL("all");

    private String o;

    azu(String str) {
        this.o = str;
    }

    public final String b() {
        return this.o;
    }
}
