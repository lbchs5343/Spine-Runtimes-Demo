package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class dtn {
    private static final /* synthetic */ dtn[] $VALUES;
    public static final uu Companion;
    public static final dtn ON_ANY;
    public static final dtn ON_CREATE;
    public static final dtn ON_DESTROY;
    public static final dtn ON_PAUSE;
    public static final dtn ON_RESUME;
    public static final dtn ON_START;
    public static final dtn ON_STOP;

    static {
        dtn dtnVar = new dtn("ON_CREATE", 0);
        ON_CREATE = dtnVar;
        dtn dtnVar2 = new dtn("ON_START", 1);
        ON_START = dtnVar2;
        dtn dtnVar3 = new dtn("ON_RESUME", 2);
        ON_RESUME = dtnVar3;
        dtn dtnVar4 = new dtn("ON_PAUSE", 3);
        ON_PAUSE = dtnVar4;
        dtn dtnVar5 = new dtn("ON_STOP", 4);
        ON_STOP = dtnVar5;
        dtn dtnVar6 = new dtn("ON_DESTROY", 5);
        ON_DESTROY = dtnVar6;
        dtn dtnVar7 = new dtn("ON_ANY", 6);
        ON_ANY = dtnVar7;
        $VALUES = new dtn[]{dtnVar, dtnVar2, dtnVar3, dtnVar4, dtnVar5, dtnVar6, dtnVar7};
        Companion = new uu();
    }

    public static dtn valueOf(String str) {
        return (dtn) Enum.valueOf(dtn.class, str);
    }

    public static dtn[] values() {
        return (dtn[]) $VALUES.clone();
    }

    public final fqv a() {
        switch (de.f14034a[ordinal()]) {
            case 1:
            case 2:
                return fqv.CREATED;
            case 3:
            case 4:
                return fqv.STARTED;
            case 5:
                return fqv.RESUMED;
            case 6:
                return fqv.DESTROYED;
            default:
                throw new IllegalArgumentException(this + " has no target state");
        }
    }
}
