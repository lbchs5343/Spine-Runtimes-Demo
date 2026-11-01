package com.bytedance.sdk.openadsdk.core.ir;

import android.text.TextUtils;
import g.abn;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class er {
    public static String d(String str) {
        return str.contains("?") ? str.substring(0, str.indexOf("?")) : str;
    }

    public static String dq(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str) || map == null || map.size() <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(d(str));
        sb.append("?");
        try {
            Iterator<Map.Entry<String, String>> it = map.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<String, String> next = it.next();
                String key = next.getKey();
                String value = next.getValue();
                if (it.hasNext()) {
                    if (!"live_short_touch_params".equals(key) && !"extra_pangle_scheme_params".equals(key)) {
                        sb.append(key + "=" + value + "&");
                    }
                    sb.append(URLEncoder.encode(next.getKey(), "UTF-8") + "=" + URLEncoder.encode(next.getValue(), "UTF-8") + "&");
                } else {
                    if (!"live_short_touch_params".equals(key) && !"extra_pangle_scheme_params".equals(key)) {
                        sb.append(key + "=" + value);
                    }
                    sb.append(URLEncoder.encode(next.getKey(), "UTF-8") + "=" + URLEncoder.encode(next.getValue(), "UTF-8"));
                }
            }
        } catch (Exception unused) {
        }
        return sb.toString();
    }

    public static Map<String, String> dq(String str) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        URL ox = ox(str);
        if (ox != null) {
            try {
                String query = ox.getQuery();
                if (query != null) {
                    if (query.contains("url=")) {
                        int indexOf = query.indexOf("url=");
                        linkedHashMap.put(abn.EXTRA_URL, URLDecoder.decode(query.substring(indexOf + 4), "UTF-8"));
                        query = query.substring(0, indexOf);
                    }
                    if (query.length() > 0) {
                        for (String str2 : query.split("&")) {
                            int indexOf2 = str2.indexOf("=");
                            if (indexOf2 > 0 && indexOf2 < str2.length() - 1) {
                                String substring = str2.substring(0, indexOf2);
                                int i = indexOf2 + 1;
                                String substring2 = str2.substring(i);
                                if (!"live_short_touch_params".equals(substring) && !"extra_pangle_scheme_params".equals(substring)) {
                                    linkedHashMap.put(substring, substring2);
                                }
                                linkedHashMap.put(URLDecoder.decode(str2.substring(0, indexOf2), "UTF-8"), URLDecoder.decode(str2.substring(i), "UTF-8"));
                            }
                        }
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                return linkedHashMap;
            }
        }
        return linkedHashMap;
    }

    private static URL ox(String str) {
        if (str != null && str.length() != 0 && str.contains("://")) {
            try {
                return new URL("http" + str.substring(str.indexOf("://")));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }
}
