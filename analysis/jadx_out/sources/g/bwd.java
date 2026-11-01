package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class bwd {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ bwd[] f12304a;

    /* renamed from: d, reason: collision with root package name */
    public static final bwd f12305d;
    public static final bwd dq;
    public static final bwd iw;
    public static final bwd ox;
    public static final bwd p;
    public static final bwd s;

    static {
        bwd bwdVar = new bwd("NONE", 0);
        dq = bwdVar;
        bwd bwdVar2 = new bwd("ADD", 1);
        f12305d = bwdVar2;
        bwd bwdVar3 = new bwd("INVERT", 2);
        ox = bwdVar3;
        bwd bwdVar4 = new bwd("LUMA", 3);
        p = bwdVar4;
        bwd bwdVar5 = new bwd("LUMA_INVERTED", 4);
        s = bwdVar5;
        bwd bwdVar6 = new bwd("UNKNOWN", 5);
        iw = bwdVar6;
        f12304a = new bwd[]{bwdVar, bwdVar2, bwdVar3, bwdVar4, bwdVar5, bwdVar6};
    }

    public static bwd valueOf(String str) {
        return (bwd) Enum.valueOf(bwd.class, str);
    }

    public static bwd[] values() {
        return (bwd[]) f12304a.clone();
    }
}
