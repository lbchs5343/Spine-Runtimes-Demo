package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import g.akx;
import g.bqc;
import g.cmo;
import g.dcy;
import g.edt;
import g.ema;
import g.gil;
import g.ti;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes3.dex */
public final class zzewt implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final ScheduledExecutorService f7643a;

    /* renamed from: b, reason: collision with root package name */
    public final zzeez f7644b;

    /* renamed from: c, reason: collision with root package name */
    public final gil f7645c;

    /* renamed from: d, reason: collision with root package name */
    public final zzffo f7646d;

    /* renamed from: e, reason: collision with root package name */
    public final Context f7647e;

    /* renamed from: f, reason: collision with root package name */
    public final zzges f7648f;

    /* renamed from: g, reason: collision with root package name */
    public final akx f7649g;

    public zzewt(gil gilVar, Context context, zzges zzgesVar, ScheduledExecutorService scheduledExecutorService, zzeez zzeezVar, zzffo zzffoVar, akx akxVar) {
        this.f7645c = gilVar;
        this.f7647e = context;
        this.f7648f = zzgesVar;
        this.f7643a = scheduledExecutorService;
        this.f7644b = zzeezVar;
        this.f7646d = zzffoVar;
        this.f7649g = akxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 56;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0069, code lost:
    
        if (r9.f7646d.zzd.zzy != g.ddh.DISABLED.b()) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00c7, code lost:
    
        if (java.util.Arrays.asList(r0.split(",")).contains(r9.f7647e.getPackageName()) == false) goto L48;
     */
    @Override // com.google.android.gms.internal.ads.zzevz
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final dcy zzb() {
        boolean z;
        dcy zzg;
        zzbce zzbceVar = zzbcn.zzkb;
        edt edtVar = edt.f15376a;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
            cmo cmoVar = (cmo) this.f7645c;
            cmoVar.aj();
            synchronized (cmoVar.k) {
                try {
                    SharedPreferences sharedPreferences = cmoVar.q;
                    if (sharedPreferences != null) {
                        if (sharedPreferences.getLong("topics_consent_expiry_time_ms", 0L) >= System.currentTimeMillis()) {
                            z = cmoVar.q.getBoolean("is_topics_ad_personalization_allowed", false) && !cmoVar.f13130c;
                        }
                    }
                    z = false;
                } finally {
                }
            }
            if (z) {
                if (((Boolean) edtVar.f15379d.zza(zzbcn.zzkf)).booleanValue()) {
                }
                if (this.f7649g.clientJarVersion >= ((Integer) edtVar.f15379d.zza(zzbcn.zzjZ)).intValue()) {
                    if (Build.VERSION.SDK_INT >= ((Integer) edtVar.f15379d.zza(zzbcn.zzka)).intValue()) {
                        if (((Boolean) edtVar.f15379d.zza(zzbcn.zzjX)).booleanValue()) {
                            String str = (String) edtVar.f15379d.zza(zzbcn.zzjY);
                            if (!TextUtils.isEmpty(str)) {
                            }
                        }
                        try {
                            zzg = zzgei.zzo(this.f7644b.zza(false), ((Integer) edtVar.f15379d.zza(zzbcn.zzkd)).intValue(), TimeUnit.MILLISECONDS, this.f7643a);
                        } catch (Exception e2) {
                            zzg = zzgei.zzg(e2);
                        }
                        return zzgei.zzo((zzgdz) zzgei.zzf((zzgdz) zzgei.zzn(zzgdz.zzu(zzg), new zzgdp() { // from class: com.google.android.gms.internal.ads.zzewr
                            @Override // com.google.android.gms.internal.ads.zzgdp
                            public final dcy zza(Object obj) {
                                ema emaVar = (ema) obj;
                                if (emaVar == null) {
                                    return zzgei.zzh(new zzewv("", 1));
                                }
                                zzhch zzc = zzhci.zzc();
                                for (bqc bqcVar : emaVar.f15790a) {
                                    zzhcf zzc2 = zzhcg.zzc();
                                    zzc2.zzc(bqcVar.f11998c);
                                    zzc2.zza(bqcVar.f11997b);
                                    zzc2.zzb(bqcVar.f11996a);
                                    zzc.zza((zzhcg) zzc2.zzbr());
                                }
                                return zzgei.zzh(new zzewv(Base64.encodeToString(((zzhci) zzc.zzbr()).zzaV(), 1), 1));
                            }
                        }, this.f7648f), Throwable.class, new zzgdp() { // from class: com.google.android.gms.internal.ads.zzews
                            @Override // com.google.android.gms.internal.ads.zzgdp
                            public final dcy zza(Object obj) {
                                zzewt zzewtVar = zzewt.this;
                                final Throwable th = (Throwable) obj;
                                zzewtVar.getClass();
                                zzewtVar.f7648f.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzewq
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        boolean booleanValue = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkc)).booleanValue();
                                        Throwable th2 = th;
                                        if (booleanValue) {
                                            ti.f20033a.f20034ab.zzx(th2, "TopicsSignalUnsampled.fetchTopicsSignal");
                                        } else {
                                            ti.f20033a.f20034ab.zzv(th2, "TopicsSignal.fetchTopicsSignal");
                                        }
                                    }
                                });
                                return zzgei.zzh(th instanceof SecurityException ? new zzewv("", 2) : th instanceof IllegalStateException ? new zzewv("", 3) : th instanceof IllegalArgumentException ? new zzewv("", 4) : th instanceof TimeoutException ? new zzewv("", 5) : new zzewv("", 0));
                            }
                        }, this.f7648f), ((Integer) edt.f15376a.f15379d.zza(zzbcn.zzkd)).intValue(), TimeUnit.MILLISECONDS, this.f7643a);
                    }
                }
            }
        }
        return zzgei.zzh(new zzewv("", -1));
    }
}
