package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class eis {
    public static final eis BLOCK_DUMP;
    public static final eis COMMENTED_DUMP;
    public static final eis FALLBACK_MODE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ eis[] f15608a;

    static {
        eis eisVar = new eis("FALLBACK_MODE", 0);
        FALLBACK_MODE = eisVar;
        eis eisVar2 = new eis("BLOCK_DUMP", 1);
        BLOCK_DUMP = eisVar2;
        eis eisVar3 = new eis("COMMENTED_DUMP", 2);
        COMMENTED_DUMP = eisVar3;
        f15608a = new eis[]{eisVar, eisVar2, eisVar3};
    }

    public static eis valueOf(String str) {
        return (eis) Enum.valueOf(eis.class, str);
    }

    public static eis[] values() {
        return (eis[]) f15608a.clone();
    }
}
