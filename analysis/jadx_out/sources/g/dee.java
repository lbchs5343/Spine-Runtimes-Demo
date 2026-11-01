package g;

import android.util.Pair;
import com.google.android.gms.internal.ads.zzbv;
import com.google.android.gms.internal.ads.zzdb;
import com.google.android.gms.internal.ads.zzdt;
import com.google.android.gms.internal.ads.zzlq;
import com.google.android.gms.internal.ads.zztv;
import com.google.android.gms.internal.ads.zzuj;
import com.google.android.gms.internal.ads.zzur;
import com.google.android.gms.internal.ads.zzwg;
import com.google.android.gms.internal.ads.zzwr;
import com.google.android.gms.internal.ads.zzyd;
import com.google.android.gms.internal.ads.zzyj;
import com.google.android.gms.internal.ads.zzyk;
import com.google.android.gms.internal.ads.zzys;

/* loaded from: classes3.dex */
public final class dee {

    /* renamed from: a, reason: collision with root package name */
    public final boolean[] f14042a;

    /* renamed from: b, reason: collision with root package name */
    public final feh f14043b;

    /* renamed from: c, reason: collision with root package name */
    public long f14044c;

    /* renamed from: d, reason: collision with root package name */
    public zzyk f14045d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f14046e;

    /* renamed from: f, reason: collision with root package name */
    public dee f14047f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f14048g;
    public final Object h;
    public apg i;
    public zzwr j;
    public final zzlq[] k;
    public final Object l;
    public final zzyj m;
    public final zzwg[] n;
    public boolean o;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zztv] */
    public dee(zzlq[] zzlqVarArr, long j, zzyj zzyjVar, zzys zzysVar, feh fehVar, apg apgVar, zzyk zzykVar) {
        this.k = zzlqVarArr;
        this.f14044c = j;
        this.m = zzyjVar;
        this.f14043b = fehVar;
        zzur zzurVar = apgVar.f10620d;
        this.l = zzurVar.zza;
        this.i = apgVar;
        this.j = zzwr.zza;
        this.f14045d = zzykVar;
        this.n = new zzwg[2];
        this.f14042a = new boolean[2];
        long j2 = apgVar.f10622f;
        long j3 = apgVar.f10618b;
        fehVar.getClass();
        int i = aqw.k;
        Pair pair = (Pair) zzurVar.zza;
        Object obj = pair.first;
        zzur zza = zzurVar.zza(pair.second);
        iw iwVar = (iw) fehVar.f16659c.get(obj);
        iwVar.getClass();
        fehVar.l.add(iwVar);
        gdd gddVar = (gdd) fehVar.f16663g.get(iwVar);
        if (gddVar != null) {
            gddVar.f17919a.zzk(gddVar.f17920b);
        }
        iwVar.f19448e.add(zza);
        zzuj zzI = iwVar.f19446c.zzI(zza, zzysVar, j2);
        fehVar.k.put(zzI, iwVar);
        fehVar.w();
        this.h = j3 != -9223372036854775807L ? new zztv(zzI, true, 0L, j3) : zzI;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzup, java.lang.Object] */
    public final void p() {
        q();
        ?? r0 = this.h;
        try {
            boolean z = r0 instanceof zztv;
            feh fehVar = this.f14043b;
            if (z) {
                fehVar.o(((zztv) r0).zza);
            } else {
                fehVar.o(r0);
            }
        } catch (RuntimeException e2) {
            zzdt.zzd("MediaPeriodHolder", "Period release failed.", e2);
        }
    }

    public final void q() {
        if (this.f14047f != null) {
            return;
        }
        int i = 0;
        while (true) {
            zzyk zzykVar = this.f14045d;
            if (i >= zzykVar.zza) {
                return;
            }
            zzykVar.zzb(i);
            zzyd zzydVar = this.f14045d.zzc[i];
            i++;
        }
    }

    public final zzwr r() {
        return this.j;
    }

    public final zzyk s() {
        return this.f14045d;
    }

    /* JADX WARN: Type inference failed for: r5v0, types: [com.google.android.gms.internal.ads.zzup, java.lang.Object] */
    public final long t(zzyk zzykVar, long j, boolean z, boolean[] zArr) {
        zzlq[] zzlqVarArr;
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= zzykVar.zza) {
                break;
            }
            if (z || !zzykVar.zza(this.f14045d, i)) {
                z2 = false;
            }
            this.f14042a[i] = z2;
            i++;
        }
        int i2 = 0;
        while (true) {
            zzlqVarArr = this.k;
            if (i2 >= 2) {
                break;
            }
            zzlqVarArr[i2].zzb();
            i2++;
        }
        q();
        this.f14045d = zzykVar;
        if (this.f14047f == null) {
            int i3 = 0;
            while (true) {
                zzyk zzykVar2 = this.f14045d;
                if (i3 >= zzykVar2.zza) {
                    break;
                }
                zzykVar2.zzb(i3);
                zzyd zzydVar = this.f14045d.zzc[i3];
                i3++;
            }
        }
        long zzf = this.h.zzf(zzykVar.zzc, this.f14042a, this.n, zArr, j);
        for (int i4 = 0; i4 < 2; i4++) {
            zzlqVarArr[i4].zzb();
        }
        this.f14048g = false;
        for (int i5 = 0; i5 < 2; i5++) {
            if (this.n[i5] != null) {
                zzdb.zzf(zzykVar.zzb(i5));
                zzlqVarArr[i5].zzb();
                this.f14048g = true;
            } else {
                zzdb.zzf(zzykVar.zzc[i5] == null);
            }
        }
        return zzf;
    }

    public final zzyk u(zzbv zzbvVar) {
        zzwr zzwrVar = this.j;
        zzur zzurVar = this.i.f10620d;
        zzyj zzyjVar = this.m;
        zzlq[] zzlqVarArr = this.k;
        zzyk zzo = zzyjVar.zzo(zzlqVarArr, zzwrVar, zzurVar, zzbvVar);
        for (int i = 0; i < zzo.zza; i++) {
            if (zzo.zzb(i)) {
                if (zzo.zzc[i] == null) {
                    zzlqVarArr[i].zzb();
                    r4 = false;
                }
                zzdb.zzf(r4);
            } else {
                zzdb.zzf(zzo.zzc[i] == null);
            }
        }
        for (zzyd zzydVar : zzo.zzc) {
        }
        return zzo;
    }

    public final void v() {
        Object obj = this.h;
        if (obj instanceof zztv) {
            long j = this.i.f10618b;
            if (j == -9223372036854775807L) {
                j = Long.MIN_VALUE;
            }
            ((zztv) obj).zzn(0L, j);
        }
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [com.google.android.gms.internal.ads.zzup, java.lang.Object] */
    public final long w() {
        if (!this.f14046e) {
            return this.i.f10622f;
        }
        long zzb = this.f14048g ? this.h.zzb() : Long.MIN_VALUE;
        return zzb == Long.MIN_VALUE ? this.i.f10619c : zzb;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [com.google.android.gms.internal.ads.zzup, java.lang.Object] */
    public final boolean x() {
        if (this.f14046e) {
            return !this.f14048g || this.h.zzb() == Long.MIN_VALUE;
        }
        return false;
    }

    public final long y() {
        return this.i.f10622f + this.f14044c;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.ads.zzup, java.lang.Object] */
    public final void z(zzbv zzbvVar) {
        this.f14046e = true;
        this.j = this.h.zzh();
        zzyk u = u(zzbvVar);
        apg apgVar = this.i;
        long j = apgVar.f10622f;
        long j2 = apgVar.f10619c;
        if (j2 != -9223372036854775807L && j >= j2) {
            j = Math.max(0L, j2 - 1);
        }
        long t = t(u, j, false, new boolean[2]);
        long j3 = this.f14044c;
        apg apgVar2 = this.i;
        long j4 = apgVar2.f10622f;
        this.f14044c = (j4 - t) + j3;
        if (t != j4) {
            apgVar2 = new apg(apgVar2.f10620d, t, apgVar2.f10623g, apgVar2.f10618b, apgVar2.f10619c, apgVar2.f10621e, apgVar2.h, apgVar2.f10617a);
        }
        this.i = apgVar2;
    }
}
