package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;

/* loaded from: classes3.dex */
public final class djs extends fsu {
    private static final djs zzb;
    private int zzd;
    private String zze = "";
    private String zzf = "";
    private String zzg = "";
    private int zzh;
    private long zzi;
    private long zzj;
    private boolean zzk;
    private int zzl;
    private int zzm;
    private long zzn;

    static {
        djs djsVar = new djs();
        zzb = djsVar;
        fsu.p(djs.class, djsVar);
    }

    public static /* synthetic */ void a(djs djsVar, int i) {
        djsVar.zzd |= 256;
        djsVar.zzm = i;
    }

    public static /* synthetic */ void b(djs djsVar, int i) {
        djsVar.zzd |= TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME;
        djsVar.zzl = i;
    }

    public static /* synthetic */ void c(djs djsVar) {
        djsVar.zzd |= 64;
        djsVar.zzk = false;
    }

    public static /* synthetic */ void d(djs djsVar) {
        djsVar.zzd |= 1;
        djsVar.zze = "8.0.0";
    }

    public static /* synthetic */ void e(djs djsVar, String str) {
        djsVar.zzd |= 2;
        djsVar.zzf = str;
    }

    public static /* synthetic */ void f(djs djsVar) {
        djsVar.zzd |= 512;
        djsVar.zzn = 772604006L;
    }

    public static /* synthetic */ void g(djs djsVar, int i) {
        djsVar.zzd |= 8;
        djsVar.zzh = i;
    }

    public static /* synthetic */ void h(djs djsVar, long j) {
        djsVar.zzd |= 16;
        djsVar.zzi = j;
    }

    public static /* synthetic */ void l(djs djsVar, String str) {
        str.getClass();
        djsVar.zzd |= 4;
        djsVar.zzg = str;
    }

    public static gzp m() {
        return (gzp) zzb.u();
    }

    public static /* synthetic */ void n(djs djsVar, long j) {
        djsVar.zzd |= 32;
        djsVar.zzj = j;
    }

    @Override // g.fsu
    public final Object i(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new hcu(zzb, "\u0004\n\u0000\u0001\u0001\n\n\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0002\u0003င\u0003\u0004ဂ\u0004\u0005ဈ\u0001\u0006ဂ\u0005\u0007ဇ\u0006\bင\u0007\tင\b\nဂ\t", new Object[]{"zzd", "zze", "zzg", "zzh", "zzi", "zzf", "zzj", "zzk", "zzl", "zzm", "zzn"});
        }
        if (i2 == 3) {
            return new djs();
        }
        if (i2 == 4) {
            return new gzp(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
