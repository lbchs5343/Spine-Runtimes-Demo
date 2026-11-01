package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import g.agd;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzeyn implements zzevy {

    /* renamed from: a, reason: collision with root package name */
    public final List f7696a;

    public zzeyn(List list) {
        this.f7696a = list;
    }

    @Override // com.google.android.gms.internal.ads.zzevy
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        try {
            ((JSONObject) obj).put("eid", TextUtils.join(",", this.f7696a));
        } catch (JSONException unused) {
            agd.e("Failed putting experiment ids.");
        }
    }
}
