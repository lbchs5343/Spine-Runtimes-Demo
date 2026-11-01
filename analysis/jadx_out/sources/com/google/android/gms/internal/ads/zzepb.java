package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes3.dex */
public final class zzepb implements zzevy {

    /* renamed from: a, reason: collision with root package name */
    public final String f7338a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f7339b;

    public zzepb(String str, boolean z) {
        this.f7338a = str;
        this.f7339b = z;
    }

    @Override // com.google.android.gms.internal.ads.zzevy
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        Bundle bundle = (Bundle) obj;
        String str = this.f7338a;
        if (str != null) {
            Bundle zza = zzfgc.zza(bundle, "pii");
            zza.putString("afai", str);
            zza.putBoolean("is_afai_lat", this.f7339b);
        }
    }
}
