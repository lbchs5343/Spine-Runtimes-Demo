package g;

/* loaded from: classes3.dex */
public final class cjx extends cys {
    private static final cjx zza;
    private int zze;
    private int zzf;
    private boolean zzg;
    private String zzh = "";
    private String zzi = "";
    private String zzj = "";

    static {
        cjx cjxVar = new cjx();
        zza = cjxVar;
        cys.af(cjx.class, cjxVar);
    }

    public static cjx b() {
        return zza;
    }

    @Override // g.cys
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new eqc(zza, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဇ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004", new Object[]{"zze", "zzf", gxe.f18933d, "zzg", "zzh", "zzi", "zzj"});
        }
        if (i2 == 3) {
            return new cjx();
        }
        if (i2 == 4) {
            return new gp(zza);
        }
        if (i2 != 5) {
            return null;
        }
        return zza;
    }

    public final String c() {
        return this.zzi;
    }

    public final String d() {
        return this.zzj;
    }

    public final boolean e() {
        return (this.zze & 8) != 0;
    }

    public final int f() {
        int i;
        int i2 = this.zzf;
        if (i2 != 0) {
            i = 2;
            if (i2 != 1) {
                if (i2 != 2) {
                    i = 4;
                    if (i2 != 3) {
                        i = i2 != 4 ? 0 : 5;
                    }
                } else {
                    i = 3;
                }
            }
        } else {
            i = 1;
        }
        if (i == 0) {
            return 1;
        }
        return i;
    }

    public final boolean g() {
        return (this.zze & 2) != 0;
    }

    public final boolean h() {
        return this.zzg;
    }

    public final String i() {
        return this.zzh;
    }

    public final boolean j() {
        return (this.zze & 1) != 0;
    }

    public final boolean k() {
        return (this.zze & 16) != 0;
    }

    public final boolean l() {
        return (this.zze & 4) != 0;
    }
}
