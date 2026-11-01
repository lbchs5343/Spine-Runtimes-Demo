package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class dnl {
    public static final dnl CENTER;
    public static final dnl END;
    public static final dnl NONE;
    public static final dnl START;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ dnl[] f14473a;

    static {
        dnl dnlVar = new dnl("NONE", 0);
        NONE = dnlVar;
        dnl dnlVar2 = new dnl("START", 1);
        START = dnlVar2;
        dnl dnlVar3 = new dnl("END", 2);
        END = dnlVar3;
        dnl dnlVar4 = new dnl("CENTER", 3);
        CENTER = dnlVar4;
        f14473a = new dnl[]{dnlVar, dnlVar2, dnlVar3, dnlVar4};
    }

    public static dnl valueOf(String str) {
        return (dnl) Enum.valueOf(dnl.class, str);
    }

    public static dnl[] values() {
        return (dnl[]) f14473a.clone();
    }
}
