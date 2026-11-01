package g;

import java.util.List;

/* loaded from: classes3.dex */
public final class ham extends cys {
    private static final ham zza;
    private int zze;
    private int zzf;
    private cwe zzg;
    private cwe zzh;
    private boolean zzi;
    private boolean zzj;

    static {
        ham hamVar = new ham();
        zza = hamVar;
        cys.af(ham.class, hamVar);
    }

    public ham() {
        hbs hbsVar = hbs.f19192a;
        this.zzg = hbsVar;
        this.zzh = hbsVar;
    }

    public static void b(ham hamVar, int i, dfx dfxVar) {
        cwe cweVar = hamVar.zzg;
        if (!((gzj) cweVar).f19052f) {
            hamVar.zzg = cys.ac(cweVar);
        }
        hamVar.zzg.set(i, dfxVar);
    }

    public static void c(ham hamVar, int i, azv azvVar) {
        cwe cweVar = hamVar.zzh;
        if (!((gzj) cweVar).f19052f) {
            hamVar.zzh = cys.ac(cweVar);
        }
        hamVar.zzh.set(i, azvVar);
    }

    @Override // g.cys
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new eqc(zza, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001င\u0000\u0002\u001b\u0003\u001b\u0004ဇ\u0001\u0005ဇ\u0002", new Object[]{"zze", "zzf", "zzg", dfx.class, "zzh", azv.class, "zzi", "zzj"});
        }
        if (i2 == 3) {
            return new ham();
        }
        if (i2 == 4) {
            return new gmg(zza);
        }
        if (i2 != 5) {
            return null;
        }
        return zza;
    }

    public final azv d(int i) {
        return (azv) this.zzh.get(i);
    }

    public final int e() {
        return this.zzg.size();
    }

    public final int f() {
        return this.zzf;
    }

    public final boolean g() {
        return (this.zze & 1) != 0;
    }

    public final dfx h(int i) {
        return (dfx) this.zzg.get(i);
    }

    public final int i() {
        return this.zzh.size();
    }

    public final List j() {
        return this.zzh;
    }

    public final cwe k() {
        return this.zzg;
    }
}
