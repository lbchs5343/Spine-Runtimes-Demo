package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class cxw {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ cxw[] f13719a;

    /* renamed from: d, reason: collision with root package name */
    public static final cxw f13720d;
    public static final cxw dq;
    public static final cxw ox;

    static {
        cxw cxwVar = new cxw("LEFT_ALIGN", 0);
        dq = cxwVar;
        cxw cxwVar2 = new cxw("RIGHT_ALIGN", 1);
        f13720d = cxwVar2;
        cxw cxwVar3 = new cxw("CENTER", 2);
        ox = cxwVar3;
        f13719a = new cxw[]{cxwVar, cxwVar2, cxwVar3};
    }

    public static cxw valueOf(String str) {
        return (cxw) Enum.valueOf(cxw.class, str);
    }

    public static cxw[] values() {
        return (cxw[]) f13719a.clone();
    }
}
