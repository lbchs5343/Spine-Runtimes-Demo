package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes3.dex */
public final class zzdur implements zzddm {

    /* renamed from: a, reason: collision with root package name */
    public final Bundle f6532a = new Bundle();

    @Override // com.google.android.gms.internal.ads.zzddm
    public final void zza(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzddm
    public final synchronized void zzb(String str, String str2) {
        this.f6532a.putInt(str, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzddm
    public final synchronized void zzc(String str) {
        this.f6532a.putInt(str, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzddm
    public final synchronized void zzd(String str) {
        this.f6532a.putInt(str, 2);
    }

    @Override // com.google.android.gms.internal.ads.zzddm
    public final void zze() {
    }

    @Override // com.google.android.gms.internal.ads.zzddm
    public final void zzf() {
    }

    public final synchronized Bundle zzg() {
        return new Bundle(this.f6532a);
    }
}
