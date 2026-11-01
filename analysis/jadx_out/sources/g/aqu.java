package g;

/* loaded from: classes3.dex */
public final class aqu extends cys {
    private static final aqu zza;
    private int zze;
    private int zzf;
    private cwe zzg = hbs.f19192a;
    private String zzh = "";
    private String zzi = "";
    private boolean zzj;
    private double zzk;

    static {
        aqu aquVar = new aqu();
        zza = aquVar;
        cys.af(aqu.class, aquVar);
    }

    @Override // g.cys
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new eqc(zza, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001ဌ\u0000\u0002\u001b\u0003ဈ\u0001\u0004ဈ\u0002\u0005ဇ\u0003\u0006က\u0004", new Object[]{"zze", "zzf", gxe.f18932c, "zzg", aqu.class, "zzh", "zzi", "zzj", "zzk"});
        }
        if (i2 == 3) {
            return new aqu();
        }
        if (i2 == 4) {
            return new gp(zza);
        }
        if (i2 != 5) {
            return null;
        }
        return zza;
    }

    public final cwe b() {
        return this.zzg;
    }

    public final String c() {
        return this.zzi;
    }

    public final double d() {
        return this.zzk;
    }

    public final boolean e() {
        return (this.zze & 4) != 0;
    }

    public final boolean f() {
        return this.zzj;
    }

    public final String g() {
        return this.zzh;
    }

    public final boolean h() {
        return (this.zze & 8) != 0;
    }

    public final int i() {
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

    public final boolean j() {
        return (this.zze & 16) != 0;
    }
}
