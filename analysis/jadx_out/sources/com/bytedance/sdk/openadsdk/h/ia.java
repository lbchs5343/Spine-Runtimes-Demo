package com.bytedance.sdk.openadsdk.h;

import g.ada;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class ia {

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        public Map<String, String> f3760d;
        public String dq;
    }

    public static String d(String str) {
        dq dq2 = dq(str);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Map<String, String> map = dq2.f3760d;
        if (map != null) {
            if (map.containsKey(ada.COLUMN_VALUE)) {
                linkedHashMap.put(ada.COLUMN_VALUE, dq2.f3760d.get(ada.COLUMN_VALUE));
                dq2.f3760d.remove(ada.COLUMN_VALUE);
            }
            for (Map.Entry<String, String> entry : dq2.f3760d.entrySet()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return dq(dq2.dq, linkedHashMap);
    }

    public static dq dq(String str) {
        dq dqVar = new dq();
        if (str != null) {
            String trim = str.trim();
            if (!trim.equals("")) {
                String[] split = trim.split("\\?");
                dqVar.dq = split[0];
                if (split.length != 1) {
                    String[] split2 = split[1].split("&");
                    dqVar.f3760d = new HashMap();
                    for (String str2 : split2) {
                        String[] split3 = str2.split("=");
                        if (split3.length >= 2) {
                            dqVar.f3760d.put(split3[0], split3[1]);
                        }
                    }
                }
            }
        }
        return dqVar;
    }

    private static String dq(String str, LinkedHashMap<String, String> linkedHashMap) {
        StringBuilder sb = new StringBuilder();
        if (str == null) {
            return sb.toString();
        }
        sb.append(str);
        boolean z = str.contains("?") || str.contains("&");
        if (linkedHashMap != null && linkedHashMap.size() > 0) {
            for (String str2 : linkedHashMap.keySet()) {
                if (z) {
                    sb.append("&");
                } else {
                    sb.append("?");
                    z = true;
                }
                sb.append(str2);
                sb.append("=");
                sb.append(linkedHashMap.get(str2));
            }
        }
        return sb.toString();
    }
}
