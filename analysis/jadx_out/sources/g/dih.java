package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class dih {
    public static final dih BASELINE;
    public static final dih BOTTOM;
    public static final dih CENTER;
    public static final dih CENTER_X;
    public static final dih CENTER_Y;
    public static final dih LEFT;
    public static final dih NONE;
    public static final dih RIGHT;
    public static final dih TOP;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ dih[] f14224a;

    static {
        dih dihVar = new dih("NONE", 0);
        NONE = dihVar;
        dih dihVar2 = new dih("LEFT", 1);
        LEFT = dihVar2;
        dih dihVar3 = new dih("TOP", 2);
        TOP = dihVar3;
        dih dihVar4 = new dih("RIGHT", 3);
        RIGHT = dihVar4;
        dih dihVar5 = new dih("BOTTOM", 4);
        BOTTOM = dihVar5;
        dih dihVar6 = new dih("BASELINE", 5);
        BASELINE = dihVar6;
        dih dihVar7 = new dih("CENTER", 6);
        CENTER = dihVar7;
        dih dihVar8 = new dih("CENTER_X", 7);
        CENTER_X = dihVar8;
        dih dihVar9 = new dih("CENTER_Y", 8);
        CENTER_Y = dihVar9;
        f14224a = new dih[]{dihVar, dihVar2, dihVar3, dihVar4, dihVar5, dihVar6, dihVar7, dihVar8, dihVar9};
    }

    public static dih valueOf(String str) {
        return (dih) Enum.valueOf(dih.class, str);
    }

    public static dih[] values() {
        return (dih[]) f14224a.clone();
    }
}
