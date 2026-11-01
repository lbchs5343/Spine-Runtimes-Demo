package com.google.android.gms.internal.ads;

import android.content.Context;
import g.dcy;
import java.util.concurrent.Callable;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzeya implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final zzges f7687a;

    public zzeya(zzbba zzbbaVar, zzges zzgesVar, Context context) {
        this.f7687a = zzgesVar;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 45;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        return this.f7687a.zzb(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzexz
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzeyb(new JSONObject());
            }
        });
    }
}
