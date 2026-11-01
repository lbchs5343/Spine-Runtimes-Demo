package com.google.android.gms.internal.ads;

import g.edt;
import g.fso;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzdjc extends zzdjd {

    /* renamed from: a, reason: collision with root package name */
    public final JSONObject f6065a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f6066b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f6067c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f6068d;

    /* renamed from: e, reason: collision with root package name */
    public final JSONObject f6069e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f6070f;

    /* renamed from: g, reason: collision with root package name */
    public final String f6071g;

    public zzdjc(zzfet zzfetVar, JSONObject jSONObject) {
        super(zzfetVar);
        String[] strArr = {"tracking_urls_and_actions", "active_view"};
        JSONObject au = fso.au(jSONObject, strArr);
        this.f6069e = au == null ? null : au.optJSONObject(strArr[1]);
        String[] strArr2 = {"allow_pub_owned_ad_view"};
        JSONObject au2 = fso.au(jSONObject, strArr2);
        this.f6070f = au2 == null ? false : au2.optBoolean(strArr2[0], false);
        String[] strArr3 = {"attribution", "allow_pub_rendering"};
        JSONObject au3 = fso.au(jSONObject, strArr3);
        this.f6066b = au3 == null ? false : au3.optBoolean(strArr3[1], false);
        String[] strArr4 = {"enable_omid"};
        JSONObject au4 = fso.au(jSONObject, strArr4);
        this.f6067c = au4 == null ? false : au4.optBoolean(strArr4[0], false);
        String[] strArr5 = {"watermark_overlay_png_base64"};
        JSONObject au5 = fso.au(jSONObject, strArr5);
        this.f6071g = au5 != null ? au5.optString(strArr5[0], "") : "";
        this.f6068d = jSONObject.optJSONObject("overlay") != null;
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfi)).booleanValue()) {
            this.f6065a = jSONObject.optJSONObject("omid_settings");
        } else {
            this.f6065a = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjd
    public final zzffr zza() {
        JSONObject jSONObject = this.f6065a;
        return jSONObject != null ? new zzffr(jSONObject) : this.h.zzV;
    }

    @Override // com.google.android.gms.internal.ads.zzdjd
    public final String zzb() {
        return this.f6071g;
    }

    @Override // com.google.android.gms.internal.ads.zzdjd
    public final JSONObject zzc() {
        JSONObject jSONObject = this.f6069e;
        if (jSONObject != null) {
            return jSONObject;
        }
        try {
            return new JSONObject(this.h.zzz);
        } catch (JSONException unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjd
    public final boolean zzd() {
        return this.f6067c;
    }

    @Override // com.google.android.gms.internal.ads.zzdjd
    public final boolean zze() {
        return this.f6070f;
    }

    @Override // com.google.android.gms.internal.ads.zzdjd
    public final boolean zzf() {
        return this.f6066b;
    }

    @Override // com.google.android.gms.internal.ads.zzdjd
    public final boolean zzg() {
        return this.f6068d;
    }
}
