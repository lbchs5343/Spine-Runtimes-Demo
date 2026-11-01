package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public final class ghi {
    public static final ghi PERCENT;
    public static final ghi PIXELS;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ ghi[] f18161a;

    static {
        ghi ghiVar = new ghi("PERCENT", 0);
        PERCENT = ghiVar;
        ghi ghiVar2 = new ghi("PIXELS", 1);
        PIXELS = ghiVar2;
        f18161a = new ghi[]{ghiVar, ghiVar2};
    }

    public static ghi valueOf(String str) {
        return (ghi) Enum.valueOf(ghi.class, str);
    }

    public static ghi[] values() {
        return (ghi[]) f18161a.clone();
    }
}
