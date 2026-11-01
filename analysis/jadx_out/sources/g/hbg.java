package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class hbg {
    public static final hbg BACK_EDGE;
    public static final hbg CROSS_EDGE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ hbg[] f19168a;

    static {
        hbg hbgVar = new hbg("BACK_EDGE", 0);
        BACK_EDGE = hbgVar;
        hbg hbgVar2 = new hbg("CROSS_EDGE", 1);
        CROSS_EDGE = hbgVar2;
        f19168a = new hbg[]{hbgVar, hbgVar2};
    }

    public static hbg valueOf(String str) {
        return (hbg) Enum.valueOf(hbg.class, str);
    }

    public static hbg[] values() {
        return (hbg[]) f19168a.clone();
    }
}
