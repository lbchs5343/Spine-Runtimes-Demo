package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public abstract class dxs {
    public static final dxs BIG_DECIMAL;
    public static final dxs DOUBLE;
    public static final dxs LAZILY_PARSED_NUMBER;
    public static final dxs LONG_OR_DOUBLE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ dxs[] f15037a;

    static {
        dxs dxsVar = new dxs() { // from class: g.bpv
        };
        DOUBLE = dxsVar;
        dxs dxsVar2 = new dxs() { // from class: g.asl
        };
        LAZILY_PARSED_NUMBER = dxsVar2;
        dxs dxsVar3 = new dxs() { // from class: g.fmb
        };
        LONG_OR_DOUBLE = dxsVar3;
        dxs dxsVar4 = new dxs() { // from class: g.gpl
        };
        BIG_DECIMAL = dxsVar4;
        f15037a = new dxs[]{dxsVar, dxsVar2, dxsVar3, dxsVar4};
    }

    public static dxs valueOf(String str) {
        return (dxs) Enum.valueOf(dxs.class, str);
    }

    public static dxs[] values() {
        return (dxs[]) f15037a.clone();
    }
}
