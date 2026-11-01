package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import g.fso;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzfey {
    public final String zza;
    public final String zzb;
    public final JSONObject zzc;
    public final JSONObject zzd;

    public zzfey(JsonReader jsonReader) {
        JSONObject at = fso.at(jsonReader);
        this.zzd = at;
        this.zza = at.optString("ad_html", null);
        this.zzb = at.optString("ad_base_url", null);
        this.zzc = at.optJSONObject("ad_json");
    }
}
