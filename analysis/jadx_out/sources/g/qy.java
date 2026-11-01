package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class qy {
    public static final qy AUTHORIZE;
    public static final qy CONNECTION;
    public static final qy RESULT_UNKNOWN;
    public static final qy START;
    public static final qy UPDATE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ qy[] f19884a;

    static {
        qy qyVar = new qy("UPDATE", 0);
        UPDATE = qyVar;
        qy qyVar2 = new qy("START", 1);
        START = qyVar2;
        qy qyVar3 = new qy("AUTHORIZE", 2);
        AUTHORIZE = qyVar3;
        qy qyVar4 = new qy("CONNECTION", 3);
        CONNECTION = qyVar4;
        qy qyVar5 = new qy("RESULT_UNKNOWN", 4);
        RESULT_UNKNOWN = qyVar5;
        f19884a = new qy[]{qyVar, qyVar2, qyVar3, qyVar4, qyVar5};
    }

    public static qy valueOf(String str) {
        return (qy) Enum.valueOf(qy.class, str);
    }

    public static qy[] values() {
        return (qy[]) f19884a.clone();
    }
}
