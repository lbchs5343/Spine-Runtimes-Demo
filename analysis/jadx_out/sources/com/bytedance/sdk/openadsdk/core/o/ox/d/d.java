package com.bytedance.sdk.openadsdk.core.o.ox.d;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.core.e;
import com.bytedance.sdk.openadsdk.core.gh.ig;
import com.bytedance.sdk.openadsdk.core.ir.op;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.o.o;
import com.bytedance.sdk.openadsdk.core.o.ox.ox.s;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.p;
import com.bytedance.sdk.openadsdk.core.r.r;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.hat;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d {
    public static void d(int i, int i2) {
        Bridge h = no.ia().h();
        if (h == null) {
            return;
        }
        op<String, Object> dq = new op().dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(i2)).dq(TTDownloadField.TT_DOWNLOAD_SCENE, Integer.valueOf(i));
        hat f2 = hat.f();
        f2.f19148c.put(0, dq);
        h.call(30, f2.k(), Void.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(final Map<String, Object> map, j jVar) {
        o.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.d.d.3
            @Override // java.lang.Runnable
            public void run() {
                if (no.ia().h() != null) {
                    Bridge h = no.ia().h();
                    hat f2 = hat.f();
                    f2.f19148c.put(0, map);
                    h.call(12, f2.k(), Boolean.class);
                }
            }
        }, jVar);
    }

    public static int dq(Bridge bridge, int i) {
        if (bridge == null) {
            return 0;
        }
        op<String, Object> dq = new op().dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(i));
        hat f2 = hat.f();
        f2.f19148c.put(0, dq);
        return ((Integer) bridge.call(27, f2.k(), Integer.class)).intValue();
    }

    public static com.bytedance.sdk.openadsdk.core.h.dq.dq.ox dq(j jVar, final boolean z) {
        if (jVar == null) {
            return null;
        }
        String ff = jVar.ff();
        if (!TextUtils.isEmpty(ff) && com.bytedance.sdk.openadsdk.core.op.f3334d >= 6400) {
            final String el = jVar.el();
            final String fa = jVar.fa();
            final com.bytedance.sdk.openadsdk.f.d.dq.dq dqVar = (com.bytedance.sdk.openadsdk.f.d.dq.dq) e.dq(ff, com.bytedance.sdk.openadsdk.f.d.dq.dq.class);
            if (dqVar != null && !TextUtils.isEmpty(jVar.gn()) && jVar.zi().p() == 1) {
                return new com.bytedance.sdk.openadsdk.core.h.dq.dq.ox() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.d.d.1
                    @Override // com.bytedance.sdk.openadsdk.core.h.dq.dq.ox
                    public Map<String, Object> dq(Map<String, Object> map) {
                        if (map == null) {
                            ig dq = ig.dq();
                            Boolean bool = Boolean.FALSE;
                            dq.dq(bool, bool, "param is null", el, fa);
                            return map;
                        }
                        if (!z) {
                            map.put("is_button", Boolean.FALSE);
                        }
                        Object obj = map.get("is_button");
                        dqVar.dq(100, map);
                        d.dq(map, obj, el, fa);
                        return map;
                    }
                };
            }
            com.bytedance.sdk.component.utils.ig.dq("dof", "bridge something invalid");
        }
        return null;
    }

    public static void dq(int i, int i2) {
        Bridge h = no.ia().h();
        if (h == null) {
            return;
        }
        op<String, Object> dq = new op().dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(i2)).dq(TTDownloadField.TT_DOWNLOAD_MODE, Integer.valueOf(i));
        hat f2 = hat.f();
        f2.f19148c.put(0, dq);
        h.call(26, f2.k(), Void.class);
    }

    public static void dq(j jVar, int i, boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        Bridge h = no.ia().h();
        if (h == null) {
            return;
        }
        int p = r.p(jVar);
        int s = r.s(jVar);
        if (jVar != null && (!TextUtils.isEmpty(jVar.gn()) || z)) {
            s = 2;
        }
        if (jVar == null || jVar.zc() == null) {
            z2 = false;
            z3 = false;
            z4 = false;
        } else {
            z3 = jVar.zc().dq();
            z2 = jVar.zc().d();
            z4 = true;
        }
        op<String, Object> dq = new op().dq(TTDownloadField.TT_AUTO_OPEN, Integer.valueOf(p)).dq(TTDownloadField.TT_DOWNLOAD_MODE, Integer.valueOf(s)).dq(TTDownloadField.TT_IS_HAVE_DOWNLOAD_SDK_CONFIG, Boolean.valueOf(z4)).dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(i)).dq(TTDownloadField.TT_IS_ENABLE_AH, Boolean.valueOf(z3)).dq(TTDownloadField.TT_IS_ENABLE_AM, Boolean.valueOf(z2));
        hat f2 = hat.f();
        f2.f19148c.put(0, dq);
        h.call(25, f2.k(), Void.class);
    }

    public static void dq(String str, int i) {
        Bridge h = no.ia().h();
        if (h == null) {
            return;
        }
        op<String, Object> dq = new op().dq(TTDownloadField.TT_CLICK_BUTTON_TAG, str).dq(TTDownloadField.TT_CLICK_ITEM_TAG, str).dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(i)).dq(TTDownloadField.TT_LABEL_CLICK_START, "click_start").dq(TTDownloadField.TT_LABEL_CLICK_CONTINUE, "click_continue").dq(TTDownloadField.TT_LABEL_CLICK_PAUSE, "click_pause").dq(TTDownloadField.TT_LABEL_STORAGE_DENY, "download_failed").dq(TTDownloadField.TT_LABEL_CLICK_INSTALL, "click_install").dq(TTDownloadField.TT_IS_ENABLE_CLICK_EVENT, Boolean.TRUE).dq(TTDownloadField.TT_IS_ENABLE_V3_EVENT, Boolean.FALSE);
        hat f2 = hat.f();
        f2.f19148c.put(0, dq);
        h.call(29, f2.k(), Void.class);
    }

    public static void dq(String str, j jVar, JSONObject jSONObject, int i) {
        String str2;
        String str3;
        String str4;
        Bridge h = no.ia().h();
        if (h == null) {
            return;
        }
        if (jVar == null) {
            dq(true, h, str, jVar, jSONObject, null, null, null, i);
            return;
        }
        p gm = jVar.gm();
        if (gm != null) {
            String d2 = gm.d();
            String ox = gm.ox();
            str4 = gm.p();
            str2 = d2;
            str3 = ox;
        } else {
            str2 = "";
            str3 = str2;
            str4 = str3;
        }
        dq(false, h, str, jVar, jSONObject, str2, str3, str4, i);
    }

    public static void dq(String str, String str2, j jVar, JSONObject jSONObject, int i) {
        Bridge h = no.ia().h();
        if (h == null) {
            return;
        }
        if (jVar == null) {
            dq(true, h, str2, jVar, jSONObject, str, "", null, i);
            return;
        }
        if (TextUtils.isEmpty(str)) {
            dq(true, h, str2, jVar, jSONObject, str, "", null, i);
            return;
        }
        String fg = jVar.fg();
        if (TextUtils.isEmpty(fg) && jVar.hy() != null) {
            fg = jVar.hy().ig();
        }
        dq(false, h, str2, jVar, jSONObject, str, "", fg, i);
    }

    public static void dq(String str, String str2, JSONObject jSONObject, int i) {
        Bridge h = no.ia().h();
        if (h == null || jSONObject == null) {
            return;
        }
        op<String, Object> dq = new op().dq(TTDownloadField.TT_CLICK_BUTTON_TAG, str).dq(TTDownloadField.TT_CLICK_ITEM_TAG, str2).dq(TTDownloadField.TT_LABEL_CLICK_START, "click_start").dq(TTDownloadField.TT_LABEL_CLICK_CONTINUE, "click_continue").dq(TTDownloadField.TT_LABEL_CLICK_PAUSE, "click_pause").dq(TTDownloadField.TT_LABEL_STORAGE_DENY, "download_failed").dq(TTDownloadField.TT_LABEL_CLICK_INSTALL, "click_install").dq(TTDownloadField.TT_IS_ENABLE_CLICK_EVENT, Boolean.TRUE).dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(i)).dq(TTDownloadField.TT_IS_ENABLE_V3_EVENT, Boolean.FALSE).dq(TTDownloadField.TT_EXTRA_EVENT_OBJECT, jSONObject);
        hat f2 = hat.f();
        f2.f19148c.put(0, dq);
        h.call(29, f2.k(), Void.class);
    }

    public static void dq(Map<String, Object> map, com.bytedance.sdk.openadsdk.core.h.dq.dq.dq dqVar) {
        if (com.bytedance.sdk.openadsdk.core.op.f3334d < 4400 || map == null || dqVar == null || map.get(TTDownloadField.TT_DOWNLOAD_BUTTON_CLICK_LISTENER) != null) {
            return;
        }
        map.put(TTDownloadField.TT_DOWNLOAD_BUTTON_CLICK_LISTENER, dqVar);
    }

    public static void dq(Map<String, Object> map, Object obj, String str, String str2) {
        Object obj2 = map.get("convert_result");
        if (obj2 != null) {
            ig.dq().dq(obj, obj2, "success", str, str2);
            return;
        }
        ig dq = ig.dq();
        Boolean bool = Boolean.FALSE;
        dq.dq(bool, bool, "no intercept result", str, str2);
    }

    public static void dq(boolean z, int i) {
        Bridge h = no.ia().h();
        if (h == null) {
            return;
        }
        op<String, Object> dq = new op().dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(i)).dq(TTDownloadField.TT_IS_SHOW_TOAST, Boolean.valueOf(z));
        hat f2 = hat.f();
        f2.f19148c.put(0, dq);
        h.call(31, f2.k(), Void.class);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00b6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void dq(boolean z, Bridge bridge, String str, j jVar, JSONObject jSONObject, String str2, String str3, String str4, int i) {
        j jVar2;
        JSONObject d2;
        JSONObject jSONObject2;
        int i2;
        String str5;
        String ae;
        String str6;
        int gh;
        if (bridge == null) {
            return;
        }
        if (z) {
            op<String, Object> dq = new op().dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(i)).dq(TTDownloadField.TT_MATE_IS_EMPTY, Boolean.valueOf(z));
            hat f2 = hat.f();
            f2.f19148c.put(0, dq);
            bridge.call(23, f2.k(), Void.class);
            return;
        }
        JSONObject jSONObject3 = new JSONObject();
        try {
            jVar2 = jVar;
            try {
                jSONObject3.put("open_ad_sdk_download_extra", dq.dq().dq(str).d(jSONObject).dq(jVar2).d());
            } catch (Exception unused) {
                long longValue = Double.valueOf(jVar2.fx()).longValue();
                if (jVar2.wq() != null) {
                }
                boolean i3 = no.ia().i();
                boolean z2 = !no.ia().i();
                String dn = jVar2.dn();
                d2 = o.d();
                jSONObject2 = new JSONObject();
                int optInt = d2.optInt("notification_opt_2", 0);
                if (optInt == 1) {
                }
                gh = r.gh(jVar);
                if (!com.bytedance.sdk.openadsdk.core.op.iw()) {
                }
                jSONObject2.put("show_pause_continue_toast", gh);
                if (gh != 1) {
                }
                jSONObject2.put("notification_opt_2", r10);
                jSONObject2.put("is_use_obm_convert", r.d(jVar));
                str5 = "";
                if (jVar.kf() != null) {
                }
                op<String, Object> dq2 = new op().dq(TTDownloadField.TT_MATE_IS_EMPTY, Boolean.FALSE).dq(TTDownloadField.TT_ID, Long.valueOf(longValue)).dq(TTDownloadField.TT_APP_ICON, r9).dq(TTDownloadField.TT_IS_SHOW_NOTIFICATION, Boolean.valueOf(i3)).dq(TTDownloadField.TT_IS_AUTO_INSTALL_WITHOUT_NOTIFICATION, Boolean.valueOf(z2)).dq(TTDownloadField.TT_LOG_EXTRA, dn).dq(TTDownloadField.TT_EXTRA_JSON, jSONObject3).dq(TTDownloadField.TT_DOWNLOAD_SETTINGS, jSONObject2).dq(TTDownloadField.TT_FILE_PATH, no.ia().d()).dq(TTDownloadField.TT_APP_NAME, str3).dq(TTDownloadField.TT_DOWNLOAD_URL, str2).dq(TTDownloadField.TT_PACKAGE_NAME, str4).dq(TTDownloadField.TT_IS_NEED_INDEPENDENT_PROCESS, Boolean.valueOf(com.bytedance.sdk.openadsdk.core.multipro.d.ox())).dq(TTDownloadField.TT_OPEN_URL, str5).dq(TTDownloadField.TT_WEB_TITLE, str6).dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(i2)).dq(TTDownloadField.TT_WEB_URL, ae);
                hat f3 = hat.f();
                f3.f19148c.put(0, dq2);
                bridge.call(23, f3.k(), Void.class);
            }
        } catch (Exception unused2) {
            jVar2 = jVar;
        }
        long longValue2 = Double.valueOf(jVar2.fx()).longValue();
        String dq3 = jVar2.wq() != null ? null : jVar2.wq().dq();
        boolean i32 = no.ia().i();
        boolean z22 = !no.ia().i();
        String dn2 = jVar2.dn();
        d2 = o.d();
        jSONObject2 = new JSONObject();
        try {
            int optInt2 = d2.optInt("notification_opt_2", 0);
            int i4 = optInt2 == 1 ? 0 : optInt2;
            gh = r.gh(jVar);
            if (!com.bytedance.sdk.openadsdk.core.op.iw()) {
                try {
                    jSONObject2.put("cancel_pause_optimise_switch", gh);
                    jSONObject2.put("cancel_pause_optimise_wifi_retain_switch", gh);
                    jSONObject2.put("cancel_pause_optimise_apk_retain_switch", gh);
                    jSONObject2.put("cancel_pause_optimise_download_percent_retain_switch", gh);
                } catch (JSONException unused3) {
                    i2 = i;
                }
            }
            jSONObject2.put("show_pause_continue_toast", gh);
            if (gh != 1) {
                i2 = i;
                try {
                    dq(true, i2);
                    jSONObject2.put("download_start_toast_text", d2.optString("download_start_toast_text", "已开始下载，再次点击可暂停或取消该下载任务。"));
                } catch (JSONException unused4) {
                    str5 = "";
                    if (jVar.kf() != null) {
                    }
                    op<String, Object> dq22 = new op().dq(TTDownloadField.TT_MATE_IS_EMPTY, Boolean.FALSE).dq(TTDownloadField.TT_ID, Long.valueOf(longValue2)).dq(TTDownloadField.TT_APP_ICON, dq3).dq(TTDownloadField.TT_IS_SHOW_NOTIFICATION, Boolean.valueOf(i32)).dq(TTDownloadField.TT_IS_AUTO_INSTALL_WITHOUT_NOTIFICATION, Boolean.valueOf(z22)).dq(TTDownloadField.TT_LOG_EXTRA, dn2).dq(TTDownloadField.TT_EXTRA_JSON, jSONObject3).dq(TTDownloadField.TT_DOWNLOAD_SETTINGS, jSONObject2).dq(TTDownloadField.TT_FILE_PATH, no.ia().d()).dq(TTDownloadField.TT_APP_NAME, str3).dq(TTDownloadField.TT_DOWNLOAD_URL, str2).dq(TTDownloadField.TT_PACKAGE_NAME, str4).dq(TTDownloadField.TT_IS_NEED_INDEPENDENT_PROCESS, Boolean.valueOf(com.bytedance.sdk.openadsdk.core.multipro.d.ox())).dq(TTDownloadField.TT_OPEN_URL, str5).dq(TTDownloadField.TT_WEB_TITLE, str6).dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(i2)).dq(TTDownloadField.TT_WEB_URL, ae);
                    hat f32 = hat.f();
                    f32.f19148c.put(0, dq22);
                    bridge.call(23, f32.k(), Void.class);
                }
            } else {
                i2 = i;
            }
            jSONObject2.put("notification_opt_2", i4);
            jSONObject2.put("is_use_obm_convert", r.d(jVar));
        } catch (JSONException unused5) {
            i2 = i;
        }
        str5 = "";
        if (jVar.kf() != null) {
            String dq4 = jVar.kf().dq();
            str6 = jVar.lk();
            str5 = dq4;
            ae = (jVar.kf().ox() != 2 || j.d(jVar)) ? jVar.kf().ox() == 1 ? jVar.kf().d() : jVar.ae() : "";
        } else {
            ae = jVar.ae();
            str6 = "";
        }
        op<String, Object> dq222 = new op().dq(TTDownloadField.TT_MATE_IS_EMPTY, Boolean.FALSE).dq(TTDownloadField.TT_ID, Long.valueOf(longValue2)).dq(TTDownloadField.TT_APP_ICON, dq3).dq(TTDownloadField.TT_IS_SHOW_NOTIFICATION, Boolean.valueOf(i32)).dq(TTDownloadField.TT_IS_AUTO_INSTALL_WITHOUT_NOTIFICATION, Boolean.valueOf(z22)).dq(TTDownloadField.TT_LOG_EXTRA, dn2).dq(TTDownloadField.TT_EXTRA_JSON, jSONObject3).dq(TTDownloadField.TT_DOWNLOAD_SETTINGS, jSONObject2).dq(TTDownloadField.TT_FILE_PATH, no.ia().d()).dq(TTDownloadField.TT_APP_NAME, str3).dq(TTDownloadField.TT_DOWNLOAD_URL, str2).dq(TTDownloadField.TT_PACKAGE_NAME, str4).dq(TTDownloadField.TT_IS_NEED_INDEPENDENT_PROCESS, Boolean.valueOf(com.bytedance.sdk.openadsdk.core.multipro.d.ox())).dq(TTDownloadField.TT_OPEN_URL, str5).dq(TTDownloadField.TT_WEB_TITLE, str6).dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(i2)).dq(TTDownloadField.TT_WEB_URL, ae);
        hat f322 = hat.f();
        f322.f19148c.put(0, dq222);
        bridge.call(23, f322.k(), Void.class);
    }

    public static void dq(boolean z, com.bytedance.sdk.openadsdk.core.h.dq.dq.ox oxVar, int i) {
        try {
            Bridge h = no.ia().h();
            if (h == null) {
                return;
            }
            op<String, Object> dq = new op().dq(TTDownloadField.TT_IS_ENABLE_OPPO_AUTO_DOWNLOAD, Boolean.valueOf(z)).dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(i)).dq(TTDownloadField.TT_DOWNLOAD_MARKET_INTERCEPTOR, oxVar);
            hat g2 = hat.g(1);
            g2.f19148c.put(0, dq);
            h.call(28, g2.k(), Void.class);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ig.d("xgc_dof", "throwable", th);
        }
    }

    public static boolean dq(Uri uri, j jVar, Context context, String str, int i) {
        if (no.ia().h() == null || jVar == null) {
            return false;
        }
        dq(str, jVar, (JSONObject) null, i);
        dq(jVar, i, false);
        dq(str, i);
        op<String, Object> dq = new op().dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(i)).dq("uri", uri);
        com.bytedance.sdk.openadsdk.core.o.ox.ox.ox oxVar = new com.bytedance.sdk.openadsdk.core.o.ox.ox.ox(context, jVar);
        oxVar.dq(new s());
        if (dq(jVar, str, dq, oxVar)) {
            return true;
        }
        d(dq, jVar);
        return true;
    }

    private static boolean dq(final j jVar, String str, final Map<String, Object> map, com.bytedance.sdk.openadsdk.core.o.ox.ox.ox oxVar) {
        if (!oxVar.p(false)) {
            return false;
        }
        oxVar.dq(str, new com.bytedance.sdk.openadsdk.core.o.ox.dq.d() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.d.d.2
            @Override // com.bytedance.sdk.openadsdk.core.o.ox.dq.d
            public void dq() {
                d.d((Map<String, Object>) map, jVar);
            }
        });
        return true;
    }

    public static boolean dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (str.startsWith("market") || str.startsWith("mimarket")) {
            return com.bytedance.sdk.openadsdk.core.ir.e.jy();
        }
        return false;
    }
}
