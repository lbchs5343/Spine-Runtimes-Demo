package g;

import android.os.Build;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.RandomAccess;
import java.util.Set;

/* loaded from: classes3.dex */
public final class fzb extends cys {
    public static final /* synthetic */ int zza = 0;
    private static final fzb zze;
    private boolean zzA;
    private String zzB;
    private long zzC;
    private int zzD;
    private String zzE;
    private String zzF;
    private boolean zzG;
    private cwe zzH;
    private String zzI;
    private int zzJ;
    private int zzK;
    private int zzL;
    private String zzM;
    private long zzN;
    private long zzO;
    private String zzP;
    private String zzQ;
    private int zzR;
    private String zzS;
    private aw zzT;
    private agy zzU;
    private long zzV;
    private long zzW;
    private String zzX;
    private String zzY;
    private int zzZ;
    private boolean zzaa;
    private String zzab;
    private boolean zzac;
    private atr zzad;
    private String zzae;
    private cwe zzaf;
    private String zzag;
    private int zzf;
    private int zzg;
    private int zzh;
    private cwe zzi;
    private cwe zzj;
    private long zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private String zzp;
    private String zzq;
    private String zzr;
    private String zzs;
    private int zzt;
    private String zzu;
    private String zzv;
    private String zzw;
    private long zzx;
    private long zzy;
    private String zzz;

    static {
        fzb fzbVar = new fzb();
        zze = fzbVar;
        cys.af(fzb.class, fzbVar);
    }

    public fzb() {
        hbs hbsVar = hbs.f19192a;
        this.zzi = hbsVar;
        this.zzj = hbsVar;
        this.zzp = "";
        this.zzq = "";
        this.zzr = "";
        this.zzs = "";
        this.zzu = "";
        this.zzv = "";
        this.zzw = "";
        this.zzz = "";
        this.zzB = "";
        this.zzE = "";
        this.zzF = "";
        this.zzH = hbsVar;
        this.zzI = "";
        this.zzM = "";
        this.zzP = "";
        this.zzQ = "";
        this.zzS = "";
        this.zzU = eaa.f15166a;
        this.zzX = "";
        this.zzY = "";
        this.zzab = "";
        this.zzae = "";
        this.zzaf = hbsVar;
        this.zzag = "";
    }

    public static /* synthetic */ void ai(fzb fzbVar) {
        String str = Build.MODEL;
        str.getClass();
        fzbVar.zzf |= 256;
        fzbVar.zzr = str;
    }

    public static /* synthetic */ void aj(fzb fzbVar) {
        fzbVar.zzf &= -33;
        fzbVar.zzo = 0L;
    }

    public static /* synthetic */ void ak(fzb fzbVar) {
        fzbVar.zzf &= -17;
        fzbVar.zzn = 0L;
    }

    public static /* synthetic */ void al(fzb fzbVar, ArrayList arrayList) {
        fzbVar.ce();
        cir.y(arrayList, fzbVar.zzi);
    }

    public static void am(fzb fzbVar, ArrayList arrayList) {
        cwe cweVar = fzbVar.zzH;
        if (!((gzj) cweVar).f19052f) {
            fzbVar.zzH = cys.ac(cweVar);
        }
        cir.y(arrayList, fzbVar.zzH);
    }

    public static /* synthetic */ void an(fzb fzbVar) {
        fzbVar.zzf &= -131073;
        fzbVar.zzA = false;
    }

    public static /* synthetic */ void ao(fzb fzbVar) {
        fzbVar.zzf &= -65537;
        fzbVar.zzz = zze.zzz;
    }

    public static /* synthetic */ void ap(fzb fzbVar, String str) {
        str.getClass();
        fzbVar.zzf |= TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME;
        fzbVar.zzq = str;
    }

    public static /* synthetic */ void aq(fzb fzbVar, int i) {
        fzbVar.zzf |= 1024;
        fzbVar.zzt = i;
    }

    public static /* synthetic */ void ar(fzb fzbVar) {
        fzbVar.zzf &= -257;
        fzbVar.zzr = zze.zzr;
    }

    public static void as(fzb fzbVar, Set set) {
        cwe cweVar = fzbVar.zzaf;
        if (!((gzj) cweVar).f19052f) {
            fzbVar.zzaf = cys.ac(cweVar);
        }
        cir.y(set, fzbVar.zzaf);
    }

    public static /* synthetic */ void at(fzb fzbVar, long j) {
        fzbVar.zzf |= 8;
        fzbVar.zzm = j;
    }

    public static /* synthetic */ void au(fzb fzbVar) {
        fzbVar.zzf &= -262145;
        fzbVar.zzB = zze.zzB;
    }

