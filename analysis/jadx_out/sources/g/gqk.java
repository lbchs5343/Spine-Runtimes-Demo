package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class gqk {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ gqk[] f18573a;

    /* renamed from: d, reason: collision with root package name */
    public static final gqk f18574d;
    public static final gqk dq;

    static {
        gqk gqkVar = new gqk("LINEAR", 0);
        dq = gqkVar;
        gqk gqkVar2 = new gqk("RADIAL", 1);
        f18574d = gqkVar2;
        f18573a = new gqk[]{gqkVar, gqkVar2};
    }

    public static gqk valueOf(String str) {
        return (gqk) Enum.valueOf(gqk.class, str);
    }

    public static gqk[] values() {
        return (gqk[]) f18573a.clone();
    }
}
