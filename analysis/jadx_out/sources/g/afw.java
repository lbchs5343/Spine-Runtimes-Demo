package g;

/* loaded from: classes3.dex */
public final class afw extends fsu {
    private static final afw zzb;

    static {
        afw afwVar = new afw();
        zzb = afwVar;
        fsu.p(afw.class, afwVar);
    }

    public static afw a() {
        return zzb;
    }

    @Override // g.fsu
    public final Object i(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new hcu(zzb, "\u0004\u0000", null);
        }
        if (i2 == 3) {
            return new afw();
        }
        if (i2 == 4) {
            return new tx(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