    public static /* synthetic */ void av(fzb fzbVar, String str) {
        str.getClass();
        fzbVar.zzg |= 16384;
        fzbVar.zzag = str;
    }

    public static /* synthetic */ void aw(fzb fzbVar, String str) {
        str.getClass();
        fzbVar.zzf |= 512;
        fzbVar.zzs = str;
    }

    public static /* synthetic */ void ax(fzb fzbVar) {
        fzbVar.zzf &= he.UNDEFINED_ITEM_ID;
        fzbVar.zzP = zze.zzP;
    }

    public static /* synthetic */ void ay(fzb fzbVar, kk kkVar) {
        fzbVar.ce();
        fzbVar.zzi.add(kkVar);
    }

    public static /* synthetic */ void az(fzb fzbVar, String str) {
        str.getClass();
        fzbVar.zzf |= 65536;
        fzbVar.zzz = str;
    }

    public static /* synthetic */ void b(fzb fzbVar, int i, ne neVar) {
        fzbVar.cw();
        fzbVar.zzj.set(i, neVar);
    }

    public static /* synthetic */ void ba(fzb fzbVar) {
        fzbVar.zzf |= 1;
        fzbVar.zzh = 1;
    }

    public static /* synthetic */ void bb(fzb fzbVar, long j) {
        fzbVar.zzf |= 32;
        fzbVar.zzo = j;
    }

    public static /* synthetic */ void bc(fzb fzbVar, ne neVar) {
        fzbVar.cw();
        fzbVar.zzj.add(neVar);
    }

    public static /* synthetic */ void bd(fzb fzbVar, String str) {
        fzbVar.zzf |= 262144;
        fzbVar.zzB = str;
    }

    public static /* synthetic */ void be(fzb fzbVar) {
        fzbVar.zzf &= -129;
        fzbVar.zzq = zze.zzq;
    }

    public static /* synthetic */ void bf(fzb fzbVar) {
        fzbVar.zzf &= -268435457;
        fzbVar.zzM = zze.zzM;
    }

    public static /* synthetic */ void bg(fzb fzbVar, String str) {
        str.getClass();
        fzbVar.zzg |= 8192;
        fzbVar.zzae = str;
    }

    public static epg bh() {
        return (epg) zze.ag();
    }

    public static /* synthetic */ void bi(fzb fzbVar, int i) {
        fzbVar.ce();
        fzbVar.zzi.remove(i);
    }

    public static /* synthetic */ void bj(fzb fzbVar) {
        fzbVar.zzf |= 8388608;
        fzbVar.zzG = false;
    }

    public static /* synthetic */ void bk(fzb fzbVar, String str) {
        fzbVar.zzg |= TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME;
        fzbVar.zzY = str;
    }

    public static void bl(fzb fzbVar, ArrayList arrayList) {
        RandomAccess randomAccess = fzbVar.zzU;
        if (!((gzj) randomAccess).f19052f) {
            eaa eaaVar = (eaa) randomAccess;
            int i = eaaVar.f15167b;
            int i2 = i == 0 ? 10 : i + i;
            if (i2 < i) {
                throw new IllegalArgumentException();
            }
            fzbVar.zzU = new eaa(eaaVar.f15167b, Arrays.copyOf(eaaVar.f15168c, i2));
        }
        cir.y(arrayList, fzbVar.zzU);
    }

    public static /* synthetic */ void bm(fzb fzbVar, long j) {
        fzbVar.zzf |= 2;
        fzbVar.zzk = j;
    }

    public static /* synthetic */ void bn(fzb fzbVar, long j) {
        fzbVar.zzf |= 16;
        fzbVar.zzn = j;
    }

    public static /* synthetic */ void bo(fzb fzbVar, String str) {
        str.getClass();
        fzbVar.zzf |= 4194304;
        fzbVar.zzF = str;
    }

    public static /* synthetic */ void bp(fzb fzbVar, String str) {
        str.getClass();
        fzbVar.zzf |= 2048;
        fzbVar.zzu = str;
    }

    public static /* synthetic */ void bq(fzb fzbVar, long j) {
        fzbVar.zzf |= 4;
        fzbVar.zzl = j;
    }

    public static /* synthetic */ void c(fzb fzbVar, long j) {
        fzbVar.zzg |= 32;
        fzbVar.zzW = j;
    }

    public static /* synthetic */ void d(fzb fzbVar, String str) {
        str.getClass();
        fzbVar.zzf |= 8192;
        fzbVar.zzw = str;
    }

    public static /* synthetic */ void e(fzb fzbVar) {
        fzbVar.zzg &= -8193;
        fzbVar.zzae = zze.zzae;
    }

