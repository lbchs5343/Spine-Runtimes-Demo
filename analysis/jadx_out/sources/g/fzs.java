package g;

import android.os.SystemClock;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzdwn;
import com.google.android.gms.internal.ads.zzeff;
import com.google.android.gms.internal.ads.zzeid;
import com.google.android.gms.internal.ads.zzeiv;
import com.google.android.gms.internal.ads.zzfet;
import com.google.android.gms.internal.ads.zzfew;
import com.google.android.gms.internal.ads.zzfff;
import com.google.android.gms.internal.ads.zzffv;
import com.google.android.gms.internal.ads.zzfgq;
import com.google.android.gms.internal.ads.zzfln;
import com.google.android.gms.internal.ads.zzflr;
import com.google.android.gms.internal.ads.zzgee;
import java.util.LinkedHashMap;
import java.util.concurrent.CancellationException;
import java.util.concurrent.TimeoutException;

/* loaded from: classes3.dex */
public final class fzs implements zzgee {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzeiv f17737a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzfet f17738b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f17739c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ zzfln f17740d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ long f17741e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ zzfew f17742f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ zzfff f17743g;

    public fzs(zzeiv zzeivVar, long j, zzfew zzfewVar, zzfet zzfetVar, String str, zzfln zzflnVar, zzfff zzfffVar) {
        this.f17741e = j;
        this.f17742f = zzfewVar;
        this.f17738b = zzfetVar;
        this.f17739c = str;
        this.f17740d = zzflnVar;
        this.f17743g = zzfffVar;
        this.f17737a = zzeivVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public final void zza(Throwable th) {
        Integer num;
        int i;
        abz zzb;
        abz abzVar;
        ((czz) this.f17737a.f7082d).getClass();
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.f17741e;
        if (th instanceof TimeoutException) {
            num = null;
            i = 2;
        } else if (th instanceof zzeid) {
            num = null;
            i = 3;
        } else if (th instanceof CancellationException) {
            num = null;
            i = 4;
        } else if (th instanceof zzffv) {
            num = null;
            i = 5;
        } else if (th instanceof zzdwn) {
            int i2 = zzfgq.zza(th).zza == 3 ? 1 : 6;
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbI)).booleanValue() && (th instanceof zzeff) && (zzb = ((zzeff) th).zzb()) != null) {
                num = Integer.valueOf(zzb.zza);
                i = i2;
            } else {
                i = i2;
                num = null;
            }
        } else {
            num = null;
            i = 6;
        }
        synchronized (this.f17737a) {
            try {
                zzeiv zzeivVar = this.f17737a;
                if (zzeivVar.f7081c) {
                    zzeivVar.f7085g.zza(this.f17742f, this.f17738b, i, th instanceof zzeff ? (zzeff) th : null, elapsedRealtime);
                    elapsedRealtime = elapsedRealtime;
                }
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzhY)).booleanValue()) {
                    zzflr zzflrVar = this.f17737a.h;
                    zzfln zzflnVar = this.f17740d;
                    zzfff zzfffVar = this.f17743g;
                    zzfet zzfetVar = this.f17738b;
                    zzflrVar.zzd(zzflnVar.zzc(zzfffVar, zzfetVar, zzfetVar.zzn));
                }
                zzeiv zzeivVar2 = this.f17737a;
                if (zzeivVar2.i) {
                    return;
                }
                LinkedHashMap linkedHashMap = zzeivVar2.f7080b;
                zzfet zzfetVar2 = this.f17738b;
                linkedHashMap.put(zzfetVar2, new fow(this.f17739c, zzfetVar2.zzaf, i, elapsedRealtime, num));
                abz zza = zzfgq.zza(th);
                int i3 = zza.zza;
                if ((i3 == 3 || i3 == 0) && (abzVar = zza.zzd) != null && !abzVar.zzc.equals(MobileAds.ERROR_DOMAIN)) {
                    zza = zzfgq.zza(new zzeff(13, zza.zzd));
                }
                this.f17737a.f7083e.zzf(this.f17738b, elapsedRealtime, zza);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public final void zzb(Object obj) {
        long j;
        ((czz) this.f17737a.f7082d).getClass();
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.f17741e;
        synchronized (this.f17737a) {
            try {
                zzeiv zzeivVar = this.f17737a;
                if (zzeivVar.f7081c) {
                    j = elapsedRealtime;
                    zzeivVar.f7085g.zza(this.f17742f, this.f17738b, 0, null, j);
                } else {
                    j = elapsedRealtime;
                }
                zzeiv zzeivVar2 = this.f17737a;
                if (zzeivVar2.i) {
                    return;
                }
                if (zzeiv.j(zzeivVar2, this.f17738b)) {
                    ((fow) this.f17737a.f7080b.get(this.f17738b)).f17167a = j;
                } else {
                    LinkedHashMap linkedHashMap = this.f17737a.f7080b;
                    zzfet zzfetVar = this.f17738b;
                    long j2 = j;
                    j = j2;
                    linkedHashMap.put(zzfetVar, new fow(this.f17739c, zzfetVar.zzaf, 0, j2, null));
                }
                this.f17737a.f7083e.zzg(this.f17738b, j, null);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
