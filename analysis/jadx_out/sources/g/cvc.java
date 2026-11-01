package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class cvc {
    public static final cvc CLICK;
    public static final cvc DRAW;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ cvc[] f13570a;

    static {
        cvc cvcVar = new cvc("CLICK", 0);
        CLICK = cvcVar;
        cvc cvcVar2 = new cvc("DRAW", 1);
        DRAW = cvcVar2;
        f13570a = new cvc[]{cvcVar, cvcVar2};
    }

    public static cvc valueOf(String str) {
        return (cvc) Enum.valueOf(cvc.class, str);
    }

    public static cvc[] values() {
        return (cvc[]) f13570a.clone();
    }
}
