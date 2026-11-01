package g;

/* loaded from: classes3.dex */
public final class bvd extends cys {
    private static final bvd zza;
    private int zze;
    private int zzf;
    private long zzg;

    static {
        bvd bvdVar = new bvd();
        zza = bvdVar;
        cys.af(bvd.class, bvdVar);
    }

    public static /* synthetic */ void b(bvd bvdVar, int i) {
        bvdVar.zze |= 1;
        bvdVar.zzf = i;
    }

    public static cas c() {
        return (cas) zza.ag();
    }

    public static /* synthetic */ void d(bvd bvdVar, long j) {
        bvdVar.zze |= 2;
        bvdVar.zzg = j;
    }

    @Override // g.cys
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new eqc(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002ဂ\u0001", new Object[]{"zze", "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new bvd();
        }
        if (i2 == 4) {
            return new cas(zza);
        }
        if (i2 != 5) {
            return null;
        }
        return zza;
    }

    public final int e() {
        return this.zzf;
    }

    public final long f() {
        return this.zzg;
    }

    public final boolean g() {
        return (this.zze & 2) != 0;
    }

    public final boolean h() {
        return (this.zze & 1) != 0;
    }
}
