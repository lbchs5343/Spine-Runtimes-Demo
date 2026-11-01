package g;

/* loaded from: classes3.dex */
public final class dfx extends cys {
    private static final dfx zza;
    private int zze;
    private int zzf;
    private String zzg = "";
    private cth zzh;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;

    static {
        dfx dfxVar = new dfx();
        zza = dfxVar;
        cys.af(dfx.class, dfxVar);
    }

    public static dvp b() {
        return (dvp) zza.ag();
    }

    public static /* synthetic */ void c(dfx dfxVar, String str) {
        dfxVar.zze |= 2;
        dfxVar.zzg = str;
    }

    @Override // g.cys
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new eqc(zza, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001\u0003ဉ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဇ\u0005", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        if (i2 == 3) {
            return new dfx();
        }
        if (i2 == 4) {
            return new dvp(zza);
        }
        if (i2 != 5) {
            return null;
        }
        return zza;
    }

    public final String d() {
        return this.zzg;
    }

    public final int e() {
        return this.zzf;
    }

    public final boolean f() {
        return (this.zze & 32) != 0;
    }

    public final boolean g() {
        return this.zzk;
    }

    public final cth h() {
        cth cthVar = this.zzh;
        return cthVar == null ? cth.b() : cthVar;
    }

    public final boolean i() {
        return this.zzi;
    }

    public final boolean j() {
        return (this.zze & 1) != 0;
    }

    public final boolean k() {
        return this.zzj;
    }
}
