package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class gju {
    public static final gju DECODED_DATA;
    public static final gju RES_LINK;
    public static final gju RES_TABLE;
    public static final gju TEXT;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ gju[] f18272a;

    static {
        gju gjuVar = new gju("TEXT", 0);
        TEXT = gjuVar;
        gju gjuVar2 = new gju("DECODED_DATA", 1);
        DECODED_DATA = gjuVar2;
        gju gjuVar3 = new gju("RES_LINK", 2);
        RES_LINK = gjuVar3;
        gju gjuVar4 = new gju("RES_TABLE", 3);
        RES_TABLE = gjuVar4;
        f18272a = new gju[]{gjuVar, gjuVar2, gjuVar3, gjuVar4};
    }

    public static gju valueOf(String str) {
        return (gju) Enum.valueOf(gju.class, str);
    }

    public static gju[] values() {
        return (gju[]) f18272a.clone();
    }
}
