package com.bytedance.sdk.openadsdk.mn;

import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.TTC;
import com.bytedance.sdk.openadsdk.TTM;
import com.bytedance.sdk.openadsdk.api.TTILog;
import com.bytedance.sdk.openadsdk.tools.LogAdapter;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public class d {
    public static ox d(String str) {
        str.getClass();
        if (str.equals("net")) {
            return p.dq;
        }
        return null;
    }

    public static void d(Object obj) {
        dq(iw(obj));
    }

    public static void dq(Object obj) {
        try {
            ox(obj);
        } catch (Throwable th) {
            ig.d("HookObject", "register object  " + obj + " failed for: " + th.getMessage());
        }
    }

    public static void dq(String str) {
        str.getClass();
        if (str.equals("net")) {
            p.dq = null;
        }
    }

    private static String iw(Object obj) {
        if (obj == null) {
            return "";
        }
        TTC ttc = obj instanceof Class ? (TTC) ((Class) obj).getAnnotation(TTC.class) : (TTC) obj.getClass().getAnnotation(TTC.class);
        return ttc == null ? "" : ttc.value();
    }

    private static void ox(Object obj) {
        if (obj == null) {
            return;
        }
        String iw = iw(obj);
        iw.getClass();
        if (iw.equals("log")) {
            p(obj);
        } else if (iw.equals("net")) {
            s(obj);
        }
        ig.d("HookObject", "register object  " + obj + " successed~ ");
    }

    private static void p(Object obj) {
        if (obj instanceof TTILog) {
            LogAdapter.dq((TTILog) obj, true);
        }
    }

    private static void s(Object obj) {
        if (ig.ox()) {
            p pVar = new p();
            p.dq = pVar;
            for (Method method : obj.getClass().getDeclaredMethods()) {
                TTM ttm = (TTM) method.getAnnotation(TTM.class);
                if (ttm != null) {
                    method.setAccessible(true);
                    pVar.dq(ttm.value(), method);
                }
            }
            pVar.dq(obj);
        }
    }
}
