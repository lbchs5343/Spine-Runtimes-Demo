package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.ahn;
import g.cyk;
import g.eqd;

/* loaded from: classes3.dex */
public final class zzata extends zzgyx implements zzhaj {
    private static final zzata zza;
    private static volatile zzhaq zzb;
    private long zzA;
    private long zzB;
    private long zzC;
    private long zzD;
    private long zzE;
    private long zzI;
    private long zzJ;
    private long zzK;
    private long zzM;
    private zzatc zzP;
    private int zzaA;
    private String zzaB;
    private zzgzj zzaC;
    private int zzaD;
    private zzgzj zzaE;
    private zzasv zzaF;
    private String zzaG;
    private long zzaH;
    private long zzaI;
    private long zzaJ;
    private long zzaK;
    private long zzaL;
    private long zzaM;
    private String zzaN;
    private zzasn zzaO;
    private zzasp zzaP;
    private long zzaQ;
    private long zzaR;
    private int zzaS;
    private long zzaT;
    private String zzaU;
    private int zzaV;
    private boolean zzaW;
    private String zzaX;
    private long zzaY;
    private zzatl zzaZ;
    private zzasx zzah;
    private zzgzj zzai;
    private zzasz zzaj;
    private long zzak;
    private long zzal;
    private long zzam;
    private long zzan;
    private long zzao;
    private long zzap;
    private long zzaq;
    private long zzar;
    private String zzas;
    private long zzat;
    private int zzau;
    private int zzav;
    private int zzaw;
    private zzatn zzax;
    private long zzay;
    private int zzaz;
    private long zzba;
    private String zzbb;
    private int zzc;
    private int zzd;
    private int zze;
    private long zzh;
    private long zzi;
    private long zzj;
    private long zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private long zzp;
    private long zzu;
    private long zzw;
    private long zzx;
    private long zzy;
    private long zzz;
    private String zzf = "";
    private String zzg = "";
    private String zzv = "";
    private String zzF = "";
    private String zzG = "D";
    private String zzH = "";
    private String zzL = "";
    private long zzN = -1;
    private long zzO = -1;
    private long zzQ = -1;
    private long zzR = -1;
    private long zzS = -1;
    private long zzT = -1;
    private long zzU = -1;
    private long zzV = -1;
    private String zzW = "D";
    private String zzX = "D";
    private long zzY = -1;
    private int zzZ = 1000;
    private int zzaa = 1000;
    private long zzab = -1;
    private long zzac = -1;
    private long zzad = -1;
    private long zzae = -1;
    private long zzaf = -1;
    private int zzag = 1000;

    static {
        zzata zzataVar = new zzata();
        zza = zzataVar;
        zzgyx.cb(zzata.class, zzataVar);
    }

    public zzata() {
        ahn ahnVar = ahn.f10232c;
        this.zzai = ahnVar;
        this.zzak = -1L;
        this.zzal = -1L;
        this.zzam = -1L;
        this.zzan = -1L;
        this.zzao = -1L;
        this.zzap = -1L;
        this.zzaq = -1L;
        this.zzar = -1L;
        this.zzas = "D";
        this.zzat = -1L;
        this.zzay = -1L;
        this.zzaz = 1000;
        this.zzaA = 1000;
        this.zzaB = "D";
        this.zzaC = ahnVar;
        this.zzaD = 1000;
        this.zzaE = ahnVar;
        this.zzaG = "";
        this.zzaH = -1L;
        this.zzaI = -1L;
        this.zzaJ = -1L;
        this.zzaK = -1L;
        this.zzaM = -1L;
        this.zzaN = "";
        this.zzaQ = -1L;
        this.zzaR = -1L;
        this.zzaU = "";
        this.zzaV = 2;
        this.zzaX = "";
        this.zzba = -1L;
        this.zzbb = "";
    }

    public static /* synthetic */ void a(zzata zzataVar, long j) {
        zzataVar.zzd |= 32;
        zzataVar.zzU = j;
    }

    public static /* synthetic */ void aa(zzata zzataVar, String str) {
        str.getClass();
        zzataVar.zzd |= TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME;
        zzataVar.zzW = str;
    }

    public static /* synthetic */ void ab(zzata zzataVar, long j) {
        zzataVar.zzd |= 134217728;
        zzataVar.zzar = j;
    }

    public static /* synthetic */ void ac(zzata zzataVar, long j) {
        zzataVar.zzd |= TTAdConstant.KEY_CLICK_AREA;
        zzataVar.zzaq = j;
    }

