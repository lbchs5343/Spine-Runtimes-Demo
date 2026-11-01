package com.bytedance.embedapplog;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import g.awf;
import java.util.HashMap;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class v {
    private static final String[] dq = {"ab_version", "device_brand", MediaFormat.KEY_LANGUAGE, "os_api", "resolution", "google_aid", "build_serial", "carrier", "install_id", "package", "app_version", "device_model", "udid", "density_dpi", "aliyun_uuid", "mcc_mnc", "sim_region", "ab_client", "ab_group", "ab_feature", "device_id", "openudid", "clientudid", "aid"};

    /* renamed from: d, reason: collision with root package name */
    private static final String[] f748d = {"ab_version", "device_brand", MediaFormat.KEY_LANGUAGE, "os_api", "resolution", "google_aid", "build_serial", "carrier", "iid", "app_name", "version_name", "device_type", "uuid", "dpi", "aliyun_uuid", "mcc_mnc", "sim_region", "ab_client", "ab_group", "ab_feature", "device_id", "openudid", "clientudid", "aid"};

    public static String dq(Context context, JSONObject jSONObject, String str, boolean z, d dVar) {
        HashMap<String, String> dq2;
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        HashMap hashMap = new HashMap(dq.length + 10);
        int i = 0;
        while (true) {
            String[] strArr = dq;
            if (i >= strArr.length) {
                break;
            }
            String optString = jSONObject.optString(strArr[i], null);
            if (!TextUtils.isEmpty(optString)) {
                hashMap.put(f748d[i], optString);
            }
            i++;
        }
        if (dVar != null) {
            try {
                dq2 = dVar.dq(context);
            } catch (Exception e2) {
                jo.d(e2);
            }
        } else {
            dq2 = null;
        }
        if (yo.d(context) && dq2 != null) {
            hashMap.putAll(dq2);
        }
        try {
            HashMap<String, String> dq3 = dq.ox() == null ? null : dq.ox().dq();
            if (dq3 != null) {
                hashMap.putAll(dq3);
            }
        } catch (Exception e3) {
            jo.d(e3);
        }
        if (dq.ox.size() > 0) {
            hashMap.putAll(dq.ox);
        }
        if (z) {
            hashMap.put("ssmix", "a");
        }
        String dq4 = m.dq(context);
        if (!TextUtils.isEmpty(dq4)) {
            hashMap.put("ac", dq4);
        }
        String str2 = (String) dq.dq("tweaked_channel", "");
        if (TextUtils.isEmpty(str2)) {
            str2 = (String) dq.dq("channel", "");
        }
        if (!TextUtils.isEmpty(str2)) {
            hashMap.put("channel", str2);
        }
        String optString2 = jSONObject.optString("os_version", null);
        if (optString2 != null && optString2.length() > 10) {
            optString2 = optString2.substring(0, 10);
        }
        hashMap.put("os_version", optString2);
        hashMap.put("_rticket", String.valueOf(System.currentTimeMillis()));
        hashMap.put("device_platform", "android");
        int intValue = ((Integer) dq.dq("version_code", -1)).intValue();
        if (intValue != -1) {
            hashMap.put("version_code", String.valueOf(intValue));
        }
        int intValue2 = ((Integer) dq.dq("manifest_version_code", -1)).intValue();
        if (intValue2 != -1) {
            hashMap.put("manifest_version_code", String.valueOf(intValue2));
        }
        int intValue3 = ((Integer) dq.dq("update_version_code", -1)).intValue();
        if (intValue3 != -1) {
            hashMap.put("update_version_code", String.valueOf(intValue3));
        }
        String dq5 = bx.dq(jSONObject.optJSONObject("oaid"));
        if (!TextUtils.isEmpty(dq5)) {
            hashMap.put("oaid", dq5);
        }
        String optString3 = jSONObject.optString("cdid");
        if (!TextUtils.isEmpty(optString3)) {
            hashMap.put("cdid", optString3);
        }
        if (!str.endsWith("/")) {
            str = str.concat("/");
        }
        StringBuilder o = awf.o(str);
        o.append(str.indexOf(63) >= 0 ? '&' : '?');
        return yo.dq(o.toString(), hashMap, "UTF-8");
    }

    public static String[] dq(le leVar, Context context, JSONObject jSONObject) {
        String[] d2 = leVar.ia().d();
        String[] strArr = new String[d2.length];
        String str = dq.mn() ? "?tt_data=a" : "?";
        for (int i = 0; i < d2.length; i++) {
            String dq2 = dq(context, jSONObject, awf.ad(new StringBuilder(), d2[i], str), true, dq.p());
            strArr[i] = dq2;
            strArr[i] = yy.dq(dq2, yy.f753d);
        }
        return strArr;
    }
}
