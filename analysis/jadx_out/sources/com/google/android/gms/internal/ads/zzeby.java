package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import g.agd;
import g.dcy;
import g.edt;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzeby {

    /* renamed from: a, reason: collision with root package name */
    public final zzbvr f6788a;

    public zzeby(zzbvr zzbvrVar) {
        this.f6788a = zzbvrVar;
    }

    public static void zza(Map map, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        JSONObject optJSONObject = jSONObject.optJSONObject("pii");
        if (optJSONObject == null) {
            agd.e("DSID signal does not exist.");
            return;
        }
        if (!TextUtils.isEmpty(optJSONObject.optString("doritos", ""))) {
            map.put("x-afma-drt-cookie", optJSONObject.optString("doritos", ""));
        }
        if (TextUtils.isEmpty(optJSONObject.optString("doritos_v2", ""))) {
            return;
        }
        map.put("x-afma-drt-v2-cookie", optJSONObject.optString("doritos_v2", ""));
    }

    public final void zzb() {
        dcy zza = this.f6788a.zza();
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzhr)).booleanValue()) {
            zzcam.zzb(zza, "persistFlags");
        } else {
            zzcam.zza(zza, "persistFlags");
        }
    }
}