    public static /* synthetic */ void ad(zzata zzataVar, long j) {
        zzataVar.zzc |= 134217728;
        zzataVar.zzK = j;
    }

    public static /* synthetic */ void ae(zzata zzataVar, long j) {
        zzataVar.zze |= 4096;
        zzataVar.zzaK = j;
    }

    public static /* synthetic */ void af(zzata zzataVar, long j) {
        zzataVar.zzd |= 8192;
        zzataVar.zzac = j;
    }

    public static /* synthetic */ void ag(zzata zzataVar, long j) {
        zzataVar.zzc |= 32768;
        zzataVar.zzy = j;
    }

    public static /* synthetic */ void ah(zzata zzataVar, long j) {
        zzataVar.zzd |= 4194304;
        zzataVar.zzam = j;
    }

    public static /* synthetic */ void ai(zzata zzataVar, long j) {
        zzataVar.zzc |= 2048;
        zzataVar.zzu = j;
    }

    public static /* synthetic */ void aj(zzata zzataVar, String str) {
        str.getClass();
        zzataVar.zze |= 32768;
        zzataVar.zzaN = str;
    }

    public static /* synthetic */ void ak(zzata zzataVar, long j) {
        zzataVar.zzc |= 32;
        zzataVar.zzk = j;
    }

    public static /* synthetic */ void al(zzata zzataVar, long j) {
        zzataVar.zzc |= 4;
        zzataVar.zzh = j;
    }

    public static /* synthetic */ void am(zzata zzataVar, zzasz zzaszVar) {
        zzaszVar.getClass();
        zzataVar.zzaj = zzaszVar;
        zzataVar.zzd |= 524288;
    }

    public static /* synthetic */ void an(zzata zzataVar, zzasx zzasxVar) {
        zzasxVar.getClass();
        zzgzj zzgzjVar = zzataVar.zzai;
        if (!zzgzjVar.zzc()) {
            zzataVar.zzai = zzgyx.bn(zzgzjVar);
        }
        zzataVar.zzai.add(zzasxVar);
    }

    public static /* synthetic */ void ao(zzata zzataVar, long j) {
        zzataVar.zzd |= 8388608;
        zzataVar.zzan = j;
    }

    public static /* synthetic */ void ap(zzata zzataVar, int i) {
        zzataVar.zzaa = i - 1;
        zzataVar.zzd |= 2048;
    }

    public static /* synthetic */ void aq(zzata zzataVar, long j) {
        zzataVar.zzd |= 2097152;
        zzataVar.zzal = j;
    }

    public static /* synthetic */ void ar(zzata zzataVar, long j) {
        zzataVar.zzc |= 1024;
        zzataVar.zzp = j;
    }

    public static /* synthetic */ void as(zzata zzataVar, long j) {
        zzataVar.zzd |= 16384;
        zzataVar.zzad = j;
    }

    public static /* synthetic */ void at(zzata zzataVar, String str) {
        str.getClass();
        zzataVar.zzd |= C.ENCODING_PCM_MU_LAW;
        zzataVar.zzas = str;
    }

    public static /* synthetic */ void au(zzata zzataVar, int i) {
        zzataVar.zzaA = i - 1;
        zzataVar.zze |= 16;
    }

    public static /* synthetic */ void av(zzata zzataVar, long j) {
        zzataVar.zzc |= 524288;
        zzataVar.zzC = j;
    }

    public static /* synthetic */ void aw(zzata zzataVar, long j) {
        zzataVar.zzc |= 2097152;
        zzataVar.zzE = j;
    }

    public static /* synthetic */ void ax(zzata zzataVar, String str) {
        str.getClass();
        zzataVar.zzc |= 2;
        zzataVar.zzg = str;
    }

    public static /* synthetic */ void ay(zzata zzataVar, long j) {
        zzataVar.zze |= 512;
        zzataVar.zzaH = j;
    }

    public static /* synthetic */ void az(zzata zzataVar, long j) {
        zzataVar.zzc |= 33554432;
        zzataVar.zzI = j;
    }

    public static /* synthetic */ void b(zzata zzataVar, int i) {
        zzataVar.zzag = i - 1;
        zzataVar.zzd |= 131072;
    }

    public static /* synthetic */ void ba(zzata zzataVar) {
        zzataVar.zzaV = 5;
        zzataVar.zze |= 8388608;
    }

    public static /* synthetic */ void bb(zzata zzataVar, long j) {
        zzataVar.zzc |= C.ENCODING_PCM_32BIT;
        zzataVar.zzN = j;
    }

    public static /* synthetic */ void bc(zzata zzataVar, long j) {
        zzataVar.zze |= TTAdConstant.KEY_CLICK_AREA;
        zzataVar.zzaY = j;
    }

