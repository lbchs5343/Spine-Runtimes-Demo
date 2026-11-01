package com.bytedance.sdk.component.utils;

import android.os.Build;
import android.text.TextUtils;
import g.awf;
import java.security.SecureRandom;
import java.util.Random;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: com.bytedance.sdk.component.utils.dq$dq, reason: collision with other inner class name */
    public static class C0130dq {
        static final Random dq = dq.ox();
    }

    public static String d() {
        String dq = dq(8);
        if (dq == null || dq.length() != 16) {
            return null;
        }
        return dq;
    }

    public static String d(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String dq = dq();
        String dq2 = dq(dq, 32);
        String d2 = d();
        return awf.t("3", dq, d2, (dq2 == null || d2 == null) ? null : com.bytedance.sdk.component.s.dq.dq(str, d2, dq2));
    }

    public static String dq() {
        String dq = dq(16);
        if (dq == null || dq.length() != 32) {
            return null;
        }
        return dq;
    }

    public static String dq(int i) {
        try {
            byte[] bArr = new byte[i];
            C0130dq.dq.nextBytes(bArr);
            return s.dq(bArr);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String dq(String str, int i) {
        if (str == null || str.length() != i) {
            return null;
        }
        int i2 = i / 2;
        return str.substring(i2, i) + str.substring(0, i2);
    }

    public static JSONObject dq(String str) {
        JSONObject jSONObject = new JSONObject();
        if (!TextUtils.isEmpty(str)) {
            try {
                try {
                    String d2 = d(str);
                    if (TextUtils.isEmpty(d2)) {
                        jSONObject.put("message", str);
                        jSONObject.put("cypher", 0);
                        return jSONObject;
                    }
                    jSONObject.put("message", d2);
                    jSONObject.put("cypher", 3);
                    return jSONObject;
                } catch (Throwable th) {
                    th.getMessage();
                }
            } catch (Throwable unused) {
                jSONObject.put("message", str);
                jSONObject.put("cypher", 0);
            }
        }
        return jSONObject;
    }

    public static JSONObject dq(JSONObject jSONObject) {
        return jSONObject == null ? new JSONObject() : dq(jSONObject.toString());
    }

    public static String ox(String str) {
        if (TextUtils.isEmpty(str) || str.length() < 49) {
            return str;
        }
        String dq = dq(str.substring(1, 33), 32);
        String substring = str.substring(33, 49);
        return (substring == null || dq == null) ? str : com.bytedance.sdk.component.s.dq.d(str.substring(49), substring, dq);
    }

    public static Random ox() {
        SecureRandom instanceStrong;
        if (Build.VERSION.SDK_INT < 26) {
            return new SecureRandom();
        }
        try {
            instanceStrong = SecureRandom.getInstanceStrong();
            return instanceStrong;
        } catch (Throwable unused) {
            return new SecureRandom();
        }
    }
}
