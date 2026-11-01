package com.google.android.gms.internal.ads;

import g.agd;
import g.ti;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public class zzdcc {
    public final HashMap l = new HashMap();

    public zzdcc(Set set) {
        zzp(set);
    }

    public final synchronized void m(final zzdcb zzdcbVar) {
        for (Map.Entry entry : this.l.entrySet()) {
            final Object key = entry.getKey();
            ((Executor) entry.getValue()).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdca
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        zzdcb.this.zza(key);
                    } catch (Throwable th) {
                        ti.f20033a.f20034ab.zzv(th, "EventEmitter.notify");
                        agd.h();
                    }
                }
            });
        }
    }

    public final synchronized void zzk(zzded zzdedVar) {
        zzo(zzdedVar.zza, zzdedVar.zzb);
    }

    public final synchronized void zzo(Object obj, Executor executor) {
        this.l.put(obj, executor);
    }

    public final synchronized void zzp(Set set) {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            zzk((zzded) it.next());
        }
    }
}
