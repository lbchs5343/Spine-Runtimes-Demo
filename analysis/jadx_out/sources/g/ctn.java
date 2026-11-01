package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class ctn {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ ctn[] f13477a;

    /* renamed from: d, reason: collision with root package name */
    public static final ctn f13478d;
    public static final ctn dq;
    public static final ctn ox;

    static {
        ctn ctnVar = new ctn("BUTT", 0);
        dq = ctnVar;
        ctn ctnVar2 = new ctn("ROUND", 1);
        f13478d = ctnVar2;
        ctn ctnVar3 = new ctn("UNKNOWN", 2);
        ox = ctnVar3;
        f13477a = new ctn[]{ctnVar, ctnVar2, ctnVar3};
    }

    public static ctn valueOf(String str) {
        return (ctn) Enum.valueOf(ctn.class, str);
    }

    public static ctn[] values() {
        return (ctn[]) f13477a.clone();
    }
}
