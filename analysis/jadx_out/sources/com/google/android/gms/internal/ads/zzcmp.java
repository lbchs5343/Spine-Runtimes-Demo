package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzcmp implements zzclr {

    /* renamed from: a, reason: collision with root package name */
    public final zzdvk f5350a;

    public zzcmp(zzdvk zzdvkVar) {
        this.f5350a = zzdvkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzclr
    public final void zza(Map map) {
        String str = (String) map.get("test_mode_enabled");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f5350a.zzo(str.equals("true"));
    }
}
