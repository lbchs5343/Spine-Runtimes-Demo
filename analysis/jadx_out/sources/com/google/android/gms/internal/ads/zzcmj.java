package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzcmj implements zzclr {

    /* renamed from: a, reason: collision with root package name */
    public final zzfes f5345a;

    public zzcmj(zzfes zzfesVar) {
        this.f5345a = zzfesVar;
    }

    @Override // com.google.android.gms.internal.ads.zzclr
    public final void zza(Map map) {
        String str = (String) map.get("render_in_browser");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            this.f5345a.zzb(Boolean.parseBoolean(str));
        } catch (Exception e2) {
            throw new IllegalStateException("Invalid render_in_browser state", e2);
        }
    }
}
