package com.bytedance.sdk.openadsdk.h;

import android.text.TextUtils;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.pangle.Zeus;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.op;
import g.hat;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class no {
    private static Map<String, Field> dq = new HashMap();

    public static int d(String str) {
        return TextUtils.equals("com.byted.pangle", str) ? op.f3334d : dq(str, 101);
    }

    private static int dq(String str, int i) {
        try {
            Bridge iw = com.bytedance.sdk.openadsdk.core.no.ia().iw(4);
            if (iw != null) {
                hat f2 = hat.f();
                f2.f19148c.put(0, str);
                Integer num = (Integer) iw.call(i, f2.k(), Integer.class);
                if (num != null) {
                    return num.intValue();
                }
            }
            return 0;
        } catch (Throwable th) {
            ig.d("ZeusUtil", th);
            return 0;
        }
    }

    public static void dq(String str) {
        try {
            if (op.f3334d < 5500) {
                mn(str);
                return;
            }
            Bridge iw = com.bytedance.sdk.openadsdk.core.no.ia().iw(4);
            if (iw != null) {
                hat f2 = hat.f();
                f2.f19148c.put(0, str);
                iw.call(100, f2.k(), null);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static JSONObject iw(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                Bridge iw = com.bytedance.sdk.openadsdk.core.no.ia().iw(4);
                if (iw != null) {
                    hat f2 = hat.f();
                    f2.f19148c.put(0, str);
                    JSONObject jSONObject = (JSONObject) iw.call(13, f2.k(), JSONObject.class);
                    if (jSONObject != null) {
                        return jSONObject;
                    }
                }
            } catch (Throwable th) {
                ig.d("ZeusUtil", th);
                return null;
            }
        }
        return null;
    }

    private static void mn(String str) {
        try {
            int i = Zeus.f1288a;
            Zeus.class.getDeclaredMethod("unInstallPlugin", String.class).invoke(null, str);
        } catch (Throwable unused) {
        }
    }

    public static int ox(String str) {
        if (TextUtils.equals("com.byted.pangle", str)) {
            return 6607;
        }
        return dq(str, 103);
    }

    public static int p(String str) {
        return TextUtils.equals("com.byted.pangle", str) ? op.f3334d : dq(str, 102);
    }

    public static boolean s(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                Bridge iw = com.bytedance.sdk.openadsdk.core.no.ia().iw(4);
                if (iw != null) {
                    hat f2 = hat.f();
                    f2.f19148c.put(0, str);
                    Boolean bool = (Boolean) iw.call(5, f2.k(), Boolean.class);
                    if (bool != null) {
                        return bool.booleanValue();
                    }
                }
            } catch (Throwable th) {
                ig.d("ZeusUtil", th);
                return false;
            }
        }
        return false;
    }
}
