package g;

/* loaded from: classes3.dex */
public final class bzt extends cys {
    private static final bzt zza;
    private int zze;
    private String zzf = "";
    private boolean zzg;
    private boolean zzh;
    private int zzi;

    static {
        bzt bztVar = new bzt();
        zza = bztVar;
        cys.af(bzt.class, bztVar);
    }

    public static /* synthetic */ void b(bzt bztVar, String str) {
        str.getClass();
        bztVar.zze |= 1;
        bztVar.zzf = str;
    }

    @Override // g.cys
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new eqc(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004င\u0003", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new bzt();
        }
        if (i2 == 4) {
            return new esq(zza);
        }
        if (i2 != 5) {
            return null;
        }
        return zza;
    }

    public final boolean c() {
        return this.zzg;
    }

    public final int d() {
        return this.zzi;
    }

    public final boolean e() {
        return (this.zze & 8) != 0;
    }

    public final boolean f() {
        return this.zzh;
    }

    public final String g() {
        return this.zzf;
    }

    public final boolean h() {
        return (this.zze & 2) != 0;
    }

    public final boolean i() {
        return (this.zze & 4) != 0;
    }
}
