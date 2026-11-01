package com.bytedance.sdk.openadsdk.jy;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.gh.ig;
import com.bytedance.sdk.openadsdk.core.i;
import com.bytedance.sdk.openadsdk.core.ir.gh;
import com.bytedance.sdk.openadsdk.core.ir.p;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.wp;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d {
    private static String dq;

    public static void d() {
        com.bytedance.sdk.openadsdk.core.bl.ox.d().ox();
    }

    public static void d(Context context) {
        if ((wp.d().tu() & 8) != 0) {
            ig.dq().dq("apm", 2, 2, 2);
        } else {
            dq.dq(context);
        }
    }

    public static void d(Context context, JSONObject jSONObject) {
        try {
            jSONObject.put("imei", i.iw());
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public static Uri dq(String str, String str2) {
        return null;
    }

    public static String dq() {
        if (no.ia().kk().p()) {
            return i.kk();
        }
        return null;
    }

    public static void dq(Context context) {
        p.dq(context);
    }

    public static void dq(Context context, JSONObject jSONObject) {
        try {
            com.bytedance.sdk.openadsdk.core.ir.ox dq2 = p.dq(context);
            float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            float f3 = dq2 == null ? TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT : p.dq(context).dq;
            if (p.dq(context) != null) {
                f2 = p.dq(context).f3071d;
            }
            jSONObject.put("latitude", f3);
            jSONObject.put("longitude", f2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public static void dq(com.bytedance.sdk.openadsdk.f.d.ox.p pVar, List<String> list) {
        if (pVar.dq()) {
            list.add("android.permission.ACCESS_COARSE_LOCATION");
            list.add("android.permission.ACCESS_FINE_LOCATION");
        }
    }

    public static void dq(JSONObject jSONObject, int i) {
        if (p.dq(wp.getContext()) != null) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("latitude", r5.dq);
                jSONObject2.put("longitude", r5.f3071d);
                jSONObject.put("geo", jSONObject2);
            } catch (Exception unused) {
            }
        }
    }

    public static boolean dq(String str) {
        return gh.dq(str);
    }

    public static String ox() {
        return "";
    }

    public static void ox(Context context, JSONObject jSONObject) {
        try {
            jSONObject.put("udid", i.iw());
            jSONObject.put("mc", i.i());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private static String p() {
        if (TextUtils.isEmpty(dq)) {
            String iw = i.iw();
            if (!TextUtils.isEmpty(iw)) {
                dq = s.d(iw);
            }
        }
        return dq;
    }

    public static void p(Context context, JSONObject jSONObject) {
        try {
            JSONArray dq2 = gh.dq(context);
            if (dq2 != null) {
                jSONObject.put("app_list", dq2);
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }
}