    public static /* synthetic */ void bd(zzata zzataVar, int i) {
        zzataVar.zzaz = i - 1;
        zzataVar.zze |= 8;
    }

    public static void be(zzata zzataVar) {
        zzataVar.zzai = ahn.f10232c;
    }

    public static /* synthetic */ void bf(zzata zzataVar, long j) {
        zzataVar.zzd |= 4;
        zzataVar.zzR = j;
    }

    public static /* synthetic */ void bg(zzata zzataVar, long j) {
        zzataVar.zzc |= 16;
        zzataVar.zzj = j;
    }

    public static /* synthetic */ void bh(zzata zzataVar, int i) {
        zzataVar.zzZ = i - 1;
        zzataVar.zzd |= 1024;
    }

    public static /* synthetic */ void d(zzata zzataVar, long j) {
        zzataVar.zzc |= 65536;
        zzataVar.zzz = j;
    }

    public static /* synthetic */ void e(zzata zzataVar, boolean z) {
        zzataVar.zze |= 16777216;
        zzataVar.zzaW = z;
    }

    public static /* synthetic */ void f(zzata zzataVar, long j) {
        zzataVar.zzc |= TTAdConstant.KEY_CLICK_AREA;
        zzataVar.zzJ = j;
    }

    public static /* synthetic */ void g(zzata zzataVar, String str) {
        str.getClass();
        zzataVar.zze |= 4194304;
        zzataVar.zzaU = str;
    }

    public static /* synthetic */ void h(zzata zzataVar, String str) {
        str.getClass();
        zzataVar.zzd |= 256;
        zzataVar.zzX = str;
    }

    public static /* synthetic */ void i(zzata zzataVar, long j) {
        zzataVar.zzc |= C.ENCODING_PCM_A_LAW;
        zzataVar.zzM = j;
    }

    public static /* synthetic */ void j(zzata zzataVar, long j) {
        zzataVar.zzc |= 16384;
        zzataVar.zzx = j;
    }

    public static /* synthetic */ void k(zzata zzataVar, long j) {
        zzataVar.zzd |= 4096;
        zzataVar.zzab = j;
    }

    public static /* synthetic */ void l(zzata zzataVar, String str) {
        str.getClass();
        zzataVar.zzc |= 1;
        zzataVar.zzf = str;
    }

    public static /* synthetic */ void m(zzata zzataVar, long j) {
        zzataVar.zzc |= 1048576;
        zzataVar.zzD = j;
    }

    public static /* synthetic */ void n(zzata zzataVar, String str) {
        str.getClass();
        zzataVar.zzc |= C.ENCODING_PCM_MU_LAW;
        zzataVar.zzL = str;
    }

    public static /* synthetic */ void o(zzata zzataVar, long j) {
        zzataVar.zzc |= 8192;
        zzataVar.zzw = j;
    }

    public static /* synthetic */ void p(zzata zzataVar, long j) {
        zzataVar.zzd |= 16;
        zzataVar.zzT = j;
    }

    public static /* synthetic */ void q(zzata zzataVar, zzasx zzasxVar) {
        zzasxVar.getClass();
        zzataVar.zzah = zzasxVar;
        zzataVar.zzd |= 262144;
    }

    public static /* synthetic */ void r(zzata zzataVar, long j) {
        zzataVar.zzd |= 64;
        zzataVar.zzV = j;
    }

    public static /* synthetic */ void s(zzata zzataVar, long j) {
        zzataVar.zze |= 1024;
        zzataVar.zzaI = j;
    }

    public static /* synthetic */ void t(zzata zzataVar, long j) {
        zzataVar.zzd |= 2;
        zzataVar.zzQ = j;
    }

    public static /* synthetic */ void u(zzata zzataVar, String str) {
        str.getClass();
        zzataVar.zzc |= 4194304;
        zzataVar.zzF = str;
    }

    public static /* synthetic */ void v(zzata zzataVar, long j) {
        zzataVar.zzd |= 8;
        zzataVar.zzS = j;
    }

    public static /* synthetic */ void w(zzata zzataVar, long j) {
        zzataVar.zze |= 2048;
        zzataVar.zzaJ = j;
    }

    public static /* synthetic */ void x(zzata zzataVar, int i) {
        zzataVar.zzaS = i - 1;
        zzataVar.zze |= 1048576;
    }

    public static /* synthetic */ void y(zzata zzataVar, long j) {
        zzataVar.zzc |= Integer.MIN_VALUE;
        zzataVar.zzO = j;
    }

