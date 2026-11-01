package com.google.android.gms.internal.ads;

import android.view.View;
import g.bmo;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public final class zzekt implements bmo {

    /* renamed from: a, reason: collision with root package name */
    public final zzden f7179a;

    /* renamed from: b, reason: collision with root package name */
    public final zzdef f7180b;

    /* renamed from: c, reason: collision with root package name */
    public final zzcny f7181c;

    /* renamed from: d, reason: collision with root package name */
    public final zzcwk f7182d;

    /* renamed from: e, reason: collision with root package name */
    public final zzcxe f7183e;

    /* renamed from: f, reason: collision with root package name */
    public final AtomicBoolean f7184f = new AtomicBoolean(false);

    public zzekt(zzcwk zzcwkVar, zzcxe zzcxeVar, zzden zzdenVar, zzdef zzdefVar, zzcny zzcnyVar) {
        this.f7182d = zzcwkVar;
        this.f7183e = zzcxeVar;
        this.f7179a = zzdenVar;
        this.f7180b = zzdefVar;
        this.f7181c = zzcnyVar;
    }

    @Override // g.bmo
    public final synchronized void zza(View view) {
        if (this.f7184f.compareAndSet(false, true)) {
            this.f7181c.zzr();
            this.f7180b.zza(view);
        }
    }

    @Override // g.bmo
    public final void zzb() {
        if (this.f7184f.get()) {
            this.f7182d.onAdClicked();
        }
    }

    @Override // g.bmo
    public final void zzc() {
        if (this.f7184f.get()) {
            this.f7183e.zza();
            this.f7179a.zza();
        }
    }
}
