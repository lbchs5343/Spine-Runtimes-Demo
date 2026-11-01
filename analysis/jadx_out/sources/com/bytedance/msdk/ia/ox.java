package com.bytedance.msdk.ia;

import android.text.TextUtils;
import g.awf;
import java.security.SecureRandom;
import java.util.Random;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ox {
    private static Random dq = new SecureRandom();

    public static String d() {
        String dq2 = dq(8);
        if (dq2 == null || dq2.length() != 16) {
            return null;
        }
        return dq2;
    }

    public static String dq() {
        String dq2 = dq(16);
        if (dq2 == null || dq2.length() != 32) {
            return null;
        }
        return dq2;
    }

    public static String dq(int i) {
        try {
            byte[] bArr = new byte[i];
            dq.nextBytes(bArr);
            return q.dq(bArr);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String dq2 = dq();
        String dq3 = dq(dq2, 32);
        String d2 = d();
        return awf.t("3", dq2, d2, (dq3 == null || d2 == null) ? null : dq.dq(str, d2, dq3));
    }

    public static String dq(String str, int i) {
        if (str == null || str.length() != i) {
            return null;
        }
        int i2 = i / 2;
        return str.substring(i2, i) + str.substring(0, i2);
    }

    public static JSONObject dq(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        if (jSONObject != null) {
            try {
                try {
                    String dq2 = dq(jSONObject.toString());
                    if (TextUtils.isEmpty(dq2)) {
                        jSONObject2.put("message", jSONObject.toString());
                        jSONObject2.put("cypher", 0);
                        return jSONObject2;
                    }
                    jSONObject2.put("message", dq2);
                    jSONObject2.put("cypher", 3);
                    return jSONObject2;
                } catch (Throwable th) {
                    com.bytedance.msdk.dq.s.ox.dq(th.getMessage());
                }
            } catch (Throwable unused) {
                jSONObject2.put("message", jSONObject.toString());
                jSONObject2.put("cypher", 0);
            }
        }
        return jSONObject2;
    }
}
