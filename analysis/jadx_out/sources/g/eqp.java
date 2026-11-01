package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class eqp {
    public static final eqp CUSTOM;
    public static final eqp CUSTOM_RAW;
    public static final eqp DIRECT;
    public static final eqp INTERFACE;
    public static final eqp POLYMORPHIC;
    public static final eqp STATIC;
    public static final eqp SUPER;
    public static final eqp VIRTUAL;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ eqp[] f16001a;

    static {
        eqp eqpVar = new eqp("STATIC", 0);
        STATIC = eqpVar;
        eqp eqpVar2 = new eqp("DIRECT", 1);
        DIRECT = eqpVar2;
        eqp eqpVar3 = new eqp("VIRTUAL", 2);
        VIRTUAL = eqpVar3;
        eqp eqpVar4 = new eqp("INTERFACE", 3);
        INTERFACE = eqpVar4;
        eqp eqpVar5 = new eqp("SUPER", 4);
        SUPER = eqpVar5;
        eqp eqpVar6 = new eqp("POLYMORPHIC", 5);
        POLYMORPHIC = eqpVar6;
        eqp eqpVar7 = new eqp("CUSTOM", 6);
        CUSTOM = eqpVar7;
        eqp eqpVar8 = new eqp("CUSTOM_RAW", 7);
        CUSTOM_RAW = eqpVar8;
        f16001a = new eqp[]{eqpVar, eqpVar2, eqpVar3, eqpVar4, eqpVar5, eqpVar6, eqpVar7, eqpVar8};
    }

    public static eqp valueOf(String str) {
        return (eqp) Enum.valueOf(eqp.class, str);
    }

    public static eqp[] values() {
        return (eqp[]) f16001a.clone();
    }
}
