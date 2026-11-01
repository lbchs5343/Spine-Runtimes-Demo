package g;

/* loaded from: classes3.dex */
public final class evv extends cys {
    private static final evv zza;
    private int zze;
    private String zzf = "";
    private cwe zzg = hbs.f19192a;

    static {
        evv evvVar = new evv();
        zza = evvVar;
        cys.af(evv.class, evvVar);
    }

    @Override // g.cys
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new eqc(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b", new Object[]{"zze", "zzf", "zzg", aqu.class});
        }
        if (i2 == 3) {
            return new evv();
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

    public final cwe c() {
        return this.zzg;
    }
}