    public static /* synthetic */ void f(fzb fzbVar, int i) {
        fzbVar.zzf |= 33554432;
        fzbVar.zzJ = i;
    }

    public static /* synthetic */ void g(fzb fzbVar, boolean z) {
        fzbVar.zzf |= 131072;
        fzbVar.zzA = z;
    }

    public static /* synthetic */ void h(fzb fzbVar) {
        fzbVar.zzf |= 32768;
        fzbVar.zzy = 73000L;
    }

    public static void i(fzb fzbVar) {
        fzbVar.zzi = hbs.f19192a;
    }

    public static /* synthetic */ void j(fzb fzbVar, long j) {
        fzbVar.zzg |= 16;
        fzbVar.zzV = j;
    }

    public static /* synthetic */ void k(fzb fzbVar, String str) {
        fzbVar.zzf |= 16777216;
        fzbVar.zzI = str;
    }

    public static /* synthetic */ void l(fzb fzbVar, int i) {
        fzbVar.zzf |= 1048576;
        fzbVar.zzD = i;
    }

    public static /* synthetic */ void m(fzb fzbVar, int i) {
        fzbVar.zzg |= 2;
        fzbVar.zzR = i;
    }

    public static /* synthetic */ void n(fzb fzbVar, long j) {
        fzbVar.zzf |= C.ENCODING_PCM_A_LAW;
        fzbVar.zzN = j;
    }

    public static /* synthetic */ void o(fzb fzbVar, long j) {
        fzbVar.zzf |= 524288;
        fzbVar.zzC = j;
    }

    public static /* synthetic */ void p(fzb fzbVar) {
        fzbVar.zzf |= 64;
        fzbVar.zzp = "android";
    }

    public static /* synthetic */ void q(fzb fzbVar, String str) {
        str.getClass();
        fzbVar.zzg |= 4;
        fzbVar.zzS = str;
    }

    public static void r(fzb fzbVar) {
        fzbVar.zzH = hbs.f19192a;
    }

    public static /* synthetic */ void s(fzb fzbVar, int i, kk kkVar) {
        fzbVar.ce();
        fzbVar.zzi.set(i, kkVar);
    }

    public static /* synthetic */ void t(fzb fzbVar, long j) {
        fzbVar.zzf |= 16384;
        fzbVar.zzx = j;
    }

    public static /* synthetic */ void u(fzb fzbVar) {
        fzbVar.zzf &= -2097153;
        fzbVar.zzE = zze.zzE;
    }

    public static /* synthetic */ void v(fzb fzbVar, int i) {
        fzbVar.cw();
        fzbVar.zzj.remove(i);
    }

    public static /* synthetic */ void w(fzb fzbVar, String str) {
        fzbVar.zzf |= 2097152;
        fzbVar.zzE = str;
    }

    public static /* synthetic */ void x(fzb fzbVar, String str) {
        str.getClass();
        fzbVar.zzf |= 4096;
        fzbVar.zzv = str;
    }

