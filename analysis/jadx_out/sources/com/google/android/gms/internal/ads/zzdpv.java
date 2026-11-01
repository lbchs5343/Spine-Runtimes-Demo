package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes3.dex */
public final class zzdpv implements zzcxh {

    /* renamed from: a, reason: collision with root package name */
    public final zzcfk f6373a;

    public zzdpv(zzcfk zzcfkVar) {
        this.f6373a = zzcfkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcxh
    public final void zzdj(Context context) {
        zzcfk zzcfkVar = this.f6373a;
        if (zzcfkVar != null) {
            zzcfkVar.destroy();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcxh
    public final void zzdl(Context context) {
        zzcfk zzcfkVar = this.f6373a;
        if (zzcfkVar != null) {
            zzcfkVar.onPause();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcxh
    public final void zzdm(Context context) {
        zzcfk zzcfkVar = this.f6373a;
        if (zzcfkVar != null) {
            zzcfkVar.onResume();
        }
    }
}
