package com.google.android.gms.internal.ads;

import g.agd;
import g.aik;
import g.awf;
import g.bme;
import g.cvb;
import g.czz;
import g.deq;
import g.edt;
import g.ghd;
import g.ti;
import j$.util.Optional;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final class zzfmg {

    /* renamed from: a, reason: collision with root package name */
    public final zzfmd f8001a;

    /* renamed from: b, reason: collision with root package name */
    public final cvb f8002b;

    /* renamed from: c, reason: collision with root package name */
    public final ConcurrentHashMap f8003c = new ConcurrentHashMap();

    /* renamed from: d, reason: collision with root package name */
    public final ConcurrentHashMap f8004d = new ConcurrentHashMap();

    /* renamed from: e, reason: collision with root package name */
    public final zzfmp f8005e;

    public zzfmg(zzfmp zzfmpVar, zzfmd zzfmdVar, cvb cvbVar) {
        this.f8005e = zzfmpVar;
        this.f8001a = zzfmdVar;
        this.f8002b = cvbVar;
    }

    public static String f(String str, bme bmeVar) {
        return awf.i(str, "#", bmeVar == null ? "NULL" : bmeVar.name());
    }

    public final synchronized void g(String str, zzfmo zzfmoVar) {
        zzfmoVar.zzc();
        this.f8003c.put(str, zzfmoVar);
    }

    public final synchronized boolean h(String str, bme bmeVar) {
        Optional empty;
        ((czz) this.f8002b).getClass();
        long currentTimeMillis = System.currentTimeMillis();
        ConcurrentHashMap concurrentHashMap = this.f8003c;
        String f2 = f(str, bmeVar);
        boolean z = false;
        if (!concurrentHashMap.containsKey(f2) && !this.f8004d.containsKey(f2)) {
            return false;
        }
        zzfmo zzfmoVar = (zzfmo) this.f8003c.get(f2);
        if (zzfmoVar == null) {
            zzfmoVar = (zzfmo) this.f8004d.get(f2);
        }
        if (zzfmoVar != null && zzfmoVar.zzl()) {
            z = true;
        }
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzs)).booleanValue()) {
            if (z) {
                ((czz) this.f8002b).getClass();
                empty = Optional.of(Long.valueOf(System.currentTimeMillis()));
            } else {
                empty = Optional.empty();
            }
            this.f8001a.zza(bmeVar, currentTimeMillis, empty);
        }
        return z;
    }

    public final synchronized ArrayList i(List list) {
        ArrayList arrayList;
        try {
            HashSet hashSet = new HashSet();
            arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ghd ghdVar = (ghd) it.next();
                String f2 = f(ghdVar.zza, bme.b(ghdVar.zzb));
                hashSet.add(f2);
                zzfmo zzfmoVar = (zzfmo) this.f8003c.get(f2);
                if (zzfmoVar == null) {
                    arrayList.add(ghdVar);
                } else if (!zzfmoVar.f8017f.equals(ghdVar)) {
                    this.f8004d.put(f2, zzfmoVar);
                    this.f8003c.remove(f2);
                }
            }
            Iterator it2 = this.f8003c.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry entry = (Map.Entry) it2.next();
                if (!hashSet.contains((String) entry.getKey())) {
                    this.f8004d.put((String) entry.getKey(), (zzfmo) entry.getValue());
                    it2.remove();
                }
            }
            Iterator it3 = this.f8004d.entrySet().iterator();
            while (it3.hasNext()) {
                zzfmo zzfmoVar2 = (zzfmo) ((Map.Entry) it3.next()).getValue();
                zzfmoVar2.zzk();
                if (!zzfmoVar2.zzl()) {
                    it3.remove();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return arrayList;
    }

    public final synchronized Optional j(final Class cls, String str, bme bmeVar) {
        ConcurrentHashMap concurrentHashMap = this.f8003c;
        String f2 = f(str, bmeVar);
        if (!concurrentHashMap.containsKey(f2) && !this.f8004d.containsKey(f2)) {
            return Optional.empty();
        }
        zzfmo zzfmoVar = (zzfmo) this.f8003c.get(f2);
        if (zzfmoVar == null && (zzfmoVar = (zzfmo) this.f8004d.get(f2)) == null) {
            return Optional.empty();
        }
        try {
            return Optional.ofNullable(zzfmoVar.zzd()).map(new Function() { // from class: com.google.android.gms.internal.ads.zzfmf
                public final /* synthetic */ Function andThen(Function function) {
                    return j$.util.function.k.$default$andThen(this, function);
                }

                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return cls.cast(obj);
                }

                public final /* synthetic */ Function compose(Function function) {
                    return j$.util.function.k.$default$compose(this, function);
                }
            });
        } catch (ClassCastException e2) {
            ti.f20033a.f20034ab.zzw(e2, "PreloadAdManager.pollAd");
            "Unable to cast ad to the requested type:".concat(cls.getName());
            agd.h();
            return Optional.empty();
        }
    }

    public final synchronized zzbaf zza(String str) {
        return (zzbaf) j(zzbaf.class, str, bme.APP_OPEN_AD).orElse(null);
    }

    public final synchronized deq zzb(String str) {
        return (deq) j(deq.class, str, bme.INTERSTITIAL).orElse(null);
    }

    public final synchronized zzbxc zzc(String str) {
        return (zzbxc) j(zzbxc.class, str, bme.REWARDED).orElse(null);
    }

    public final void zze(zzbpg zzbpgVar) {
        this.f8005e.zzb(zzbpgVar);
    }

    public final synchronized void zzf(List list, aik aikVar) {
        Iterator it = i(list).iterator();
        while (it.hasNext()) {
            ghd ghdVar = (ghd) it.next();
            String str = ghdVar.zza;
            bme b2 = bme.b(ghdVar.zzb);
            zzfmo zza = this.f8005e.zza(ghdVar, aikVar);
            if (b2 != null && zza != null) {
                g(f(str, b2), zza);
            }
        }
    }

    public final synchronized boolean zzg(String str) {
        return h(str, bme.APP_OPEN_AD);
    }

    public final synchronized boolean zzh(String str) {
        return h(str, bme.INTERSTITIAL);
    }

    public final synchronized boolean zzi(String str) {
        return h(str, bme.REWARDED);
    }
}
