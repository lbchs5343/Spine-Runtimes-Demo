package g;

/* loaded from: classes.dex */
public enum bjt {
    BOOLEAN("Z", "boolean", cwx.bf("java.lang.Boolean")),
    CHAR("C", "char", cwx.bf("java.lang.Character")),
    BYTE("B", "byte", cwx.bf("java.lang.Byte")),
    SHORT("S", "short", cwx.bf("java.lang.Short")),
    INT("I", "int", cwx.bf("java.lang.Integer")),
    FLOAT("F", "float", cwx.bf("java.lang.Float")),
    LONG("J", "long", cwx.bf("java.lang.Long")),
    DOUBLE("D", "double", cwx.bf("java.lang.Double")),
    OBJECT("L", "OBJECT", cwx.t),
    ARRAY("[", "ARRAY", cwx.aj),
    VOID("V", "void", cwx.bf("java.lang.Void"));

    private final cwx boxType;
    private final String longName;
    private final String shortName;

    bjt(String str, String str2, cwx cwxVar) {
        this.shortName = str;
        this.longName = str2;
        this.boxType = cwxVar;
    }

    public final cwx b() {
        return this.boxType;
    }

    public final String c() {
        return this.longName;
    }

    public final String d() {
        return this.shortName;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.longName;
    }
}