    public static /* synthetic */ void z(zzata zzataVar, String str) {
        str.getClass();
        zzataVar.zzc |= 16777216;
        zzataVar.zzH = str;
    }

    public static zzasf zza() {
        return (zzasf) zza.cl();
    }

    public static zzata zzc() {
        return zza;
    }

    public static zzata zzd(byte[] bArr, zzgyh zzgyhVar) throws zzgzm {
        return (zzata) zzgyx.bp(zza, bArr, zzgyhVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgyx
    public final Object c(zzgyw zzgywVar, zzgyx zzgyxVar) {
        zzhaq zzhaqVar;
        switch (zzgywVar.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                eqd eqdVar = eqd.v;
                return new cyk(zza, "\u0001a\u0000\u0003\u0001Įa\u0000\u0003\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005ဂ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဂ\u0007\tဂ\b\nဂ\t\u000bဂ\n\fဂ\u000b\rဈ\f\u000eဂ\r\u000fဂ\u000e\u0010ဂ\u000f\u0011ဂ\u0010\u0012ဂ\u0011\u0013ဂ\u0012\u0014ဂ\u0013\u0015ဂU\u0016ဂ\u0014\u0017ဂ\u0015\u0018ဈV\u0019ဂZ\u001a᠌W\u001bဈ\u0016\u001cဇX\u001dဈ\u0018\u001eဈY\u001fဂ\u0019 ဂ\u001a!ဂ\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဂ\u001f&ဉ 'ဂ!(ဂ\")ဂ#*ဂ$+\u001b,ဂ%-ဂ&.ဈ'/ဈ(0᠌*1᠌+2ဉ23ဂ,4ဂ-5ဂ.6ဂ/7ဂ08᠌19ဉ3:ဂ4;ဂ5<ဂ6=ဂ7>ဂ:?ဂ;@ဂ=A᠌>B᠌?Cဈ<D᠌@EဉAFဂBGဂ8Hဂ9I᠌CJဂ)Kဈ\u0017L᠌DMဈEN\u001bO᠌FP\u001bQဉGRဈHSဂITဂJUဂKVဂLWဂMXဂNYဈOZဉP[ဉQ\\ဂR]ဂS^᠌TÉဉ[ĭဂ\\Įဈ]", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzA", "zzB", "zzC", "zzaT", "zzD", "zzE", "zzaU", "zzaY", "zzaV", eqd.p, "zzF", "zzaW", "zzH", "zzaX", "zzI", "zzJ", "zzK", "zzL", "zzM", "zzN", "zzO", "zzP", "zzQ", "zzR", "zzS", "zzT", "zzai", zzasx.class, "zzU", "zzV", "zzW", "zzX", "zzZ", eqdVar, "zzaa", eqdVar, "zzah", "zzab", "zzac", "zzad", "zzae", "zzaf", "zzag", eqdVar, "zzaj", "zzak", "zzal", "zzam", "zzan", "zzaq", "zzar", "zzat", "zzau", eqd.t, "zzav", eqd.f15981c, "zzas", "zzaw", eqd.j, "zzax", "zzay", "zzao", "zzap", "zzaz", eqdVar, "zzY", "zzG", "zzaA", eqdVar, "zzaB", "zzaC", zzast.class, "zzaD", eqdVar, "zzaE", zzasi.class, "zzaF", "zzaG", "zzaH", "zzaI", "zzaJ", "zzaK", "zzaL", "zzaM", "zzaN", "zzaO", "zzaP", "zzaQ", "zzaR", "zzaS", eqd.f15980b, "zzaZ", "zzba", "zzbb"});
            case 3:
                return new zzata();
            case 4:
                return new zzasf(zza);
            case 5:
                return zza;
            case 6:
                zzhaq zzhaqVar2 = zzb;
                if (zzhaqVar2 != null) {
                    return zzhaqVar2;
                }
                synchronized (zzata.class) {
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

    public final boolean zzai() {
        return this.zzaW;
    }

    public final boolean zzaj() {
        return (this.zzc & 4194304) != 0;
    }

    public final boolean zzak() {
        return (this.zze & 134217728) != 0;
    }

    public final int zzal() {
        int zza2 = zzask.zza(this.zzaV);
        if (zza2 == 0) {
            return 3;
        }
        return zza2;
    }

    public final zzatl zzf() {
        zzatl zzatlVar = this.zzaZ;
        return zzatlVar == null ? zzatl.zzc() : zzatlVar;
    }

    public final String zzg() {
        return this.zzaU;
    }

    public final String zzh() {
        return this.zzF;
    }
}
