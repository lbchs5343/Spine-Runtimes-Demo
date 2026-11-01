package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class any {
    public static final any BUILD;
    public static final any RUNTIME;
    public static final any SYSTEM;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ any[] f10541a;

    static {
        any anyVar = new any("BUILD", 0);
        BUILD = anyVar;
        any anyVar2 = new any("RUNTIME", 1);
        RUNTIME = anyVar2;
        any anyVar3 = new any("SYSTEM", 2);
        SYSTEM = anyVar3;
        f10541a = new any[]{anyVar, anyVar2, anyVar3};
    }

    public static any valueOf(String str) {
        return (any) Enum.valueOf(any.class, str);
    }

    public static any[] values() {
        return (any[]) f10541a.clone();
    }
}
