package com.google.android.gms.internal.ads;

import android.view.View;
import g.bmo;

/* loaded from: classes3.dex */
public final class zzele implements bmo {

    /* renamed from: a, reason: collision with root package name */
    public bmo f7206a;

    @Override // g.bmo
    public final synchronized void zza(View view) {
        bmo bmoVar = this.f7206a;
        if (bmoVar != null) {
            bmoVar.zza(view);
        }
    }

    @Override // g.bmo
    public final synchronized void zzb() {
        bmo bmoVar = this.f7206a;
        if (bmoVar != null) {
            bmoVar.zzb();
        }
    }

    @Override // g.bmo
    public final synchronized void zzc() {
        bmo bmoVar = this.f7206a;
        if (bmoVar != null) {
            bmoVar.zzc();
        }
    }

    public final synchronized void zzd(bmo bmoVar) {
        this.f7206a = bmoVar;
    }
}
