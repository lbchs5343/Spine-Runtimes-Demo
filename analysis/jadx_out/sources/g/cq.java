package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public final class cq {
    public static final cq DEFAULT;
    public static final cq HIGHEST;
    public static final cq VERY_LOW;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ cq[] f13315a;

    static {
        cq cqVar = new cq("DEFAULT", 0);
        DEFAULT = cqVar;
        cq cqVar2 = new cq("VERY_LOW", 1);
        VERY_LOW = cqVar2;
        cq cqVar3 = new cq("HIGHEST", 2);
        HIGHEST = cqVar3;
        f13315a = new cq[]{cqVar, cqVar2, cqVar3};
    }

    public static cq valueOf(String str) {
        return (cq) Enum.valueOf(cq.class, str);
    }

    public static cq[] values() {
        return (cq[]) f13315a.clone();
    }
}
