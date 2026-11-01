package com.bytedance.sdk.component.ia.d.ox;

import android.text.TextUtils;
import android.util.Log;
import com.bytedance.sdk.component.ia.dq.p;
import com.bytedance.sdk.component.ia.dq.s;

/* loaded from: classes.dex */
public class ox {
    private static String d(String str) {
        p p;
        s ox = ox(str);
        if (ox == null || (p = ox.p()) == null) {
            return null;
        }
        return p.d();
    }

    public static void d(String str, s sVar) {
        if (sVar == null) {
            return;
        }
        dq(null, str, sVar.s(), 5);
    }

    public static void d(String str, String str2, s sVar) {
        if (sVar == null) {
            return;
        }
        dq(str, str2, sVar.s(), 5);
    }

    public static void dq(String str, s sVar) {
        if (sVar == null) {
            return;
        }
        dq(null, str, sVar.s(), 4);
    }

    public static void dq(String str, String str2, s sVar) {
        if (sVar == null) {
            return;
        }
        dq(str, str2, sVar.s(), 4);
    }

    public static void dq(String str, String str2, String str3) {
        dq(str, str2, str3, 4);
    }

    private static void dq(String str, String str2, String str3, int i) {
        try {
            if (dq(str3) || i == 100) {
                String d2 = d(str3);
                if (d2 == null) {
                    d2 = "";
                }
                String concat = d2.concat("log");
                if (!TextUtils.isEmpty(str)) {
                    concat = concat + str;
                }
                if (i == 6 || i == 100) {
                    Log.e(concat, str2);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private static boolean dq(String str) {
        p p;
        s ox = ox(str);
        if (ox == null || (p = ox.p()) == null) {
            return false;
        }
        return p.dq();
    }

    private static s ox(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return com.bytedance.sdk.component.ia.d.dq.mn(str);
    }

    public static void ox(String str, s sVar) {
        if (sVar == null) {
            return;
        }
        dq(null, str, sVar.s(), 6);
    }

    public static void ox(String str, String str2, s sVar) {
        if (sVar == null) {
            return;
        }
        dq(str, str2, sVar.s(), 6);
    }

    public static void p(String str, s sVar) {
        if (sVar == null) {
            return;
        }
        dq(null, str, sVar.s(), 100);
    }
}
