package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;

/* loaded from: classes3.dex */
public final class zzepp implements zzevy {

    /* renamed from: a, reason: collision with root package name */
    public final String f7357a;

    /* renamed from: b, reason: collision with root package name */
    public final int f7358b;

    public zzepp(String str, int i) {
        this.f7357a = str;
        this.f7358b = i;
    }

    @Override // com.google.android.gms.internal.ads.zzevy
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        int i;
        Bundle bundle = (Bundle) obj;
        String str = this.f7357a;
        if (TextUtils.isEmpty(str) || (i = this.f7358b) == -1) {
            return;
        }
        Bundle zza = zzfgc.zza(bundle, "pii");
        bundle.putBundle("pii", zza);
        zza.putString("pvid", str);
        zza.putInt("pvid_s", i);
    }
}
