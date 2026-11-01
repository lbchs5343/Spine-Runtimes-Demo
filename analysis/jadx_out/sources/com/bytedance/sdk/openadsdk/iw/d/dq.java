package com.bytedance.sdk.openadsdk.iw.d;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.ats.AutoService;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wp.ox;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq {
    private static Map<String, Map<String, Map<String, Integer>>> dq = new HashMap();

    private static void d(String str, String str2) {
        dq(str, str2, "ps_c");
    }

    public static JSONObject dq() {
        JSONObject jSONObject = new JSONObject();
        if (!dq.isEmpty()) {
            try {
                for (Map.Entry<String, Map<String, Map<String, Integer>>> entry : dq.entrySet()) {
                    String key = entry.getKey();
                    Map<String, Map<String, Integer>> value = entry.getValue();
                    JSONObject jSONObject2 = new JSONObject();
                    if (value != null) {
                        for (Map.Entry<String, Map<String, Integer>> entry2 : value.entrySet()) {
                            String key2 = entry2.getKey();
                            Map<String, Integer> value2 = entry2.getValue();
                            JSONObject jSONObject3 = new JSONObject();
                            if (value2 != null) {
                                for (Map.Entry<String, Integer> entry3 : value2.entrySet()) {
                                    jSONObject3.put(entry3.getKey(), entry3.getValue());
                                }
                            }
                            jSONObject2.put(key2, jSONObject3);
                        }
                    }
                    jSONObject.put(key, jSONObject2);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                return jSONObject;
            }
        }
        return jSONObject;
    }

    public static void dq(String str, j jVar) {
        char c2;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        ox oxVar = (ox) AutoService.dq(ox.class);
        if (oxVar == null || oxVar.ox()) {
            try {
                String valueOf = String.valueOf(c.ia(jVar));
                String dq2 = c.dq(jVar, "-1");
                switch (str.hashCode()) {
                    case -2093321865:
                        if (str.equals("load_video_cancel")) {
                            c2 = 1;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -1643912491:
                        if (str.equals("feed_over")) {
                            c2 = '\b';
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -1643892427:
                        if (str.equals("feed_play")) {
                            c2 = 5;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 3529469:
                        if (str.equals("show")) {
                            c2 = '\n';
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 211925867:
                        if (str.equals("load_video_error")) {
                            c2 = 3;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 224898501:
                        if (str.equals("load_video_start")) {
                            c2 = 0;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 566194974:
                        if (str.equals("feed_break")) {
                            c2 = 6;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 578633749:
                        if (str.equals("feed_pause")) {
                            c2 = 7;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 1409113254:
                        if (str.equals("load_video_success")) {
                            c2 = 2;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 1912965437:
                        if (str.equals("play_error")) {
                            c2 = '\t';
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 1925938071:
                        if (str.equals("play_start")) {
                            c2 = 4;
                            break;
                        }
                        c2 = 65535;
                        break;
                    default:
                        c2 = 65535;
                        break;
                }
                switch (c2) {
                    case 0:
                        ia(valueOf, dq2);
                        break;
                    case 1:
                        no(valueOf, dq2);
                        break;
                    case 2:
                        kk(valueOf, dq2);
                        break;
                    case 3:
                        o(valueOf, dq2);
                        break;
                    case 4:
                        d(valueOf, dq2);
                        break;
                    case 5:
                        ox(valueOf, dq2);
                        break;
                    case 6:
                        iw(valueOf, dq2);
                        break;
                    case 7:
                        s(valueOf, dq2);
                        break;
                    case '\b':
                        p(valueOf, dq2);
                        break;
                    case '\t':
                        mn(valueOf, dq2);
                        break;
                    case '\n':
                        dq(valueOf, dq2);
                        break;
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    private static void dq(String str, String str2) {
        dq(str, str2, "show_c");
    }

    private static void dq(String str, String str2, String str3) {
        Map<String, Map<String, Integer>> map = dq.get(str);
        if (map == null) {
            map = new HashMap<>();
            dq.put(str, map);
        }
        Map<String, Integer> map2 = map.get(str2);
        if (map2 == null) {
            map2 = new HashMap<>();
            map.put(str2, map2);
        }
        Integer num = map2.get(str3);
        if (num == null) {
            map2.put(str3, 1);
        } else {
            map2.put(str3, Integer.valueOf(num.intValue() + 1));
        }
    }

    private static void ia(String str, String str2) {
        dq(str, str2, "lvs_c");
    }

    private static void iw(String str, String str2) {
        dq(str, str2, "fb_c");
    }

    private static void kk(String str, String str2) {
        dq(str, str2, "lvsu_c");
    }

    private static void mn(String str, String str2) {
        dq(str, str2, "pe_c");
    }

    private static void no(String str, String str2) {
        dq(str, str2, "lvc_c");
    }

    private static void o(String str, String str2) {
        dq(str, str2, "lve_c");
    }

    private static void ox(String str, String str2) {
        dq(str, str2, "fpl_c");
    }

    private static void p(String str, String str2) {
        dq(str, str2, "fo_c");
    }

    private static void s(String str, String str2) {
        dq(str, str2, "fpu_c");
    }
}
