package com.bytedance.msdk.ia;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;

/* loaded from: classes.dex */
public class r {
    private static final HashSet dq = new HashSet(Arrays.asList("dalvik.system.VMStack.getThreadStackTrace", "java.lang.Thread.getStackTrace"));

    public static String d(StackTraceElement[] stackTraceElementArr) {
        Map<String, List<String>> u = com.bytedance.msdk.core.dq.d().u();
        if (u == null || u.isEmpty()) {
            return null;
        }
        for (String str : u.keySet()) {
            if (dq(u.get(str), stackTraceElementArr)) {
                return str;
            }
        }
        return null;
    }

    private static boolean d() {
        Map<String, List<String>> u = com.bytedance.msdk.core.dq.d().u();
        if (u == null || u.size() == 0) {
            return false;
        }
        return dq(com.bytedance.msdk.core.dq.d().c());
    }

    public static double dq() {
        return com.bytedance.msdk.core.dq.d().c();
    }

    public static String dq(Map<String, String> map) {
        if (map == null || map.size() == 0) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        for (String str : map.keySet()) {
            if (dq(map.get(str))) {
                jSONArray.put(str);
            }
        }
        if (jSONArray.length() == 0) {
            return null;
        }
        try {
            return jSONArray.toString();
        } catch (OutOfMemoryError e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static String dq(StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr == null || stackTraceElementArr.length == 0) {
            return null;
        }
        try {
            JSONArray jSONArray = new JSONArray();
            for (StackTraceElement stackTraceElement : stackTraceElementArr) {
                if (stackTraceElement != null) {
                    if (!dq.contains(stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName())) {
                        String className = stackTraceElement.getClassName();
                        if (className != null && className.startsWith("android.app")) {
                            break;
                        }
                        jSONArray.put(stackTraceElement.toString());
                    } else {
                        continue;
                    }
                }
            }
            return jSONArray.toString();
        } catch (OutOfMemoryError e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static boolean dq(double d2) {
        return d2 > 0.0d && Math.random() <= d2;
    }

    public static boolean dq(com.bytedance.msdk.core.no.no noVar) {
        if (noVar == null || !noVar.wn()) {
            return false;
        }
        return d();
    }

    public static boolean dq(com.bytedance.msdk.d.s sVar) {
        if (sVar == null || !sVar.zc()) {
            return false;
        }
        return d();
    }

    private static boolean dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Class.forName(str);
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private static boolean dq(List<String> list, StackTraceElement[] stackTraceElementArr) {
        if (list != null) {
            for (int i = 0; i < list.size(); i++) {
                for (StackTraceElement stackTraceElement : stackTraceElementArr) {
                    if (list.get(i) != null) {
                        try {
                            if (stackTraceElement.toString().contains(list.get(i))) {
                                return true;
                            }
                        } catch (OutOfMemoryError e2) {
                            e2.printStackTrace();
                        }
                    }
                }
            }
        }
        return false;
    }
}
