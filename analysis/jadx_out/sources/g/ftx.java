package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public final class ftx {
    public static final ftx DEVICE_CHARGING;
    public static final ftx DEVICE_IDLE;
    public static final ftx NETWORK_UNMETERED;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ ftx[] f17415a;

    static {
        ftx ftxVar = new ftx("NETWORK_UNMETERED", 0);
        NETWORK_UNMETERED = ftxVar;
        ftx ftxVar2 = new ftx("DEVICE_IDLE", 1);
        DEVICE_IDLE = ftxVar2;
        ftx ftxVar3 = new ftx("DEVICE_CHARGING", 2);
        DEVICE_CHARGING = ftxVar3;
        f17415a = new ftx[]{ftxVar, ftxVar2, ftxVar3};
    }

    public static ftx valueOf(String str) {
        return (ftx) Enum.valueOf(ftx.class, str);
    }

    public static ftx[] values() {
        return (ftx[]) f17415a.clone();
    }
}
