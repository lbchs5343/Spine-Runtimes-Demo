package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public final class fxs {
    public static final fxs DAY;
    public static final fxs YEAR;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ fxs[] f17586a;

    static {
        fxs fxsVar = new fxs("DAY", 0);
        DAY = fxsVar;
        fxs fxsVar2 = new fxs("YEAR", 1);
        YEAR = fxsVar2;
        f17586a = new fxs[]{fxsVar, fxsVar2};
    }

    public static fxs valueOf(String str) {
        return (fxs) Enum.valueOf(fxs.class, str);
    }

    public static fxs[] values() {
        return (fxs[]) f17586a.clone();
    }
}
