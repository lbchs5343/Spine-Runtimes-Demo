package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class ffc {
    public static final ffc ARRAY;
    public static final ffc GENERIC;
    public static final ffc GENERIC_TYPE_VARIABLE;
    public static final ffc OBJECT;
    public static final ffc OUTER_GENERIC;
    public static final ffc PRIMITIVE;
    public static final ffc WILDCARD;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ ffc[] f16692a;

    static {
        ffc ffcVar = new ffc("WILDCARD", 0);
        WILDCARD = ffcVar;
        ffc ffcVar2 = new ffc("GENERIC", 1);
        GENERIC = ffcVar2;
        ffc ffcVar3 = new ffc("GENERIC_TYPE_VARIABLE", 2);
        GENERIC_TYPE_VARIABLE = ffcVar3;
        ffc ffcVar4 = new ffc("OUTER_GENERIC", 3);
        OUTER_GENERIC = ffcVar4;
        ffc ffcVar5 = new ffc("OBJECT", 4);
        OBJECT = ffcVar5;
        ffc ffcVar6 = new ffc("ARRAY", 5);
        ARRAY = ffcVar6;
        ffc ffcVar7 = new ffc("PRIMITIVE", 6);
        PRIMITIVE = ffcVar7;
        f16692a = new ffc[]{ffcVar, ffcVar2, ffcVar3, ffcVar4, ffcVar5, ffcVar6, ffcVar7};
    }

    public static ffc valueOf(String str) {
        return (ffc) Enum.valueOf(ffc.class, str);
    }

    public static ffc[] values() {
        return (ffc[]) f16692a.clone();
    }
}
