package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class csu {
    public static final csu AUTO;
    public static final csu DECIMAL;
    public static final csu HEXADECIMAL;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ csu[] f13454a;

    static {
        csu csuVar = new csu("AUTO", 0);
        AUTO = csuVar;
        csu csuVar2 = new csu("DECIMAL", 1);
        DECIMAL = csuVar2;
        csu csuVar3 = new csu("HEXADECIMAL", 2);
        HEXADECIMAL = csuVar3;
        f13454a = new csu[]{csuVar, csuVar2, csuVar3};
    }

    public static csu valueOf(String str) {
        return (csu) Enum.valueOf(csu.class, str);
    }

    public static csu[] values() {
        return (csu[]) f13454a.clone();
    }
}
