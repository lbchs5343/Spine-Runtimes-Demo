package g;

import android.content.Context;
import android.os.Looper;
import android.util.Pair;
import android.view.Surface;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.gms.internal.ads.zzaaa;
import com.google.android.gms.internal.ads.zzaam;
import com.google.android.gms.internal.ads.zzaan;
import com.google.android.gms.internal.ads.zzab;
import com.google.android.gms.internal.ads.zzabi;
import com.google.android.gms.internal.ads.zzabj;
import com.google.android.gms.internal.ads.zzabk;
import com.google.android.gms.internal.ads.zzabl;
import com.google.android.gms.internal.ads.zzad;
import com.google.android.gms.internal.ads.zzae;
import com.google.android.gms.internal.ads.zzce;
import com.google.android.gms.internal.ads.zzci;
import com.google.android.gms.internal.ads.zzdb;
import com.google.android.gms.internal.ads.zzdc;
import com.google.android.gms.internal.ads.zzdm;
import com.google.android.gms.internal.ads.zzee;
import com.google.android.gms.internal.ads.zzen;
import com.google.android.gms.internal.ads.zzfzo;
import com.google.android.gms.internal.ads.zzig;
import com.google.android.gms.internal.ads.zzk;
import com.google.android.gms.internal.ads.zzm;
import com.google.android.gms.internal.ads.zzp;
import com.google.android.gms.internal.ads.zzzn;
import com.google.android.gms.internal.ads.zzzr;
import g.aks;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class aks implements zzabl, zzzr {

    /* renamed from: a, reason: collision with root package name */
    public boolean f10404a;

    /* renamed from: b, reason: collision with root package name */
    public zzabi f10405b;

    /* renamed from: c, reason: collision with root package name */
    public long f10406c;

    /* renamed from: d, reason: collision with root package name */
    public Executor f10407d;

    /* renamed from: e, reason: collision with root package name */
    public long f10408e;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f10409f;

    /* renamed from: g, reason: collision with root package name */
    public long f10410g;
    public final /* synthetic */ zzaaa h;
    public boolean i;
    public final zzaan j;
    public long k;
    public zzad l;
    public long m;

    public aks(zzaaa zzaaaVar, Context context) {
        this.h = zzaaaVar;
        zzen.zzK(context);
        this.f10409f = new ArrayList();
        this.j = new zzaan();
        this.m = -9223372036854775807L;
        this.f10405b = zzabi.zzb;
        this.f10407d = zzaaa.f3999a;
    }

    public final void n() {
        if (this.l == null) {
            return;
        }
        new ArrayList(this.f10409f);
        zzad zzadVar = this.l;
        zzadVar.getClass();
        zzdb.zzb(null);
        zzm zzmVar = zzadVar.zzB;
        int i = zzadVar.zzu;
        int i2 = zzadVar.zzv;
        zzzn zzznVar = zzaaa.f3999a;
        if (zzmVar == null || !zzmVar.zzf()) {
            zzmVar = zzm.zza;
        }
        zzae zzaeVar = new zzae(zzmVar, i, i2);
        zzaeVar.zza(zzadVar.zzy);
        zzaeVar.zzb();
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzzr
    public final void zza(zzaaa zzaaaVar) {
        final zzabi zzabiVar = this.f10405b;
        this.f10407d.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzzx
            @Override // java.lang.Runnable
            public final void run() {
                zzabiVar.zza(aks.this);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzzr
    public final void zzb(zzaaa zzaaaVar) {
        final zzabi zzabiVar = this.f10405b;
        this.f10407d.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzzw
            @Override // java.lang.Runnable
            public final void run() {
                zzabiVar.zzb(aks.this);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzzr
    public final void zzc(zzaaa zzaaaVar, final zzci zzciVar) {
        final zzabi zzabiVar = this.f10405b;
        this.f10407d.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzzv
            @Override // java.lang.Runnable
            public final void run() {
                zzabiVar.zzc(aks.this, zzciVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzabl
    public final Surface zzd() {
        zzdb.zzf(false);
        zzdb.zzb(null);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzabl
    public final void zze() {
        this.h.zzr();
    }

    @Override // com.google.android.gms.internal.ads.zzabl
    public final void zzf() {
        this.h.m.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzabl
    public final void zzg(boolean z) {
        this.f10404a = false;
        this.m = -9223372036854775807L;
        final zzaaa zzaaaVar = this.h;
        if (zzaaaVar.i == 1) {
            zzaaaVar.f4003e++;
            zzaaaVar.f4002d.k();
            zzdm zzdmVar = zzaaaVar.l;
            zzdb.zzb(zzdmVar);
            zzdmVar.zzh(new Runnable() { // from class: com.google.android.gms.internal.ads.zzzo
                @Override // java.lang.Runnable
                public final void run() {
                    zzaaa.zzk(zzaaa.this);
                }
            });
        }
        if (z) {
            zzaaaVar.m.zzi();
        }
        this.k = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzabl
    public final void zzh(zzad zzadVar) {
        zzaaa zzaaaVar = this.h;
        zzdb.zzf(zzaaaVar.i == 0);
        zzm zzmVar = zzadVar.zzB;
        if (zzmVar == null || !zzmVar.zzf()) {
            zzmVar = zzm.zza;
        }
        if (zzmVar.zzd == 7 && zzen.zza < 34) {
            zzk zzc = zzmVar.zzc();
            zzc.zzd(6);
            zzmVar = zzc.zzg();
        }
        zzm zzmVar2 = zzmVar;
        zzdc zzdcVar = zzaaaVar.h;
        Looper myLooper = Looper.myLooper();
        zzdb.zzb(myLooper);
        final zzdm zzd = zzdcVar.zzd(myLooper, null);
        zzaaaVar.l = zzd;
        try {
            pn pnVar = zzaaaVar.f4004f;
            Context context = zzaaaVar.f4005g;
            zzp zzpVar = zzp.zza;
            Objects.requireNonNull(zzd);
            pnVar.zza(context, zzmVar2, zzpVar, zzaaaVar, new Executor() { // from class: com.google.android.gms.internal.ads.zzzm
                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    zzdm.this.zzh(runnable);
                }
            }, zzfzo.zzn(), 0L);
            Pair pair = zzaaaVar.f4001c;
            if (pair == null) {
                throw null;
            }
            zzee zzeeVar = (zzee) pair.second;
            zzeeVar.zzb();
            zzeeVar.zza();
            throw null;
        } catch (zzce e2) {
            throw new zzabk(e2, zzadVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzabl
    public final void zzi(boolean z) {
        this.h.m.zzc(z);
    }

    @Override // com.google.android.gms.internal.ads.zzabl
    public final void zzj(int i, zzad zzadVar) {
        zzdb.zzf(false);
        this.h.m.zzl(zzadVar.zzw);
        this.l = zzadVar;
        if (this.f10404a) {
            zzdb.zzf(this.m != -9223372036854775807L);
            this.i = true;
            this.k = this.m;
        } else {
            n();
            this.f10404a = true;
            this.i = false;
            this.k = -9223372036854775807L;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzabl
    public final void zzk() {
        this.h.m.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzabl
    public final void zzl(boolean z) {
        this.h.m.zze(z);
    }

    @Override // com.google.android.gms.internal.ads.zzabl
    public final void zzm() {
        this.h.m.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzabl
    public final void zzn() {
        this.h.m.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzabl
    public final void zzo() {
        this.h.zzs();
    }

    @Override // com.google.android.gms.internal.ads.zzabl
    public final void zzp(long j, long j2) {
        try {
            zzaaa.o(this.h, j, j2);
        } catch (zzig e2) {
            zzad zzadVar = this.l;
            if (zzadVar == null) {
                zzadVar = new zzab().zzaf();
            }
            throw new zzabk(e2, zzadVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzabl
    public final void zzq(int i) {
        this.h.m.zzj(i);
    }

    @Override // com.google.android.gms.internal.ads.zzabl
    public final void zzr(zzabi zzabiVar, Executor executor) {
        this.f10405b = zzabiVar;
        this.f10407d = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzabl
    public final void zzs(Surface surface, zzee zzeeVar) {
        this.h.zzt(surface, zzeeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzabl
    public final void zzt(float f2) {
        ddb ddbVar = this.h.f4002d;
        ddbVar.getClass();
        zzdb.zzd(f2 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        ddbVar.f14004d.zzn(f2);
    }

    @Override // com.google.android.gms.internal.ads.zzabl
    public final void zzu(long j, long j2, long j3, long j4) {
        this.f10406c = j;
        this.f10408e = j3;
        this.f10410g = j4;
    }

    @Override // com.google.android.gms.internal.ads.zzabl
    public final void zzv(List list) {
        ArrayList arrayList = this.f10409f;
        if (arrayList.equals(list)) {
            return;
        }
        arrayList.clear();
        arrayList.addAll(list);
        n();
    }

    @Override // com.google.android.gms.internal.ads.zzabl
    public final void zzw(zzaam zzaamVar) {
        this.h.j = zzaamVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x005c, code lost:
    
        if (r7 >= r3) goto L24;
     */
    @Override // com.google.android.gms.internal.ads.zzabl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zzx(long j, boolean z, long j2, long j3, zzabj zzabjVar) {
        zzaaa zzaaaVar = this.h;
        zzdb.zzf(false);
        long j4 = j - this.f10408e;
        try {
            if (zzaaaVar.m.zza(j4, j2, j3, this.f10406c, z, this.j) != 4) {
                if (j4 < this.f10410g && !z) {
                    gem gemVar = (gem) zzabjVar;
                    gemVar.f17997c.av(gemVar.f17995a, gemVar.f17996b);
                    return true;
                }
                zzp(j2, j3);
                if (this.i) {
                    long j5 = this.k;
                    if (j5 != -9223372036854775807L) {
                        if (zzaaaVar.f4003e == 0) {
                            long j6 = zzaaaVar.f4002d.f14006f;
                            if (j6 != -9223372036854775807L) {
                            }
                        }
                    }
                    n();
                    this.i = false;
                    this.k = -9223372036854775807L;
                }
                zzdb.zzb(null);
                throw null;
            }
            return false;
        } catch (zzig e2) {
            zzad zzadVar = this.l;
            zzdb.zzb(zzadVar);
            throw new zzabk(e2, zzadVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzabl
    public final boolean zzy(boolean z) {
        return this.h.f4002d.f14004d.zzo(false);
    }
}
