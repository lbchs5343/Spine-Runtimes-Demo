package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public final class aop {
    public static final aop Stderr;
    public static final aop Stdout;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ aop[] f10579a;

    static {
        aop aopVar = new aop("Stderr", 0);
        Stderr = aopVar;
        aop aopVar2 = new aop("Stdout", 1);
        Stdout = aopVar2;
        f10579a = new aop[]{aopVar, aopVar2};
    }

    public static aop valueOf(String str) {
        return (aop) Enum.valueOf(aop.class, str);
    }

    public static aop[] values() {
        return (aop[]) f10579a.clone();
    }
}
