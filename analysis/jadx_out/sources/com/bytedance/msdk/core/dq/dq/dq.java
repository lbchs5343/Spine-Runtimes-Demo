package com.bytedance.msdk.core.dq.dq;

import android.text.TextUtils;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.msdk.api.dq.d;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.h.no;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private static Bridge f910d;
    public static String dq;

    public static int d() {
        return com.bytedance.msdk.mn.dq.dq.jy().o();
    }

    public static Bridge d(String str) {
        Bridge s = s(str);
        if (s != null) {
            try {
                return (Bridge) s.call(10000, null, Bridge.class);
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static com.bytedance.msdk.core.dq.dq.dq.dq d(String str, int i, int i2) {
        if (!TextUtils.equals(str, MediationConstant.ADN_GDT)) {
            return null;
        }
        switch (i) {
            case 1:
                return new com.bytedance.msdk.core.dq.dq.d.dq.dq.dq();
            case 2:
                return new com.bytedance.msdk.core.dq.dq.d.dq.s.dq();
            case 3:
                return new com.bytedance.msdk.core.dq.dq.d.dq.mn.dq();
            case 4:
            case 6:
            default:
                return null;
            case 5:
                return i2 == 4 ? new com.bytedance.msdk.core.dq.dq.d.dq.ox.dq() : i2 == 3 ? new com.bytedance.msdk.core.dq.dq.d.dq.dq.dq() : i2 == 5 ? new com.bytedance.msdk.core.dq.dq.d.dq.d.dq() : new com.bytedance.msdk.core.dq.dq.d.dq.ox.dq();
            case 7:
                return new com.bytedance.msdk.core.dq.dq.d.dq.iw.dq();
            case 8:
                return new com.bytedance.msdk.core.dq.dq.d.dq.p.dq();
            case 9:
                return new com.bytedance.msdk.core.dq.dq.d.dq.d.dq();
            case 10:
                if (i2 == 1) {
                    return new com.bytedance.msdk.core.dq.dq.d.dq.s.dq();
                }
                if (i2 == 2) {
                    return new com.bytedance.msdk.core.dq.dq.d.dq.p.dq();
                }
                return null;
        }
    }

    public static void d(d dVar) {
        if (dVar != null) {
            dVar.mn(3);
        }
    }

    private static Bridge dq(String str, int i) {
        Bridge s = s(str);
        if (s != null) {
            try {
                return (Bridge) s.call(i, null, Bridge.class);
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static Bridge dq(String str, int i, int i2) {
        try {
            if (!TextUtils.equals(str, MediationConstant.ADN_GDT)) {
                return null;
            }
            switch (i) {
                case 1:
                    return dq(str, 20001);
                case 2:
                    return dq(str, 20004);
                case 3:
                    return dq(str, 20007);
                case 4:
                case 6:
                default:
                    return null;
                case 5:
                    return i2 == 4 ? dq(str, 20005) : i2 == 3 ? dq(str, 20001) : i2 == 5 ? dq(str, 20002) : dq(str, 20005);
                case 7:
                    return dq(str, 20006);
                case 8:
                    return dq(str, 20003);
                case 9:
                    return dq(str, 20002);
                case 10:
                    if (i2 == 1) {
                        return dq(str, 20004);
                    }
                    if (i2 == 2) {
                        return dq(str, 20003);
                    }
                    return null;
            }
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String dq() {
        return (com.bytedance.msdk.mn.dq.dq.jy().k() == null || !com.bytedance.msdk.mn.dq.dq.jy().k().kk()) ? "" : "load_plugin_gdt_adapter_v2";
    }

    public static void dq(d dVar) {
        if (dVar != null) {
            dVar.mn(1);
        }
    }

    public static boolean dq(String str) {
        return s(str) != null;
    }

    public static int ox(d dVar) {
        if (dVar == null) {
            return 4;
        }
        if (com.bytedance.msdk.mn.dq.dq.jy().kk()) {
            return dVar.mp() == 1 ? 1 : 2;
        }
        if (com.bytedance.msdk.mn.dq.dq.jy().o() != 1) {
            return 3;
        }
        return dVar.mp();
    }

    private static String ox(String str) {
        if (TextUtils.equals(str, MediationConstant.ADN_GDT)) {
            return "g_class_name";
        }
        return null;
    }

    private static String p(String str) {
        if (TextUtils.equals(str, MediationConstant.ADN_GDT)) {
            return "g_adn_version";
        }
        return null;
    }

    private static Bridge s(String str) {
        JSONObject optJSONObject;
        Bridge bridge;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String ox = ox(str);
        if (TextUtils.isEmpty(ox)) {
            return null;
        }
        String p = p(str);
        if (TextUtils.isEmpty(p)) {
            return null;
        }
        if (TextUtils.equals(str, MediationConstant.ADN_GDT) && (bridge = f910d) != null) {
            return bridge;
        }
        try {
            JSONObject iw = no.iw(TTAdSdk.PLUGIN_ADAPTER_PACKAGE_NAME);
            if (iw != null && iw.has("adn_version") && (optJSONObject = iw.optJSONObject("adn_version")) != null && optJSONObject.has(p)) {
                JSONArray jSONArray = optJSONObject.getJSONArray(p);
                String e2 = com.bytedance.sdk.openadsdk.core.no.ia().e();
                if (!TextUtils.isEmpty(e2) && jSONArray.length() > 0) {
                    int i = 0;
                    while (true) {
                        if (i >= jSONArray.length()) {
                            dq = e2;
                            break;
                        }
                        if (!TextUtils.equals(jSONArray.getString(i), e2)) {
                            i++;
                        } else if (iw.has(ox)) {
                            String optString = iw.optString(ox);
                            if (!TextUtils.isEmpty(optString)) {
                                Object newInstance = Class.forName(optString).newInstance();
                                if (TextUtils.equals(str, MediationConstant.ADN_GDT) && (newInstance instanceof Bridge)) {
                                    Bridge bridge2 = (Bridge) newInstance;
                                    f910d = bridge2;
                                    return bridge2;
                                }
                            }
                        }
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return null;
    }
}
