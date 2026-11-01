package g;

/* loaded from: classes3.dex */
public final class azv extends cys {
    private static final azv zza;
    private int zze;
    private int zzf;
    private String zzg = "";
    private cwe zzh = hbs.f19192a;
    private boolean zzi;
    private cjx zzj;
    private boolean zzk;
    private boolean zzl;
    private boolean zzm;

    static {
        azv azvVar = new azv();
        zza = azvVar;
        cys.af(azv.class, azvVar);
    }

    public static hae b() {
        return (hae) zza.ag();
    }

    public static /* synthetic */ void c(azv azvVar, String str) {
        azvVar.zze |= 2;
        azvVar.zzg = str;
    }

    public static void d(azv azvVar, int i, cth cthVar) {
        cwe cweVar = azvVar.zzh;
        if (!((gzj) cweVar).f19052f) {
            azvVar.zzh = cys.ac(cweVar);
        }
        azvVar.zzh.set(i, cthVar);
    }

    @Override // g.cys
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new eqc(zza, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001င\u0000\u0002ဈ\u0001\u0003\u001b\u0004ဇ\u0002\u0005ဉ\u0003\u0006ဇ\u0004\u0007ဇ\u0005\bဇ\u0006", new Object[]{"zze", "zzf", "zzg", "zzh", cth.class, "zzi", "zzj", "zzk", "zzl", "zzm"});
        }
        if (i2 == 3) {
            return new azv();
        }
        if (i2 == 4) {
            return new hae(zza);
        }
        if (i2 != 5) {
            return null;
        }
        return zza;
    }

    public final boolean e() {
        return (this.zze & 64) != 0;
    }

    public final cth f(int i) {
        return (cth) this.zzh.get(i);
    }

    public final boolean g() {
        return (this.zze & 1) != 0;
    }

    public final int h() {
        return this.zzh.size();
    }

    public final boolean i() {
        return this.zzk;
    }

    public final boolean j() {
        return this.zzl;
    }

    public final boolean k() {
        return this.zzm;
    }

    public final cjx l() {
        cjx cjxVar = this.zzj;
        return cjxVar == null ? cjx.b() : cjxVar;
    }

    public final int m() {
        return this.zzf;
    }

    public final String n() {
        return this.zzg;
    }

    public final boolean o() {
        return (this.zze & 8) != 0;
    }

    public final cwe p() {
        return this.zzh;
    }
}
