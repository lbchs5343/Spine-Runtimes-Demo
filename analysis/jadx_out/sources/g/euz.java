package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class euz {
    public static final euz ENUM;
    public static final euz FLAG;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ euz[] f16211a;

    static {
        euz euzVar = new euz("ENUM", 0);
        ENUM = euzVar;
        euz euzVar2 = new euz("FLAG", 1);
        FLAG = euzVar2;
        f16211a = new euz[]{euzVar, euzVar2};
    }

    public static euz valueOf(String str) {
        return (euz) Enum.valueOf(euz.class, str);
    }

    public static euz[] values() {
        return (euz[]) f16211a.clone();
    }
}
