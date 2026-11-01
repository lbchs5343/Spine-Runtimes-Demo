package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class cxr {
    public static final cxr COROUTINE_SUSPENDED;
    public static final cxr RESUMED;
    public static final cxr UNDECIDED;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ cxr[] f13704a;

    static {
        cxr cxrVar = new cxr("COROUTINE_SUSPENDED", 0);
        COROUTINE_SUSPENDED = cxrVar;
        cxr cxrVar2 = new cxr("UNDECIDED", 1);
        UNDECIDED = cxrVar2;
        cxr cxrVar3 = new cxr("RESUMED", 2);
        RESUMED = cxrVar3;
        f13704a = new cxr[]{cxrVar, cxrVar2, cxrVar3};
    }

    public static cxr valueOf(String str) {
        return (cxr) Enum.valueOf(cxr.class, str);
    }

    public static cxr[] values() {
        return (cxr[]) f13704a.clone();
    }
}
