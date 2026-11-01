package com.bytedance.sdk.component.no.ia;

import java.net.URLDecoder;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class d {
    public static JSONObject dq(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            String decode = URLDecoder.decode(str, "UTF-8");
            int indexOf = decode.indexOf(63);
            if (indexOf != -1) {
                Matcher matcher = Pattern.compile("([^&=]+)=((?:\\$\\{[^}]+\\})|[^&]+)").matcher(decode.substring(indexOf + 1));
                while (matcher.find()) {
                    jSONObject.put(matcher.group(1), matcher.group(2));
                }
            }
        } catch (Throwable unused) {
        }
        return jSONObject;
    }
}
