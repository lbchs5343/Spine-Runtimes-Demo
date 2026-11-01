package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public final class of {
    public static final of BAD_CONFIG;
    public static final of OK;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ of[] f19755a;

    static {
        of ofVar = new of("OK", 0);
        OK = ofVar;
        of ofVar2 = new of("BAD_CONFIG", 1);
        BAD_CONFIG = ofVar2;
        f19755a = new of[]{ofVar, ofVar2};
    }

    public static of valueOf(String str) {
        return (of) Enum.valueOf(of.class, str);
    }

    public static of[] values() {
        return (of[]) f19755a.clone();
    }
}
