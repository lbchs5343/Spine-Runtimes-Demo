package g;

/* loaded from: classes3.dex */
public final class kk extends cys {
    private static final kk zza;
    private int zze;
    private cwe zzf = hbs.f19192a;
    private String zzg = "";
    private long zzh;
    private long zzi;
    private int zzj;

    static {
        kk kkVar = new kk();
        zza = kkVar;
        cys.af(kk.class, kkVar);
    }

    public static /* synthetic */ void b(long j, kk kkVar) {
        kkVar.zze |= 2;
        kkVar.zzh = j;
    }

    public static /* synthetic */ void c(String str, kk kkVar) {
        str.getClass();
        kkVar.zze |= 1;
        kkVar.zzg = str;
    }

    public static /* synthetic */ void d(kk kkVar, asm asmVar) {
        kkVar.t();
        kkVar.zzf.add(asmVar);
    }

    public static /* synthetic */ void e(kk kkVar, Iterable iterable) {
        kkVar.t();
        cir.y(iterable, kkVar.zzf);
    }

    public static void f(kk kkVar) {
        kkVar.zzf = hbs.f19192a;
    }

    public static btw g() {
        return (btw) zza.ag();
    }

    public static /* synthetic */ void h(long j, kk kkVar) {
        kkVar.zze |= 4;
        kkVar.zzi = j;
    }

    public static /* synthetic */ void i(kk kkVar, int i, asm asmVar) {
        kkVar.t();
        kkVar.zzf.set(i, asmVar);
    }

    public static /* synthetic */ void j(kk kkVar, int i) {
        kkVar.t();
        kkVar.zzf.remove(i);
    }

    @Override // g.cys
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new eqc(zza, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u001b\u0002ဈ\u0000\u0003ဂ\u0001\u0004ဂ\u0002\u0005င\u0003", new Object[]{"zze", "zzf", asm.class, "zzg", "zzh", "zzi", "zzj"});
        }
        if (i2 == 3) {
            return new kk();
        }
        if (i2 == 4) {
            return new btw(zza);
        }
        if (i2 != 5) {
            return null;
        }
        return zza;
    }

    public final long k() {
        return this.zzh;
    }

    public final long l() {
        return this.zzi;
    }

    public final boolean m() {
        return (this.zze & 8) != 0;
    }

    public final int n() {
        return this.zzj;
    }

    public final boolean o() {
        return (this.zze & 2) != 0;
    }

    public final boolean p() {
        return (this.zze & 4) != 0;
    }

    public final cwe q() {
        return this.zzf;
    }

    public final int r() {
        return this.zzf.size();
    }

    public final asm s(int i) {
        return (asm) this.zzf.get(i);
    }

    public final void t() {
        cwe cweVar = this.zzf;
        if (((gzj) cweVar).f19052f) {
            return;
        }
        this.zzf = cys.ac(cweVar);
    }

    public final String u() {
        return this.zzg;
    }
}
