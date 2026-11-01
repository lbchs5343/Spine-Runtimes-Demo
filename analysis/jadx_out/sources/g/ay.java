package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class ay {
    public static final ay EXPONENTIAL;
    public static final ay LINEAR;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ ay[] f11048a;

    static {
        ay ayVar = new ay("EXPONENTIAL", 0);
        EXPONENTIAL = ayVar;
        ay ayVar2 = new ay("LINEAR", 1);
        LINEAR = ayVar2;
        f11048a = new ay[]{ayVar, ayVar2};
    }

    public static ay valueOf(String str) {
        return (ay) Enum.valueOf(ay.class, str);
    }

    public static ay[] values() {
        return (ay[]) f11048a.clone();
    }
}
