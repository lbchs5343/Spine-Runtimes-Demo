package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class zzfpe {

    /* renamed from: b, reason: collision with root package name */
    public final ArrayDeque f8136b = new ArrayDeque();

    /* renamed from: c, reason: collision with root package name */
    public zzfpd f8137c = null;

    /* renamed from: a, reason: collision with root package name */
    public final ThreadPoolExecutor f8135a = new ThreadPoolExecutor(1, 1, 1, TimeUnit.SECONDS, new LinkedBlockingQueue());

    public final void zza(zzfpd zzfpdVar) {
        this.f8137c = null;
        zzfpd zzfpdVar2 = (zzfpd) this.f8136b.poll();
        this.f8137c = zzfpdVar2;
        if (zzfpdVar2 != null) {
            zzfpdVar2.executeOnExecutor(this.f8135a, new Object[0]);
        }
    }

    public final void zzb(zzfpd zzfpdVar) {
        zzfpdVar.zzb(this);
        ArrayDeque arrayDeque = this.f8136b;
        arrayDeque.add(zzfpdVar);
        if (this.f8137c == null) {
            zzfpd zzfpdVar2 = (zzfpd) arrayDeque.poll();
            this.f8137c = zzfpdVar2;
            if (zzfpdVar2 != null) {
                zzfpdVar2.executeOnExecutor(this.f8135a, new Object[0]);
            }
        }
    }
}
