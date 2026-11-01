package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.provider.Settings;
import android.text.TextUtils;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class r0 {
    public static String a(Context context) {
        List list;
        JSONArray jSONArray = new JSONArray();
        if (context == null) {
            return jSONArray.toString();
        }
        String str = null;
        try {
            WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
            Method declaredMethod = wifiManager.getClass().getDeclaredMethod(new String(pbly.a("6765745363616e526573756c7473")), null);
            list = declaredMethod != null ? (List) declaredMethod.invoke(wifiManager, null) : null;
        } catch (Throwable unused) {
        }
        if (list == null || list.size() <= 0) {
            return jSONArray.toString();
        }
        Collections.sort(list, new s0());
        for (int i = 0; i < list.size() && i < 10; i++) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("ss", p1.a(((ScanResult) list.get(i)).SSID));
                jSONObject.put("bs", p1.a(((ScanResult) list.get(i)).BSSID));
                jSONArray.put(jSONObject);
            } catch (JSONException unused2) {
            }
        }
        str = jSONArray.toString();
        return str == null ? "[]" : str.trim();
    }

    public static String b(Context context) {
        String str;
        String string;
        try {
            string = Settings.Secure.getString(context.getContentResolver(), "default_input_method");
        } catch (Throwable th) {
            try {
                str = "null_" + th.getMessage();
            } catch (Throwable unused) {
                return "null_";
            }
        }
        if (TextUtils.isEmpty(string)) {
            return "null_";
        }
        if (!string.contains("/")) {
            return string;
        }
        str = string.split("/")[0];
        return str;
    }
}
