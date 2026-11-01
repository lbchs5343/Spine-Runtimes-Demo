package com.bytedance.sdk.openadsdk.core.gh;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import com.bytedance.embedapplog.util.TTEncryptUtils;
import com.bytedance.sdk.component.utils.q;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.core.i;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.ir.e;
import com.bytedance.sdk.openadsdk.core.ir.le;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.zip.GZIPOutputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq implements com.bytedance.sdk.component.ia.dq.ia {
    public static final dq dq = new dq();

    /* renamed from: d, reason: collision with root package name */
    private long f2869d;
    private int ox;
    private String p;

    private dq() {
    }

    private byte[] d(JSONObject jSONObject) {
        GZIPOutputStream gZIPOutputStream;
        GZIPOutputStream gZIPOutputStream2 = null;
        if (jSONObject == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(8192);
        try {
            try {
                try {
                    gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e3) {
            e3.printStackTrace();
        }
        try {
            gZIPOutputStream.write(jSONObject.toString().getBytes());
            gZIPOutputStream.close();
        } catch (Exception e4) {
            e = e4;
            gZIPOutputStream2 = gZIPOutputStream;
            e.printStackTrace();
            if (gZIPOutputStream2 != null) {
                gZIPOutputStream2.close();
            }
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th2) {
            th = th2;
            gZIPOutputStream2 = gZIPOutputStream;
            if (gZIPOutputStream2 != null) {
                try {
                    gZIPOutputStream2.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            throw th;
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static String dq(int i) {
        return i != 120 ? i != 160 ? i != 240 ? i != 320 ? i != 480 ? i != 640 ? "mdpi" : "xxxhdpi" : "xxhdpi" : "xhdpi" : "hdpi" : "mdpi" : "ldpi";
    }

    @SuppressLint({"HardwareIds"})
    private JSONObject dq(List<com.bytedance.sdk.component.ia.dq.d> list, boolean z, boolean z2) {
        JSONObject jSONObject = new JSONObject();
        Context context = wp.getContext();
        if (z) {
            try {
                jSONObject.put(PluginConstants.KEY_SDK_VERSION, op.ox);
                jSONObject.put("display_name", com.bytedance.sdk.openadsdk.core.mn.dq.s());
                jSONObject.put("app_version", com.bytedance.sdk.openadsdk.core.mn.dq.p());
                jSONObject.put("package", c.kk());
                jSONObject.put("region", Locale.getDefault().getCountry());
                jSONObject.put("tz_name", Calendar.getInstance().getTimeZone().getID());
                jSONObject.put("tz_offset", Calendar.getInstance().getTimeZone().getOffset(System.currentTimeMillis()) / 1000);
                ArrayList<String> dq2 = com.bytedance.sdk.component.utils.ox.dq(context, "MD5");
                if (dq2 != null && !dq2.isEmpty()) {
                    jSONObject.put("sig_hash", dq2.get(0));
                }
                jSONObject.put("version_code", c.o());
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.ig.p("log_net", th.getMessage());
                return jSONObject;
            }
        }
        jSONObject.put("ua", c.mn());
        com.bytedance.sdk.openadsdk.jy.d.ox(context, jSONObject);
        jSONObject.put("openudid", i.s());
        jSONObject.put("oaid", le.dq(false));
        jSONObject.put("ad_sdk_version", op.ox);
        jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, "6.6.0.7");
        jSONObject.put("is_plugin", op.dq());
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("client_ipv4", com.bytedance.sdk.openadsdk.core.ir.o.dq((String) null));
        jSONObject2.put("client_ipv6", com.bytedance.sdk.openadsdk.core.ir.o.mn());
        jSONObject.put(MediationConstant.KEY_USE_POLICY_OBJ_CUSTOM, jSONObject2);
        jSONObject.put("sim_op", i.q());
        jSONObject.put("root", z2 ? 1 : 0);
        jSONObject.put("timezone", ig());
        jSONObject.put("access", q.mn(context));
        jSONObject.put("os", "Android");
        jSONObject.put("os_version", Build.VERSION.RELEASE);
        jSONObject.put("os_api", Build.VERSION.SDK_INT);
        if (TextUtils.isEmpty(this.p)) {
            this.p = dq(context);
        }
        jSONObject.put("device_type", this.p);
        jSONObject.put("device_model", i.le());
        jSONObject.put("device_brand", Build.BRAND);
        jSONObject.put("device_manufacturer", Build.MANUFACTURER);
        jSONObject.put(MediaFormat.KEY_LANGUAGE, Locale.getDefault().getLanguage());
        jSONObject.put("resolution", ce.s(context) + "x" + ce.p(context));
        jSONObject.put("display_density", dq(ce.ia(context)));
        jSONObject.put("density_dpi", ce.ia(context));
        jSONObject.put("device_id", i.ox());
        int dq3 = com.bytedance.sdk.component.ia.d.ox.dq.dq(list, com.bytedance.sdk.component.ia.d.dq.mn("csj"));
        if (dq3 != 0) {
            jSONObject.put("aid", String.valueOf(dq3));
        } else {
            jSONObject.put("aid", "1371");
        }
        jSONObject.put("rom", no());
        jSONObject.put("cpu_abi", Build.CPU_ABI);
        jSONObject.put("build_serial", i.no());
        jSONObject.put("ut", this.ox);
        jSONObject.put("uid", this.f2869d);
        jSONObject.put("locale_language", com.bytedance.sdk.openadsdk.core.ir.o.o());
        jSONObject.put("screen_bright", Math.ceil(com.bytedance.sdk.openadsdk.core.ir.o.no() * 10.0f) / 10.0d);
        jSONObject.put("is_screen_off", !com.bytedance.sdk.openadsdk.core.ir.o.dq() ? 1 : 0);
        if (context != null) {
            jSONObject.put("download_channel", com.bytedance.sdk.openadsdk.core.mn.dq.dq(context));
        }
        if (n.ox() > 0) {
            jSONObject.put("screenshot_time", String.valueOf(n.ox()));
        }
        jSONObject.put("mnc", i.cd());
        jSONObject.put("mcc", i.f());
        jSONObject.put("pan_code_serial", "1000");
        return jSONObject;
    }

    private void dq(com.bytedance.sdk.component.ia.dq.d dVar) {
        if (dVar == null) {
            return;
        }
        JSONObject mn = dVar.mn();
        JSONObject optJSONObject = mn.optJSONObject("params");
        String optString = optJSONObject != null ? optJSONObject.optString("log_extra", "") : mn.optString("log_extra", "");
        long ox = c.ox(optString);
        int p = c.p(optString);
        if (ox == 0) {
            ox = this.f2869d;
        }
        this.f2869d = ox;
        if (p == 0) {
            p = this.ox;
        }
        this.ox = p;
    }

    public static int ig() {
        int rawOffset = TimeZone.getDefault().getRawOffset() / 3600000;
        if (rawOffset < -12) {
            rawOffset = -12;
        }
        if (rawOffset > 12) {
            return 12;
        }
        return rawOffset;
    }

    public static String no() {
        StringBuilder sb = new StringBuilder();
        try {
            if (e.jy()) {
                sb.append("MIUI-");
            } else if (e.gh()) {
                sb.append("FLYME-");
            } else {
                String r = e.r();
                if (e.dq(r)) {
                    sb.append("EMUI-");
                }
                if (!TextUtils.isEmpty(r)) {
                    sb.append(r);
                    sb.append("-");
                }
            }
            sb.append(Build.VERSION.INCREMENTAL);
        } catch (Throwable unused) {
        }
        return sb.toString();
    }

    @Override // com.bytedance.sdk.component.ia.dq.ia
    public String d() {
        return c.i();
    }

    @Override // com.bytedance.sdk.component.ia.dq.ia
    public byte[] d(JSONObject jSONObject, int i) {
        byte[] d2 = d(jSONObject);
        if (d2 == null || !com.bytedance.sdk.component.panglearmor.kk.d() || i <= 3) {
            return null;
        }
        byte[] dq2 = com.bytedance.sdk.component.panglearmor.kk.dq().dq(d2);
        if (dq2 == null) {
            ig.dq().dq(3, -1L, "stats");
        }
        return dq2;
    }

    public String dq(Context context) {
        try {
            return com.bytedance.sdk.openadsdk.core.ir.o.ox(context) ? "tv" : com.bytedance.sdk.openadsdk.core.ir.o.d(context) ? "android_pad" : "android";
        } catch (Throwable unused) {
            return "android";
        }
    }

    @Override // com.bytedance.sdk.component.ia.dq.ia
    public JSONObject dq(List<com.bytedance.sdk.component.ia.dq.d> list, boolean z) {
        if (list != null && !list.isEmpty()) {
            JSONObject jSONObject = new JSONObject();
            boolean z2 = false;
            try {
                dq(list.get(0));
                JSONArray jSONArray = new JSONArray();
                Iterator<com.bytedance.sdk.component.ia.dq.d> it = list.iterator();
                while (it.hasNext()) {
                    JSONObject mn = it.next().mn();
                    if (TextUtils.equals("pangle_live_sdk_monitor", mn.optString("event"))) {
                        if (!z2) {
                            z2 = true;
                        }
                        mn.putOpt("nt", Integer.valueOf(q.ox(wp.getContext())));
                    }
                    jSONArray.put(mn);
                }
                jSONObject.put("header", dq(list, z2, z));
                jSONObject.put("event_v3", jSONArray);
                jSONObject.put("magic_tag", "ss_app_log");
                jSONObject.put("_gen_time", System.currentTimeMillis());
                return jSONObject;
            } catch (JSONException e2) {
                com.bytedance.sdk.component.utils.ig.d(e2.getMessage());
            }
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.ia.dq.ia
    public JSONObject dq(JSONObject jSONObject) {
        return com.bytedance.sdk.component.utils.dq.dq(jSONObject);
    }

    @Override // com.bytedance.sdk.component.ia.dq.ia
    public boolean dq() {
        return com.bytedance.sdk.openadsdk.core.no.ia().ce();
    }

    @Override // com.bytedance.sdk.component.ia.dq.ia
    public byte[] dq(JSONObject jSONObject, int i) {
        byte[] d2 = d(jSONObject);
        if (d2 == null) {
            return null;
        }
        if (i <= 3) {
            return TTEncryptUtils.a(d2, d2.length);
        }
        byte[] dq2 = com.bytedance.sdk.component.panglearmor.kk.dq().dq(d2);
        if (dq2 == null) {
            ig.dq().dq(3, -1L, "applog");
        }
        return dq2;
    }

    @Override // com.bytedance.sdk.component.ia.dq.ia
    public boolean ia() {
        return op.dq();
    }

    @Override // com.bytedance.sdk.component.ia.dq.ia
    public String iw() {
        return c.r();
    }

    @Override // com.bytedance.sdk.component.ia.dq.ia
    public JSONObject kk() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("device_id", i.ox());
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.bytedance.sdk.component.ia.dq.ia
    public String mn() {
        return c.ia("/api/ad/union/sdk/stats/batch/");
    }

    @Override // com.bytedance.sdk.component.ia.dq.ia
    public int o() {
        return wp.d().jo() ? 4 : 3;
    }

    @Override // com.bytedance.sdk.component.ia.dq.ia
    public long ox() {
        long cd = wp.d().cd();
        return (cd < 0 || cd == 2147483647L) ? PushUIConfig.dismissTime : cd;
    }

    @Override // com.bytedance.sdk.component.ia.dq.ia
    public int p() {
        int gh = wp.d().gh();
        if (gh < 0 || gh == Integer.MAX_VALUE) {
            return 10;
        }
        return gh;
    }

    @Override // com.bytedance.sdk.component.ia.dq.ia
    public com.bytedance.sdk.component.ia.dq.dq.iw s() {
        return new o(com.bytedance.sdk.openadsdk.core.le.s.dq().d().d());
    }
}
