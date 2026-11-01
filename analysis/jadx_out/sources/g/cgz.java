package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class cgz {
    public static final cgz IGNORE;
    public static final cgz OVERWRITE;
    public static final cgz READ;
    public static final cgz READ_OR_SAVE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ cgz[] f12865a;

    static {
        cgz cgzVar = new cgz("READ", 0);
        READ = cgzVar;
        cgz cgzVar2 = new cgz("READ_OR_SAVE", 1);
        READ_OR_SAVE = cgzVar2;
        cgz cgzVar3 = new cgz("OVERWRITE", 2);
        OVERWRITE = cgzVar3;
        cgz cgzVar4 = new cgz("IGNORE", 3);
        IGNORE = cgzVar4;
        f12865a = new cgz[]{cgzVar, cgzVar2, cgzVar3, cgzVar4};
    }

    public static cgz valueOf(String str) {
        return (cgz) Enum.valueOf(cgz.class, str);
    }

    public static cgz[] values() {
        return (cgz[]) f12865a.clone();
    }
}
