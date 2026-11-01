package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class fly {
    public static final fly CLASS_INSTANCE;
    public static final fly VAR;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ fly[] f17021a;

    static {
        fly flyVar = new fly("CLASS_INSTANCE", 0);
        CLASS_INSTANCE = flyVar;
        fly flyVar2 = new fly("VAR", 1);
        VAR = flyVar2;
        f17021a = new fly[]{flyVar, flyVar2};
    }

    public static fly valueOf(String str) {
        return (fly) Enum.valueOf(fly.class, str);
    }

    public static fly[] values() {
        return (fly[]) f17021a.clone();
    }
}
