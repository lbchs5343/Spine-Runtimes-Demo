package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes3.dex */
public final class zzeur implements zzevy {

    /* renamed from: a, reason: collision with root package name */
    public final Bundle f7572a;

    public zzeur(Bundle bundle) {
        this.f7572a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzevy
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        Bundle bundle = (Bundle) obj;
        Bundle bundle2 = this.f7572a;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
    }
}
