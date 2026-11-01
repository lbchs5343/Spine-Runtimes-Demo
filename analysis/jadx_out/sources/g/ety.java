package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public final class ety {
    public static final ety BAD_CONFIG;
    public static final ety TOO_MANY_REQUESTS;
    public static final ety UNAVAILABLE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ ety[] f16158a;

    static {
        ety etyVar = new ety("BAD_CONFIG", 0);
        BAD_CONFIG = etyVar;
        ety etyVar2 = new ety("UNAVAILABLE", 1);
        UNAVAILABLE = etyVar2;
        ety etyVar3 = new ety("TOO_MANY_REQUESTS", 2);
        TOO_MANY_REQUESTS = etyVar3;
        f16158a = new ety[]{etyVar, etyVar2, etyVar3};
    }

    public static ety valueOf(String str) {
        return (ety) Enum.valueOf(ety.class, str);
    }

    public static ety[] values() {
        return (ety[]) f16158a.clone();
    }
}
