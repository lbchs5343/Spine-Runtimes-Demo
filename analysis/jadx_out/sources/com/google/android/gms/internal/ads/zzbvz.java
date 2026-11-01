package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import g.abn;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzbvz {

    /* renamed from: a, reason: collision with root package name */
    public final JSONObject f5013a;

    /* renamed from: b, reason: collision with root package name */
    public final long f5014b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f5015c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f5016d;

    /* renamed from: e, reason: collision with root package name */
    public final List f5017e;

    /* renamed from: f, reason: collision with root package name */
    public final String f5018f;

    /* renamed from: g, reason: collision with root package name */
    public final String f5019g;
    public final String h;
    public final long i;
    public final String j;
    public final int k;

    /* JADX WARN: Removed duplicated region for block: B:32:0x00d7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzbvz(JSONObject jSONObject) {
        Long valueOf;
        String optString;
        Long l = -1L;
        this.f5018f = jSONObject.optString(abn.EXTRA_URL);
        this.h = jSONObject.optString("base_uri");
        this.j = jSONObject.optString("post_parameters");
        String optString2 = jSONObject.optString("drt_include");
        this.f5015c = optString2 != null && (optString2.equals("1") || optString2.equals("true"));
        String optString3 = jSONObject.optString("cookies_include", "true");
        this.f5016d = optString3 != null && (optString3.equals("1") || optString3.equals("true"));
        jSONObject.optString("request_id");
        jSONObject.optString("type");
        String optString4 = jSONObject.optString("errors");
        this.f5017e = optString4 == null ? null : Arrays.asList(optString4.split(","));
        this.k = jSONObject.optInt("valid", 0) == 1 ? -2 : 1;
        jSONObject.optString("fetched_ad");
        jSONObject.optBoolean("render_test_ad_label");
        JSONObject optJSONObject = jSONObject.optJSONObject("preprocessor_flags");
        this.f5013a = optJSONObject == null ? new JSONObject() : optJSONObject;
        jSONObject.optString("analytics_query_ad_event_id");
        jSONObject.optBoolean("is_analytics_logging_enabled");
        this.f5019g = jSONObject.optString("pool_key");
        String optString5 = jSONObject.optString("start_time");
        if (!TextUtils.isEmpty(optString5)) {
            try {
                valueOf = Long.valueOf(optString5);
            } catch (NumberFormatException unused) {
            }
            this.i = valueOf.longValue();
            optString = jSONObject.optString("end_time");
            if (!TextUtils.isEmpty(optString)) {
                try {
                    l = Long.valueOf(optString);
                } catch (NumberFormatException unused2) {
                }
            }
            this.f5014b = l.longValue();
        }
        valueOf = l;
        this.i = valueOf.longValue();
        optString = jSONObject.optString("end_time");
        if (!TextUtils.isEmpty(optString)) {
        }
        this.f5014b = l.longValue();
    }

    public final int zza() {
        return this.k;
    }

    public final long zzb() {
        return this.f5014b;
    }

    public final long zzc() {
        return this.i;
    }

    public final String zzd() {
        return this.h;
    }

    public final String zze() {
        return this.f5019g;
    }

    public final String zzf() {
        return this.j;
    }

    public final String zzg() {
        return this.f5018f;
    }

    public final List zzh() {
        return this.f5017e;
    }

    public final JSONObject zzi() {
        return this.f5013a;
    }

    public final boolean zzj() {
        return this.f5016d;
    }

    public final boolean zzk() {
        return this.f5015c;
    }
}
