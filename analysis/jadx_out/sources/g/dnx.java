package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class dnx {
    public static final dnx CONNECTED;
    public static final dnx METERED;
    public static final dnx NOT_REQUIRED;
    public static final dnx NOT_ROAMING;
    public static final dnx TEMPORARILY_UNMETERED;
    public static final dnx UNMETERED;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ dnx[] f14499a;

    static {
        dnx dnxVar = new dnx("NOT_REQUIRED", 0);
        NOT_REQUIRED = dnxVar;
        dnx dnxVar2 = new dnx("CONNECTED", 1);
        CONNECTED = dnxVar2;
        dnx dnxVar3 = new dnx("UNMETERED", 2);
        UNMETERED = dnxVar3;
        dnx dnxVar4 = new dnx("NOT_ROAMING", 3);
        NOT_ROAMING = dnxVar4;
        dnx dnxVar5 = new dnx("METERED", 4);
        METERED = dnxVar5;
        dnx dnxVar6 = new dnx("TEMPORARILY_UNMETERED", 5);
        TEMPORARILY_UNMETERED = dnxVar6;
        f14499a = new dnx[]{dnxVar, dnxVar2, dnxVar3, dnxVar4, dnxVar5, dnxVar6};
    }

    public static dnx valueOf(String str) {
        return (dnx) Enum.valueOf(dnx.class, str);
    }

    public static dnx[] values() {
        return (dnx[]) f14499a.clone();
    }
}
