package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class euc implements axb {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ euc[] f16167a;
    public static final euc dq;

    static {
        euc eucVar = new euc("METHOD", 0);
        dq = eucVar;
        f16167a = new euc[]{eucVar};
    }

    public static euc valueOf(String str) {
        return (euc) Enum.valueOf(euc.class, str);
    }

    public static euc[] values() {
        return (euc[]) f16167a.clone();
    }
}
