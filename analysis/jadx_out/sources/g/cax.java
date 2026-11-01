package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class cax {
    public static final cax AUTO;
    public static final cax CODE;
    public static final cax RESOURCES;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ cax[] f12571a;

    static {
        cax caxVar = new cax("AUTO", 0);
        AUTO = caxVar;
        cax caxVar2 = new cax("RESOURCES", 1);
        RESOURCES = caxVar2;
        cax caxVar3 = new cax("CODE", 2);
        CODE = caxVar3;
        f12571a = new cax[]{caxVar, caxVar2, caxVar3};
    }

    public static cax valueOf(String str) {
        return (cax) Enum.valueOf(cax.class, str);
    }

    public static cax[] values() {
        return (cax[]) f12571a.clone();
    }
}
