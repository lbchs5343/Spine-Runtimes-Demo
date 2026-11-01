package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import g.agd;

/* loaded from: classes3.dex */
public final class zzbcg {
    public static final SharedPreferences zza(Context context) {
        try {
            return context.getSharedPreferences("google_ads_flags", 0);
        } catch (IllegalStateException unused) {
            zzfxd zzfxdVar = agd.f10175a;
            return null;
        }
    }
}
