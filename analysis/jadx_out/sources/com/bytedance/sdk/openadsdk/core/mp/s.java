package com.bytedance.sdk.openadsdk.core.mp;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.ir.n;
import com.bytedance.sdk.openadsdk.core.wp;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class s {
    public static void d(String str) {
        ox(str);
    }

    @SuppressLint({"SimpleDateFormat"})
    private static String dq() {
        try {
            return new SimpleDateFormat("yyyyMMdd").format(new Date(System.currentTimeMillis()));
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean dq(String str) {
        String d2;
        int ny;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            d2 = n.dq("fsswiper_freq").d(str, "");
        } catch (Exception unused) {
        }
        if (!TextUtils.isEmpty(d2) && (ny = wp.d().ny()) > 0) {
            return new JSONObject(d2).optInt(dq(), 0) >= ny;
        }
        return false;
    }

    private static void ox(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.bytedance.sdk.component.mn.dq dq = n.dq("fsswiper_freq");
        try {
            String d2 = dq.d(str, "");
            JSONObject jSONObject = TextUtils.isEmpty(d2) ? new JSONObject() : new JSONObject(d2);
            String dq2 = dq();
            int optInt = jSONObject.optInt(dq2, 0);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(dq2, optInt + 1);
            dq.dq(str, jSONObject2.toString());
        } catch (Exception unused) {
        }
    }
}
