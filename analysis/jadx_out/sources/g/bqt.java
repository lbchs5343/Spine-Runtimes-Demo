package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class bqt {
    public static final bqt DROP_LATEST;
    public static final bqt DROP_OLDEST;
    public static final bqt SUSPEND;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ bqt[] f12042a;

    static {
        bqt bqtVar = new bqt("SUSPEND", 0);
        SUSPEND = bqtVar;
        bqt bqtVar2 = new bqt("DROP_OLDEST", 1);
        DROP_OLDEST = bqtVar2;
        bqt bqtVar3 = new bqt("DROP_LATEST", 2);
        DROP_LATEST = bqtVar3;
        f12042a = new bqt[]{bqtVar, bqtVar2, bqtVar3};
    }

    public static bqt valueOf(String str) {
        return (bqt) Enum.valueOf(bqt.class, str);
    }

    public static bqt[] values() {
        return (bqt[]) f12042a.clone();
    }
}
