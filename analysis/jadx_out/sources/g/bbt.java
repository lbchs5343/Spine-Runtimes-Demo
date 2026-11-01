package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class bbt {
    public static final bbt CANCEL_AND_REENQUEUE;
    public static final bbt KEEP;
    public static final bbt REPLACE;
    public static final bbt UPDATE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ bbt[] f11241a;

    static {
        bbt bbtVar = new bbt("REPLACE", 0);
        REPLACE = bbtVar;
        bbt bbtVar2 = new bbt("KEEP", 1);
        KEEP = bbtVar2;
        bbt bbtVar3 = new bbt("UPDATE", 2);
        UPDATE = bbtVar3;
        bbt bbtVar4 = new bbt("CANCEL_AND_REENQUEUE", 3);
        CANCEL_AND_REENQUEUE = bbtVar4;
        f11241a = new bbt[]{bbtVar, bbtVar2, bbtVar3, bbtVar4};
    }

    public static bbt valueOf(String str) {
        return (bbt) Enum.valueOf(bbt.class, str);
    }

    public static bbt[] values() {
        return (bbt[]) f11241a.clone();
    }
}
