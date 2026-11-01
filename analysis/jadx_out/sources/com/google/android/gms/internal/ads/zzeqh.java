package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes3.dex */
public final class zzeqh implements zzevy {

    /* renamed from: a, reason: collision with root package name */
    public final double f7388a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f7389b;

    public zzeqh(double d2, boolean z) {
        this.f7388a = d2;
        this.f7389b = z;
    }

    @Override // com.google.android.gms.internal.ads.zzevy
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        Bundle bundle = (Bundle) obj;
        Bundle zza = zzfgc.zza(bundle, "device");
        bundle.putBundle("device", zza);
        Bundle zza2 = zzfgc.zza(zza, "battery");
        zza.putBundle("battery", zza2);
        zza2.putBoolean("is_charging", this.f7389b);
        zza2.putDouble("battery_level", this.f7388a);
    }
}
