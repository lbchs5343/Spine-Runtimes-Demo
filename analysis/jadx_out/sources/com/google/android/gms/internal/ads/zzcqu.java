package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final /* synthetic */ class zzcqu implements Runnable {
    public final /* synthetic */ AtomicReference zza;

    @Override // java.lang.Runnable
    public final void run() {
        Runnable runnable = (Runnable) this.zza.getAndSet(null);
        if (runnable != null) {
            runnable.run();
        }
    }
}
