package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class gys {
    public static final gys BLOCKED;
    public static final gys CANCELLED;
    public static final gys ENQUEUED;
    public static final gys FAILED;
    public static final gys RUNNING;
    public static final gys SUCCEEDED;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ gys[] f19020a;

    static {
        gys gysVar = new gys("ENQUEUED", 0);
        ENQUEUED = gysVar;
        gys gysVar2 = new gys("RUNNING", 1);
        RUNNING = gysVar2;
        gys gysVar3 = new gys("SUCCEEDED", 2);
        SUCCEEDED = gysVar3;
        gys gysVar4 = new gys("FAILED", 3);
        FAILED = gysVar4;
        gys gysVar5 = new gys("BLOCKED", 4);
        BLOCKED = gysVar5;
        gys gysVar6 = new gys("CANCELLED", 5);
        CANCELLED = gysVar6;
        f19020a = new gys[]{gysVar, gysVar2, gysVar3, gysVar4, gysVar5, gysVar6};
    }

    public static gys valueOf(String str) {
        return (gys) Enum.valueOf(gys.class, str);
    }

    public static gys[] values() {
        return (gys[]) f19020a.clone();
    }

    public final boolean b() {
        return this == SUCCEEDED || this == FAILED || this == CANCELLED;
    }
}
