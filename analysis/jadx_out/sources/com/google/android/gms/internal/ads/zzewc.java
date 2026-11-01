package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import g.agd;
import g.dcy;
import g.edt;
import g.ti;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzewc {

    /* renamed from: a, reason: collision with root package name */
    public final zzfkl f7623a;

    /* renamed from: b, reason: collision with root package name */
    public final zzdsm f7624b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f7625c;

    /* renamed from: e, reason: collision with root package name */
    public final Set f7627e;

    /* renamed from: f, reason: collision with root package name */
    public final Executor f7628f;

    /* renamed from: d, reason: collision with root package name */
    public long f7626d = 0;

    /* renamed from: g, reason: collision with root package name */
    public int f7629g = 0;

    public zzewc(Context context, Executor executor, Set set, zzfkl zzfklVar, zzdsm zzdsmVar) {
        this.f7625c = context;
        this.f7628f = executor;
        this.f7627e = set;
        this.f7623a = zzfklVar;
        this.f7624b = zzdsmVar;
    }

    public final dcy zza(final Object obj, final Bundle bundle) {
        zzfka zza = zzfjz.zza(this.f7625c, 8);
        zza.zzi();
        Set<zzevz> set = this.f7627e;
        final ArrayList arrayList = new ArrayList(set.size());
        List arrayList2 = new ArrayList();
        zzbce zzbceVar = zzbcn.zzlt;
        edt edtVar = edt.f15376a;
        zzbcl zzbclVar = edtVar.f15379d;
        zzbcl zzbclVar2 = edtVar.f15379d;
        if (!((String) zzbclVar.zza(zzbceVar)).isEmpty()) {
            arrayList2 = Arrays.asList(((String) zzbclVar2.zza(zzbceVar)).split(","));
        }
        List list = arrayList2;
        ti tiVar = ti.f20033a;
        tiVar.v.getClass();
        this.f7626d = SystemClock.elapsedRealtime();
        final Bundle bundle2 = new Bundle();
        if (((Boolean) zzbclVar2.zza(zzbcn.zzci)).booleanValue() && bundle != null) {
            tiVar.v.getClass();
            long currentTimeMillis = System.currentTimeMillis();
            if (obj instanceof Bundle) {
                bundle.putLong(zzdrv.CLIENT_SIGNALS_START.zza(), currentTimeMillis);
            } else {
                bundle.putLong(zzdrv.GMS_SIGNALS_START.zza(), currentTimeMillis);
            }
        }
        for (final zzevz zzevzVar : set) {
            if (!list.contains(String.valueOf(zzevzVar.zza()))) {
                ti.f20033a.v.getClass();
                final long elapsedRealtime = SystemClock.elapsedRealtime();
                dcy zzb = zzevzVar.zzb();
                zzb.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzewa
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzewc.this.zzb(elapsedRealtime, zzevzVar, bundle2);
                    }
                }, zzcaj.zzf);
                arrayList.add(zzb);
            }
        }
        dcy zza2 = zzgei.zzb(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzewb
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Object obj2;
                Bundle bundle3;
                Iterator it = arrayList.iterator();
                while (true) {
                    obj2 = obj;
                    if (!it.hasNext()) {
                        break;
                    }
                    zzevy zzevyVar = (zzevy) ((dcy) it.next()).get();
                    if (zzevyVar != null) {
                        zzevyVar.zzj(obj2);
                    }
                }
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzci)).booleanValue() && (bundle3 = bundle) != null) {
                    Bundle bundle4 = bundle2;
                    ti.f20033a.v.getClass();
                    long currentTimeMillis2 = System.currentTimeMillis();
                    if (obj2 instanceof Bundle) {
                        bundle3.putLong(zzdrv.CLIENT_SIGNALS_END.zza(), currentTimeMillis2);
                        bundle3.putBundle("client_sig_latency_key", bundle4);
                        return obj2;
                    }
                    bundle3.putLong(zzdrv.GMS_SIGNALS_END.zza(), currentTimeMillis2);
                    bundle3.putBundle("gms_sig_latency_key", bundle4);
                }
                return obj2;
            }
        }, this.f7628f);
        if (zzfko.zza()) {
            zzfkk.zza(zza2, this.f7623a, zza);
        }
        return zza2;
    }

    public final void zzb(long j, zzevz zzevzVar, Bundle bundle) {
        ti tiVar = ti.f20033a;
        tiVar.v.getClass();
        long elapsedRealtime = SystemClock.elapsedRealtime() - j;
        if (((Boolean) zzbep.zza.zze()).booleanValue()) {
            agd.e("Signal runtime (ms) : " + zzfxf.zzc(zzevzVar.getClass().getCanonicalName()) + " = " + elapsedRealtime);
        }
        zzbce zzbceVar = zzbcn.zzci;
        edt edtVar = edt.f15376a;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
            if (((Boolean) edtVar.f15379d.zza(zzbcn.zzcm)).booleanValue()) {
                synchronized (this) {
                    bundle.putLong("sig" + zzevzVar.zza(), elapsedRealtime);
                }
            }
        }
        if (((Boolean) edtVar.f15379d.zza(zzbcn.zzcg)).booleanValue()) {
            zzdsl zza = this.f7624b.zza();
            zza.zzb("action", "lat_ms");
            zza.zzb("lat_grp", "sig_lat_grp");
            zza.zzb("lat_id", String.valueOf(zzevzVar.zza()));
            zza.zzb("clat_ms", String.valueOf(elapsedRealtime));
            if (((Boolean) edtVar.f15379d.zza(zzbcn.zzch)).booleanValue()) {
                synchronized (this) {
                    this.f7629g++;
                }
                zza.zzb("seq_num", tiVar.f20034ab.zzh().zzd());
                synchronized (this) {
                    try {
                        if (this.f7629g == this.f7627e.size() && this.f7626d != 0) {
                            this.f7629g = 0;
                            tiVar.v.getClass();
                            String valueOf = String.valueOf(SystemClock.elapsedRealtime() - this.f7626d);
                            if (zzevzVar.zza() <= 39 || zzevzVar.zza() >= 52) {
                                zza.zzb("lat_clsg", valueOf);
                            } else {
                                zza.zzb("lat_gmssg", valueOf);
                            }
                        }
                    } finally {
                    }
                }
            }
            zza.zzg();
        }
    }
}
