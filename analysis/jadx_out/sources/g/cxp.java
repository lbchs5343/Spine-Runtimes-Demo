package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class cxp {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ cxp[] f13701a;

    /* renamed from: d, reason: collision with root package name */
    public static final cxp f13702d;
    public static final cxp dq;
    public static final cxp ox;
    public static final cxp p;
    public static final cxp s;

    static {
        cxp cxpVar = new cxp("MERGE", 0);
        dq = cxpVar;
        cxp cxpVar2 = new cxp("ADD", 1);
        f13702d = cxpVar2;
        cxp cxpVar3 = new cxp("SUBTRACT", 2);
        ox = cxpVar3;
        cxp cxpVar4 = new cxp("INTERSECT", 3);
        p = cxpVar4;
        cxp cxpVar5 = new cxp("EXCLUDE_INTERSECTIONS", 4);
        s = cxpVar5;
        f13701a = new cxp[]{cxpVar, cxpVar2, cxpVar3, cxpVar4, cxpVar5};
    }

    public static cxp valueOf(String str) {
        return (cxp) Enum.valueOf(cxp.class, str);
    }

    public static cxp[] values() {
        return (cxp[]) f13701a.clone();
    }
}
