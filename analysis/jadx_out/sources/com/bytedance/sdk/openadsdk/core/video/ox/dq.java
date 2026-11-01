package com.bytedance.sdk.openadsdk.core.video.ox;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.component.iw.f;
import com.bytedance.sdk.component.iw.no;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.utils.ox;
import com.bytedance.sdk.component.utils.q;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;
import com.bytedance.sdk.openadsdk.core.i;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.e;
import com.bytedance.sdk.openadsdk.core.ir.le;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.r.ce;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.h.mn;
import com.bytedance.sdk.openadsdk.ia.d;
import g.ajh;
import g.cux;
import g.cvc;
import g.dnf;
import g.dyp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq {
    private static int d() {
        int rawOffset = TimeZone.getDefault().getRawOffset() / 3600000;
        if (rawOffset < -12) {
            rawOffset = -12;
        }
        if (rawOffset > 12) {
            return 12;
        }
        return rawOffset;
    }

    public static dnf d(int i) {
        return i == 7 ? dnf.AD_UNION_EXCITATION : i == 8 ? dnf.AD_UNION_INSERT : i == 5 ? dnf.AD_UNION_FEED : i == 9 ? dnf.AD_UNION_DRAW : dnf.NO_VALUE;
    }

    public static void d(j jVar) {
        if (jVar != null && dq(jVar)) {
            String ia = ce.ia(jVar);
            String kk = ce.kk(jVar);
            if (!TextUtils.isEmpty(ia)) {
                d.dq(ia).dq(new f() { // from class: com.bytedance.sdk.openadsdk.core.video.ox.dq.2
                    @Override // com.bytedance.sdk.component.iw.f
                    @ATSMethod(2)
                    public void dq(int i, String str, Throwable th) {
                    }

                    @Override // com.bytedance.sdk.component.iw.f
                    @ATSMethod(1)
                    public void dq(no noVar) {
                    }
                });
            }
            if (TextUtils.isEmpty(kk)) {
                return;
            }
            d.dq(kk).dq(new f() { // from class: com.bytedance.sdk.openadsdk.core.video.ox.dq.3
                @Override // com.bytedance.sdk.component.iw.f
                @ATSMethod(2)
                public void dq(int i, String str, Throwable th) {
                }

                @Override // com.bytedance.sdk.component.iw.f
                @ATSMethod(1)
                public void dq(no noVar) {
                }
            });
        }
    }

    public static dyp dq(int i) {
        return i != 5 ? (i == 7 || i == 8 || i == 9) ? dyp.LIVE_CELL : dyp.NO_VALUE : dyp.LIVE_CARD;
    }

    private static String dq() {
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

    public static Map<String, String> dq(Context context) {
        HashMap hashMap = new HashMap();
        hashMap.put("device_id", i.ox());
        hashMap.put(PluginConstants.KEY_SDK_VERSION, op.ox);
        hashMap.put("os", "Android");
        hashMap.put("os_version", Build.VERSION.RELEASE);
        hashMap.put("device_model", i.le());
        hashMap.put("resolution", com.bytedance.sdk.openadsdk.core.ir.ce.s(context) + "x" + com.bytedance.sdk.openadsdk.core.ir.ce.p(context));
        hashMap.put(MediaFormat.KEY_LANGUAGE, Locale.getDefault().getLanguage());
        hashMap.put("timezone", String.valueOf(d()));
        hashMap.put("access", q.mn(context));
        hashMap.put("openudid", i.s());
        hashMap.put("aid", "1371");
        hashMap.put("display_name", com.bytedance.sdk.openadsdk.core.mn.dq.s());
        hashMap.put("app_version", com.bytedance.sdk.openadsdk.core.mn.dq.p());
        hashMap.put("package", c.kk());
        hashMap.put("region", Locale.getDefault().getCountry());
        hashMap.put("tz_name", Calendar.getInstance().getTimeZone().getID());
        hashMap.put("tz_offset", String.valueOf(Calendar.getInstance().getTimeZone().getOffset(System.currentTimeMillis()) / 1000));
        hashMap.put("rom", dq());
        String str = Build.MANUFACTURER;
        hashMap.put("device_manufacturer", str);
        ArrayList<String> dq = ox.dq(context, "MD5");
        if (dq != null && !dq.isEmpty()) {
            hashMap.put("sig_hash", str);
        }
        hashMap.put("display_density", ox(com.bytedance.sdk.openadsdk.core.ir.ce.ia(context)));
        hashMap.put("os_api", String.valueOf(Build.VERSION.SDK_INT));
        hashMap.put("density_dpi", String.valueOf(com.bytedance.sdk.openadsdk.core.ir.ce.ia(context)));
        hashMap.put("device_brand", Build.BRAND);
        hashMap.put("build_serial", i.no());
        hashMap.put("version_code", c.o());
        hashMap.put("udid", i.iw());
        hashMap.put("cpu_abi", Build.CPU_ABI);
        hashMap.put("oaid", le.dq(false));
        return hashMap;
    }

    public static void dq(final String str, final j jVar, final long j) {
        mn.d(new kk("csj_live_log_event") { // from class: com.bytedance.sdk.openadsdk.core.video.ox.dq.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    com.bytedance.sdk.openadsdk.core.r.c eb = jVar.eb();
                    String ap = jVar.ap();
                    if (TextUtils.isEmpty(ap) && eb != null) {
                        ap = eb.d();
                    }
                    if (TextUtils.isEmpty(ap)) {
                        return;
                    }
                    String iw = eb != null ? eb.iw() : null;
                    if (TextUtils.isEmpty(iw)) {
                        iw = jVar.el();
                    }
                    cvc cvcVar = cvc.CLICK;
                    long parseLong = Long.parseLong(ap);
                    String dq = eb != null ? eb.dq() : "";
                    dnf d2 = dq.d(c.ia(jVar));
                    dyp dq2 = dq.dq(c.ia(jVar));
                    long j2 = j;
                    ajh ajhVar = new ajh();
                    ajhVar.f10311c = parseLong;
                    ajhVar.f10313e = dq;
                    ajhVar.f10314f = iw;
                    ajhVar.f10309a = d2;
                    ajhVar.f10310b = dq2;
                    ajhVar.f10312d = cvcVar;
                    ajhVar.f10315g = j2;
                    JSONObject ae = cux.ae(ajhVar, dq.dq(wp.getContext()));
                    ae.put("tob_extra", jVar.dn());
                    com.bytedance.sdk.openadsdk.core.mn.d(str, ae);
                } catch (Throwable th) {
                    ig.d("TTLiveVideoUtil", "Throwable : ", th);
                }
            }
        });
    }

    public static boolean dq(j jVar) {
        return op.p() && ce.dq(jVar);
    }

    private static String ox(int i) {
        return i != 120 ? i != 160 ? i != 240 ? i != 320 ? i != 480 ? i != 640 ? "mdpi" : "xxxhdpi" : "xxhdpi" : "xhdpi" : "hdpi" : "mdpi" : "ldpi";
    }
}
