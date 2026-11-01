package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.agd;
import g.edt;
import g.ti;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzbzt {

    /* renamed from: a, reason: collision with root package name */
    public boolean f5098a;

    /* renamed from: b, reason: collision with root package name */
    public String f5099b;

    /* renamed from: c, reason: collision with root package name */
    public String f5100c;

    /* renamed from: e, reason: collision with root package name */
    public long f5102e;
    public boolean h;
    public JSONObject j;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f5101d = new ArrayList();

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f5104g = new ArrayList();
    public final HashMap i = new HashMap();

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f5103f = new ArrayList();

    public zzbzt(String str, long j) {
        JSONObject optJSONObject;
        JSONObject optJSONObject2;
        JSONArray optJSONArray;
        JSONObject optJSONObject3;
        this.f5099b = "";
        this.f5098a = false;
        this.h = false;
        this.f5100c = str;
        this.f5102e = j;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            this.j = new JSONObject(str);
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzlp)).booleanValue() && zzj()) {
                return;
            }
            if (this.j.optInt("status", -1) != 1) {
                this.f5098a = false;
                agd.b("App settings could not be fetched successfully.");
                return;
            }
            this.f5098a = true;
            this.f5099b = this.j.optString(PluginConstants.KEY_APP_ID);
            JSONArray optJSONArray2 = this.j.optJSONArray("ad_unit_id_settings");
            if (optJSONArray2 != null) {
                for (int i = 0; i < optJSONArray2.length(); i++) {
                    JSONObject jSONObject = optJSONArray2.getJSONObject(i);
                    String optString = jSONObject.optString("format");
                    String optString2 = jSONObject.optString("ad_unit_id");
                    if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2)) {
                        if (MediationConstant.RIT_TYPE_INTERSTITIAL.equalsIgnoreCase(optString)) {
                            this.f5104g.add(optString2);
                        } else if (("rewarded".equalsIgnoreCase(optString) || "rewarded_interstitial".equals(optString)) && (optJSONObject3 = jSONObject.optJSONObject("mediation_config")) != null) {
                            this.i.put(optString2, new zzbpa(optJSONObject3));
                        }
                    }
                }
            }
            JSONArray optJSONArray3 = this.j.optJSONArray("persistable_banner_ad_unit_ids");
            if (optJSONArray3 != null) {
                for (int i2 = 0; i2 < optJSONArray3.length(); i2++) {
                    this.f5101d.add(optJSONArray3.optString(i2));
                }
            }
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzgK)).booleanValue() && (optJSONObject2 = this.j.optJSONObject("common_settings")) != null && (optJSONArray = optJSONObject2.optJSONArray("loeid")) != null) {
                for (int i3 = 0; i3 < optJSONArray.length(); i3++) {
                    this.f5103f.add(optJSONArray.get(i3).toString());
                }
            }
            if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzgf)).booleanValue() || (optJSONObject = this.j.optJSONObject("common_settings")) == null) {
                return;
            }
            this.h = optJSONObject.optBoolean("is_prefetching_enabled", false);
        } catch (JSONException e2) {
            zzfxd zzfxdVar = agd.f10175a;
            ti.f20033a.f20034ab.zzw(e2, "AppSettings.parseAppSettingsJson");
        }
    }

    public final long zza() {
        return this.f5102e;
    }

    public final String zzb() {
        return this.f5099b;
    }

    public final String zzc() {
        return this.f5100c;
    }

    public final List zzd() {
        return this.f5103f;
    }

    public final Map zze() {
        return this.i;
    }

    public final JSONObject zzf() {
        return this.j;
    }

    public final void zzg(long j) {
        this.f5102e = j;
    }

    public final boolean zzh() {
        return this.h;
    }

    public final boolean zzi() {
        return this.f5098a;
    }

    public final boolean zzj() {
        if (!TextUtils.isEmpty(this.f5100c) && this.j != null) {
            zzbce zzbceVar = zzbcn.zzls;
            edt edtVar = edt.f15376a;
            zzbcl zzbclVar = edtVar.f15379d;
            zzbcl zzbclVar2 = edtVar.f15379d;
            long longValue = ((Long) zzbclVar.zza(zzbceVar)).longValue();
            if (((Boolean) zzbclVar2.zza(zzbcn.zzlr)).booleanValue() && !TextUtils.isEmpty(this.f5100c)) {
                longValue = this.j.optLong("cache_ttl_sec", ((Long) zzbclVar2.zza(zzbceVar)).longValue());
            }
            ti.f20033a.v.getClass();
            long currentTimeMillis = System.currentTimeMillis();
            if (longValue >= 0) {
                long j = this.f5102e;
                if (j > currentTimeMillis || TimeUnit.MILLISECONDS.toSeconds(currentTimeMillis - j) > longValue) {
                    this.f5101d.clear();
                    this.f5104g.clear();
                    this.i.clear();
                    this.f5099b = "";
                    this.f5100c = "";
                    this.j = null;
                    this.f5098a = false;
                    this.f5103f.clear();
                    this.h = false;
                    return true;
                }
            }
        }
        return false;
    }
}
