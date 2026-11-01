package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class fol {
    public static final fol FIXED;
    public static final fol MATCH_CONSTRAINT;
    public static final fol MATCH_PARENT;
    public static final fol WRAP_CONTENT;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ fol[] f17141a;

    static {
        fol folVar = new fol("FIXED", 0);
        FIXED = folVar;
        fol folVar2 = new fol("WRAP_CONTENT", 1);
        WRAP_CONTENT = folVar2;
        fol folVar3 = new fol("MATCH_CONSTRAINT", 2);
        MATCH_CONSTRAINT = folVar3;
        fol folVar4 = new fol("MATCH_PARENT", 3);
        MATCH_PARENT = folVar4;
        f17141a = new fol[]{folVar, folVar2, folVar3, folVar4};
    }

    public static fol valueOf(String str) {
        return (fol) Enum.valueOf(fol.class, str);
    }

    public static fol[] values() {
        return (fol[]) f17141a.clone();
    }
}
