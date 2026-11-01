package com.google.android.gms.internal.ads;

import android.os.Handler;
import g.css;
import g.gkr;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes3.dex */
public abstract class zztz extends zztq {
    public final HashMap l = new HashMap();
    public Handler m;
    public zzhd n;

    @Override // com.google.android.gms.internal.ads.zztq
    public final void i() {
        for (css cssVar : this.l.values()) {
            cssVar.f13449a.zzi(cssVar.f13450b);
        }
    }

    @Override // com.google.android.gms.internal.ads.zztq
    public final void j() {
        for (css cssVar : this.l.values()) {
            cssVar.f13449a.zzk(cssVar.f13450b);
        }
    }

    @Override // com.google.android.gms.internal.ads.zztq
    public void k(zzhd zzhdVar) {
        this.n = zzhdVar;
        this.m = zzen.zzy(null);
    }

    public void o(long j, Object obj) {
    }

    public abstract void p(Object obj, zzut zzutVar, zzbv zzbvVar);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.gms.internal.ads.zztw, com.google.android.gms.internal.ads.zzus] */
    public final void q(final Integer num, zzut zzutVar) {
        HashMap hashMap = this.l;
        zzdb.zzd(!hashMap.containsKey(num));
        ?? r1 = new zzus() { // from class: com.google.android.gms.internal.ads.zztw
            @Override // com.google.android.gms.internal.ads.zzus
            public final void zza(zzut zzutVar2, zzbv zzbvVar) {
                zztz.this.p(num, zzutVar2, zzbvVar);
            }
        };
        gkr gkrVar = new gkr(this, num);
        hashMap.put(num, new css(zzutVar, r1, gkrVar));
        Handler handler = this.m;
        handler.getClass();
        zzutVar.zzh(handler, gkrVar);
        Handler handler2 = this.m;
        handler2.getClass();
        zzutVar.zzg(handler2, gkrVar);
        zzhd zzhdVar = this.n;
        zzoj zzojVar = this.f8889g;
        zzdb.zzb(zzojVar);
        zzutVar.zzm(r1, zzhdVar, zzojVar);
        if (this.f8887e.isEmpty()) {
            zzutVar.zzi(r1);
        }
    }

    public zzur r(Object obj, zzur zzurVar) {
        throw null;
    }

    public void s(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zztq
    public void zzq() {
        HashMap hashMap = this.l;
        for (css cssVar : hashMap.values()) {
            zzut zzutVar = cssVar.f13449a;
            gkr gkrVar = cssVar.f13451c;
            zzutVar.zzp(cssVar.f13450b);
            zzutVar.zzs(gkrVar);
            zzutVar.zzr(gkrVar);
        }
        hashMap.clear();
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public void zzz() throws IOException {
        Iterator it = this.l.values().iterator();
        while (it.hasNext()) {
            ((css) it.next()).f13449a.zzz();
        }
    }
}
