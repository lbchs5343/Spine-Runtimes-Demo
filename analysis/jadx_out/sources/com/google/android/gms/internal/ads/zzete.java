package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes3.dex */
public final class zzete implements zzevy {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f7520a;

    public zzete(boolean z) {
        this.f7520a = z;
    }

    @Override // com.google.android.gms.internal.ads.zzevy
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        ((Bundle) obj).putBoolean("is_gbid", this.f7520a);
    }
}
