package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class xt {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ xt[] f20319a;

    /* renamed from: d, reason: collision with root package name */
    public static final xt f20320d;
    public static final xt dq;
    public static final xt ox;

    static {
        xt xtVar = new xt("AUTOMATIC", 0);
        dq = xtVar;
        xt xtVar2 = new xt("HARDWARE", 1);
        f20320d = xtVar2;
        xt xtVar3 = new xt("SOFTWARE", 2);
        ox = xtVar3;
        f20319a = new xt[]{xtVar, xtVar2, xtVar3};
    }

    public static xt valueOf(String str) {
        return (xt) Enum.valueOf(xt.class, str);
    }

    public static xt[] values() {
        return (xt[]) f20319a.clone();
    }
}
