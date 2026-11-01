package g;

/* loaded from: classes3.dex */
public final class ajk extends cys {
    private static final ajk zza;
    private int zze;
    private int zzf;
    private gpz zzg;
    private gpz zzh;
    private boolean zzi;

    static {
        ajk ajkVar = new ajk();
        zza = ajkVar;
        cys.af(ajk.class, ajkVar);
    }

    public static /* synthetic */ void b(ajk ajkVar, boolean z) {
        ajkVar.zze |= 8;
        ajkVar.zzi = z;
    }

    public static /* synthetic */ void c(ajk ajkVar, int i) {
        ajkVar.zze |= 1;
        ajkVar.zzf = i;
    }

    public static bum d() {
        return (bum) zza.ag();
    }

    public static /* synthetic */ void e(ajk ajkVar, gpz gpzVar) {
        ajkVar.zzg = gpzVar;
        ajkVar.zze |= 2;
    }

    public static /* synthetic */ void f(ajk ajkVar, gpz gpzVar) {
        ajkVar.zzh = gpzVar;
        ajkVar.zze |= 4;
    }

    @Override // g.cys
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new eqc(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001င\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဇ\u0003", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new ajk();
        }
        if (i2 == 4) {
            return new bum(zza);
        }
        if (i2 != 5) {
            return null;
        }
        return zza;
    }

    public final gpz g() {
        gpz gpzVar = this.zzh;
        return gpzVar == null ? gpz.m() : gpzVar;
    }

    public final gpz h() {
        gpz gpzVar = this.zzg;
        return gpzVar == null ? gpz.m() : gpzVar;
    }

    public final int i() {
        return this.zzf;
    }

    public final boolean j() {
        return (this.zze & 1) != 0;
    }

    public final boolean k() {
        return (this.zze & 8) != 0;
    }

    public final boolean l() {
        return (this.zze & 4) != 0;
    }

    public final boolean m() {
        return this.zzi;
    }
}
