package com.google.android.gms.internal.ads;

import android.os.Handler;
import g.ox;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes3.dex */
public final class zzrk {

    /* renamed from: a, reason: collision with root package name */
    public final CopyOnWriteArrayList f8871a;
    public final int zza;
    public final zzur zzb;

    public zzrk() {
        this(new CopyOnWriteArrayList(), null);
    }

    public zzrk(CopyOnWriteArrayList copyOnWriteArrayList, zzur zzurVar) {
        this.f8871a = copyOnWriteArrayList;
        this.zza = 0;
        this.zzb = zzurVar;
    }

    public final zzrk zza(int i, zzur zzurVar) {
        return new zzrk(this.f8871a, zzurVar);
    }

    public final void zzb(Handler handler, zzrl zzrlVar) {
        this.f8871a.add(new ox(zzrlVar));
    }

    public final void zzc(zzrl zzrlVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f8871a;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            ox oxVar = (ox) it.next();
            if (oxVar.f19783a == zzrlVar) {
                copyOnWriteArrayList.remove(oxVar);
            }
        }
    }
}
