package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public final class bld {
    public static final bld DEFAULT;
    public static final bld FIXED;
    public static final bld SIGNED;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ bld[] f11781a;

    static {
        bld bldVar = new bld("DEFAULT", 0);
        DEFAULT = bldVar;
        bld bldVar2 = new bld("SIGNED", 1);
        SIGNED = bldVar2;
        bld bldVar3 = new bld("FIXED", 2);
        FIXED = bldVar3;
        f11781a = new bld[]{bldVar, bldVar2, bldVar3};
    }

    public static bld valueOf(String str) {
        return (bld) Enum.valueOf(bld.class, str);
    }

    public static bld[] values() {
        return (bld[]) f11781a.clone();
    }
}
