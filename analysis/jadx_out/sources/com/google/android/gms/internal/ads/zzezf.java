package com.google.android.gms.internal.ads;

import g.dcy;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzezf implements zzhfx {
    public static zzevz zza() {
        return new zzevz() { // from class: com.google.android.gms.internal.ads.zzezc
            @Override // com.google.android.gms.internal.ads.zzevz
            public final /* synthetic */ int zza() {
                return 0;
            }

            @Override // com.google.android.gms.internal.ads.zzevz
            public final dcy zzb() {
                return zzgei.zzh(new zzevy() { // from class: com.google.android.gms.internal.ads.zzezd
                    @Override // com.google.android.gms.internal.ads.zzevy
                    public final void zzj(Object obj) {
                        try {
                            ((JSONObject) obj).getJSONObject("sdk_env").put("container_version", 12451000);
                        } catch (JSONException unused) {
                        }
                    }
                });
            }
        };
    }

    @Override // com.google.android.gms.internal.ads.zzhgp, com.google.android.gms.internal.ads.zzhgo
    public final /* bridge */ /* synthetic */ Object zzb() {
        throw null;
    }
}
