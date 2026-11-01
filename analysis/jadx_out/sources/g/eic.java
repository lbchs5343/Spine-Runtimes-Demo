package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class eic {
    public static final eic ALLOW_WIDER;
    public static final eic IGNORE_SAME;
    public static final eic IGNORE_UNKNOWN;
    public static final eic KEEP_GENERICS;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ eic[] f15580a;

    static {
        eic eicVar = new eic("ALLOW_WIDER", 0);
        ALLOW_WIDER = eicVar;
        eic eicVar2 = new eic("IGNORE_SAME", 1);
        IGNORE_SAME = eicVar2;
        eic eicVar3 = new eic("IGNORE_UNKNOWN", 2);
        IGNORE_UNKNOWN = eicVar3;
        eic eicVar4 = new eic("KEEP_GENERICS", 3);
        KEEP_GENERICS = eicVar4;
        f15580a = new eic[]{eicVar, eicVar2, eicVar3, eicVar4};
    }

    public static eic valueOf(String str) {
        return (eic) Enum.valueOf(eic.class, str);
    }

    public static eic[] values() {
        return (eic[]) f15580a.clone();
    }
}
