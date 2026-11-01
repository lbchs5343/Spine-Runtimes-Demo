package g;

/* loaded from: classes3.dex */
public final class djl extends fsu {
    private static final djl zzb;
    private int zzd;
    private int zze;

    static {
        djl djlVar = new djl();
        zzb = djlVar;
        fsu.p(djl.class, djlVar);
    }

    public static djl a() {
        return zzb;
    }

    @Override // g.fsu
    public final Object i(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new hcu(zzb, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzd", "zze", gve.f18806e});
        }
        if (i2 == 3) {
            return new djl();
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
