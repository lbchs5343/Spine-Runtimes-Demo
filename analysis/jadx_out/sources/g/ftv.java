package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class ftv {
    public static final ftv ALWAYS;
    public static final ftv IF_BETTER;
    public static final ftv NEVER;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ ftv[] f17411a;

    static {
        ftv ftvVar = new ftv("ALWAYS", 0);
        ALWAYS = ftvVar;
        ftv ftvVar2 = new ftv("IF_BETTER", 1);
        IF_BETTER = ftvVar2;
        ftv ftvVar3 = new ftv("NEVER", 2);
        NEVER = ftvVar3;
        f17411a = new ftv[]{ftvVar, ftvVar2, ftvVar3};
    }

    public static ftv valueOf(String str) {
        return (ftv) Enum.valueOf(ftv.class, str);
    }

    public static ftv[] values() {
        return (ftv[]) f17411a.clone();
    }
}
