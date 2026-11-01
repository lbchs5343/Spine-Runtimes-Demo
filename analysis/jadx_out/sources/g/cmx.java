package g;

/* loaded from: classes3.dex */
public final class cmx extends fsu {
    private static final cmx zzb;
    private int zzd;
    private int zze;
    private String zzf = "";

    static {
        cmx cmxVar = new cmx();
        zzb = cmxVar;
        fsu.p(cmx.class, cmxVar);
    }

    @Override // g.fsu
    public final Object i(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new hcu(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002ဈ\u0001", new Object[]{"zzd", "zze", gve.f18802a, "zzf"});
        }
        if (i2 == 3) {
            return new cmx();
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
