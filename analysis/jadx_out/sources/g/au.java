package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class au {
    public static final au ASSIGN;
    public static final au USE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ au[] f10847a;

    static {
        au auVar = new au("ASSIGN", 0);
        ASSIGN = auVar;
        au auVar2 = new au("USE", 1);
        USE = auVar2;
        f10847a = new au[]{auVar, auVar2};
    }

    public static au valueOf(String str) {
        return (au) Enum.valueOf(au.class, str);
    }

    public static au[] values() {
        return (au[]) f10847a.clone();
    }
}
