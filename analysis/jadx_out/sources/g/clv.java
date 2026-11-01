package g;

import java.util.List;

/* loaded from: classes3.dex */
public final class clv extends cys {
    private static final clv zza;
    private int zze;
    private long zzf;
    private String zzg = "";
    private int zzh;
    private cwe zzi;
    private cwe zzj;
    private cwe zzk;
    private String zzl;
    private boolean zzm;
    private cwe zzn;
    private cwe zzo;
    private String zzp;

    static {
        clv clvVar = new clv();
        zza = clvVar;
        cys.af(clv.class, clvVar);
    }

    public clv() {
        hbs hbsVar = hbs.f19192a;
        this.zzi = hbsVar;
        this.zzj = hbsVar;
        this.zzk = hbsVar;
        this.zzl = "";
        this.zzn = hbsVar;
        this.zzo = hbsVar;
        this.zzp = "";
    }

    public static void b(clv clvVar) {
        clvVar.zzk = hbs.f19192a;
    }

    public static gou c() {
        return (gou) zza.ag();
    }

    public static clv d() {
        return zza;
    }

    public static void e(clv clvVar, int i, bzt bztVar) {
        cwe cweVar = clvVar.zzj;
        if (!((gzj) cweVar).f19052f) {
            clvVar.zzj = cys.ac(cweVar);
        }
        clvVar.zzj.set(i, bztVar);
    }

    @Override // g.cys
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new eqc(zza, "\u0001\u000b\u0000\u0001\u0001\u000b\u000b\u0000\u0005\u0000\u0001ဂ\u0000\u0002ဈ\u0001\u0003င\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007ဈ\u0003\bဇ\u0004\t\u001b\n\u001b\u000bဈ\u0005", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", chj.class, "zzj", bzt.class, "zzk", ham.class, "zzl", "zzm", "zzn", kh.class, "zzo", hbo.class, "zzp"});
        }
        if (i2 == 3) {
            return new clv();
        }
        if (i2 == 4) {
            return new gou(zza);
        }
        if (i2 != 5) {
            return null;
        }
        return zza;
    }

    public final boolean f() {
        return this.zzm;
    }

    public final bzt g(int i) {
        return (bzt) this.zzj.get(i);
    }

    public final long h() {
        return this.zzf;
    }

    public final boolean i() {
        return (this.zze & 1) != 0;
    }

    public final int j() {
        return this.zzn.size();
    }

    public final List k() {
        return this.zzo;
    }

    public final cwe l() {
        return this.zzn;
    }

    public final List m() {
        return this.zzi;
    }

    public final String n() {
        return this.zzp;
    }

    public final int o() {
        return this.zzj.size();
    }

    public final boolean p() {
        return (this.zze & 2) != 0;
    }

    public final cwe q() {
        return this.zzk;
    }

    public final String r() {
        return this.zzg;
    }
}
