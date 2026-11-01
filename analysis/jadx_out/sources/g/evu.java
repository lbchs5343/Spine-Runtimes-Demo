package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class evu {
    public static final evu DONT_USE_FALLBACK;
    public static final evu FALLBACK_AS_DEFAULT;
    public static final evu IGNORE_CENTRAL_DIR_ENTRIES;
    public static final evu REPORT_TAMPERING;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ evu[] f16250a;

    static {
        evu evuVar = new evu("IGNORE_CENTRAL_DIR_ENTRIES", 0);
        IGNORE_CENTRAL_DIR_ENTRIES = evuVar;
        evu evuVar2 = new evu("REPORT_TAMPERING", 1);
        REPORT_TAMPERING = evuVar2;
        evu evuVar3 = new evu("FALLBACK_AS_DEFAULT", 2);
        FALLBACK_AS_DEFAULT = evuVar3;
        evu evuVar4 = new evu("DONT_USE_FALLBACK", 3);
        DONT_USE_FALLBACK = evuVar4;
        f16250a = new evu[]{evuVar, evuVar2, evuVar3, evuVar4};
    }

    public static evu valueOf(String str) {
        return (evu) Enum.valueOf(evu.class, str);
    }

    public static evu[] values() {
        return (evu[]) f16250a.clone();
    }
}
