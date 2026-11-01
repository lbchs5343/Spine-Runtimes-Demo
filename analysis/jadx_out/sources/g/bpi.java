package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class bpi {
    public static final bpi DIALOG;
    public static final bpi FINISHED;
    public static final bpi SEARCH;
    public static final bpi VERIFY;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ bpi[] f11957a;

    static {
        bpi bpiVar = new bpi("SEARCH", 0);
        SEARCH = bpiVar;
        bpi bpiVar2 = new bpi("DIALOG", 1);
        DIALOG = bpiVar2;
        bpi bpiVar3 = new bpi("VERIFY", 2);
        VERIFY = bpiVar3;
        bpi bpiVar4 = new bpi("FINISHED", 3);
        FINISHED = bpiVar4;
        f11957a = new bpi[]{bpiVar, bpiVar2, bpiVar3, bpiVar4};
    }

    public static bpi valueOf(String str) {
        return (bpi) Enum.valueOf(bpi.class, str);
    }

    public static bpi[] values() {
        return (bpi[]) f11957a.clone();
    }
}
