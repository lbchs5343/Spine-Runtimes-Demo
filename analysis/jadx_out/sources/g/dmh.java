package g;

/* loaded from: classes3.dex */
public final class dmh extends fsu {
    private static final dmh zzb;
    private int zzd;
    private int zze;
    private boolean zzf;
    private long zzg;
    private boolean zzh;
    private int zzi;

    static {
        dmh dmhVar = new dmh();
        zzb = dmhVar;
        fsu.p(dmh.class, dmhVar);
    }

    public static /* synthetic */ void a(dmh dmhVar) {
        dmhVar.zzd |= 16;
        dmhVar.zzi = 0;
    }

    public static /* synthetic */ void b(dmh dmhVar, boolean z) {
        dmhVar.zzd |= 8;
        dmhVar.zzh = z;
    }

    public static /* synthetic */ void c(dmh dmhVar, long j) {
        dmhVar.zzd |= 4;
        dmhVar.zzg = j;
    }

    public static /* synthetic */ void d(dmh dmhVar) {
        dmhVar.zzd |= 2;
        dmhVar.zzf = true;
    }

    public static eip e() {
        return (eip) zzb.u();
    }

    @Override // g.fsu
    public final Object i(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new hcu(zzb, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001င\u0000\u0002ဇ\u0001\u0003ဂ\u0002\u0004ဇ\u0003\u0005င\u0004", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new dmh();
        }
        if (i2 == 4) {
            return new eip(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
