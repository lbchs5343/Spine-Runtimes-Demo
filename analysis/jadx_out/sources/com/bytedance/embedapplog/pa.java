package com.bytedance.embedapplog;

import android.content.Context;
import android.text.TextUtils;
import g.xo;

/* loaded from: classes.dex */
public class pa {
    private static volatile String dq;

    public static String dq(Context context, u uVar) {
        String str;
        if (TextUtils.isEmpty(dq)) {
            synchronized (pa.class) {
                if (!TextUtils.isEmpty(dq)) {
                    return dq;
                }
                try {
                    str = xo.i(context).f14078a;
                } catch (Throwable th) {
                    if (!(th instanceof ClassNotFoundException) && !(th instanceof NoClassDefFoundError)) {
                        th.printStackTrace();
                    }
                    str = null;
                }
                if (TextUtils.isEmpty(str)) {
                    str = uVar.p().getString("google_aid", null);
                } else if (!TextUtils.equals(uVar.p().getString("google_aid", null), str)) {
                    dq(context, str, uVar);
                }
                dq = str;
            }
        }
        return dq;
    }

    private static void dq(Context context, String str, u uVar) {
        if (TextUtils.isEmpty(str) || context == null) {
            return;
        }
        uVar.p().edit().putString("google_aid", str).apply();
    }
}
