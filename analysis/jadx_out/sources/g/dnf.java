package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class dnf {
    public static final dnf AD_UNION_DRAW;
    public static final dnf AD_UNION_EXCITATION;
    public static final dnf AD_UNION_FEED;
    public static final dnf AD_UNION_INSERT;
    public static final dnf NO_VALUE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ dnf[] f14455a;

    static {
        dnf dnfVar = new dnf("NO_VALUE", 0);
        NO_VALUE = dnfVar;
        dnf dnfVar2 = new dnf("AD_UNION_EXCITATION", 1);
        AD_UNION_EXCITATION = dnfVar2;
        dnf dnfVar3 = new dnf("AD_UNION_INSERT", 2);
        AD_UNION_INSERT = dnfVar3;
        dnf dnfVar4 = new dnf("AD_UNION_FEED", 3);
        AD_UNION_FEED = dnfVar4;
        dnf dnfVar5 = new dnf("AD_UNION_DRAW", 4);
        AD_UNION_DRAW = dnfVar5;
        f14455a = new dnf[]{dnfVar, dnfVar2, dnfVar3, dnfVar4, dnfVar5};
    }

    public static dnf valueOf(String str) {
        return (dnf) Enum.valueOf(dnf.class, str);
    }

    public static dnf[] values() {
        return (dnf[]) f14455a.clone();
    }

    public final String b() {
        return name().toLowerCase();
    }
}
