package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes3.dex */
public final class zzevh implements zzevy {

    /* renamed from: a, reason: collision with root package name */
    public final String f7597a;

    /* renamed from: b, reason: collision with root package name */
    public final Bundle f7598b;

    public zzevh(String str, Bundle bundle) {
        this.f7597a = str;
        this.f7598b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzevy
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        Bundle bundle = (Bundle) obj;
        bundle.putString("rtb", this.f7597a);
        Bundle bundle2 = this.f7598b;
        if (bundle2.isEmpty()) {
            return;
        }
        bundle.putBundle("adapter_initialization_status", bundle2);
    }
}
