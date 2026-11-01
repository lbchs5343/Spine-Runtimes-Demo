package com.ss.android.socialbase.appdownloader.dq;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import java.util.Iterator;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ox extends dq {
    private final JSONObject p;

    public ox(Context context, com.ss.android.socialbase.downloader.mn.dq dqVar, String str, JSONObject jSONObject) {
        super(context, dqVar, str);
        this.p = jSONObject;
    }

    private static void dq(Intent intent, JSONObject jSONObject, JSONObject jSONObject2) {
        Iterator<String> keys;
        if (jSONObject == null || jSONObject2 == null || jSONObject.length() != jSONObject2.length() || intent == null || (keys = jSONObject.keys()) == null) {
            return;
        }
        while (keys.hasNext()) {
            String next = keys.next();
            String optString = jSONObject2.optString(next);
            if (optString != null) {
                dq(jSONObject, next, optString, intent);
            }
        }
    }

    private static void dq(JSONObject jSONObject, String str, String str2, Intent intent) {
        str2.getClass();
        switch (str2) {
            case "double":
                intent.putExtra(str, jSONObject.optDouble(str));
                break;
            case "string":
                intent.putExtra(str, jSONObject.optString(str));
                break;
            case "int":
                intent.putExtra(str, jSONObject.optInt(str));
                break;
            case "long":
                intent.putExtra(str, jSONObject.optLong(str));
                break;
            case "boolean":
                intent.putExtra(str, jSONObject.optBoolean(str));
                break;
        }
    }

    @Override // com.ss.android.socialbase.appdownloader.dq.s
    public Intent d() {
        String optString = this.p.optString("action");
        String optString2 = this.p.optString("category");
        int optInt = this.p.optInt("flags", 1342210048);
        String optString3 = this.p.optString("path_extra_key");
        String optString4 = this.p.optString("path_data_key");
        JSONObject optJSONObject = this.p.optJSONObject("extra");
        JSONObject optJSONObject2 = this.p.optJSONObject("extra_type");
        if (TextUtils.isEmpty(optString)) {
            return null;
        }
        Intent intent = new Intent(optString);
        if (!TextUtils.isEmpty(optString2)) {
            intent.addCategory(optString2);
        }
        if (!TextUtils.isEmpty(optString4)) {
            try {
                intent.setData(Uri.parse(String.format(optString4, this.ox)));
            } catch (Throwable unused) {
            }
        }
        intent.setFlags(optInt);
        if (!TextUtils.isEmpty(optString3)) {
            intent.putExtra(optString3, this.ox);
        }
        dq(intent, optJSONObject, optJSONObject2);
        return intent;
    }
}
