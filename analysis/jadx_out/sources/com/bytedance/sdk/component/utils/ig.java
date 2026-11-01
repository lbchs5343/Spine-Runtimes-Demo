package com.bytedance.sdk.component.utils;

import android.text.TextUtils;
import android.util.Log;
import g.awf;

/* loaded from: classes.dex */
public class ig {

    /* renamed from: d, reason: collision with root package name */
    private static int f2191d = 4;
    private static boolean dq = false;
    private static com.bytedance.sdk.component.dq ox = null;
    private static String p = "";

    public static void d() {
        dq = true;
        dq(3);
    }

    public static void d(String str) {
        if (dq) {
            p("Logger", str);
        }
    }

    public static void d(String str, String str2) {
        com.bytedance.sdk.component.dq dqVar = ox;
        if (dqVar != null) {
            dqVar.d(ox(str), str2);
        }
        if (dq && str2 != null && f2191d <= 5) {
            ox(str);
        }
    }

    public static void d(String str, String str2, Throwable th) {
        com.bytedance.sdk.component.dq dqVar = ox;
        if (dqVar != null) {
            dqVar.d(ox(str), str2, th);
        }
        if (dq) {
            if (!(str2 == null && th == null) && f2191d <= 6) {
                Log.e(ox(str), str2, th);
            }
        }
    }

    public static void d(String str, Object... objArr) {
        com.bytedance.sdk.component.dq dqVar = ox;
        if (dqVar != null) {
            dqVar.d(ox(str), dq(objArr));
        }
        if (dq && objArr != null && f2191d <= 5) {
            ox(str);
            dq(objArr);
        }
    }

    private static String dq(Object... objArr) {
        if (objArr == null || objArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (Object obj : objArr) {
            if (obj != null) {
                sb.append(obj.toString());
            } else {
                sb.append(" null ");
            }
            sb.append(" ");
        }
        return sb.toString();
    }

    public static void dq(int i) {
        f2191d = i;
    }

    public static void dq(com.bytedance.sdk.component.dq dqVar) {
        ox = dqVar;
    }

    public static void dq(String str) {
        if (dq) {
            d("Logger", str);
        }
    }

    public static void dq(String str, String str2) {
        com.bytedance.sdk.component.dq dqVar = ox;
        if (dqVar != null) {
            dqVar.dq(ox(str), str2);
        }
        if (dq && str2 != null && f2191d <= 4) {
            ox(str);
        }
    }

    public static void dq(String str, String str2, Throwable th) {
        com.bytedance.sdk.component.dq dqVar = ox;
        if (dqVar != null) {
            dqVar.dq(ox(str), str2, th);
        }
        if (dq) {
            if (!(str2 == null && th == null) && f2191d <= 5) {
                ox(str);
            }
        }
    }

    public static void dq(String str, Object... objArr) {
        com.bytedance.sdk.component.dq dqVar = ox;
        if (dqVar != null) {
            dqVar.dq(ox(str), dq(objArr));
        }
        if (dq && objArr != null && f2191d <= 4) {
            ox(str);
            dq(objArr);
        }
    }

    public static boolean dq() {
        return f2191d <= 3;
    }

    public static String ox(String str) {
        return TextUtils.isEmpty(p) ? str : dq(awf.r(new StringBuilder("["), p, "]-[", str, "]"));
    }

    public static void ox(String str, String str2) {
        com.bytedance.sdk.component.dq dqVar = ox;
        if (dqVar != null) {
            dqVar.dq(ox(str), str2);
        }
        if (str2 == null) {
            return;
        }
        if (str == null) {
            str = "Logger";
        }
        ox(str);
    }

    public static void ox(String str, Object... objArr) {
        com.bytedance.sdk.component.dq dqVar = ox;
        if (dqVar != null) {
            dqVar.ox(ox(str), dq(objArr));
        }
        if (dq && objArr != null && f2191d <= 6) {
            Log.e(ox(str), dq(objArr));
        }
    }

    public static boolean ox() {
        return dq;
    }

    public static void p(String str, String str2) {
        com.bytedance.sdk.component.dq dqVar = ox;
        if (dqVar != null) {
            dqVar.ox(ox(str), str2);
        }
        if (dq && str2 != null && f2191d <= 6) {
            Log.e(ox(str), str2);
        }
    }
}
