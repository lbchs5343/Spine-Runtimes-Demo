package g;

import java.io.IOException;

/* loaded from: classes3.dex */
public final class hd extends fsu {
    private static final hd zzb;
    private int zzd;
    private int zze = 0;
    private Object zzf;
    private int zzg;
    private aho zzh;
    private int zzi;

    static {
        hd hdVar = new hd();
        zzb = hdVar;
        fsu.p(hd.class, hdVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [g.dxm] */
    /* JADX WARN: Type inference failed for: r2v1, types: [g.fsu, java.lang.Object] */
    public static hd a(byte[] bArr, beg begVar) {
        hd hdVar = zzb;
        int length = bArr.length;
        if (length != 0) {
            ?? r2 = (fsu) hdVar.i(4);
            try {
                ?? d2 = fjo.f16893a.d(r2.getClass());
                dsc dscVar = new dsc();
                begVar.getClass();
                d2.w(r2, bArr, 0, length, dscVar);
                d2.aa(r2);
                hdVar = r2;
            } catch (egc e2) {
                throw new fba(e2.getMessage());
            } catch (fba e3) {
                throw e3;
            } catch (IOException e4) {
                if (e4.getCause() instanceof fba) {
                    throw ((fba) e4.getCause());
                }
                throw new fba(e4.getMessage(), e4);
            } catch (IndexOutOfBoundsException unused) {
                throw new fba("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
        }
        if (hdVar == null || fsu.r(hdVar, true)) {
            return hdVar;
        }
        throw new fba(new egc().getMessage());
    }

    public static ari b() {
        return (ari) zzb.u();
    }

    public static /* synthetic */ void c(hd hdVar, dmh dmhVar) {
        hdVar.zzf = dmhVar;
        hdVar.zze = 6;
    }

    public static /* synthetic */ void d(hd hdVar, apl aplVar) {
        hdVar.zzi = aplVar.zza();
        hdVar.zzd |= 4;
    }

    public static /* synthetic */ void e(hd hdVar, aho ahoVar) {
        hdVar.zzh = ahoVar;
        hdVar.zzd |= 2;
    }

    public static /* synthetic */ void f(hd hdVar, int i) {
        hdVar.zzg = i - 1;
        hdVar.zzd |= 1;
    }

    public static /* synthetic */ void g(hd hdVar, gsc gscVar) {
        hdVar.zzf = gscVar;
        hdVar.zze = 7;
    }

    public final gsc h() {
        return this.zze == 7 ? (gsc) this.zzf : gsc.a();
    }

    @Override // g.fsu
    public final Object i(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new hcu(zzb, "\u0004\u0006\u0001\u0001\u0001\u0007\u0006\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0004<\u0000\u0005᠌\u0002\u0006<\u0000\u0007<\u0000", new Object[]{"zzf", "zze", "zzd", "zzg", gve.f18808g, "zzh", eff.class, "zzi", gve.f18804c, dmh.class, gsc.class});
        }
        if (i2 == 3) {
            return new hd();
        }
        if (i2 == 4) {
            return new ari(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
