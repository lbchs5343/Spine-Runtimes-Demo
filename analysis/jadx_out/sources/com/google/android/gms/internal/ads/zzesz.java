package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.display.DisplayManager;
import g.dcy;
import g.esy;
import g.ti;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzesz implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7514a;

    /* renamed from: b, reason: collision with root package name */
    public final zzges f7515b;

    public zzesz(zzges zzgesVar, Context context) {
        this.f7515b = zzgesVar;
        this.f7514a = context;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 57;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        return this.f7515b.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzesy
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzesz zzeszVar = zzesz.this;
                zzeszVar.getClass();
                esy esyVar = ti.f20033a.z;
                Object systemService = zzeszVar.f7514a.getSystemService("display");
                return new zzeta(systemService instanceof DisplayManager ? Integer.valueOf(((DisplayManager) systemService).getDisplays().length) : null);
            }
        });
    }
}
