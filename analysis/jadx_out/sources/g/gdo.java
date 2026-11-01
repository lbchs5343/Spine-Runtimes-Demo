package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class gdo {
    public static final gdo CONSTANT;
    public static final gdo ERROR;
    public static final gdo SLACK;
    public static final gdo UNKNOWN;
    public static final gdo UNRESTRICTED;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ gdo[] f17939a;

    static {
        gdo gdoVar = new gdo("UNRESTRICTED", 0);
        UNRESTRICTED = gdoVar;
        gdo gdoVar2 = new gdo("CONSTANT", 1);
        CONSTANT = gdoVar2;
        gdo gdoVar3 = new gdo("SLACK", 2);
        SLACK = gdoVar3;
        gdo gdoVar4 = new gdo("ERROR", 3);
        ERROR = gdoVar4;
        gdo gdoVar5 = new gdo("UNKNOWN", 4);
        UNKNOWN = gdoVar5;
        f17939a = new gdo[]{gdoVar, gdoVar2, gdoVar3, gdoVar4, gdoVar5};
    }

    public static gdo valueOf(String str) {
        return (gdo) Enum.valueOf(gdo.class, str);
    }

    public static gdo[] values() {
        return (gdo[]) f17939a.clone();
    }
}
