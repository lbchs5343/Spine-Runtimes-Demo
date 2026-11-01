package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class cqz {
    public static final cqz NARROW;
    public static final cqz WIDE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ cqz[] f13353a;

    static {
        cqz cqzVar = new cqz("NARROW", 0);
        NARROW = cqzVar;
        cqz cqzVar2 = new cqz("WIDE", 1);
        WIDE = cqzVar2;
        f13353a = new cqz[]{cqzVar, cqzVar2};
    }

    public static cqz valueOf(String str) {
        return (cqz) Enum.valueOf(cqz.class, str);
    }

    public static cqz[] values() {
        return (cqz[]) f13353a.clone();
    }
}
