package com.bytedance.embedapplog;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import java.io.UnsupportedEncodingException;
import java.util.UUID;
import org.json.JSONObject;

/* loaded from: classes.dex */
class op extends ji {
    private final Context s;

    public op(Context context) {
        super(false, false);
        this.s = context;
    }

    public static String d(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new String(Base64.decode(str.getBytes("UTF-8"), 0));
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            return str;
        }
    }

    public static String dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            return Base64.encodeToString(str.getBytes("UTF-8"), 0);
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            return str;
        }
    }

    @Override // com.bytedance.embedapplog.ji
    public boolean dq(JSONObject jSONObject) {
        SharedPreferences d2 = com.bytedance.sdk.openadsdk.api.plugin.d.d(this.s, "snssdk_openudid", 0);
        String d3 = d(d2.getString("custom_a", null));
        if (TextUtils.isEmpty(d3)) {
            d3 = d2.getString("clientudid", null);
        }
        if (!c.dq(d3)) {
            try {
                d3 = UUID.randomUUID().toString();
                d3 = dq("clientudid.dat", d3);
            } catch (Exception unused) {
            }
            String dq = dq(d3);
            SharedPreferences.Editor edit = d2.edit();
            edit.putString("custom_a", dq);
            edit.apply();
        }
        jSONObject.put("clientudid", d3);
        return true;
    }
}
