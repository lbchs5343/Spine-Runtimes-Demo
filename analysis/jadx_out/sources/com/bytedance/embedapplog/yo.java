package com.bytedance.embedapplog;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import g.awf;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class yo {
    private static String dq = ":push";

    public static JSONObject d(JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                jSONObject.put(next, jSONObject2.opt(next));
            }
            return jSONObject;
        } catch (JSONException e2) {
            jo.d(e2);
            return jSONObject;
        }
    }

    public static boolean d() {
        mn n;
        ia ig = dq.ig();
        if (ig == null || (n = ig.n()) == null) {
            return false;
        }
        return n.ox();
    }

    public static boolean d(Context context) {
        String dq2 = dq(context);
        return dq2 != null && dq2.endsWith(dq);
    }

    public static String dq(Context context) {
        mn n;
        ia ig = dq.ig();
        return (ig == null || (n = ig.n()) == null) ? "" : n.dq(context);
    }

    public static String dq(String str) {
        String str2 = "";
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        BufferedReader bufferedReader = null;
        try {
            Process exec = Runtime.getRuntime().exec("getprop ".concat(String.valueOf(str)));
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(exec.getInputStream()), 1024);
            try {
                str2 = bufferedReader2.readLine();
                exec.destroy();
                dq(bufferedReader2);
                return str2;
            } catch (Throwable th) {
                th = th;
                bufferedReader = bufferedReader2;
                try {
                    jo.dq(th);
                    return str2;
                } finally {
                    dq(bufferedReader);
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static String dq(String str, String str2) {
        if (str2 == null) {
            str2 = "ISO-8859-1";
        }
        try {
            return URLEncoder.encode(str, str2);
        } catch (UnsupportedEncodingException unused) {
            return "";
        }
    }

    public static String dq(String str, HashMap<String, String> hashMap, String str2) {
        StringBuilder sb = new StringBuilder(str);
        for (String str3 : hashMap.keySet()) {
            String dq2 = dq(str3, str2);
            String str4 = hashMap.get(str3);
            String dq3 = str4 != null ? dq(str4, str2) : "";
            if (sb.length() > 0) {
                sb.append("&");
            }
            awf.a(dq2, "=", dq3, sb);
        }
        return sb.toString();
    }

    public static JSONObject dq(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        JSONObject jSONObject2 = new JSONObject();
        d(jSONObject2, jSONObject);
        try {
            String dq2 = bx.dq(jSONObject2.optJSONObject("oaid"));
            if (!TextUtils.isEmpty(dq2)) {
                jSONObject2.put("oaid", dq2);
            }
        } catch (Exception e2) {
            jo.d(e2);
        }
        return jSONObject2;
    }

    public static void dq(Cursor cursor) {
        if (cursor != null) {
            try {
                cursor.close();
            } catch (Throwable th) {
                jo.dq(th);
            }
        }
    }

    public static void dq(SQLiteDatabase sQLiteDatabase) {
        if (sQLiteDatabase != null) {
            try {
                sQLiteDatabase.endTransaction();
            } catch (Throwable th) {
                jo.d(th);
            }
        }
    }

    public static void dq(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
                jo.dq(th);
            }
        }
    }

    public static boolean dq() {
        ia ig = dq.ig();
        if (ig != null) {
            return ig.kx();
        }
        return true;
    }

    public static boolean dq(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static boolean dq(JSONObject jSONObject, JSONObject jSONObject2) {
        return (jSONObject == null || jSONObject2 == null) ? dq((Object) jSONObject, (Object) jSONObject2) : jSONObject.toString().equals(jSONObject2.toString());
    }

    public static String ox() {
        mn n;
        ia ig = dq.ig();
        return (ig == null || (n = ig.n()) == null) ? "" : n.d();
    }

    public static boolean p() {
        mn n;
        ia ig = dq.ig();
        if (ig == null || (n = ig.n()) == null) {
            return false;
        }
        return n.p();
    }
}
