package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes3.dex */
public final class zzgj implements zzgc {

    /* renamed from: a, reason: collision with root package name */
    public final Context f8377a;

    /* renamed from: b, reason: collision with root package name */
    public final zzgl f8378b;

    public zzgj(Context context) {
        zzgl zzglVar = new zzgl();
        this.f8377a = context.getApplicationContext();
        this.f8378b = zzglVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgc
    public final /* bridge */ /* synthetic */ zzgd zza() {
        return new zzgk(this.f8377a, this.f8378b.zza());
    }
}
