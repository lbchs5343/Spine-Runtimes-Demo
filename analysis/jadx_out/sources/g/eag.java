package g;

/* loaded from: classes3.dex */
public final class eag extends fsu {
    private static final eag zzb;
    private int zzd;
    private int zze = 0;
    private Object zzf;
    private int zzg;
    private int zzh;

    static {
        eag eagVar = new eag();
        zzb = eagVar;
        fsu.p(eag.class, eagVar);
    }

    public static /* synthetic */ void a(eag eagVar, apl aplVar) {
        eagVar.zzh = aplVar.zza();
        eagVar.zzd |= 2;
    }

    public static gza b() {
        return (gza) zzb.u();
    }

    public static /* synthetic */ void c(eag eagVar, gsc gscVar) {
        eagVar.zzf = gscVar;
        eagVar.zze = 4;
    }

    public static /* synthetic */ void d(eag eagVar, dmh dmhVar) {
        eagVar.zzf = dmhVar;
        eagVar.zze = 3;
    }

    public static /* synthetic */ void e(eag eagVar, int i) {
        eagVar.zzg = i - 1;
        eagVar.zzd |= 1;
    }

    public final gsc f() {
        return this.zze == 4 ? (gsc) this.zzf : gsc.a();
    }

    @Override // g.fsu
    public final Object i(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new hcu(zzb, "\u0004\u0005\u0001\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001᠌\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005᠌\u0001", new Object[]{"zzf", "zze", "zzd", "zzg", gve.f18808g, eff.class, dmh.class, gsc.class, "zzh", gve.f18804c});
        }
        if (i2 == 3) {
            return new eag();
        }
        if (i2 == 4) {
            return new gza(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
