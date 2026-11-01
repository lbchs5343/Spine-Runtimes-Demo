package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class dwj {
    public static final dwj BOOLEAN_TYPE;
    public static final dwj COLOR_DRAWABLE_TYPE;
    public static final dwj COLOR_TYPE;
    public static final dwj DIMENSION_TYPE;
    public static final dwj FLOAT_TYPE;
    public static final dwj INT_TYPE;
    public static final dwj REFERENCE_TYPE;
    public static final dwj STRING_TYPE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ dwj[] f14941a;

    static {
        dwj dwjVar = new dwj("INT_TYPE", 0);
        INT_TYPE = dwjVar;
        dwj dwjVar2 = new dwj("FLOAT_TYPE", 1);
        FLOAT_TYPE = dwjVar2;
        dwj dwjVar3 = new dwj("COLOR_TYPE", 2);
        COLOR_TYPE = dwjVar3;
        dwj dwjVar4 = new dwj("COLOR_DRAWABLE_TYPE", 3);
        COLOR_DRAWABLE_TYPE = dwjVar4;
        dwj dwjVar5 = new dwj("STRING_TYPE", 4);
        STRING_TYPE = dwjVar5;
        dwj dwjVar6 = new dwj("BOOLEAN_TYPE", 5);
        BOOLEAN_TYPE = dwjVar6;
        dwj dwjVar7 = new dwj("DIMENSION_TYPE", 6);
        DIMENSION_TYPE = dwjVar7;
        dwj dwjVar8 = new dwj("REFERENCE_TYPE", 7);
        REFERENCE_TYPE = dwjVar8;
        f14941a = new dwj[]{dwjVar, dwjVar2, dwjVar3, dwjVar4, dwjVar5, dwjVar6, dwjVar7, dwjVar8};
    }

    public static dwj valueOf(String str) {
        return (dwj) Enum.valueOf(dwj.class, str);
    }

    public static dwj[] values() {
        return (dwj[]) f14941a.clone();
    }
}
