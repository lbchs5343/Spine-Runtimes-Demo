package com.google.android.gms.internal.ads;

import g.dcy;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingDeque;

/* loaded from: classes3.dex */
public final class zzfgn {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedBlockingDeque f7883a = new LinkedBlockingDeque();

    /* renamed from: b, reason: collision with root package name */
    public final Callable f7884b;

    /* renamed from: c, reason: collision with root package name */
    public final zzges f7885c;

    public zzfgn(Callable callable, zzges zzgesVar) {
        this.f7884b = callable;
        this.f7885c = zzgesVar;
    }

    public final synchronized dcy zza() {
        zzc(1);
        return (dcy) this.f7883a.poll();
    }

    public final synchronized void zzb(dcy dcyVar) {
        this.f7883a.addFirst(dcyVar);
    }

    public final synchronized void zzc(int i) {
        int size = i - this.f7883a.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f7883a.add(this.f7885c.zzb(this.f7884b));
        }
    }
}
