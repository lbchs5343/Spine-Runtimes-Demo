package com.google.android.gms.internal.ads;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.ahn;
import g.cyk;
import g.eqd;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzhes extends zzgyx implements zzhaj {
    private static final zzhes zza;
    private static volatile zzhaq zzb;
    private zzgzj zzA;
    private zzgzj zzB;
    private zzheo zzC;
    private zzgzj zzD;
    private zzhcz zzE;
    private String zzF;
    private zzhcr zzG;
    private zzgzj zzH;
    private zzhds zzI;
    private int zzJ;
    private zzgzj zzK;
    private zzgzj zzL;
    private long zzM;
    private zzher zzN;
    private zzhdx zzO;
    private String zzP;
    private int zzc;
    private int zzd;
    private int zze;
    private zzhcv zzi;
    private zzgzj zzj;
    private zzgzj zzk;
    private String zzl;
    private zzhed zzm;
    private boolean zzn;
    private zzgzj zzo;
    private String zzp;
    private boolean zzu;
    private boolean zzv;
    private zzgxp zzw;
    private zzhek zzx;
    private boolean zzy;
    private String zzz;
    private byte zzQ = 2;
    private String zzf = "";
    private String zzg = "";
    private String zzh = "";

    static {
        zzhes zzhesVar = new zzhes();
        zza = zzhesVar;
        zzgyx.cb(zzhes.class, zzhesVar);
    }

    public zzhes() {
        ahn ahnVar = ahn.f10232c;
        this.zzj = ahnVar;
        this.zzk = ahnVar;
        this.zzl = "";
        this.zzo = ahnVar;
        this.zzp = "";
        this.zzw = zzgxp.zzb;
        this.zzz = "";
        this.zzA = ahnVar;
        this.zzB = ahnVar;
        this.zzD = ahnVar;
        this.zzF = "";
        this.zzH = ahnVar;
        this.zzK = ahnVar;
        this.zzL = ahnVar;
        this.zzP = "";
    }

    public static /* synthetic */ void a(zzhes zzhesVar, Iterable iterable) {
        zzgzj zzgzjVar = zzhesVar.zzA;
        if (!zzgzjVar.zzc()) {
            zzhesVar.zzA = zzgyx.bn(zzgzjVar);
        }
        zzgwy.bi(iterable, zzhesVar.zzA);
    }

    public static /* synthetic */ void b(zzhes zzhesVar, String str) {
        zzhesVar.zzc |= 64;
        zzhesVar.zzl = str;
    }

    public static /* synthetic */ void d(zzhes zzhesVar, String str) {
        str.getClass();
        zzhesVar.zzc |= 4;
        zzhesVar.zzf = str;
    }

    public static /* synthetic */ void e(zzhes zzhesVar, zzhcv zzhcvVar) {
        zzhcvVar.getClass();
        zzhesVar.zzi = zzhcvVar;
        zzhesVar.zzc |= 32;
    }

    public static /* synthetic */ void f(zzhes zzhesVar, zzhek zzhekVar) {
        zzhekVar.getClass();
        zzhesVar.zzx = zzhekVar;
        zzhesVar.zzc |= 8192;
    }

    public static /* synthetic */ void g(zzhes zzhesVar) {
        zzhesVar.zzc &= -65;
        zzhesVar.zzl = zza.zzl;
    }

    public static /* synthetic */ void h(zzhes zzhesVar, zzhei zzheiVar) {
        zzheiVar.getClass();
        zzgzj zzgzjVar = zzhesVar.zzj;
        if (!zzgzjVar.zzc()) {
            zzhesVar.zzj = zzgyx.bn(zzgzjVar);
        }
        zzhesVar.zzj.add(zzheiVar);
    }

    public static /* synthetic */ void i(zzhes zzhesVar, int i) {
        zzhesVar.zzd = i - 1;
        zzhesVar.zzc |= 1;
    }

    public static /* synthetic */ void j(zzhes zzhesVar, zzhed zzhedVar) {
        zzhedVar.getClass();
        zzhesVar.zzm = zzhedVar;
        zzhesVar.zzc |= TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME;
    }

    public static /* synthetic */ void k(zzhes zzhesVar, String str) {
        str.getClass();
        zzhesVar.zzc |= 8;
        zzhesVar.zzg = str;
    }

    public static /* synthetic */ void l(zzhes zzhesVar, Iterable iterable) {
        zzgzj zzgzjVar = zzhesVar.zzB;
        if (!zzgzjVar.zzc()) {
            zzhesVar.zzB = zzgyx.bn(zzgzjVar);
        }
        zzgwy.bi(iterable, zzhesVar.zzB);
    }

    public static zzhct zzc() {
        return (zzhct) zza.cl();
    }

    @Override // com.google.android.gms.internal.ads.zzgyx
    public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
        zzhaq zzhaqVar;
        switch (zzgywVar.ordinal()) {
            case 0:
                return Byte.valueOf(this.zzQ);
            case 1:
                this.zzQ = zzgyxVar == null ? (byte) 0 : (byte) 1;
                return null;
            case 2:
                return new cyk(zza, "\u0001#\u0000\u0001\u0001##\u0000\t\u0001\u0001ဈ\u0002\u0002ဈ\u0003\u0003ဈ\u0004\u0004Л\u0005ဇ\b\u0006\u001a\u0007ဈ\t\bဇ\n\tဇ\u000b\n᠌\u0000\u000b᠌\u0001\fဉ\u0005\rဈ\u0006\u000eဉ\u0007\u000fည\f\u0010\u001b\u0011ဉ\r\u0012ဇ\u000e\u0013ဈ\u000f\u0014\u001a\u0015\u001a\u0016ဉ\u0010\u0017\u001b\u0018ဉ\u0011\u0019ဈ\u0012\u001aဉ\u0013\u001b\u001b\u001cဉ\u0014\u001d᠌\u0015\u001e\u001b\u001f\u001b ဂ\u0016!ဉ\u0017\"ဉ\u0018#ဈ\u0019", new Object[]{"zzc", "zzf", "zzg", "zzh", "zzj", zzhei.class, "zzn", "zzo", "zzp", "zzu", "zzv", "zzd", eqd.f15978a, "zze", eqd.q, "zzi", "zzl", "zzm", "zzw", "zzk", zzhew.class, "zzx", "zzy", "zzz", "zzA", "zzB", "zzC", "zzD", zzhfc.class, "zzE", "zzF", "zzG", "zzH", zzhdd.class, "zzI", "zzJ", eqd.m, "zzK", zzhdv.class, "zzL", zzhea.class, "zzM", "zzN", "zzO", "zzP"});
            case 3:
                return new zzhes();
            case 4:
                return new zzhct(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzhes.class) {
                    try {
                        zzhaqVar = zzb;
                        if (zzhaqVar == null) {
                            zzhaqVar = new zzgys(zza);
                            zzb = zzhaqVar;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return zzhaqVar;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public final String zzf() {
        return this.zzl;
    }

    public final String zzg() {
        return this.zzf;
    }

    public final List zzh() {
        return this.zzj;
    }
}