    @Override // g.cys
    public final Object a(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new eqc(zze, "\u00014\u0000\u0002\u0001A4\u0000\u0005\u0000\u0001င\u0000\u0002\u001b\u0003\u001b\u0004ဂ\u0001\u0005ဂ\u0002\u0006ဂ\u0003\u0007ဂ\u0005\bဈ\u0006\tဈ\u0007\nဈ\b\u000bဈ\t\fင\n\rဈ\u000b\u000eဈ\f\u0010ဈ\r\u0011ဂ\u000e\u0012ဂ\u000f\u0013ဈ\u0010\u0014ဇ\u0011\u0015ဈ\u0012\u0016ဂ\u0013\u0017င\u0014\u0018ဈ\u0015\u0019ဈ\u0016\u001aဂ\u0004\u001cဇ\u0017\u001d\u001b\u001eဈ\u0018\u001fင\u0019 င\u001a!င\u001b\"ဈ\u001c#ဂ\u001d$ဂ\u001e%ဈ\u001f&ဈ 'င!)ဈ\",ဉ#-\u001d.ဂ$/ဂ%2ဈ&4ဈ'5ဌ(7ဇ)9ဈ*:ဇ+;ဉ,?ဈ-@\u001aAဈ.", new Object[]{"zzf", "zzg", "zzh", "zzi", kk.class, "zzj", ne.class, "zzk", "zzl", "zzm", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt", "zzu", "zzv", "zzw", "zzx", "zzy", "zzz", "zzA", "zzB", "zzC", "zzD", "zzE", "zzF", "zzn", "zzG", "zzH", ajk.class, "zzI", "zzJ", "zzK", "zzL", "zzM", "zzN", "zzO", "zzP", "zzQ", "zzR", "zzS", "zzT", "zzU", "zzV", "zzW", "zzX", "zzY", "zzZ", gxe.f18930a, "zzaa", "zzab", "zzac", "zzad", "zzae", "zzaf", "zzag"});
        }
        if (i2 == 3) {
            return new fzb();
        }
        if (i2 == 4) {
            return new epg(zze);
        }
        if (i2 != 5) {
            return null;
        }
        return zze;
    }

    public final int br() {
        return this.zzD;
    }

    public final int bs() {
        return this.zzj.size();
    }

    public final cwe bt() {
        return this.zzj;
    }

    public final boolean bu() {
        return this.zzG;
    }

    public final long bv() {
        return this.zzk;
    }

    public final long bw() {
        return this.zzN;
    }

    public final boolean bx() {
        return (this.zzf & C.ENCODING_PCM_A_LAW) != 0;
    }

    public final boolean by() {
        return (this.zzf & 32768) != 0;
    }

    public final boolean bz() {
        return this.zzA;
    }

    public final boolean ca() {
        return (this.zzg & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0;
    }

    public final String cb() {
        return this.zzP;
    }

    public final long cc() {
        return this.zzy;
    }

    public final cwe cd() {
        return this.zzi;
    }

    public final void ce() {
        cwe cweVar = this.zzi;
        if (((gzj) cweVar).f19052f) {
            return;
        }
        this.zzi = cys.ac(cweVar);
    }

    public final String cf() {
        return this.zzr;
    }

    public final boolean cg() {
        return (this.zzf & 1024) != 0;
    }

    public final String ch() {
        return this.zzv;
    }

    public final String ci() {
        return this.zzw;
    }

    public final String cj() {
        return this.zzu;
    }

    public final String ck() {
        return this.zzz;
    }

    public final boolean cl() {
        return (this.zzf & 16384) != 0;
    }

    public final int cm() {
        return this.zzJ;
    }

    public final String cn() {
        return this.zzae;
    }

    public final boolean co() {
        return (this.zzf & 32) != 0;
    }

    public final boolean cp() {
        return (this.zzf & 1) != 0;
    }

    public final String cq() {
        return this.zzs;
    }

    public final boolean cr() {
        return (this.zzg & 8192) != 0;
    }

    public final int cs() {
        return this.zzi.size();
    }

    public final boolean ct() {
        return (this.zzf & 1048576) != 0;
    }

    public final long cu() {
        return this.zzx;
    }

    public final long cv() {
        return this.zzC;
    }

    public final void cw() {
        cwe cweVar = this.zzj;
        if (((gzj) cweVar).f19052f) {
            return;
        }
        this.zzj = cys.ac(cweVar);
    }

    public final String cx() {
        return this.zzq;
    }

    public final String cy() {
        return this.zzI;
    }

    public final boolean cz() {
        return (this.zzg & 16) != 0;
    }

    public final String da() {
        return this.zzY;
    }

    public final long db() {
        return this.zzV;
    }

    public final ne dc(int i) {
        return (ne) this.zzj.get(i);
    }

    public final boolean dd() {
        return (this.zzf & 524288) != 0;
    }

    public final boolean de() {
        return (this.zzf & 8) != 0;
    }

    public final kk df(int i) {
        return (kk) this.zzi.get(i);
    }

    public final String dg() {
        return this.zzB;
    }

    public final int dh() {
        return this.zzR;
    }

    public final boolean di() {
        return (this.zzg & 2) != 0;
    }

    public final boolean dj() {
        return (this.zzf & 16) != 0;
    }

    public final String dk() {
        return this.zzF;
    }

    public final int dl() {
        return this.zzt;
    }

    public final String dm() {
        return this.zzS;
    }

    public final String dn() {
        return this.zzp;
    }

    /* renamed from: do, reason: not valid java name */
    public final boolean m13do() {
        return (this.zzf & 4) != 0;
    }

    public final int dp() {
        return this.zzh;
    }

    public final boolean dq() {
        return (this.zzf & 33554432) != 0;
    }

    public final boolean dr() {
        return (this.zzf & 8388608) != 0;
    }

    public final long ds() {
        return this.zzn;
    }

    public final boolean dt() {
        return (this.zzf & 2) != 0;
    }

    public final cwe du() {
        return this.zzH;
    }

    public final long dv() {
        return this.zzo;
    }

    public final boolean dw() {
        return (this.zzf & 131072) != 0;
    }

    public final String dx() {
        return this.zzE;
    }

    public final long dy() {
        return this.zzm;
    }

    public final long dz() {
        return this.zzl;
    }
}
