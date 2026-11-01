package com.bytedance.msdk.ia;

import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Locale;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class wp {
    public static JSONObject d() {
        JSONObject jSONObject = new JSONObject();
        Context context = com.bytedance.msdk.core.dq.getContext();
        try {
            jSONObject.put("device_id", e.dq());
            jSONObject.put("user_unique_id", !TextUtils.isEmpty(e.dq()) ? e.dq() : UUID.randomUUID().toString());
            jSONObject.put(PluginConstants.KEY_SDK_VERSION, com.bytedance.msdk.d.p.d());
            jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, com.bytedance.msdk.d.p.p());
            jSONObject.put("os", "Android");
            jSONObject.put("os_version", e.q());
            jSONObject.put("device_model", e.mn());
            jSONObject.put("resolution", com.bytedance.msdk.dq.s.mn.ox(com.bytedance.msdk.core.dq.getContext()) + "x" + com.bytedance.msdk.dq.s.mn.d(com.bytedance.msdk.core.dq.getContext()));
            jSONObject.put(MediaFormat.KEY_LANGUAGE, e.kk());
            jSONObject.put("timezone", e.ir());
            jSONObject.put("access", e.iw());
            jSONObject.put("openudid", e.p());
            jSONObject.put("aid", "5685");
            jSONObject.put("display_name", kk.d());
            jSONObject.put("app_version", kk.dq());
            jSONObject.put("package", c.dq());
            jSONObject.put("region", Locale.getDefault().getCountry());
            jSONObject.put("tz_name", Calendar.getInstance().getTimeZone().getID());
            jSONObject.put("tz_offset", Calendar.getInstance().getTimeZone().getOffset(System.currentTimeMillis()) / 1000);
            jSONObject.put("rom", e.op());
            jSONObject.put("device_manufacturer", Build.MANUFACTURER);
            dq(context, jSONObject);
            jSONObject.put("display_density", e.u());
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            jSONObject.put("density_dpi", com.bytedance.msdk.dq.s.mn.s(context));
            jSONObject.put("device_brand", Build.BRAND);
            jSONObject.put("cpu_abi", Build.CPU_ABI);
            jSONObject.put("build_serial", e.h());
            jSONObject.put("version_code", c.d());
            jSONObject.put("udid", e.i());
            jSONObject.put(MediationConstant.KEY_USE_POLICY_OBJ_CUSTOM, ox());
            String le = e.le();
            if (TextUtils.isEmpty(le)) {
                le = "127.0.0.1";
            } else if (le.contains(",")) {
                le = dq(le);
            }
            jSONObject.put("ip", le);
            return jSONObject;
        } catch (Exception e2) {
            com.bytedance.msdk.s.d.d.dq("getUploadEventV3Header", "exception: " + e2.toString());
            e2.printStackTrace();
            return jSONObject;
        }
    }

    private static String dq(String str) {
        String[] split = str.split(",");
        return (split == null || split.length <= 0 || TextUtils.isEmpty(split[0])) ? "127.0.0.1" : split[0].trim();
    }

    public static JSONObject dq() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("os", e.mp());
            jSONObject.put("imei", e.i());
            jSONObject.put("imei_md5", k.dq(e.i()));
            jSONObject.put("gaid", ia.dq().d());
            jSONObject.put("oaid", e.d());
            jSONObject.put("applog_did", e.dq());
            jSONObject.put("device_model", e.mn());
            jSONObject.put("vendor", e.fw());
            jSONObject.put("ua", e.n());
            jSONObject.put("ip", e.le());
            jSONObject.put("package_name", c.dq());
            jSONObject.put("publisher_did", com.bytedance.msdk.core.d.no().cd());
            jSONObject.put("android_id", e.p());
            jSONObject.put("os_version", e.q());
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    public static JSONObject dq(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("imei", e.i());
            jSONObject.put("android_id", e.p());
            jSONObject.put("uuid", e.k());
            jSONObject.put("ssid", e.e());
            jSONObject.put("wifi_mac", e.kx());
            jSONObject.put("imsi", e.wp());
            StringBuilder sb = new StringBuilder();
            sb.append(SystemClock.elapsedRealtime());
            jSONObject.put("power_on_time", sb.toString());
            jSONObject.put("rom_version", ji.dq());
            jSONObject.put("sys_compiling_time", e.ox());
            jSONObject.put("type", e.bl());
            jSONObject.put("os", e.mp());
            jSONObject.put("os_version", e.q());
            jSONObject.put("vendor", e.fw());
            jSONObject.put("device_model", e.mn());
            jSONObject.put(MediaFormat.KEY_LANGUAGE, e.kk());
            jSONObject.put("conn_type", e.s());
            jSONObject.put("mac", e.ji());
            jSONObject.put("screen_width", com.bytedance.msdk.dq.s.mn.d(context));
            jSONObject.put("screen_height", com.bytedance.msdk.dq.s.mn.ox(context));
            jSONObject.put("oaid", e.d());
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    private static void dq(Context context, JSONObject jSONObject) {
        ArrayList<String> dq;
        if (context == null || jSONObject == null || (dq = o.dq(context, "MD5")) == null || dq.isEmpty()) {
            return;
        }
        try {
            jSONObject.put("sig_hash", Build.MANUFACTURER);
        } catch (JSONException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static JSONObject ox() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("imei", e.i());
            jSONObject.put("imei_md5", k.dq(e.i()));
            jSONObject.put("gaid", ia.dq().d());
            jSONObject.put("applog_did", e.dq());
            jSONObject.put("publisher_did", com.bytedance.msdk.core.d.no().cd());
            jSONObject.put("android_id", e.p());
            jSONObject.put("oaid", e.d());
            return jSONObject;
        } catch (JSONException e2) {
            throw new RuntimeException(e2);
        }
    }
}
