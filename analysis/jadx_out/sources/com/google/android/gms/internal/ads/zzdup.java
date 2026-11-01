package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import g.agd;
import g.akx;
import g.cbu;
import g.cmo;
import g.dcy;
import g.edt;
import g.gil;
import g.ti;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class zzdup {

    /* renamed from: a, reason: collision with root package name */
    public final zzdqd f6518a;

    /* renamed from: b, reason: collision with root package name */
    public final ScheduledExecutorService f6519b;

    /* renamed from: c, reason: collision with root package name */
    public final zzddk f6520c;

    /* renamed from: e, reason: collision with root package name */
    public final long f6522e;

    /* renamed from: f, reason: collision with root package name */
    public final zzdsw f6523f;
    public final Context i;
    public final zzfko j;
    public final akx k;
    public final Executor l;
    public final Executor n;
    public final WeakReference q;
    public boolean h = false;
    public boolean m = false;
    public boolean p = false;

    /* renamed from: g, reason: collision with root package name */
    public final zzcao f6524g = new zzcao();

    /* renamed from: d, reason: collision with root package name */
    public final ConcurrentHashMap f6521d = new ConcurrentHashMap();
    public boolean o = true;

    public zzdup(Executor executor, Context context, WeakReference weakReference, Executor executor2, zzdqd zzdqdVar, ScheduledExecutorService scheduledExecutorService, zzdsw zzdswVar, akx akxVar, zzddk zzddkVar, zzfko zzfkoVar) {
        this.f6518a = zzdqdVar;
        this.i = context;
        this.q = weakReference;
        this.l = executor2;
        this.f6519b = scheduledExecutorService;
        this.n = executor;
        this.f6523f = zzdswVar;
        this.k = akxVar;
        this.f6520c = zzddkVar;
        this.j = zzfkoVar;
        ti.f20033a.v.getClass();
        this.f6522e = SystemClock.elapsedRealtime();
        s("com.google.android.gms.ads.MobileAds", 0, "", false);
    }

    public final synchronized dcy r() {
        ti tiVar = ti.f20033a;
        String zzc = ((cmo) tiVar.f20034ab.zzi()).av().zzc();
        if (!TextUtils.isEmpty(zzc)) {
            return zzgei.zzh(zzc);
        }
        final zzcao zzcaoVar = new zzcao();
        gil zzi = tiVar.f20034ab.zzi();
        ((cmo) zzi).aa.add(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdui
            @Override // java.lang.Runnable
            public final void run() {
                zzdup zzdupVar = zzdup.this;
                zzcao zzcaoVar2 = zzcaoVar;
                zzdupVar.getClass();
                zzdupVar.l.execute(new Runnable(zzdupVar, zzcaoVar2) { // from class: com.google.android.gms.internal.ads.zzduf
                    public final /* synthetic */ zzcao zza;

                    {
                        this.zza = zzcaoVar2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        String zzc2 = ((cmo) ti.f20033a.f20034ab.zzi()).av().zzc();
                        boolean isEmpty = TextUtils.isEmpty(zzc2);
                        zzcao zzcaoVar3 = this.zza;
                        if (isEmpty) {
                            zzcaoVar3.zzd(new Exception());
                        } else {
                            zzcaoVar3.zzc(zzc2);
                        }
                    }
                });
            }
        });
        return zzcaoVar;
    }

    public final void s(String str, int i, String str2, boolean z) {
        this.f6521d.put(str, new zzblp(str, z, i, str2));
    }

    public final List zzg() {
        ArrayList arrayList = new ArrayList();
        ConcurrentHashMap concurrentHashMap = this.f6521d;
        for (String str : concurrentHashMap.keySet()) {
            zzblp zzblpVar = (zzblp) concurrentHashMap.get(str);
            arrayList.add(new zzblp(str, zzblpVar.zzb, zzblpVar.zzc, zzblpVar.zzd));
        }
        return arrayList;
    }

    public final void zzl() {
        this.o = false;
    }

    public final void zzr() {
        if (!((Boolean) zzbet.zza.zze()).booleanValue()) {
            int i = this.k.clientJarVersion;
            zzbce zzbceVar = zzbcn.zzbT;
            edt edtVar = edt.f15376a;
            if (i >= ((Integer) edtVar.f15379d.zza(zzbceVar)).intValue() && this.o) {
                if (this.h) {
                    return;
                }
                synchronized (this) {
                    try {
                        if (this.h) {
                            return;
                        }
                        this.f6523f.zzf();
                        this.f6520c.zzf();
                        this.f6524g.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdul
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzdup zzdupVar = zzdup.this;
                                zzdupVar.f6523f.zze();
                                zzdupVar.f6520c.zze();
                                zzdupVar.m = true;
                            }
                        }, this.l);
                        this.h = true;
                        dcy r = r();
                        this.f6519b.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdue
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzdup zzdupVar = zzdup.this;
                                synchronized (zzdupVar) {
                                    try {
                                        if (zzdupVar.p) {
                                            return;
                                        }
                                        ti.f20033a.v.getClass();
                                        zzdupVar.s("com.google.android.gms.ads.MobileAds", (int) (SystemClock.elapsedRealtime() - zzdupVar.f6522e), "Timeout.", false);
                                        zzdupVar.f6523f.zzb("com.google.android.gms.ads.MobileAds", "timeout");
                                        zzdupVar.f6520c.zzb("com.google.android.gms.ads.MobileAds", "timeout");
                                        zzdupVar.f6524g.zzd(new Exception());
                                    } catch (Throwable th) {
                                        throw th;
                                    }
                                }
                            }
                        }, ((Long) edtVar.f15379d.zza(zzbcn.zzbV)).longValue(), TimeUnit.SECONDS);
                        zzgei.zzr(r, new cbu(this), this.l);
                        return;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
        if (this.h) {
            return;
        }
        s("com.google.android.gms.ads.MobileAds", 0, "", true);
        this.f6524g.zzc(Boolean.FALSE);
        this.h = true;
        this.m = true;
    }

    public final void zzs(final zzblw zzblwVar) {
        this.f6524g.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzduj
            @Override // java.lang.Runnable
            public final void run() {
                zzdup zzdupVar = zzdup.this;
                try {
                    zzblwVar.zzb(zzdupVar.zzg());
                } catch (RemoteException e2) {
                    agd.f("", e2);
                }
            }
        }, this.n);
    }

    public final boolean zzt() {
        return this.m;
    }
}
