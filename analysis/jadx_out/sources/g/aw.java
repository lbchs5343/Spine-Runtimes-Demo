package g;

/* loaded from: classes3.dex */
public final class aw extends cys {
    private static final aw zza;
    private int zze;
    private int zzf = 1;
    private cwe zzg = hbs.f19192a;

    static {
        aw awVar = new aw();
        zza = awVar;
        cys.af(aw.class, awVar);
    }

    @Override // g.cys
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new eqc(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဌ\u0000\u0002\u001b", new Object[]{"zze", "zzf", gxe.f18931b, "zzg", drh.class});
        }
        if (i2 == 3) {
            return new aw();
        }
        if (i2 == 4) {
            return new gp(zza);
        }
        if (i2 != 5) {
            return null;
        }
        return zza;
    }
}
