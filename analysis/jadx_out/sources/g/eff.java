package g;

/* loaded from: classes3.dex */
public final class eff extends fsu {
    private static final eff zzb;
    private int zzd;
    private int zze;

    static {
        eff effVar = new eff();
        zzb = effVar;
        fsu.p(eff.class, effVar);
    }

    @Override // g.fsu
    public final Object i(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new hcu(zzb, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzd", "zze", gve.h});
        }
        if (i2 == 3) {
            return new eff();
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
