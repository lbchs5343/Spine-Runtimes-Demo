package com.google.android.gms.internal.ads;

import android.os.Bundle;
import g.dcy;
import g.ti;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzets implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final zzges f7543a;

    public zzets(zzges zzgesVar) {
        this.f7543a = zzgesVar;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 24;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        return this.f7543a.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzetr
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Bundle bundle = new Bundle();
                Runtime runtime = Runtime.getRuntime();
                bundle.putLong("runtime_free", runtime.freeMemory());
                bundle.putLong("runtime_max", runtime.maxMemory());
                bundle.putLong("runtime_total", runtime.totalMemory());
                bundle.putInt("web_view_count", ti.f20033a.f20034ab.zzb());
                return new zzett(bundle);
            }
        });
    }
}
