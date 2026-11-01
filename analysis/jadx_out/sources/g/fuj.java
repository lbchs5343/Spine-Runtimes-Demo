package g;

/* loaded from: classes3.dex */
public final class fuj extends cys {
    private static final fuj zza;
    private int zze;
    private int zzf;
    private boolean zzh;
    private String zzg = "";
    private cwe zzi = hbs.f19192a;

    static {
        fuj fujVar = new fuj();
        zza = fujVar;
        cys.af(fuj.class, fujVar);
    }

    public static fuj b() {
        return zza;
    }

    @Override // g.cys
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new eqc(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ဌ\u0000\u0002ဈ\u0001\u0003ဇ\u0002\u0004\u001a", new Object[]{"zze", "zzf", gxe.f18934e, "zzg", "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new fuj();
        }
        if (i2 == 4) {
            return new gp(zza);
        }
        if (i2 != 5) {
            return null;
        }
        return zza;
    }

    public final cwe c() {
        return this.zzi;
    }

    public final String d() {
        return this.zzg;
    }

    public final int e() {
        return this.zzi.size();
    }

    public final boolean f() {
        return (this.zze & 1) != 0;
    }

    public final boolean g() {
        return this.zzh;
    }

    public final boolean h() {
        return (this.zze & 4) != 0;
    }

    public final int i() {
        int i;
        switch (this.zzf) {
            case 0:
                i = 1;
                break;
            case 1:
                i = 2;
                break;
            case 2:
                i = 3;
                break;
            case 3:
                i = 4;
                break;
            case 4:
                i = 5;
                break;
            case 5:
                i = 6;
                break;
            case 6:
                i = 7;
                break;
            default:
                i = 0;
                break;
        }
        if (i == 0) {
            return 1;
        }
        return i;
    }

    public final boolean j() {
        return (this.zze & 2) != 0;
    }
}
