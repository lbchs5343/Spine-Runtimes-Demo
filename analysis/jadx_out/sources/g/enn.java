package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class enn {
    public static final enn CALL_SITE;
    public static final enn FIELD_REF;
    public static final enn METHOD_REF;
    public static final enn NONE;
    public static final enn STRING_REF;
    public static final enn TYPE_REF;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ enn[] f15867a;

    static {
        enn ennVar = new enn("NONE", 0);
        NONE = ennVar;
        enn ennVar2 = new enn("TYPE_REF", 1);
        TYPE_REF = ennVar2;
        enn ennVar3 = new enn("STRING_REF", 2);
        STRING_REF = ennVar3;
        enn ennVar4 = new enn("FIELD_REF", 3);
        FIELD_REF = ennVar4;
        enn ennVar5 = new enn("METHOD_REF", 4);
        METHOD_REF = ennVar5;
        enn ennVar6 = new enn("CALL_SITE", 5);
        CALL_SITE = ennVar6;
        f15867a = new enn[]{ennVar, ennVar2, ennVar3, ennVar4, ennVar5, ennVar6};
    }

    public static enn valueOf(String str) {
        return (enn) Enum.valueOf(enn.class, str);
    }

    public static enn[] values() {
        return (enn[]) f15867a.clone();
    }
}
