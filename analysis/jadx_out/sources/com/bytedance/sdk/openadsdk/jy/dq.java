package com.bytedance.sdk.openadsdk.jy;

import android.content.Context;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bykv.vk.component.ttvideo.utils.AVErrorInfo;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import com.bytedance.sdk.component.kk.p.iw;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.o.mn;
import com.bytedance.sdk.component.o.no;
import com.bytedance.sdk.component.utils.ia;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.core.gh.ig;
import com.bytedance.sdk.openadsdk.core.i;
import com.bytedance.sdk.openadsdk.core.ir.bl;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.ir.e;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.ox.p;
import com.bytedance.sdk.openadsdk.core.ox.s;
import com.bytedance.sdk.openadsdk.core.wp;
import g.aqi;
import g.cmc;
import g.dyn;
import g.eca;
import g.eyt;
import g.fur;
import g.gs;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes3.dex */
public class dq {
    public static String d() {
        return p.dq().ox("sp_apm_record", "");
    }

    private static void d(final Context context) {
        eca.f15276a.i = new fur() { // from class: com.bytedance.sdk.openadsdk.jy.dq.1
            @Override // g.fur
            public boolean dq() {
                try {
                    return dq.d(Looper.getMainLooper().getThread().getStackTrace());
                } catch (Throwable unused) {
                    return false;
                }
            }

            @Override // g.fur
            public boolean dq(final Throwable th, final Thread thread) {
                try {
                    no.f2029d.s(com.bytedance.sdk.openadsdk.core.n.dq.dq);
                    if (!dq.d(th.getStackTrace())) {
                        return false;
                    }
                    mn.d(new kk("tt_crash_handle") { // from class: com.bytedance.sdk.openadsdk.jy.dq.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            bl.dq().dq(thread, th);
                        }
                    });
                    return true;
                } catch (Throwable unused) {
                    return false;
                }
            }
        };
        boolean z = false;
        boolean z2 = new SecureRandom().nextInt(10) == 0;
        Context applicationContext = context.getApplicationContext();
        cmc cmcVar = new cmc() { // from class: com.bytedance.sdk.openadsdk.jy.dq.2
            @Override // g.cmc
            public String d() {
                String ox = i.ox();
                return TextUtils.isEmpty(ox) ? "0" : ox;
            }

            @Override // g.cmc
            public Map<String, Object> dq() {
                HashMap hashMap = new HashMap();
                String d2 = com.bytedance.sdk.openadsdk.core.mn.dq().d();
                if (TextUtils.isEmpty(d2)) {
                    d2 = i.ox();
                }
                if (!TextUtils.isEmpty(d2)) {
                    hashMap.put("device_id", d2);
                }
                hashMap.put("ac", iw.ox(context));
                hashMap.put("aid", com.bytedance.sdk.openadsdk.core.mn.dq().s());
                hashMap.put("app_name", com.bytedance.sdk.openadsdk.core.mn.dq().iw());
                String no = c.no();
                if (!TextUtils.isEmpty(no)) {
                    hashMap.put("app_version", no);
                }
                String o = c.o();
                if (!TextUtils.isEmpty(o)) {
                    hashMap.put("version_code", o);
                    try {
                        hashMap.put("update_version_code", Integer.valueOf(o));
                    } catch (Exception e2) {
                        hashMap.put("update_version_code", 0);
                        e2.getMessage();
                    }
                }
                hashMap.put("version_name", "6.6.0.7");
                hashMap.put("sdk_api_version", op.ox);
                hashMap.put("device_platform", "android");
                hashMap.put("os", "Android");
                String le = i.le();
                hashMap.put("device_type", le);
                hashMap.put("device_mode", le);
                hashMap.put("rom", e.dq());
                hashMap.put("cpu_abi", Build.CPU_ABI);
                hashMap.put("device_brand", Build.BRAND);
                hashMap.put("channel", op.s());
                hashMap.put(MediaFormat.KEY_LANGUAGE, Locale.getDefault().getLanguage());
                hashMap.put("os_api", String.valueOf(Build.VERSION.SDK_INT));
                try {
                    String str = Build.VERSION.RELEASE;
                    if (str != null && str.length() > 10) {
                        str = str.substring(0, 10);
                    }
                    hashMap.put("os_version", str);
                } catch (Exception unused) {
                }
                hashMap.put("openudid", i.s());
                hashMap.put("dpi", String.valueOf(ce.ia(context)));
                hashMap.put("resolution", ce.p(context) + "*" + ce.s(context));
                return hashMap;
            }

            @Override // g.cmc
            public List<String> iw() {
                return null;
            }

            @Override // g.cmc
            public Map<String, Object> mn() {
                HashMap hashMap = new HashMap();
                String mp = com.bytedance.sdk.openadsdk.core.no.ia().mp();
                if (TextUtils.isEmpty(mp)) {
                    mp = String.valueOf(com.bytedance.sdk.openadsdk.core.mn.dq().s());
                }
                hashMap.put("host_appid", mp);
                hashMap.put(PluginConstants.KEY_SDK_VERSION, "6.6.0.7");
                hashMap.put(PluginConstants.KEY_PLUGIN_VERSION, "6.6.0.7");
                hashMap.put("channel", op.s());
                hashMap.put("sdk_api_version", op.ox);
                return hashMap;
            }

            @Override // g.cmc
            public String ox() {
                return com.bytedance.sdk.openadsdk.core.mn.dq().ox();
            }

            @Override // g.cmc
            public String p() {
                return null;
            }

            @Override // g.cmc
            public Map<String, Integer> s() {
                return null;
            }
        };
        boolean z3 = (wp.d().tu() & 2) == 0;
        if (z2 && (wp.d().tu() & 1) == 0) {
            z = true;
        }
        synchronized (eyt.class) {
            eyt.ba(applicationContext, cmcVar, z3, z);
        }
        ia.dq().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.jy.dq.3
            @Override // java.lang.Runnable
            public void run() {
                if (s.dq()) {
                    ig.dq().dq("apm", 2, 0, 4);
                    return;
                }
                boolean q = wp.d().q();
                boolean dq = dq.dq();
                if (!q || !dq) {
                    ig.dq().dq("apm", 1, 1, 32);
                } else {
                    gs.af().post(new dyn(13, new aqi() { // from class: com.bytedance.sdk.openadsdk.jy.dq.3.1
                        @Override // g.aqi
                        public void dq(boolean z4) {
                            ig.dq().dq("apm", 0, 1, z4 ? 8 : 16);
                        }
                    }));
                }
            }
        }, PushUIConfig.dismissTime);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean d(StackTraceElement[] stackTraceElementArr) {
        if (com.bytedance.sdk.openadsdk.core.no.ia().le()) {
            return false;
        }
        String arrays = Arrays.toString(stackTraceElementArr);
        if (!arrays.contains(BuildConfig.LIBRARY_PACKAGE_NAME) && !arrays.contains("com.bytedance.sdk.component") && !arrays.contains("com.bykv.vk") && !arrays.contains("com.byted.csj.ext_impl") && !arrays.contains("com.bytedance.adsdk") && !arrays.contains("com.bytedance.msdk") && !arrays.contains("com.bytedance.sdk.gromore") && !arrays.contains("com.bytedance.sdk.openadsdk.mediation") && !arrays.contains("bykvm")) {
            return false;
        }
        Map<String, String> d2 = com.bytedance.sdk.openadsdk.core.s.dq().d();
        if (d2 == null) {
            return true;
        }
        if (arrays.contains("com.bytedance.sdk.openadsdk.core.nativeexpress")) {
            d2.put("express", "true");
        }
        if (arrays.contains(com.bytedance.sdk.openadsdk.core.live.dq.class.getPackage().getName()) || arrays.contains("com.bytedance.sdk.openadsdk.live") || arrays.contains("com.bykv.vk.openvk.live")) {
            d2.put("live_sdk", "true");
        }
        if (arrays.contains("com.bytedance.msdk") || arrays.contains("com.bytedance.sdk.gromore") || arrays.contains("com.bytedance.sdk.openadsdk.mediation") || arrays.contains("bykvm")) {
            d2.put("mediation", "true");
        } else {
            d2.put("mediation", "false");
        }
        Map<String, String> d3 = com.bytedance.sdk.openadsdk.core.s.dq().d();
        if (d3 == null || d3.isEmpty()) {
            return true;
        }
        ((HashMap) eca.f15276a.f17729d).putAll(d3);
        return true;
    }

    public static void dq(Context context) {
        d(context);
    }

    public static void dq(String str) {
        p.dq().d("sp_apm_record", str);
    }

    public static boolean dq() {
        int i;
        try {
            String ha = wp.d().ha();
            if (!TextUtils.isEmpty(ha) && ha.contains(";")) {
                String[] split = ha.split(";");
                if (split.length != 2) {
                    return true;
                }
                String str = split[0];
                String str2 = split[1];
                Long l = -1L;
                try {
                    l = Long.valueOf(Long.valueOf(str).longValue() * 60000);
                    i = Integer.valueOf(str2).intValue();
                } catch (Exception e2) {
                    com.bytedance.sdk.component.utils.ig.d("apm", AVErrorInfo.ERROR, e2.getMessage());
                    i = -1;
                }
                if (l.longValue() >= 0 && i >= 0 && i <= 60) {
                    if (l.longValue() == 0 || i == 0 || l.longValue() / i < PushUIConfig.dismissTime) {
                        return false;
                    }
                    String d2 = d();
                    StringBuilder sb = new StringBuilder();
                    long currentTimeMillis = System.currentTimeMillis();
                    if (TextUtils.isEmpty(d2)) {
                        sb.append(currentTimeMillis);
                        dq(sb.toString());
                        return true;
                    }
                    String[] split2 = d2.split(";");
                    int length = split2.length;
                    if (length >= i && length != 0) {
                        boolean z = currentTimeMillis - Long.valueOf(split2[0]).longValue() > l.longValue();
                        int i2 = length - i;
                        for (int i3 = i2; i3 < length; i3++) {
                            String str3 = split2[i3];
                            if (i3 != i2 && !TextUtils.isEmpty(str3)) {
                                sb.append(str3);
                                sb.append(";");
                            }
                        }
                        sb.append(currentTimeMillis);
                        dq(sb.toString());
                        return z;
                    }
                    for (String str4 : split2) {
                        sb.append(str4);
                        sb.append(";");
                    }
                    sb.append(currentTimeMillis);
                    dq(sb.toString());
                    return true;
                }
            }
            return true;
        } catch (Exception e3) {
            e3.printStackTrace();
            return true;
        }
    }
}
