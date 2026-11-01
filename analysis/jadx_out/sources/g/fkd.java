package g;

import android.net.Uri;
import android.os.Handler;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.google.android.gms.internal.ads.zzab;
import com.google.android.gms.internal.ads.zzacm;
import com.google.android.gms.internal.ads.zzacu;
import com.google.android.gms.internal.ads.zzad;
import com.google.android.gms.internal.ads.zzado;
import com.google.android.gms.internal.ads.zzadq;
import com.google.android.gms.internal.ads.zzadr;
import com.google.android.gms.internal.ads.zzadx;
import com.google.android.gms.internal.ads.zzafv;
import com.google.android.gms.internal.ads.zzbd;
import com.google.android.gms.internal.ads.zzbg;
import com.google.android.gms.internal.ads.zzbh;
import com.google.android.gms.internal.ads.zzbw;
import com.google.android.gms.internal.ads.zzdb;
import com.google.android.gms.internal.ads.zzdc;
import com.google.android.gms.internal.ads.zzdf;
import com.google.android.gms.internal.ads.zzdt;
import com.google.android.gms.internal.ads.zzen;
import com.google.android.gms.internal.ads.zzgd;
import com.google.android.gms.internal.ads.zzge;
import com.google.android.gms.internal.ads.zzgt;
import com.google.android.gms.internal.ads.zzhc;
import com.google.android.gms.internal.ads.zzko;
import com.google.android.gms.internal.ads.zzls;
import com.google.android.gms.internal.ads.zzrk;
import com.google.android.gms.internal.ads.zzrp;
import com.google.android.gms.internal.ads.zztt;
import com.google.android.gms.internal.ads.zzui;
import com.google.android.gms.internal.ads.zzun;
import com.google.android.gms.internal.ads.zzuo;
import com.google.android.gms.internal.ads.zzup;
import com.google.android.gms.internal.ads.zzva;
import com.google.android.gms.internal.ads.zzvj;
import com.google.android.gms.internal.ads.zzvk;
import com.google.android.gms.internal.ads.zzvx;
import com.google.android.gms.internal.ads.zzwd;
import com.google.android.gms.internal.ads.zzwf;
import com.google.android.gms.internal.ads.zzwg;
import com.google.android.gms.internal.ads.zzwr;
import com.google.android.gms.internal.ads.zzyd;
import com.google.android.gms.internal.ads.zzys;
import com.google.android.gms.internal.ads.zzyw;
import com.google.android.gms.internal.ads.zzyy;
import com.google.android.gms.internal.ads.zzyz;
import com.google.android.gms.internal.ads.zzzb;
import com.google.android.gms.internal.ads.zzzc;
import com.google.android.gms.internal.ads.zzze;
import com.google.android.gms.internal.ads.zzzg;
import g.fkd;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class fkd implements zzup, zzacu, zzyy, zzzc, zzwd {

    /* renamed from: a, reason: collision with root package name */
    public static final Map f16908a;

    /* renamed from: b, reason: collision with root package name */
    public static final zzad f16909b;
    public int aa;

    /* renamed from: ab, reason: collision with root package name */
    public boolean f16910ab;
    public zzadq ac;
    public boolean ad;
    public final zzgd af;
    public dpa ah;
    public boolean aj;
    public final zzvx am;

    /* renamed from: c, reason: collision with root package name */
    public final long f16911c;

    /* renamed from: d, reason: collision with root package name */
    public zzafv f16912d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f16913e;

    /* renamed from: f, reason: collision with root package name */
    public final zzys f16914f;

    /* renamed from: g, reason: collision with root package name */
    public final long f16915g;
    public long h;
    public boolean i;
    public zzuo j;
    public boolean k;
    public int l;
    public final zztt m;
    public boolean n;
    public final zzrp o;
    public boolean q;
    public boolean s;
    public long t;
    public boolean u;
    public final zzva v;
    public boolean w;
    public final zzrk x;
    public final Uri z;
    public final zzzg ae = new zzzg("ProgressiveMediaPeriod");
    public final zzdf r = new zzdf(zzdc.zza);
    public final zzvj p = new Runnable() { // from class: com.google.android.gms.internal.ads.zzvj
        @Override // java.lang.Runnable
        public final void run() {
            fkd fkdVar = fkd.this;
            Map map = fkd.f16908a;
            fkdVar.aq();
        }
    };
    public final zzvk al = new Runnable() { // from class: com.google.android.gms.internal.ads.zzvk
        @Override // java.lang.Runnable
        public final void run() {
            fkd fkdVar = fkd.this;
            if (fkdVar.k) {
                return;
            }
            zzuo zzuoVar = fkdVar.j;
            zzuoVar.getClass();
            zzuoVar.zzg(fkdVar);
        }
    };
    public final Handler ag = zzen.zzy(null);
    public evi[] y = new evi[0];
    public zzwf[] ak = new zzwf[0];
    public long an = -9223372036854775807L;
    public int ai = 1;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("Icy-MetaData", "1");
        f16908a = Collections.unmodifiableMap(hashMap);
        zzab zzabVar = new zzab();
        zzabVar.zzL("icy");
        zzabVar.zzZ("application/x-icy");
        f16909b = zzabVar.zzaf();
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [com.google.android.gms.internal.ads.zzvj] */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.google.android.gms.internal.ads.zzvk] */
    public fkd(Uri uri, zzgd zzgdVar, zztt zzttVar, zzrp zzrpVar, zzrk zzrkVar, zzva zzvaVar, zzvx zzvxVar, zzys zzysVar, int i, long j) {
        this.z = uri;
        this.af = zzgdVar;
        this.o = zzrpVar;
        this.x = zzrkVar;
        this.v = zzvaVar;
        this.am = zzvxVar;
        this.f16914f = zzysVar;
        this.f16915g = i;
        this.m = zzttVar;
        this.f16911c = j;
    }

    public final void ao() {
        gww gwwVar = new gww(this, this.z, this.af, this.m, this, this.r);
        if (this.f16913e) {
            zzdb.zzf(at());
            long j = this.h;
            if (j != -9223372036854775807L && this.an > j) {
                this.q = true;
                this.an = -9223372036854775807L;
                return;
            }
            zzadq zzadqVar = this.ac;
            zzadqVar.getClass();
            zzadr zzadrVar = zzadqVar.zzg(this.an).zza;
            long j2 = this.an;
            gwwVar.n.zza = zzadrVar.zzc;
            gwwVar.l = j2;
            gwwVar.j = true;
            gwwVar.i = false;
            for (zzwf zzwfVar : this.ak) {
                zzwfVar.zzt(this.an);
            }
            this.an = -9223372036854775807L;
        }
        this.aa = ar();
        this.v.zzg(new zzui(gwwVar.f18911g, gwwVar.f18906b, this.ae.zza(gwwVar, this, zzyw.zza(this.ai))), new zzun(1, -1, null, 0, null, zzen.zzv(gwwVar.l), zzen.zzv(this.h)));
    }

    public final void ap() {
        zzdb.zzf(this.f16913e);
        this.ah.getClass();
        this.ac.getClass();
    }

    public final void aq() {
        long j;
        int i;
        if (this.k || this.f16913e || !this.u || this.ac == null) {
            return;
        }
        for (zzwf zzwfVar : this.ak) {
            if (zzwfVar.zzi() == null) {
                return;
            }
        }
        this.r.zzc();
        int length = this.ak.length;
        zzbw[] zzbwVarArr = new zzbw[length];
        boolean[] zArr = new boolean[length];
        int i2 = 0;
        while (true) {
            j = this.f16911c;
            if (i2 >= length) {
                break;
            }
            zzad zzi = this.ak[i2].zzi();
            zzi.getClass();
            String str = zzi.zzo;
            boolean zzg = zzbg.zzg(str);
            boolean z = zzg || zzbg.zzi(str);
            zArr[i2] = z;
            this.s = z | this.s;
            this.i = j != -9223372036854775807L && length == 1 && zzbg.zzh(str);
            zzafv zzafvVar = this.f16912d;
            if (zzafvVar != null) {
                if (zzg || this.y[i2].f16228b) {
                    zzbd zzbdVar = zzi.zzl;
                    zzbd zzbdVar2 = zzbdVar == null ? new zzbd(-9223372036854775807L, zzafvVar) : zzbdVar.zzc(zzafvVar);
                    zzab zzb = zzi.zzb();
                    zzb.zzS(zzbdVar2);
                    zzi = zzb.zzaf();
                }
                if (zzg && zzi.zzh == -1 && zzi.zzi == -1 && (i = zzafvVar.zza) != -1) {
                    zzab zzb2 = zzi.zzb();
                    zzb2.zzy(i);
                    zzi = zzb2.zzaf();
                }
            }
            zzbwVarArr[i2] = new zzbw(Integer.toString(i2), zzi.zzc(this.o.zza(zzi)));
            i2++;
        }
        this.ah = new dpa(new zzwr(zzbwVarArr), zArr);
        if (this.i && this.h == -9223372036854775807L) {
            this.h = j;
            this.ac = new bts(this, this.ac);
        }
        this.am.zza(this.h, this.ac.zzh(), this.f16910ab);
        this.f16913e = true;
        zzuo zzuoVar = this.j;
        zzuoVar.getClass();
        zzuoVar.zzi(this);
    }

    public final int ar() {
        int i = 0;
        for (zzwf zzwfVar : this.ak) {
            i += zzwfVar.zzd();
        }
        return i;
    }

    public final void as(int i) {
        ap();
        dpa dpaVar = this.ah;
        boolean[] zArr = (boolean[]) dpaVar.f14565c;
        if (zArr[i]) {
            return;
        }
        zzad zzb = ((zzwr) dpaVar.f14569g).zzb(i).zzb(0);
        this.v.zzc(new zzun(1, zzbg.zzb(zzb.zzo), zzb, 0, null, zzen.zzv(this.t), -9223372036854775807L));
        zArr[i] = true;
    }

    public final boolean at() {
        return this.an != -9223372036854775807L;
    }

    public final long au(boolean z) {
        int i;
        long j = Long.MIN_VALUE;
        while (true) {
            zzwf[] zzwfVarArr = this.ak;
            if (i >= zzwfVarArr.length) {
                return j;
            }
            if (!z) {
                dpa dpaVar = this.ah;
                dpaVar.getClass();
                i = ((boolean[]) dpaVar.f14567e)[i] ? 0 : i + 1;
            }
            j = Math.max(j, zzwfVarArr[i].zzh());
        }
    }

    public final boolean av() {
        return this.n || at();
    }

    public final zzadx aw(evi eviVar) {
        int length = this.ak.length;
        for (int i = 0; i < length; i++) {
            if (eviVar.equals(this.y[i])) {
                return this.ak[i];
            }
        }
        if (this.u) {
            zzdt.zzf("ProgressiveMediaPeriod", "Extractor added new track (id=" + eviVar.f16227a + ") after finishing tracks.");
            return new zzacm();
        }
        zzwf zzwfVar = new zzwf(this.f16914f, this.o, this.x);
        zzwfVar.zzu(this);
        int i2 = length + 1;
        evi[] eviVarArr = (evi[]) Arrays.copyOf(this.y, i2);
        eviVarArr[length] = eviVar;
        int i3 = zzen.zza;
        this.y = eviVarArr;
        zzwf[] zzwfVarArr = (zzwf[]) Arrays.copyOf(this.ak, i2);
        zzwfVarArr[length] = zzwfVar;
        this.ak = zzwfVarArr;
        return zzwfVar;
    }

    public final void ax(int i) {
        ap();
        boolean[] zArr = (boolean[]) this.ah.f14566d;
        if (this.aj && zArr[i] && !this.ak[i].zzx(false)) {
            this.an = 0L;
            this.aj = false;
            this.n = true;
            this.t = 0L;
            this.aa = 0;
            for (zzwf zzwfVar : this.ak) {
                zzwfVar.zzp(false);
            }
            zzuo zzuoVar = this.j;
            zzuoVar.getClass();
            zzuoVar.zzg(this);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final void zzD() {
        this.u = true;
        this.ag.post(this.p);
    }

    @Override // com.google.android.gms.internal.ads.zzyy
    public final /* bridge */ /* synthetic */ void zzJ(zzzb zzzbVar, long j, long j2, boolean z) {
        gww gwwVar = (gww) zzzbVar;
        zzhc zzhcVar = gwwVar.m;
        this.v.zzd(new zzui(gwwVar.f18911g, gwwVar.f18906b, zzhcVar.zzh(), zzhcVar.zzi(), j, j2, zzhcVar.zzg()), new zzun(1, -1, null, 0, null, zzen.zzv(gwwVar.l), zzen.zzv(this.h)));
        if (z) {
            return;
        }
        for (zzwf zzwfVar : this.ak) {
            zzwfVar.zzp(false);
        }
        if (this.l > 0) {
            zzuo zzuoVar = this.j;
            zzuoVar.getClass();
            zzuoVar.zzg(this);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzyy
    public final /* bridge */ /* synthetic */ void zzK(zzzb zzzbVar, long j, long j2) {
        zzadq zzadqVar;
        gww gwwVar = (gww) zzzbVar;
        if (this.h == -9223372036854775807L && (zzadqVar = this.ac) != null) {
            boolean zzh = zzadqVar.zzh();
            long au = au(true);
            long j3 = au == Long.MIN_VALUE ? 0L : au + ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT;
            this.h = j3;
            this.am.zza(j3, zzh, this.f16910ab);
        }
        zzhc zzhcVar = gwwVar.m;
        this.v.zze(new zzui(gwwVar.f18911g, gwwVar.f18906b, zzhcVar.zzh(), zzhcVar.zzi(), j, j2, zzhcVar.zzg()), new zzun(1, -1, null, 0, null, zzen.zzv(gwwVar.l), zzen.zzv(this.h)));
        this.q = true;
        zzuo zzuoVar = this.j;
        zzuoVar.getClass();
        zzuoVar.zzg(this);
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final void zzL() {
        for (zzwf zzwfVar : this.ak) {
            zzwfVar.zzo();
        }
        this.m.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzwd
    public final void zzM(zzad zzadVar) {
        this.ag.post(this.p);
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final void zzO(final zzadq zzadqVar) {
        this.ag.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzvl
            @Override // java.lang.Runnable
            public final void run() {
                fkd fkdVar = fkd.this;
                zzadq zzadqVar2 = zzadqVar;
                fkdVar.ac = fkdVar.f16912d == null ? zzadqVar2 : new zzadp(-9223372036854775807L, 0L);
                fkdVar.h = zzadqVar2.zza();
                boolean z = false;
                if (!fkdVar.w && zzadqVar2.zza() == -9223372036854775807L) {
                    z = true;
                }
                fkdVar.f16910ab = z;
                fkdVar.ai = true == z ? 7 : 1;
                if (fkdVar.f16913e) {
                    fkdVar.am.zza(fkdVar.h, zzadqVar2.zzh(), fkdVar.f16910ab);
                } else {
                    fkdVar.aq();
                }
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0084 A[RETURN] */
    @Override // com.google.android.gms.internal.ads.zzup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long zza(long j, zzls zzlsVar) {
        ap();
        if (!this.ac.zzh()) {
            return 0L;
        }
        zzado zzg = this.ac.zzg(j);
        zzadr zzadrVar = zzg.zza;
        zzadr zzadrVar2 = zzg.zzb;
        long j2 = zzlsVar.zzc;
        if (j2 == 0) {
            if (zzlsVar.zzd == 0) {
                return j;
            }
            j2 = 0;
        }
        long j3 = zzadrVar.zzb;
        int i = zzen.zza;
        long j4 = j - j2;
        long j5 = zzlsVar.zzd;
        long j6 = j + j5;
        long j7 = j ^ j6;
        long j8 = j5 ^ j6;
        if (((j2 ^ j) & (j ^ j4)) < 0) {
            j4 = Long.MIN_VALUE;
        }
        if ((j7 & j8) < 0) {
            j6 = Long.MAX_VALUE;
        }
        boolean z = j4 <= j3 && j3 <= j6;
        long j9 = zzadrVar2.zzb;
        boolean z2 = j4 <= j9 && j9 <= j6;
        if (!z || !z2) {
            if (!z) {
                return z2 ? j9 : j4;
            }
            return j3;
        }
        if (Math.abs(j3 - j) <= Math.abs(j9 - j)) {
            return j3;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzwi
    public final long zzb() {
        long j;
        ap();
        if (this.q || this.l == 0) {
            return Long.MIN_VALUE;
        }
        if (at()) {
            return this.an;
        }
        if (this.s) {
            int length = this.ak.length;
            j = Long.MAX_VALUE;
            for (int i = 0; i < length; i++) {
                dpa dpaVar = this.ah;
                if (((boolean[]) dpaVar.f14566d)[i] && ((boolean[]) dpaVar.f14567e)[i] && !this.ak[i].zzw()) {
                    j = Math.min(j, this.ak[i].zzh());
                }
            }
        } else {
            j = Long.MAX_VALUE;
        }
        if (j == Long.MAX_VALUE) {
            j = au(false);
        }
        return j == Long.MIN_VALUE ? this.t : j;
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzwi
    public final long zzc() {
        return zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final long zzd() {
        if (!this.n) {
            return -9223372036854775807L;
        }
        if (!this.q && ar() <= this.aa) {
            return -9223372036854775807L;
        }
        this.n = false;
        return this.t;
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final long zze(long j) {
        int i;
        ap();
        boolean[] zArr = (boolean[]) this.ah.f14566d;
        if (true != this.ac.zzh()) {
            j = 0;
        }
        this.n = false;
        this.t = j;
        if (at()) {
            this.an = j;
            return j;
        }
        int i2 = this.ai;
        zzzg zzzgVar = this.ae;
        if (i2 != 7 && (this.q || zzzgVar.zzl())) {
            int length = this.ak.length;
            while (i < length) {
                zzwf zzwfVar = this.ak[i];
                i = ((this.i ? zzwfVar.zzy(zzwfVar.zza()) : zzwfVar.zzz(j, false)) || (!zArr[i] && this.s)) ? i + 1 : 0;
            }
            return j;
        }
        this.aj = false;
        this.an = j;
        this.q = false;
        if (zzzgVar.zzl()) {
            for (zzwf zzwfVar2 : this.ak) {
                zzwfVar2.zzk();
            }
            zzzgVar.zzg();
            return j;
        }
        zzzgVar.zzh();
        for (zzwf zzwfVar3 : this.ak) {
            zzwfVar3.zzp(false);
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final long zzf(zzyd[] zzydVarArr, boolean[] zArr, zzwg[] zzwgVarArr, boolean[] zArr2, long j) {
        zzyd zzydVar;
        ap();
        dpa dpaVar = this.ah;
        zzwr zzwrVar = (zzwr) dpaVar.f14569g;
        boolean[] zArr3 = (boolean[]) dpaVar.f14567e;
        int i = this.l;
        int i2 = 0;
        for (int i3 = 0; i3 < zzydVarArr.length; i3++) {
            zzwg zzwgVar = zzwgVarArr[i3];
            if (zzwgVar != null && (zzydVarArr[i3] == null || !zArr[i3])) {
                int i4 = ((ftb) zzwgVar).f17365a;
                zzdb.zzf(zArr3[i4]);
                this.l--;
                zArr3[i4] = false;
                zzwgVarArr[i3] = null;
            }
        }
        boolean z = !this.ad ? j == 0 || this.i : i != 0;
        for (int i5 = 0; i5 < zzydVarArr.length; i5++) {
            if (zzwgVarArr[i5] == null && (zzydVar = zzydVarArr[i5]) != null) {
                zzdb.zzf(zzydVar.zzc() == 1);
                zzdb.zzf(zzydVar.zza(0) == 0);
                int zza = zzwrVar.zza(zzydVar.zze());
                zzdb.zzf(!zArr3[zza]);
                this.l++;
                zArr3[zza] = true;
                zzwgVarArr[i5] = new ftb(this, zza);
                zArr2[i5] = true;
                if (!z) {
                    zzwf zzwfVar = this.ak[zza];
                    z = (zzwfVar.zzb() == 0 || zzwfVar.zzz(j, true)) ? false : true;
                }
            }
        }
        if (this.l == 0) {
            this.aj = false;
            this.n = false;
            zzzg zzzgVar = this.ae;
            if (zzzgVar.zzl()) {
                zzwf[] zzwfVarArr = this.ak;
                int length = zzwfVarArr.length;
                while (i2 < length) {
                    zzwfVarArr[i2].zzk();
                    i2++;
                }
                zzzgVar.zzg();
            } else {
                this.q = false;
                for (zzwf zzwfVar2 : this.ak) {
                    zzwfVar2.zzp(false);
                }
            }
        } else if (z) {
            j = zze(j);
            while (i2 < zzwgVarArr.length) {
                if (zzwgVarArr[i2] != null) {
                    zArr2[i2] = true;
                }
                i2++;
            }
        }
        this.ad = true;
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final zzwr zzh() {
        ap();
        return (zzwr) this.ah.f14569g;
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final void zzj(long j, boolean z) {
        if (this.i) {
            return;
        }
        ap();
        if (at()) {
            return;
        }
        boolean[] zArr = (boolean[]) this.ah.f14567e;
        int length = this.ak.length;
        for (int i = 0; i < length; i++) {
            this.ak[i].zzj(j, false, zArr[i]);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final void zzk() {
        this.ae.zzi(zzyw.zza(this.ai));
        if (this.q && !this.f16913e) {
            throw zzbh.zza("Loading finished before preparation is complete.", null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final void zzl(zzuo zzuoVar, long j) {
        this.j = zzuoVar;
        this.r.zze();
        ao();
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzwi
    public final void zzm(long j) {
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzwi
    public final boolean zzo(zzko zzkoVar) {
        if (this.q) {
            return false;
        }
        zzzg zzzgVar = this.ae;
        if (zzzgVar.zzk() || this.aj) {
            return false;
        }
        if (this.f16913e && this.l == 0) {
            return false;
        }
        boolean zze = this.r.zze();
        if (zzzgVar.zzl()) {
            return zze;
        }
        ao();
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzwi
    public final boolean zzp() {
        return this.ae.zzl() && this.r.zzd();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0064  */
    @Override // com.google.android.gms.internal.ads.zzyy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final /* bridge */ /* synthetic */ zzyz zzu(zzzb zzzbVar, long j, long j2, IOException iOException, int i) {
        long j3;
        zzyz zzb;
        zzadq zzadqVar;
        gww gwwVar = (gww) zzzbVar;
        zzhc zzhcVar = gwwVar.m;
        zzui zzuiVar = new zzui(gwwVar.f18911g, gwwVar.f18906b, zzhcVar.zzh(), zzhcVar.zzi(), j, j2, zzhcVar.zzg());
        int i2 = zzen.zza;
        if (!(iOException instanceof zzbh) && !(iOException instanceof FileNotFoundException) && !(iOException instanceof zzgt) && !(iOException instanceof zzze)) {
            for (Throwable th = iOException; th != null; th = th.getCause()) {
                if (!(th instanceof zzge) || ((zzge) th).zza != 2008) {
                }
            }
            j3 = Math.min((i - 1) * 1000, MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE);
            if (j3 != -9223372036854775807L) {
                zzb = zzzg.zzb;
            } else {
                int ar = ar();
                boolean z = ar > this.aa;
                if (this.w || !((zzadqVar = this.ac) == null || zzadqVar.zza() == -9223372036854775807L)) {
                    this.aa = ar;
                } else {
                    boolean z2 = this.f16913e;
                    if (!z2 || av()) {
                        this.n = z2;
                        this.t = 0L;
                        this.aa = 0;
                        for (zzwf zzwfVar : this.ak) {
                            zzwfVar.zzp(false);
                        }
                        gwwVar.n.zza = 0L;
                        gwwVar.l = 0L;
                        gwwVar.j = true;
                        gwwVar.i = false;
                    } else {
                        this.aj = true;
                        zzb = zzzg.zza;
                    }
                }
                zzb = zzzg.zzb(z, j3);
            }
            this.v.zzf(zzuiVar, new zzun(1, -1, null, 0, null, zzen.zzv(gwwVar.l), zzen.zzv(this.h)), iOException, true ^ zzb.zzc());
            return zzb;
        }
        j3 = -9223372036854775807L;
        if (j3 != -9223372036854775807L) {
        }
        this.v.zzf(zzuiVar, new zzun(1, -1, null, 0, null, zzen.zzv(gwwVar.l), zzen.zzv(this.h)), iOException, true ^ zzb.zzc());
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final zzadx zzw(int i, int i2) {
        return aw(new evi(i, false));
    }
}
