package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class gfv {
    public static final gfv BASELINE;
    public static final gfv BOTTOM;
    public static final gfv HORIZONTAL_DIMENSION;
    public static final gfv LEFT;
    public static final gfv RIGHT;
    public static final gfv TOP;
    public static final gfv UNKNOWN;
    public static final gfv VERTICAL_DIMENSION;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ gfv[] f18053a;

    static {
        gfv gfvVar = new gfv("UNKNOWN", 0);
        UNKNOWN = gfvVar;
        gfv gfvVar2 = new gfv("HORIZONTAL_DIMENSION", 1);
        HORIZONTAL_DIMENSION = gfvVar2;
        gfv gfvVar3 = new gfv("VERTICAL_DIMENSION", 2);
        VERTICAL_DIMENSION = gfvVar3;
        gfv gfvVar4 = new gfv("LEFT", 3);
        LEFT = gfvVar4;
        gfv gfvVar5 = new gfv("RIGHT", 4);
        RIGHT = gfvVar5;
        gfv gfvVar6 = new gfv("TOP", 5);
        TOP = gfvVar6;
        gfv gfvVar7 = new gfv("BOTTOM", 6);
        BOTTOM = gfvVar7;
        gfv gfvVar8 = new gfv("BASELINE", 7);
        BASELINE = gfvVar8;
        f18053a = new gfv[]{gfvVar, gfvVar2, gfvVar3, gfvVar4, gfvVar5, gfvVar6, gfvVar7, gfvVar8};
    }

    public static gfv valueOf(String str) {
        return (gfv) Enum.valueOf(gfv.class, str);
    }

    public static gfv[] values() {
        return (gfv[]) f18053a.clone();
    }
}
