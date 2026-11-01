package g;

/* loaded from: classes3.dex */
public final class fjq extends fsu {
    private static final fjq zzb;
    private int zzd;
    private int zze = 0;
    private Object zzf;
    private djs zzg;
    private awg zzh;

    static {
        fjq fjqVar = new fjq();
        zzb = fjqVar;
        fsu.p(fjq.class, fjqVar);
    }

    public static /* synthetic */ void a(fjq fjqVar, eag eagVar) {
        fjqVar.zzf = eagVar;
        fjqVar.zze = 3;
    }

    public static /* synthetic */ void b(fjq fjqVar, hd hdVar) {
        fjqVar.zzf = hdVar;
        fjqVar.zze = 2;
    }

    public static /* synthetic */ void c(fjq fjqVar, djl djlVar) {
        fjqVar.zzf = djlVar;
        fjqVar.zze = 4;
    }

    public static /* synthetic */ void d(fjq fjqVar, afw afwVar) {
        afwVar.getClass();
        fjqVar.zzf = afwVar;
        fjqVar.zze = 7;
    }

    public static /* synthetic */ void e(fjq fjqVar, djs djsVar) {
        djsVar.getClass();
        fjqVar.zzg = djsVar;
        fjqVar.zzd |= 1;
    }

    public static aqa f() {
        return (aqa) zzb.u();
    }

    public static /* synthetic */ void g(fjq fjqVar, efn efnVar) {
        fjqVar.zzf = efnVar;
        fjqVar.zze = 8;
    }

    @Override // g.fsu
    public final Object i(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new hcu(zzb, "\u0004\b\u0001\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဉ\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006ဉ\u0001\u0007<\u0000\b<\u0000", new Object[]{"zzf", "zze", "zzd", "zzg", hd.class, eag.class, djl.class, gtw.class, "zzh", afw.class, efn.class});
        }
        if (i2 == 3) {
            return new fjq();
        }
        if (i2 == 4) {
            return new aqa(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
