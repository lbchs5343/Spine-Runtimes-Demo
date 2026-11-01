package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class agj {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ agj[] f10181a;

    /* renamed from: d, reason: collision with root package name */
    public static final agj f10182d;
    public static final agj dq;
    public static final agj ox;
    public static final agj p;

    static {
        agj agjVar = new agj("IDLE", 0);
        dq = agjVar;
        agj agjVar2 = new agj("RUNNING", 1);
        f10182d = agjVar2;
        agj agjVar3 = new agj("INITIALIZING", 2);
        ox = agjVar3;
        agj agjVar4 = new agj("FINISHING", 3);
        p = agjVar4;
        f10181a = new agj[]{agjVar, agjVar2, agjVar3, agjVar4};
    }

    public static agj valueOf(String str) {
        return (agj) Enum.valueOf(agj.class, str);
    }

    public static agj[] values() {
        return (agj[]) f10181a.clone();
    }
}
