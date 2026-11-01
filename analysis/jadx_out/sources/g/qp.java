package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class qp {
    public static final qp AUTO;
    public static final qp FALLBACK;
    public static final qp RESTRUCTURE;
    public static final qp SIMPLE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ qp[] f19873a;

    static {
        qp qpVar = new qp("AUTO", 0);
        AUTO = qpVar;
        qp qpVar2 = new qp("RESTRUCTURE", 1);
        RESTRUCTURE = qpVar2;
        qp qpVar3 = new qp("SIMPLE", 2);
        SIMPLE = qpVar3;
        qp qpVar4 = new qp("FALLBACK", 3);
        FALLBACK = qpVar4;
        f19873a = new qp[]{qpVar, qpVar2, qpVar3, qpVar4};
    }

    public static qp valueOf(String str) {
        return (qp) Enum.valueOf(qp.class, str);
    }

    public static qp[] values() {
        return (qp[]) f19873a.clone();
    }
}
