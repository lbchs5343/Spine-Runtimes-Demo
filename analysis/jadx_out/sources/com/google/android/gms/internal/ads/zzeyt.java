package com.google.android.gms.internal.ads;

import android.os.Bundle;
import g.agd;
import g.cbv;
import g.fso;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzeyt implements zzevy {

    /* renamed from: a, reason: collision with root package name */
    public final Bundle f7700a;

    public zzeyt(Bundle bundle) {
        this.f7700a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzevy
    public final void zzj(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        Bundle bundle = this.f7700a;
        if (bundle != null) {
            try {
                fso.r("play_store", fso.r("device", jSONObject)).put("parental_controls", cbv.f12612a.f12615d.w(bundle));
            } catch (JSONException unused) {
                agd.e("Failed putting parental controls bundle.");
            }
        }
    }
}
