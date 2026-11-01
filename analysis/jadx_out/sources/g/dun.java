package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class dun {
    public static final dun HANDLER;
    public static final dun LOOP_EXIT;
    public static final dun PREMATURE_EXIT;
    public static final dun TRUE_FALLTHROUGH;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ dun[] f14849a;

    static {
        dun dunVar = new dun("TRUE_FALLTHROUGH", 0);
        TRUE_FALLTHROUGH = dunVar;
        dun dunVar2 = new dun("PREMATURE_EXIT", 1);
        PREMATURE_EXIT = dunVar2;
        dun dunVar3 = new dun("LOOP_EXIT", 2);
        LOOP_EXIT = dunVar3;
        dun dunVar4 = new dun("HANDLER", 3);
        HANDLER = dunVar4;
        f14849a = new dun[]{dunVar, dunVar2, dunVar3, dunVar4};
    }

    public static dun valueOf(String str) {
        return (dun) Enum.valueOf(dun.class, str);
    }

    public static dun[] values() {
        return (dun[]) f14849a.clone();
    }
}
