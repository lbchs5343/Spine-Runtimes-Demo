package g;

import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class asm extends cys {
    private static final asm zza;
    private int zze;
    private long zzh;
    private float zzi;
    private double zzj;
    private String zzf = "";
    private String zzg = "";
    private cwe zzk = hbs.f19192a;

    static {
        asm asmVar = new asm();
        zza = asmVar;
        cys.af(asm.class, asmVar);
    }

    public static /* synthetic */ void b(asm asmVar) {
        asmVar.zze &= -17;
        asmVar.zzj = 0.0d;
    }

    public static /* synthetic */ void c(asm asmVar, double d2) {
        asmVar.zze |= 16;
        asmVar.zzj = d2;
    }

    public static void d(asm asmVar, ArrayList arrayList) {
        cwe cweVar = asmVar.zzk;
        if (!((gzj) cweVar).f19052f) {
            asmVar.zzk = cys.ac(cweVar);
        }
        cir.y(arrayList, asmVar.zzk);
    }

    public static /* synthetic */ void e(asm asmVar, String str) {
        str.getClass();
        asmVar.zze |= 2;
        asmVar.zzg = str;
    }

    public static void f(asm asmVar) {
        asmVar.zzk = hbs.f19192a;
    }

    public static /* synthetic */ void g(asm asmVar) {
        asmVar.zze &= -3;
        asmVar.zzg = zza.zzg;
    }

    public static /* synthetic */ void h(asm asmVar, long j) {
        asmVar.zze |= 4;
        asmVar.zzh = j;
    }

    public static bd i() {
        return (bd) zza.ag();
    }

    public static void j(asm asmVar, asm asmVar2) {
        cwe cweVar = asmVar.zzk;
        if (!((gzj) cweVar).f19052f) {
            asmVar.zzk = cys.ac(cweVar);
        }
        asmVar.zzk.add(asmVar2);
    }

    public static /* synthetic */ void k(asm asmVar, String str) {
        str.getClass();
        asmVar.zze |= 1;
        asmVar.zzf = str;
    }

    public static /* synthetic */ void l(asm asmVar) {
        asmVar.zze &= -5;
        asmVar.zzh = 0L;
    }

    @Override // g.cys
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new eqc(zza, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004ခ\u0003\u0005က\u0004\u0006\u001b", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", asm.class});
        }
        if (i2 == 3) {
            return new asm();
        }
        if (i2 == 4) {
            return new bd(zza);
        }
        if (i2 != 5) {
            return null;
        }
        return zza;
    }

    public final boolean m() {
        return (this.zze & 2) != 0;
    }

    public final long n() {
        return this.zzh;
    }

    public final boolean o() {
        return (this.zze & 1) != 0;
    }

    public final int p() {
        return this.zzk.size();
    }

    public final double q() {
        return this.zzj;
    }

    public final boolean r() {
        return (this.zze & 16) != 0;
    }

    public final cwe s() {
        return this.zzk;
    }

    public final float t() {
        return this.zzi;
    }

    public final String u() {
        return this.zzf;
    }

    public final boolean v() {
        return (this.zze & 4) != 0;
    }

    public final boolean w() {
        return (this.zze & 8) != 0;
    }

    public final String x() {
        return this.zzg;
    }
}
