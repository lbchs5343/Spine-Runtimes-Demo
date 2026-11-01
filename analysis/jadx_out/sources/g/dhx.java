package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class dhx {
    public static final dhx CONSTRUCTOR;
    public static final dhx INSTANCE_FIELD;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ dhx[] f14207a;

    static {
        dhx dhxVar = new dhx("CONSTRUCTOR", 0);
        CONSTRUCTOR = dhxVar;
        dhx dhxVar2 = new dhx("INSTANCE_FIELD", 1);
        INSTANCE_FIELD = dhxVar2;
        f14207a = new dhx[]{dhxVar, dhxVar2};
    }

    public static dhx valueOf(String str) {
        return (dhx) Enum.valueOf(dhx.class, str);
    }

    public static dhx[] values() {
        return (dhx[]) f14207a.clone();
    }
}
