package com.google.android.gms.internal.ads;

import g.agd;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzeyb implements zzevy {

    /* renamed from: a, reason: collision with root package name */
    public final JSONObject f7688a;

    public zzeyb(JSONObject jSONObject) {
        this.f7688a = jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzevy
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        try {
            ((JSONObject) obj).put("cache_state", this.f7688a);
        } catch (JSONException unused) {
            agd.e("Unable to get cache_state");
        }
    }
}
