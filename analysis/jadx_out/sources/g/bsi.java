package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class bsi {
    public static final bsi DISABLE_IN_GUI;
    public static final bsi HIDE_IN_GUI;
    public static final bsi NOT_CHANGING_CODE;
    public static final bsi PER_PROJECT;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ bsi[] f12115a;

    static {
        bsi bsiVar = new bsi("PER_PROJECT", 0);
        PER_PROJECT = bsiVar;
        bsi bsiVar2 = new bsi("HIDE_IN_GUI", 1);
        HIDE_IN_GUI = bsiVar2;
        bsi bsiVar3 = new bsi("DISABLE_IN_GUI", 2);
        DISABLE_IN_GUI = bsiVar3;
        bsi bsiVar4 = new bsi("NOT_CHANGING_CODE", 3);
        NOT_CHANGING_CODE = bsiVar4;
        f12115a = new bsi[]{bsiVar, bsiVar2, bsiVar3, bsiVar4};
    }

    public static bsi valueOf(String str) {
        return (bsi) Enum.valueOf(bsi.class, str);
    }

    public static bsi[] values() {
        return (bsi[]) f12115a.clone();
    }
}
