package com.google.android.gms.internal.ads;

import g.crk;
import g.fwu;

/* loaded from: classes3.dex */
public final /* synthetic */ class zzfvo implements Runnable {
    public final /* synthetic */ fwu zza;
    public final /* synthetic */ Runnable zzb;

    public /* synthetic */ zzfvo(fwu fwuVar, Runnable runnable) {
        this.zza = fwuVar;
        this.zzb = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        fwu fwuVar = this.zza;
        Runnable runnable = this.zzb;
        if (fwuVar.h != null || fwuVar.f17546e) {
            if (!fwuVar.f17546e) {
                runnable.run();
                return;
            }
            fwuVar.i.zzc("Waiting to bind to the service.", new Object[0]);
            synchronized (fwuVar.f17544c) {
                fwuVar.f17544c.add(runnable);
            }
            return;
        }
        fwuVar.i.zzc("Initiate binding to the service.", new Object[0]);
        synchronized (fwuVar.f17544c) {
            fwuVar.f17544c.add(runnable);
        }
        crk crkVar = new crk(fwuVar);
        fwuVar.f17547f = crkVar;
        fwuVar.f17546e = true;
        if (fwuVar.f17548g.bindService(fwuVar.j, crkVar, 1)) {
            return;
        }
        fwuVar.i.zzc("Failed to bind to the service.", new Object[0]);
        fwuVar.f17546e = false;
        synchronized (fwuVar.f17544c) {
            fwuVar.f17544c.clear();
        }
    }
}
