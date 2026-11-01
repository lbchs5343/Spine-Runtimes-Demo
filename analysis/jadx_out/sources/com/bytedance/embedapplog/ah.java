package com.bytedance.embedapplog;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class ah {

    /* renamed from: d, reason: collision with root package name */
    final String f706d;
    final String dq;
    final Integer iw;
    final Long mn;
    final Boolean ox;
    final Long p;
    final Long s;

    public ah(String str, String str2, Boolean bool, Long l, Long l2, Integer num, Long l3) {
        this.dq = str;
        this.f706d = str2;
        this.ox = bool;
        this.p = l;
        this.s = l2;
        this.iw = num;
        this.mn = l3;
    }

    public static ah dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            return new ah(jSONObject.optString(TTDownloadField.TT_ID, null), jSONObject.optString("req_id", null), jSONObject.has("is_track_limited") ? Boolean.valueOf(jSONObject.optBoolean("is_track_limited")) : null, jSONObject.has("take_ms") ? Long.valueOf(jSONObject.optLong("take_ms", -1L)) : null, jSONObject.has("time") ? Long.valueOf(jSONObject.optLong("time", -1L)) : null, jSONObject.has("query_times") ? Integer.valueOf(jSONObject.optInt("query_times", -1)) : null, jSONObject.has("hw_id_version_code") ? Long.valueOf(jSONObject.optLong("hw_id_version_code", -1L)) : null);
        } catch (JSONException e2) {
            jo.dq(e2);
            return null;
        }
    }

    public JSONObject d() {
        JSONObject jSONObject = new JSONObject();
        sc.dq(jSONObject, TTDownloadField.TT_ID, this.dq);
        sc.dq(jSONObject, "req_id", this.f706d);
        sc.dq(jSONObject, "is_track_limited", this.ox);
        sc.dq(jSONObject, "take_ms", this.p);
        sc.dq(jSONObject, "time", this.s);
        sc.dq(jSONObject, "query_times", this.iw);
        sc.dq(jSONObject, "hw_id_version_code", this.mn);
        return jSONObject;
    }

    public Map<String, String> dq() {
        HashMap hashMap = new HashMap();
        sc.dq(hashMap, TTDownloadField.TT_ID, this.dq);
        sc.dq(hashMap, "req_id", this.f706d);
        sc.dq(hashMap, "is_track_limited", String.valueOf(this.ox));
        sc.dq(hashMap, "take_ms", String.valueOf(this.p));
        sc.dq(hashMap, "time", String.valueOf(this.s));
        sc.dq(hashMap, "query_times", String.valueOf(this.iw));
        sc.dq(hashMap, "hw_id_version_code", String.valueOf(this.mn));
        return hashMap;
    }

    public String toString() {
        return d().toString();
    }
}
