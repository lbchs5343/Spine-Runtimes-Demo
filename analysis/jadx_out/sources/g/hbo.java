package g;

/* loaded from: classes3.dex */
public final class hbo extends cys {
    private static final hbo zza;
    private int zze;
    private String zzf = "";
    private cwe zzg = hbs.f19192a;
    private boolean zzh;

    static {
        hbo hboVar = new hbo();
        zza = hboVar;
        cys.af(hbo.class, hboVar);
    }

    @Override // g.cys
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new eqc(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b\u0003ဇ\u0001", new Object[]{"zze", "zzf", "zzg", ftf.class, "zzh"});
        }
        if (i2 == 3) {
            return new hbo();
        }
        if (i2 == 4) {
            return new gp(zza);
        }
        if (i2 != 5) {
            return null;
        }
        return zza;
    }

    public final String b() {
        return this.zzf;
    }
}
