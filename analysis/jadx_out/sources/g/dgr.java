package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class dgr {
    public static final dgr CHANGED;
    public static final dgr REJECT;
    public static final dgr SAME;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ dgr[] f14149a;

    static {
        dgr dgrVar = new dgr("REJECT", 0);
        REJECT = dgrVar;
        dgr dgrVar2 = new dgr("SAME", 1);
        SAME = dgrVar2;
        dgr dgrVar3 = new dgr("CHANGED", 2);
        CHANGED = dgrVar3;
        f14149a = new dgr[]{dgrVar, dgrVar2, dgrVar3};
    }

    public static dgr valueOf(String str) {
        return (dgr) Enum.valueOf(dgr.class, str);
    }

    public static dgr[] values() {
        return (dgr[]) f14149a.clone();
    }
}
