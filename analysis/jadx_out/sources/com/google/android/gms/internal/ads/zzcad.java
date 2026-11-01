package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Parcelable;
import g.aeh;
import g.cmo;
import g.cvb;
import g.edt;
import g.gil;
import g.ti;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class zzcad implements zzazf {

    /* renamed from: a, reason: collision with root package name */
    public final zzcaa f5128a;

    /* renamed from: e, reason: collision with root package name */
    public final gil f5132e;

    /* renamed from: c, reason: collision with root package name */
    public final Object f5130c = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final HashSet f5129b = new HashSet();

    /* renamed from: d, reason: collision with root package name */
    public final HashSet f5131d = new HashSet();

    /* renamed from: g, reason: collision with root package name */
    public boolean f5134g = false;

    /* renamed from: f, reason: collision with root package name */
    public final zzcab f5133f = new zzcab();

    public zzcad(String str, gil gilVar) {
        this.f5128a = new zzcaa(str, gilVar);
        this.f5132e = gilVar;
    }

    @Override // com.google.android.gms.internal.ads.zzazf
    public final void zza(boolean z) {
        ti.f20033a.v.getClass();
        long currentTimeMillis = System.currentTimeMillis();
        if (z) {
            if (currentTimeMillis - ((cmo) this.f5132e).bb() > ((Long) edt.f15376a.f15379d.zza(zzbcn.zzba)).longValue()) {
                this.f5128a.f5121c = -1;
            } else {
                this.f5128a.f5121c = ((cmo) this.f5132e).aw();
            }
            this.f5134g = true;
            return;
        }
        cmo cmoVar = (cmo) this.f5132e;
        cmoVar.aj();
        synchronized (cmoVar.k) {
            try {
                if (cmoVar.f13131d != currentTimeMillis) {
                    cmoVar.f13131d = currentTimeMillis;
                    SharedPreferences.Editor editor = cmoVar.ac;
                    if (editor != null) {
                        editor.putLong("app_last_background_time_ms", currentTimeMillis);
                        cmoVar.ac.apply();
                    }
                    cmoVar.ah();
                }
            } finally {
            }
        }
        ((cmo) this.f5132e).au(this.f5128a.f5121c);
    }

    public final int zzb() {
        int zza;
        synchronized (this.f5130c) {
            zza = this.f5128a.zza();
        }
        return zza;
    }

    public final zzbzs zzc(cvb cvbVar, String str) {
        return new zzbzs(cvbVar, this, this.f5133f.zza(), str);
    }

    public final String zzd() {
        return this.f5133f.zzb();
    }

    public final void zze(zzbzs zzbzsVar) {
        synchronized (this.f5130c) {
            this.f5129b.add(zzbzsVar);
        }
    }

    public final void zzf() {
        synchronized (this.f5130c) {
            this.f5128a.zzc();
        }
    }

    public final void zzg() {
        synchronized (this.f5130c) {
            this.f5128a.zzd();
        }
    }

    public final void zzh() {
        synchronized (this.f5130c) {
            this.f5128a.zze();
        }
    }

    public final void zzi() {
        synchronized (this.f5130c) {
            this.f5128a.zzf();
        }
    }

    public final void zzj(aeh aehVar, long j) {
        synchronized (this.f5130c) {
            this.f5128a.zzg(aehVar, j);
        }
    }

    public final void zzk() {
        synchronized (this.f5130c) {
            this.f5128a.zzh();
        }
    }

    public final void zzl(HashSet hashSet) {
        synchronized (this.f5130c) {
            this.f5129b.addAll(hashSet);
        }
    }

    public final boolean zzm() {
        return this.f5134g;
    }

    public final Bundle zzn(Context context, zzfgw zzfgwVar) {
        HashSet hashSet = new HashSet();
        synchronized (this.f5130c) {
            hashSet.addAll(this.f5129b);
            this.f5129b.clear();
        }
        Bundle bundle = new Bundle();
        bundle.putBundle("app", this.f5128a.zzb(context, this.f5133f.zzb()));
        Bundle bundle2 = new Bundle();
        Iterator it = this.f5131d.iterator();
        if (it.hasNext()) {
            throw null;
        }
        bundle.putBundle("slots", bundle2);
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            arrayList.add(((zzbzs) it2.next()).zza());
        }
        bundle.putParcelableArrayList("ads", arrayList);
        zzfgwVar.zzc(hashSet);
        return bundle;
    }
}
