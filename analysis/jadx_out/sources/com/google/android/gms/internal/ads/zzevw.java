package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import g.afo;
import g.dcy;
import g.edt;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzevw implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final zzges f7620a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f7621b;

    public zzevw(zzges zzgesVar, Context context) {
        this.f7620a = zzgesVar;
        this.f7621b = context;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 37;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        return this.f7620a.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzevu
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzevw zzevwVar = zzevw.this;
                zzevwVar.getClass();
                final Bundle ae = afo.ae(zzevwVar.f7621b, (String) edt.f15376a.f15379d.zza(zzbcn.zzfY));
                if (ae.isEmpty()) {
                    return null;
                }
                return new zzevy() { // from class: com.google.android.gms.internal.ads.zzevv
                    @Override // com.google.android.gms.internal.ads.zzevy
                    public final void zzj(Object obj) {
                        ((Bundle) obj).putBundle("shared_pref", ae);
                    }
                };
            }
        });
    }
}
