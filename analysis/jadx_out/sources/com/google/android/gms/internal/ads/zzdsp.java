package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import g.bey;
import g.cvb;
import g.czz;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes3.dex */
public final class zzdsp implements zzfjs {

    /* renamed from: a, reason: collision with root package name */
    public final cvb f6460a;

    /* renamed from: d, reason: collision with root package name */
    public final zzdsh f6463d;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f6462c = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f6461b = new HashMap();

    public zzdsp(zzdsh zzdshVar, Set set, cvb cvbVar) {
        this.f6463d = zzdshVar;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            bey beyVar = (bey) it.next();
            this.f6461b.put(beyVar.f11423c, beyVar);
        }
        this.f6460a = cvbVar;
    }

    public final void e(zzfjl zzfjlVar, boolean z) {
        HashMap hashMap = this.f6461b;
        zzfjl zzfjlVar2 = ((bey) hashMap.get(zzfjlVar)).f11422b;
        HashMap hashMap2 = this.f6462c;
        if (hashMap2.containsKey(zzfjlVar2)) {
            String str = true != z ? "f." : "s.";
            ((czz) this.f6460a).getClass();
            this.f6463d.zzb().put("label.".concat(((bey) hashMap.get(zzfjlVar)).f11421a), str.concat(String.valueOf(Long.toString(SystemClock.elapsedRealtime() - ((Long) hashMap2.get(zzfjlVar2)).longValue()))));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfjs
    public final void zzd(zzfjl zzfjlVar, String str) {
        HashMap hashMap = this.f6462c;
        if (hashMap.containsKey(zzfjlVar)) {
            ((czz) this.f6460a).getClass();
            long elapsedRealtime = SystemClock.elapsedRealtime() - ((Long) hashMap.get(zzfjlVar)).longValue();
            String valueOf = String.valueOf(str);
            this.f6463d.zzb().put("task.".concat(valueOf), "s.".concat(String.valueOf(Long.toString(elapsedRealtime))));
        }
        if (this.f6461b.containsKey(zzfjlVar)) {
            e(zzfjlVar, true);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfjs
    public final void zzdC(zzfjl zzfjlVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzfjs
    public final void zzdD(zzfjl zzfjlVar, String str, Throwable th) {
        HashMap hashMap = this.f6462c;
        if (hashMap.containsKey(zzfjlVar)) {
            ((czz) this.f6460a).getClass();
            long elapsedRealtime = SystemClock.elapsedRealtime() - ((Long) hashMap.get(zzfjlVar)).longValue();
            String valueOf = String.valueOf(str);
            this.f6463d.zzb().put("task.".concat(valueOf), "f.".concat(String.valueOf(Long.toString(elapsedRealtime))));
        }
        if (this.f6461b.containsKey(zzfjlVar)) {
            e(zzfjlVar, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfjs
    public final void zzdE(zzfjl zzfjlVar, String str) {
        ((czz) this.f6460a).getClass();
        this.f6462c.put(zzfjlVar, Long.valueOf(SystemClock.elapsedRealtime()));
    }
}
