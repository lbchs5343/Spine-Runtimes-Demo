package g;

/* loaded from: classes3.dex */
public final class cth extends cys {
    private static final cth zza;
    private int zze;
    private fuj zzf;
    private cjx zzg;
    private boolean zzh;
    private String zzi = "";

    static {
        cth cthVar = new cth();
        zza = cthVar;
        cys.af(cth.class, cthVar);
    }

    public static cth b() {
        return zza;
    }

    public static /* synthetic */ void c(cth cthVar, String str) {
        cthVar.zze |= 8;
        cthVar.zzi = str;
    }

    @Override // g.cys
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new eqc(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဇ\u0002\u0004ဈ\u0003", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new cth();
        }
        if (i2 == 4) {
            return new ffa(zza);
        }
        if (i2 != 5) {
            return null;
        }
        return zza;
    }

    public final String d() {
        return this.zzi;
    }

    public final fuj e() {
        fuj fujVar = this.zzf;
        return fujVar == null ? fuj.b() : fujVar;
    }

    public final boolean f() {
        return (this.zze & 1) != 0;
    }

    public final boolean g() {
        return (this.zze & 2) != 0;
    }

    public final cjx h() {
        cjx cjxVar = this.zzg;
        return cjxVar == null ? cjx.b() : cjxVar;
    }

    public final boolean i() {
        return this.zzh;
    }

    public final boolean j() {
        return (this.zze & 8) != 0;
    }

    public final boolean k() {
        return (this.zze & 4) != 0;
    }
}
