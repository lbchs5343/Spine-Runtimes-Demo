package com.bytedance.sdk.openadsdk.core.ox;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.openadsdk.core.i;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.ir.e;
import com.bytedance.sdk.openadsdk.core.ir.k;
import com.bytedance.sdk.openadsdk.core.ir.kx;
import com.bytedance.sdk.openadsdk.core.ir.le;
import com.bytedance.sdk.openadsdk.core.ir.no;
import com.bytedance.sdk.openadsdk.core.ir.o;
import com.bytedance.sdk.openadsdk.core.mn;
import com.bytedance.sdk.openadsdk.core.wp;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private static boolean f3342d = false;
    private static long dq = -1;
    private static AtomicBoolean ox = new AtomicBoolean(false);
    private static volatile String p;

    /* JADX WARN: Can't wrap try/catch for region: R(13:0|1|(31:2|3|4|(3:154|(1:156)|157)(3:8|(1:10)|11)|12|(3:150|(1:152)|153)(3:16|(1:18)|19)|20|21|(3:146|(1:148)|149)(3:25|(1:27)|28)|29|30|(1:32)(1:145)|33|(3:141|(1:143)|144)(3:37|(1:39)|40)|41|42|(3:137|(1:139)|140)(3:46|(1:48)|49)|50|(1:52)|53|(3:132|(1:134)(1:136)|135)(3:57|(1:59)|60)|61|(3:127|(1:129)(1:131)|130)(3:65|(1:67)|68)|69|(3:122|(1:124)(1:126)|125)(3:73|(1:75)|76)|77|(3:117|(1:119)(1:121)|120)(3:81|(1:83)(1:116)|84)|85|(3:112|(1:114)|115)(1:89)|90|91)|(2:93|(9:95|96|(1:98)|99|(1:101)|102|103|104|105))|111|96|(0)|99|(0)|102|103|104|105) */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x03b3, code lost:
    
        r1.put("device_score", -1);
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0399 A[Catch: all -> 0x002e, TRY_LEAVE, TryCatch #1 {all -> 0x002e, blocks: (B:3:0x0007, B:6:0x0019, B:8:0x0023, B:11:0x002a, B:14:0x0046, B:16:0x0050, B:19:0x0057, B:20:0x006c, B:23:0x0079, B:25:0x0083, B:28:0x008a, B:29:0x009f, B:32:0x00ab, B:35:0x00be, B:37:0x00c8, B:40:0x00cf, B:41:0x00e4, B:44:0x0181, B:46:0x018b, B:49:0x0192, B:50:0x01a7, B:52:0x026f, B:55:0x027c, B:57:0x0286, B:60:0x028d, B:63:0x02a7, B:65:0x02b1, B:68:0x02b8, B:71:0x02d2, B:73:0x02dc, B:76:0x02e3, B:79:0x02fd, B:81:0x0307, B:84:0x030f, B:87:0x0329, B:89:0x0333, B:90:0x0348, B:93:0x0355, B:95:0x0363, B:96:0x0372, B:98:0x0385, B:99:0x038a, B:101:0x0399, B:103:0x039e, B:104:0x03b6, B:110:0x03b3, B:111:0x0367, B:112:0x0337, B:115:0x0345, B:117:0x0313, B:120:0x0322, B:122:0x02e7, B:125:0x02f6, B:127:0x02bc, B:130:0x02cb, B:132:0x0291, B:135:0x02a0, B:137:0x0196, B:140:0x01a4, B:141:0x00d3, B:144:0x00e1, B:145:0x00b3, B:146:0x008e, B:149:0x009c, B:150:0x005b, B:153:0x0069, B:154:0x0031, B:157:0x003f), top: B:2:0x0007, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0385 A[Catch: all -> 0x002e, TryCatch #1 {all -> 0x002e, blocks: (B:3:0x0007, B:6:0x0019, B:8:0x0023, B:11:0x002a, B:14:0x0046, B:16:0x0050, B:19:0x0057, B:20:0x006c, B:23:0x0079, B:25:0x0083, B:28:0x008a, B:29:0x009f, B:32:0x00ab, B:35:0x00be, B:37:0x00c8, B:40:0x00cf, B:41:0x00e4, B:44:0x0181, B:46:0x018b, B:49:0x0192, B:50:0x01a7, B:52:0x026f, B:55:0x027c, B:57:0x0286, B:60:0x028d, B:63:0x02a7, B:65:0x02b1, B:68:0x02b8, B:71:0x02d2, B:73:0x02dc, B:76:0x02e3, B:79:0x02fd, B:81:0x0307, B:84:0x030f, B:87:0x0329, B:89:0x0333, B:90:0x0348, B:93:0x0355, B:95:0x0363, B:96:0x0372, B:98:0x0385, B:99:0x038a, B:101:0x0399, B:103:0x039e, B:104:0x03b6, B:110:0x03b3, B:111:0x0367, B:112:0x0337, B:115:0x0345, B:117:0x0313, B:120:0x0322, B:122:0x02e7, B:125:0x02f6, B:127:0x02bc, B:130:0x02cb, B:132:0x0291, B:135:0x02a0, B:137:0x0196, B:140:0x01a4, B:141:0x00d3, B:144:0x00e1, B:145:0x00b3, B:146:0x008e, B:149:0x009c, B:150:0x005b, B:153:0x0069, B:154:0x0031, B:157:0x003f), top: B:2:0x0007, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static JSONObject d(Context context, int i) {
        boolean d2;
        long jy;
        Object ia;
        Object r;
        String gh;
        String cd;
        String fw;
        String f2;
        String le;
        String q;
        String mp;
        String ig;
        String q2;
        JSONObject jSONObject = new JSONObject();
        try {
            com.bytedance.sdk.openadsdk.core.k.dq dqVar = new com.bytedance.sdk.openadsdk.core.k.dq();
            d2 = d();
            boolean z = !d2;
            Object obj = null;
            if (d2 || (q2 = p.dq().q((String) null)) == null) {
                String dq2 = i.dq(dqVar);
                jSONObject.put("imei", dq2);
                p dq3 = p.dq();
                if (dq2 == null) {
                    dq2 = "";
                }
                dq3.mp(dq2);
            } else {
                if (TextUtils.isEmpty(q2)) {
                    q2 = null;
                }
                jSONObject.put("imei", q2);
            }
            if (d2 || (ig = p.dq().ig()) == null) {
                String s = i.s();
                jSONObject.put("android_id", s);
                p dq4 = p.dq();
                if (s == null) {
                    s = "";
                }
                dq4.jy(s);
            } else {
                if (TextUtils.isEmpty(ig)) {
                    ig = null;
                }
                jSONObject.put("android_id", ig);
            }
            jSONObject.put("uuid", ox());
            if (d2 || (mp = p.dq().mp()) == null) {
                String ox2 = i.ox(dqVar);
                jSONObject.put("ssid", ox2);
                p dq5 = p.dq();
                if (ox2 == null) {
                    ox2 = "";
                }
                dq5.f(ox2);
            } else {
                if (TextUtils.isEmpty(mp)) {
                    mp = null;
                }
                jSONObject.put("ssid", mp);
            }
            if (p.dq().o(i)) {
                jSONObject.put("wifi_mac", i.o());
            } else {
                jSONObject.put("wifi_mac", i.p(dqVar));
            }
            if (d2 || (q = p.dq().q()) == null) {
                String d3 = i.d(dqVar);
                jSONObject.put("imsi", d3);
                p dq6 = p.dq();
                if (d3 == null) {
                    d3 = "";
                }
                dq6.fw(d3);
            } else {
                if (TextUtils.isEmpty(q)) {
                    q = null;
                }
                jSONObject.put("imsi", q);
            }
            StringBuilder sb = new StringBuilder();
            sb.append(System.currentTimeMillis() - SystemClock.elapsedRealtime());
            jSONObject.put("boot", sb.toString());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(SystemClock.elapsedRealtime());
            jSONObject.put("power_on_time", sb2.toString());
            jSONObject.put("rom_version", e.dq());
            jSONObject.put("rom_new_version", e.q());
            jSONObject.put("sys_compiling_time", i.p());
            jSONObject.put("type", o.dq(context, z));
            jSONObject.put("os", 1);
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            jSONObject.put("os_version", Build.VERSION.RELEASE);
            jSONObject.put("vendor", Build.MANUFACTURER);
            jSONObject.put("model", i.le());
            jSONObject.put(MediaFormat.KEY_LANGUAGE, Locale.getDefault().getLanguage());
            jSONObject.put("conn_type", o.p());
            if (d2 || (le = p.dq().le()) == null) {
                String s2 = i.s(dqVar);
                jSONObject.put("mac", s2);
                p dq7 = p.dq();
                if (s2 == null) {
                    s2 = "";
                }
                dq7.wp(s2);
            } else {
                if (TextUtils.isEmpty(le)) {
                    le = null;
                }
                jSONObject.put("mac", le);
            }
            int[] ox3 = ce.ox(context);
            jSONObject.put("screen_width", ox3[0]);
            jSONObject.put("screen_height", ox3[1]);
            jSONObject.put("oaid", le.dq(z));
            jSONObject.put("free_space", no.dq);
            jSONObject.put("locale_language", o.o());
            jSONObject.put("screen_bright", Math.ceil(o.no() * 10.0f) / 10.0d);
            jSONObject.put("is_screen_off", !o.dq() ? 1 : 0);
            jSONObject.put("cpu_num", c.q());
            jSONObject.put("cpu_max_freq", c.jy());
            jSONObject.put("cpu_min_freq", c.f());
            jSONObject.put("battery_remaining_pct", (int) o.dq.d(context));
            jSONObject.put("is_charging", o.dq.dq(context));
            jSONObject.put("total_mem", String.valueOf(Long.parseLong(c.ig()) * 1024));
            jSONObject.put("total_space", String.valueOf(c.dq(context)));
            jSONObject.put("free_space_in", String.valueOf(c.d(context)));
            jSONObject.put("sdcard_size", String.valueOf(c.ox(context)));
            jSONObject.put("rooted", c.p(context));
            if (!p.dq().o(i)) {
                jSONObject.put("enable_assisted_clicking", o.mp());
            }
            if (d2 || (f2 = p.dq().f()) == null) {
                String cd2 = i.cd();
                jSONObject.put("mnc", cd2);
                p dq8 = p.dq();
                if (cd2 == null) {
                    cd2 = "";
                }
                dq8.cd(cd2);
            } else {
                if (TextUtils.isEmpty(f2)) {
                    f2 = null;
                }
                jSONObject.put("mnc", f2);
            }
            if (d2 || (fw = p.dq().fw()) == null) {
                String f3 = i.f();
                jSONObject.put("mcc", f3);
                p dq9 = p.dq();
                if (f3 == null) {
                    f3 = "";
                }
                dq9.gh(f3);
            } else {
                if (TextUtils.isEmpty(fw)) {
                    fw = null;
                }
                jSONObject.put("mcc", fw);
            }
            if (d2 || (cd = p.dq().cd()) == null) {
                String gh2 = i.gh();
                jSONObject.put("mnc_2", gh2);
                p dq10 = p.dq();
                if (gh2 == null) {
                    gh2 = "";
                }
                dq10.r(gh2);
            } else {
                if (TextUtils.isEmpty(cd)) {
                    cd = null;
                }
                jSONObject.put("mnc_2", cd);
            }
            if (d2 || (gh = p.dq().gh()) == null) {
                String fw2 = i.fw();
                jSONObject.put("mcc_2", fw2);
                p dq11 = p.dq();
                if (fw2 == null) {
                    fw2 = "";
                }
                dq11.i(fw2);
            } else {
                if (!TextUtils.isEmpty(gh)) {
                    obj = gh;
                }
                jSONObject.put("mcc_2", obj);
            }
            if (d2 || (r = p.dq().r()) == null) {
                String dq12 = com.bytedance.sdk.openadsdk.core.mn.dq.dq(context);
                jSONObject.put("download_channel", dq12);
                p.dq().le(dq12 != null ? dq12 : "");
            } else {
                jSONObject.put("download_channel", r);
            }
            jSONObject.put("is_app_log_con", com.bytedance.sdk.component.ia.d.ox.dq.dq());
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (!d2) {
            String i2 = p.dq().i();
            if (!TextUtils.isEmpty(i2)) {
                jSONObject.put("applog_did", i2);
                jSONObject.put("sec_did", com.bytedance.sdk.openadsdk.dq.dq.dq.d());
                jy = o.jy();
                if (jy != -1) {
                    jSONObject.put("client_global_did", jy);
                }
                jSONObject.put("sys_vol", o.f());
                ia = k.ia();
                if (ia != null) {
                    jSONObject.put("ud", ia);
                }
                jSONObject.put("device_score", Double.parseDouble(com.bytedance.sdk.openadsdk.core.wp.dq.dq().dq("DeviceRate", "bytebench_level")));
                o.dq(jSONObject);
                return jSONObject;
            }
        }
        jSONObject.put("applog_did", mn.dq().d());
        jSONObject.put("sec_did", com.bytedance.sdk.openadsdk.dq.dq.dq.d());
        jy = o.jy();
        if (jy != -1) {
        }
        jSONObject.put("sys_vol", o.f());
        ia = k.ia();
        if (ia != null) {
        }
        jSONObject.put("device_score", Double.parseDouble(com.bytedance.sdk.openadsdk.core.wp.dq.dq().dq("DeviceRate", "bytebench_level")));
        o.dq(jSONObject);
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(JSONObject jSONObject) throws JSONException {
        Set<String> hy = wp.d().hy();
        if (hy == null || hy.size() <= 0) {
            return;
        }
        Map<String, Boolean> dq2 = kx.dq(259200000L);
        final JSONArray jSONArray = new JSONArray();
        JSONArray jSONArray2 = new JSONArray();
        for (Map.Entry<String, Boolean> entry : dq2.entrySet()) {
            String key = entry.getKey();
            if (hy.contains(key)) {
                String scheme = Uri.parse(key).getScheme();
                if (entry.getValue().booleanValue()) {
                    jSONArray.put(scheme);
                } else {
                    jSONArray2.put(scheme);
                }
            }
        }
        if (jSONObject != null && jSONArray.length() > 0) {
            jSONObject.put("scheme_success_list", jSONArray);
        }
        if (jSONObject != null && jSONArray2.length() > 0) {
            jSONObject.put("scheme_fail_list", jSONArray2);
        }
        if (jSONObject == null) {
            p.dq().dq(jSONArray);
        } else {
            com.bytedance.sdk.component.o.mn.d(new kk("tt-scheme-save") { // from class: com.bytedance.sdk.openadsdk.core.ox.dq.2
                @Override // java.lang.Runnable
                public void run() {
                    p.dq().dq(jSONArray);
                }
            });
        }
    }

    public static boolean d() {
        if (f3342d) {
            return true;
        }
        if (dq == -1) {
            return false;
        }
        boolean z = SystemClock.elapsedRealtime() - dq > 60000;
        f3342d = z;
        return z;
    }

    public static String dq(String str, int i) {
        return o.dq(str);
    }

    public static JSONObject dq(Context context, int i) {
        return d(context, i);
    }

    public static void dq() {
        if (dq > -1) {
            return;
        }
        dq = SystemClock.elapsedRealtime();
    }

    public static void dq(JSONObject jSONObject, int i) throws JSONException {
        if (!ox.dq().iw(i)) {
            d(jSONObject);
            return;
        }
        JSONArray k = p.dq().k();
        if (k == null) {
            d(jSONObject);
            return;
        }
        if (k.length() > 0) {
            jSONObject.put("scheme_success_list", k);
        }
        if (ox.get()) {
            return;
        }
        ox.set(true);
        com.bytedance.sdk.component.o.mn.d(new kk("tt-scheme") { // from class: com.bytedance.sdk.openadsdk.core.ox.dq.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    dq.d(null);
                } catch (Exception unused) {
                }
                dq.ox.set(false);
            }
        });
    }

    public static String[] dq(int i) {
        try {
            return o.dq(!d());
        } catch (Exception unused) {
            return new String[]{"", ""};
        }
    }

    public static String ox() {
        if (!TextUtils.isEmpty(p)) {
            return p;
        }
        String s = p.dq().s((String) null);
        p = s;
        return s;
    }
}
