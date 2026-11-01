package com.google.android.gms.internal.ads;

import android.content.Context;
import g.dcy;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzewf implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7634a;

    /* renamed from: b, reason: collision with root package name */
    public final zzges f7635b;

    public zzewf(Context context, zzges zzgesVar) {
        this.f7634a = context;
        this.f7635b = zzgesVar;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 59;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        if (!((Boolean) zzbef.zzb.zze()).booleanValue()) {
            return zzgei.zzh(null);
        }
        return this.f7635b.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzewe
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Context context = zzewf.this.f7634a;
                return new zzewg(zzbbx.zzb(context), zzbbx.zza(context));
            }
        });
    }
}
