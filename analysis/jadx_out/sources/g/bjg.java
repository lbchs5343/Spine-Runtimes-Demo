package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class bjg {
    public static final bjg AUTOMATIC;
    public static final bjg TRUNCATE;
    public static final bjg WRITE_AHEAD_LOGGING;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ bjg[] f11695a;

    static {
        bjg bjgVar = new bjg("AUTOMATIC", 0);
        AUTOMATIC = bjgVar;
        bjg bjgVar2 = new bjg("TRUNCATE", 1);
        TRUNCATE = bjgVar2;
        bjg bjgVar3 = new bjg("WRITE_AHEAD_LOGGING", 2);
        WRITE_AHEAD_LOGGING = bjgVar3;
        f11695a = new bjg[]{bjgVar, bjgVar2, bjgVar3};
    }

    public static bjg valueOf(String str) {
        return (bjg) Enum.valueOf(bjg.class, str);
    }

    public static bjg[] values() {
        return (bjg[]) f11695a.clone();
    }
}
