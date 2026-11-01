package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import g.agd;
import g.bpp;
import g.dcy;
import g.dzm;
import g.edt;
import g.ti;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzevg implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final zzdur f7590a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f7591b;

    /* renamed from: c, reason: collision with root package name */
    public final zzffo f7592c;

    /* renamed from: d, reason: collision with root package name */
    public final zzges f7593d;

    /* renamed from: e, reason: collision with root package name */
    public final zzelk f7594e;

    /* renamed from: f, reason: collision with root package name */
    public final String f7595f;

    /* renamed from: g, reason: collision with root package name */
    public final ScheduledExecutorService f7596g;
    public final zzelo h;
    public final zzdqd i;

    public zzevg(zzges zzgesVar, ScheduledExecutorService scheduledExecutorService, String str, zzelo zzeloVar, Context context, zzffo zzffoVar, zzelk zzelkVar, zzdqd zzdqdVar, zzdur zzdurVar) {
        this.f7593d = zzgesVar;
        this.f7596g = scheduledExecutorService;
        this.f7595f = str;
        this.h = zzeloVar;
        this.f7591b = context;
        this.f7592c = zzffoVar;
        this.f7594e = zzelkVar;
        this.i = zzdqdVar;
        this.f7590a = zzdurVar;
    }

    public static dcy zzc(zzevg zzevgVar) {
        zzevg zzevgVar2;
        zzbce zzbceVar = zzbcn.zzkB;
        edt edtVar = edt.f15376a;
        zzbcl zzbclVar = edtVar.f15379d;
        zzbcl zzbclVar2 = edtVar.f15379d;
        String lowerCase = ((Boolean) zzbclVar.zza(zzbceVar)).booleanValue() ? zzevgVar.f7592c.zzf.toLowerCase(Locale.ROOT) : zzevgVar.f7592c.zzf;
        final Bundle zzg = ((Boolean) zzbclVar2.zza(zzbcn.zzbJ)).booleanValue() ? zzevgVar.f7590a.zzg() : new Bundle();
        final ArrayList arrayList = new ArrayList();
        if (((Boolean) zzbclVar2.zza(zzbcn.zzbS)).booleanValue()) {
            zzevgVar2 = zzevgVar;
            zzevgVar2.k(arrayList, zzevgVar2.h.zza(zzevgVar2.f7595f, lowerCase));
        } else {
            for (Map.Entry entry : ((zzfzr) zzevgVar.h.zzb(zzevgVar.f7595f, lowerCase)).entrySet()) {
                String str = (String) entry.getKey();
                List list = (List) entry.getValue();
                Bundle bundle = zzevgVar.f7592c.zzd.zzm;
                zzevg zzevgVar3 = zzevgVar;
                arrayList.add(zzevgVar3.j(str, list, bundle != null ? bundle.getBundle(str) : null, true, true));
                zzevgVar = zzevgVar3;
            }
            zzevgVar2 = zzevgVar;
            zzevgVar2.k(arrayList, zzevgVar2.h.zzc());
        }
        return zzgei.zzb(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzevb
            @Override // java.util.concurrent.Callable
            public final Object call() {
                JSONArray jSONArray = new JSONArray();
                for (dcy dcyVar : arrayList) {
                    if (((JSONObject) dcyVar.get()) != null) {
                        jSONArray.put(dcyVar.get());
                    }
                }
                if (jSONArray.length() == 0) {
                    return null;
                }
                return new zzevh(jSONArray.toString(), zzg);
            }
        }, zzevgVar2.f7593d);
    }

    public final zzgdz j(final String str, final List list, final Bundle bundle, final boolean z, final boolean z2) {
        zzgdo zzgdoVar = new zzgdo() { // from class: com.google.android.gms.internal.ads.zzevd
            /* JADX WARN: Can't wrap try/catch for region: R(7:0|1|(2:3|(3:5|6|(2:8|(2:10|11)(1:13))(3:14|(1:16)|(2:18|(2:20|21)(2:22|23))(2:24|25))))|26|27|6|(0)(0)) */
            /* JADX WARN: Code restructure failed: missing block: B:29:0x0038, code lost:
            
                g.agd.h();
                r4 = null;
             */
            /* JADX WARN: Removed duplicated region for block: B:14:0x0057  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x003e  */
            @Override // com.google.android.gms.internal.ads.zzgdo
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final dcy zza() {
                zzbrf zzbrfVar;
                zzbrf zzb;
                final zzevg zzevgVar = zzevg.this;
                String str2 = str;
                final List list2 = list;
                final Bundle bundle2 = bundle;
                boolean z3 = z;
                boolean z4 = z2;
                zzelk zzelkVar = zzevgVar.f7594e;
                final zzcao zzcaoVar = new zzcao();
                if (z4) {
                    if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbK)).booleanValue()) {
                        zzelkVar.zzb(str2);
                        zzb = zzelkVar.zza(str2);
                        zzbrfVar = zzb;
                        if (zzbrfVar != null) {
                            if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbA)).booleanValue()) {
                                throw null;
                            }
                            zzelr.zzb(str2, zzcaoVar);
                            return zzcaoVar;
                        }
                        ti.f20033a.v.getClass();
                        final zzelr zzelrVar = new zzelr(str2, zzbrfVar, zzcaoVar, SystemClock.elapsedRealtime());
                        zzbce zzbceVar = zzbcn.zzbF;
                        zzbcl zzbclVar = edt.f15376a.f15379d;
                        if (((Boolean) zzbclVar.zza(zzbceVar)).booleanValue()) {
                            zzevgVar.f7596g.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzevf
                                @Override // java.lang.Runnable
                                public final void run() {
                                    zzelr.this.zzc();
                                }
                            }, ((Long) zzbclVar.zza(zzbcn.zzby)).longValue(), TimeUnit.MILLISECONDS);
                        }
                        if (!z3) {
                            zzelrVar.zzd();
                            return zzcaoVar;
                        }
                        if (((Boolean) zzbclVar.zza(zzbcn.zzbM)).booleanValue()) {
                            final zzbrf zzbrfVar2 = zzbrfVar;
                            zzevgVar.f7593d.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzevc
                                @Override // java.lang.Runnable
                                public final void run() {
                                    zzevg zzevgVar2 = zzevg.this;
                                    zzbrf zzbrfVar3 = zzbrfVar2;
                                    Bundle bundle3 = bundle2;
                                    List list3 = list2;
                                    zzelr zzelrVar2 = zzelrVar;
                                    zzcao zzcaoVar2 = zzcaoVar;
                                    zzevgVar2.getClass();
                                    try {
                                        zzbrfVar3.zzh(new bpp(zzevgVar2.f7591b), zzevgVar2.f7595f, bundle3, (Bundle) list3.get(0), zzevgVar2.f7592c.zze, zzelrVar2);
                                    } catch (RemoteException e2) {
                                        zzcaoVar2.zzd(e2);
                                    }
                                }
                            });
                            return zzcaoVar;
                        }
                        zzbrfVar.zzh(new bpp(zzevgVar.f7591b), zzevgVar.f7595f, bundle2, (Bundle) list2.get(0), zzevgVar.f7592c.zze, zzelrVar);
                        return zzcaoVar;
                    }
                }
                zzb = zzevgVar.i.zzb(str2);
                zzbrfVar = zzb;
                if (zzbrfVar != null) {
                }
            }
        };
        zzges zzgesVar = this.f7593d;
        zzgdz zzu = zzgdz.zzu(zzgei.zzk(zzgdoVar, zzgesVar));
        zzbce zzbceVar = zzbcn.zzbF;
        edt edtVar = edt.f15376a;
        if (!((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
            zzu = (zzgdz) zzgei.zzo(zzu, ((Long) edtVar.f15379d.zza(zzbcn.zzby)).longValue(), TimeUnit.MILLISECONDS, this.f7596g);
        }
        return (zzgdz) zzgei.zze(zzu, Throwable.class, new zzfwh() { // from class: com.google.android.gms.internal.ads.zzeve
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object apply(Object obj) {
                String str2 = str;
                Throwable th = (Throwable) obj;
                agd.d("Error calling adapter: ".concat(String.valueOf(str2)));
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzmI)).booleanValue()) {
                    ti.f20033a.f20034ab.zzv(th, "rtbSignal.fetchRtbJsonInfo-".concat(String.valueOf(str2)));
                    return null;
                }
                ti.f20033a.f20034ab.zzw(th, "rtbSignal.fetchRtbJsonInfo-".concat(String.valueOf(str2)));
                return null;
            }
        }, zzgesVar);
    }

    public final void k(ArrayList arrayList, Map map) {
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            zzels zzelsVar = (zzels) ((Map.Entry) it.next()).getValue();
            String str = zzelsVar.zza;
            Bundle bundle = this.f7592c.zzd.zzm;
            arrayList.add(j(str, Collections.singletonList(zzelsVar.zze), bundle != null ? bundle.getBundle(str) : null, zzelsVar.zzb, zzelsVar.zzc));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 32;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        zzffo zzffoVar = this.f7592c;
        if (zzffoVar.zzr) {
            if (!Arrays.asList(((String) edt.f15376a.f15379d.zza(zzbcn.zzbL)).split(",")).contains(dzm.az(dzm.w(zzffoVar.zzd)))) {
                return zzgei.zzh(new zzevh(new JSONArray().toString(), new Bundle()));
            }
        }
        return zzgei.zzk(new zzgdo() { // from class: com.google.android.gms.internal.ads.zzeva
            @Override // com.google.android.gms.internal.ads.zzgdo
            public final dcy zza() {
                return zzevg.zzc(zzevg.this);
            }
        }, this.f7593d);
    }
}
