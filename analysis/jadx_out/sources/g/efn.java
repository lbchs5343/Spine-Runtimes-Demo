package g;

/* loaded from: classes3.dex */
public final class efn extends fsu {
    private static final efn zzb;
    private int zzd;
    private aho zze;
    private long zzf;

    static {
        efn efnVar = new efn();
        zzb = efnVar;
        fsu.p(efn.class, efnVar);
    }

    public static /* synthetic */ void a(efn efnVar, long j) {
        efnVar.zzd |= 2;
        efnVar.zzf = j;
    }

    public static /* synthetic */ void b(efn efnVar, aho ahoVar) {
        efnVar.zze = ahoVar;
        efnVar.zzd |= 1;
    }

    public static bnn c() {
        return (bnn) zzb.u();
    }

    @Override // g.fsu
    public final Object i(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new hcu(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဂ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new efn();
        }
        if (i2 == 4) {
            return new bnn(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
