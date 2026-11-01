package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import g.agd;
import g.fso;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzezn implements zzevy {

    /* renamed from: a, reason: collision with root package name */
    public final String f7716a;

    public zzezn(String str) {
        this.f7716a = str;
    }

    @Override // com.google.android.gms.internal.ads.zzevy
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        String str = this.f7716a;
        JSONObject jSONObject = (JSONObject) obj;
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            fso.r("pii", jSONObject).put("adsid", str);
        } catch (JSONException unused) {
            zzfxd zzfxdVar = agd.f10175a;
        }
    }
}
