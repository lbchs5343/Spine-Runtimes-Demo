package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class fvo {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ fvo[] f17484a;

    /* renamed from: d, reason: collision with root package name */
    public static final fvo f17485d;
    public static final fvo dq;
    public static final fvo ox;

    static {
        fvo fvoVar = new fvo("MITER", 0);
        dq = fvoVar;
        fvo fvoVar2 = new fvo("ROUND", 1);
        f17485d = fvoVar2;
        fvo fvoVar3 = new fvo("BEVEL", 2);
        ox = fvoVar3;
        f17484a = new fvo[]{fvoVar, fvoVar2, fvoVar3};
    }

    public static fvo valueOf(String str) {
        return (fvo) Enum.valueOf(fvo.class, str);
    }

    public static fvo[] values() {
        return (fvo[]) f17484a.clone();
    }
}
