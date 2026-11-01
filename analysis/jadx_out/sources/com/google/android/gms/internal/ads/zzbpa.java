package com.google.android.gms.internal.ads;

import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.agd;
import g.ti;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzbpa {
    public final List zza;

    public zzbpa(JSONObject jSONObject) throws JSONException {
        if (agd.i(2)) {
            agd.e("Mediation Response JSON: ".concat(String.valueOf(jSONObject.toString(2))));
        }
        JSONArray jSONArray = jSONObject.getJSONArray("ad_networks");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        int i = -1;
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            try {
                zzboz zzbozVar = new zzboz(jSONArray.getJSONObject(i2));
                MediationConstant.RIT_TYPE_BANNER.equalsIgnoreCase(zzbozVar.zzc);
                arrayList.add(zzbozVar);
                if (i < 0) {
                    Iterator it = zzbozVar.zza.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (((String) it.next()).equals("com.google.ads.mediation.admob.AdMobAdapter")) {
                                i = i2;
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                }
            } catch (JSONException unused) {
            }
        }
        jSONArray.length();
        this.zza = Collections.unmodifiableList(arrayList);
        jSONObject.optString("qdata");
        jSONObject.optInt("fs_model_type", -1);
        jSONObject.optLong("timeout_ms", -1L);
        JSONObject optJSONObject = jSONObject.optJSONObject("settings");
        if (optJSONObject != null) {
            optJSONObject.optLong("ad_network_timeout_millis", -1L);
            ti tiVar = ti.f20033a;
            zzbpb zzbpbVar = tiVar.n;
            zzbpb.zza(optJSONObject, "click_urls");
            zzbpb zzbpbVar2 = tiVar.n;
            zzbpb.zza(optJSONObject, "imp_urls");
            zzbpb zzbpbVar3 = tiVar.n;
            zzbpb.zza(optJSONObject, "downloaded_imp_urls");
            zzbpb zzbpbVar4 = tiVar.n;
            zzbpb.zza(optJSONObject, "nofill_urls");
            zzbpb zzbpbVar5 = tiVar.n;
            zzbpb.zza(optJSONObject, "remote_ping_urls");
            optJSONObject.optBoolean("render_in_browser", false);
            optJSONObject.optLong("refresh", -1L);
            zzbwv.zza(optJSONObject.optJSONArray("rewards"));
            optJSONObject.optBoolean("use_displayed_impression", false);
            optJSONObject.optBoolean("allow_pub_rendered_attribution", false);
            optJSONObject.optBoolean("allow_pub_owned_ad_view", false);
            optJSONObject.optBoolean("allow_custom_click_gesture", false);
        }
    }
}
