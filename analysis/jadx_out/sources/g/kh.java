package g;

/* loaded from: classes3.dex */
public final class kh extends cys {
    private static final kh zza;
    private int zze;
    private cwe zzf = hbs.f19192a;
    private gjt zzg;

    static {
        kh khVar = new kh();
        zza = khVar;
        cys.af(kh.class, khVar);
    }

    @Override // g.cys
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new eqc(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002ဉ\u0000", new Object[]{"zze", "zzf", aqu.class, "zzg"});
        }
        if (i2 == 3) {
            return new kh();
        }
        if (i2 == 4) {
            return new gp(zza);
        }
        if (i2 != 5) {
            return null;
        }
        return zza;
    }

    public final gjt b() {
        gjt gjtVar = this.zzg;
        return gjtVar == null ? gjt.b() : gjtVar;
    }

    public final cwe c() {
        return this.zzf;
    }
}
