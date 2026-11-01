package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class dkz {
    public static final dkz CONSTRUCTOR;
    public static final dkz SELF;
    public static final dkz SUPER;
    public static final dkz THIS;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ dkz[] f14342a;

    static {
        dkz dkzVar = new dkz("CONSTRUCTOR", 0);
        CONSTRUCTOR = dkzVar;
        dkz dkzVar2 = new dkz("SUPER", 1);
        SUPER = dkzVar2;
        dkz dkzVar3 = new dkz("THIS", 2);
        THIS = dkzVar3;
        dkz dkzVar4 = new dkz("SELF", 3);
        SELF = dkzVar4;
        f14342a = new dkz[]{dkzVar, dkzVar2, dkzVar3, dkzVar4};
    }

    public static dkz valueOf(String str) {
        return (dkz) Enum.valueOf(dkz.class, str);
    }

    public static dkz[] values() {
        return (dkz[]) f14342a.clone();
    }
}
