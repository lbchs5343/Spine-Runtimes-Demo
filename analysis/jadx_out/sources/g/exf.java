package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class exf {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ exf[] f16314a;

    /* renamed from: d, reason: collision with root package name */
    public static final exf f16315d;
    public static final exf dq;
    public static final exf ox;
    public static final exf p;

    static {
        exf exfVar = new exf("MASK_MODE_ADD", 0);
        dq = exfVar;
        exf exfVar2 = new exf("MASK_MODE_SUBTRACT", 1);
        f16315d = exfVar2;
        exf exfVar3 = new exf("MASK_MODE_INTERSECT", 2);
        ox = exfVar3;
        exf exfVar4 = new exf("MASK_MODE_NONE", 3);
        p = exfVar4;
        f16314a = new exf[]{exfVar, exfVar2, exfVar3, exfVar4};
    }

    public static exf valueOf(String str) {
        return (exf) Enum.valueOf(exf.class, str);
    }

    public static exf[] values() {
        return (exf[]) f16314a.clone();
    }
}
