package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public abstract class dng {
    public static final dng DEFAULT;
    public static final dng STRING;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ dng[] f14456a;

    static {
        dng dngVar = new dng() { // from class: g.zt
        };
        DEFAULT = dngVar;
        dng dngVar2 = new dng() { // from class: g.ehl
        };
        STRING = dngVar2;
        f14456a = new dng[]{dngVar, dngVar2};
    }

    public static dng valueOf(String str) {
        return (dng) Enum.valueOf(dng.class, str);
    }

    public static dng[] values() {
        return (dng[]) f14456a.clone();
    }
}
