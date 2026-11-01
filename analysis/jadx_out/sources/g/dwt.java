package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class dwt {
    public static final dwt ATOMIC;
    public static final dwt DEFAULT;
    public static final dwt LAZY;
    public static final dwt UNDISPATCHED;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ dwt[] f14976a;

    static {
        dwt dwtVar = new dwt("DEFAULT", 0);
        DEFAULT = dwtVar;
        dwt dwtVar2 = new dwt("LAZY", 1);
        LAZY = dwtVar2;
        dwt dwtVar3 = new dwt("ATOMIC", 2);
        ATOMIC = dwtVar3;
        dwt dwtVar4 = new dwt("UNDISPATCHED", 3);
        UNDISPATCHED = dwtVar4;
        f14976a = new dwt[]{dwtVar, dwtVar2, dwtVar3, dwtVar4};
    }

    public static dwt valueOf(String str) {
        return (dwt) Enum.valueOf(dwt.class, str);
    }

    public static dwt[] values() {
        return (dwt[]) f14976a.clone();
    }
}
