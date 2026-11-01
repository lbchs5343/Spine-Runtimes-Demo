package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public final class gyk {
    public static final gyk ATTEMPT_MIGRATION;
    public static final gyk NOT_GENERATED;
    public static final gyk REGISTERED;
    public static final gyk REGISTER_ERROR;
    public static final gyk UNREGISTERED;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ gyk[] f19001a;

    static {
        gyk gykVar = new gyk("ATTEMPT_MIGRATION", 0);
        ATTEMPT_MIGRATION = gykVar;
        gyk gykVar2 = new gyk("NOT_GENERATED", 1);
        NOT_GENERATED = gykVar2;
        gyk gykVar3 = new gyk("UNREGISTERED", 2);
        UNREGISTERED = gykVar3;
        gyk gykVar4 = new gyk("REGISTERED", 3);
        REGISTERED = gykVar4;
        gyk gykVar5 = new gyk("REGISTER_ERROR", 4);
        REGISTER_ERROR = gykVar5;
        f19001a = new gyk[]{gykVar, gykVar2, gykVar3, gykVar4, gykVar5};
    }

    public static gyk valueOf(String str) {
        return (gyk) Enum.valueOf(gyk.class, str);
    }

    public static gyk[] values() {
        return (gyk[]) f19001a.clone();
    }
}
