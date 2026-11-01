package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class dbl {
    public static final dbl ALLOW;
    public static final dbl PREVENT;
    public static final dbl PREVENT_WHEN_EMPTY;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ dbl[] f13921a;

    static {
        dbl dblVar = new dbl("ALLOW", 0);
        ALLOW = dblVar;
        dbl dblVar2 = new dbl("PREVENT_WHEN_EMPTY", 1);
        PREVENT_WHEN_EMPTY = dblVar2;
        dbl dblVar3 = new dbl("PREVENT", 2);
        PREVENT = dblVar3;
        f13921a = new dbl[]{dblVar, dblVar2, dblVar3};
    }

    public static dbl valueOf(String str) {
        return (dbl) Enum.valueOf(dbl.class, str);
    }

    public static dbl[] values() {
        return (dbl[]) f13921a.clone();
    }
}
