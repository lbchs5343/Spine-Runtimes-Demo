package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public final class deh {
    public static final deh AUTH_ERROR;
    public static final deh BAD_CONFIG;
    public static final deh OK;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ deh[] f14049a;

    static {
        deh dehVar = new deh("OK", 0);
        OK = dehVar;
        deh dehVar2 = new deh("BAD_CONFIG", 1);
        BAD_CONFIG = dehVar2;
        deh dehVar3 = new deh("AUTH_ERROR", 2);
        AUTH_ERROR = dehVar3;
        f14049a = new deh[]{dehVar, dehVar2, dehVar3};
    }

    public static deh valueOf(String str) {
        return (deh) Enum.valueOf(deh.class, str);
    }

    public static deh[] values() {
        return (deh[]) f14049a.clone();
    }
}
