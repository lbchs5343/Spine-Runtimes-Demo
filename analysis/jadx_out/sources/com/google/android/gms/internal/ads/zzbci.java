package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;

/* loaded from: classes3.dex */
public final /* synthetic */ class zzbci implements zzfxg {
    public final /* synthetic */ SharedPreferences zza;

    @Override // com.google.android.gms.internal.ads.zzfxg
    public final Object zza() {
        return this.zza.getString("flag_configuration", "{}");
    }
}
