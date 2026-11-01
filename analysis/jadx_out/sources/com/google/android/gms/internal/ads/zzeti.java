package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes3.dex */
public final class zzeti implements zzevy {

    /* renamed from: a, reason: collision with root package name */
    public final Boolean f7526a;

    public zzeti(Boolean bool) {
        this.f7526a = bool;
    }

    @Override // com.google.android.gms.internal.ads.zzevy
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        Bundle bundle = (Bundle) obj;
        Boolean bool = this.f7526a;
        if (bool != null) {
            bundle.putBoolean("hw_accel", bool.booleanValue());
        }
    }
}
