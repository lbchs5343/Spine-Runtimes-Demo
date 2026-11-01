package g;

/* loaded from: classes3.dex */
public final class flt extends cys {
    private static final flt zza;
    private cwe zze = hbs.f19192a;

    static {
        flt fltVar = new flt();
        zza = fltVar;
        cys.af(flt.class, fltVar);
    }

    public static void b(flt fltVar, fzb fzbVar) {
        cwe cweVar = fltVar.zze;
        if (!((gzj) cweVar).f19052f) {
            fltVar.zze = cys.ac(cweVar);
        }
        fltVar.zze.add(fzbVar);
    }

    public static grt c() {
        return (grt) zza.ag();
    }

    @Override // g.cys
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new eqc(zza, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zze", fzb.class});
        }
        if (i2 == 3) {
            return new flt();
        }
        if (i2 == 4) {
            return new grt(zza);
        }
        if (i2 != 5) {
            return null;
        }
        return zza;
    }

    public final cwe d() {
        return this.zze;
    }

    public final fzb e() {
        return (fzb) this.zze.get(0);
    }
}
