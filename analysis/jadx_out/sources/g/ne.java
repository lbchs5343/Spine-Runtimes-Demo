package g;

/* loaded from: classes3.dex */
public final class ne extends cys {
    private static final ne zza;
    private int zze;
    private long zzf;
    private String zzg = "";
    private String zzh = "";
    private long zzi;
    private float zzj;
    private double zzk;

    static {
        ne neVar = new ne();
        zza = neVar;
        cys.af(ne.class, neVar);
    }

    public static eft b() {
        return (eft) zza.ag();
    }

    public static /* synthetic */ void c(ne neVar) {
        neVar.zze &= -33;
        neVar.zzk = 0.0d;
    }

    public static /* synthetic */ void d(ne neVar) {
        neVar.zze &= -5;
        neVar.zzh = zza.zzh;
    }

    public static /* synthetic */ void e(ne neVar, long j) {
        neVar.zze |= 8;
        neVar.zzi = j;
    }

    public static /* synthetic */ void f(ne neVar) {
        neVar.zze &= -9;
        neVar.zzi = 0L;
    }

    public static /* synthetic */ void g(ne neVar, String str) {
        str.getClass();
        neVar.zze |= 2;
        neVar.zzg = str;
    }

    public static /* synthetic */ void h(ne neVar, String str) {
        str.getClass();
        neVar.zze |= 4;
        neVar.zzh = str;
    }

    public static /* synthetic */ void i(ne neVar, double d2) {
        neVar.zze |= 32;
        neVar.zzk = d2;
    }

    public static /* synthetic */ void j(ne neVar, long j) {
        neVar.zze |= 1;
        neVar.zzf = j;
    }

    @Override // g.cys
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new eqc(zza, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u0005ခ\u0004\u0006က\u0005", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        if (i2 == 3) {
            return new ne();
        }
        if (i2 == 4) {
            return new eft(zza);
        }
        if (i2 != 5) {
            return null;
        }
        return zza;
    }

    public final boolean k() {
        return (this.zze & 32) != 0;
    }

    public final long l() {
        return this.zzf;
    }

    public final boolean m() {
        return (this.zze & 1) != 0;
    }

    public final double n() {
        return this.zzk;
    }

    public final boolean o() {
        return (this.zze & 4) != 0;
    }

    public final String p() {
        return this.zzg;
    }

    public final long q() {
        return this.zzi;
    }

    public final String r() {
        return this.zzh;
    }

    public final boolean s() {
        return (this.zze & 8) != 0;
    }
}
