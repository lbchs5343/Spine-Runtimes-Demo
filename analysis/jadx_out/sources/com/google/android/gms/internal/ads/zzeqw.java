package com.google.android.gms.internal.ads;

import android.os.Bundle;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzeqw implements zzevy {

    /* renamed from: a, reason: collision with root package name */
    public final JSONObject f7406a;

    /* renamed from: b, reason: collision with root package name */
    public final JSONObject f7407b;

    public zzeqw(JSONObject jSONObject, JSONObject jSONObject2) {
        this.f7406a = jSONObject;
        this.f7407b = jSONObject2;
    }

    @Override // com.google.android.gms.internal.ads.zzevy
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        Bundle bundle = (Bundle) obj;
        JSONObject jSONObject = this.f7406a;
        if (jSONObject != null) {
            bundle.putString("fwd_cld", jSONObject.toString());
        }
        JSONObject jSONObject2 = this.f7407b;
        if (jSONObject2 != null) {
            bundle.putString("fwd_common_cld", jSONObject2.toString());
        }
    }
}
