package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class cct {
    public static final cct PARALLEL;
    public static final cct SEQUENTIAL;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ cct[] f12650a;

    static {
        cct cctVar = new cct("PARALLEL", 0);
        PARALLEL = cctVar;
        cct cctVar2 = new cct("SEQUENTIAL", 1);
        SEQUENTIAL = cctVar2;
        f12650a = new cct[]{cctVar, cctVar2};
    }

    public static cct valueOf(String str) {
        return (cct) Enum.valueOf(cct.class, str);
    }

    public static cct[] values() {
        return (cct[]) f12650a.clone();
    }
}
