package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class dne {
    public static final dne APPEND;
    public static final dne APPEND_OR_REPLACE;
    public static final dne KEEP;
    public static final dne REPLACE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ dne[] f14454a;

    static {
        dne dneVar = new dne("REPLACE", 0);
        REPLACE = dneVar;
        dne dneVar2 = new dne("KEEP", 1);
        KEEP = dneVar2;
        dne dneVar3 = new dne("APPEND", 2);
        APPEND = dneVar3;
        dne dneVar4 = new dne("APPEND_OR_REPLACE", 3);
        APPEND_OR_REPLACE = dneVar4;
        f14454a = new dne[]{dneVar, dneVar2, dneVar3, dneVar4};
    }

    public static dne valueOf(String str) {
        return (dne) Enum.valueOf(dne.class, str);
    }

    public static dne[] values() {
        return (dne[]) f14454a.clone();
    }
}
