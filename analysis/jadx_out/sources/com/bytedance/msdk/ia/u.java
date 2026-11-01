package com.bytedance.msdk.ia;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;

/* loaded from: classes.dex */
public class u {
    private static String dq;

    public static String d() {
        if (TextUtils.isEmpty(dq)) {
            dq = new String(Base64.decode("ZGV2aWNlX2lk", 0));
        }
        return dq;
    }

    public static String dq(String str) {
        try {
            if (!dq()) {
                return str;
            }
            String wp = com.bytedance.msdk.core.d.no().wp();
            if (TextUtils.isEmpty(wp)) {
                return str;
            }
            com.bytedance.msdk.dq.s.ox.dq("TestHelperUtils", "AnyDoorId=" + wp);
            return Uri.parse(str).buildUpon().appendQueryParameter(d(), wp).appendQueryParameter("aid", "5001121").toString();
        } catch (Throwable unused) {
            return str;
        }
    }

    public static boolean dq() {
        return com.bytedance.msdk.dq.s.ox.d() && com.bytedance.msdk.core.d.no().e() && com.bytedance.msdk.core.d.no().kx();
    }
}
