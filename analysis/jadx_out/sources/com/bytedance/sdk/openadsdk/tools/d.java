package com.bytedance.sdk.openadsdk.tools;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.ada;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    private static boolean f3874d = false;
    private static String dq = "SettingRitRepertoryImpl";
    private static Map<Integer, String> ox;
    private static long p;

    public static JSONObject d(String str) throws JSONException {
        int columnIndex;
        if (!dq()) {
            return null;
        }
        Cursor query = com.bytedance.sdk.openadsdk.core.multipro.dq.dq.query(wp.getContext(), "setting_rit", null, "rit=?", new String[]{str}, null, null, null);
        if (query == null || query.getCount() <= 0) {
            if (query != null) {
                query.close();
            }
            return null;
        }
        try {
            String string = (!query.moveToNext() || (columnIndex = query.getColumnIndex("config")) < 0) ? "" : query.getString(columnIndex);
            if (!TextUtils.isEmpty(string)) {
                return new JSONObject(com.bytedance.sdk.component.utils.dq.ox(string));
            }
        } finally {
            try {
                query.close();
                return null;
            } finally {
                try {
                    query.close();
                } catch (Throwable unused) {
                }
            }
        }
        try {
            query.close();
        } catch (Throwable unused2) {
        }
        return null;
    }

    public static void d() {
        f3874d = true;
    }

    public static void d(int i, String str) {
        if (dq()) {
            if (TextUtils.isEmpty(str)) {
                str = "null";
            }
            try {
                com.bytedance.sdk.openadsdk.core.multipro.dq.dq.dq(wp.getContext(), "INSERT OR REPLACE INTO setting_base_info (_id, value) VALUES (" + i + ", '" + com.bytedance.sdk.component.utils.dq.d(str) + "')");
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public static void d(JSONObject jSONObject, String str) throws JSONException {
        JSONObject ox2;
        if ((jSONObject == null && TextUtils.isEmpty(str)) || (ox2 = ox(str)) == null) {
            return;
        }
        if (ox2.has("image_mode")) {
            jSONObject.put("image_mode", ox2.optString("image_mode"));
        }
        if (ox2.has("preview_extra")) {
            jSONObject.put("preview_extra", ox2.optString("preview_extra"));
        }
        if (ox2.has("preview_ads")) {
            jSONObject.put("preview_ads", ox2.optJSONObject("preview_ads"));
        }
    }

    public static void delete(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.multipro.dq.dq.delete(wp.getContext(), "setting_rit", "rit=?", new String[]{str});
    }

    public static String dq(int i, String str) {
        if (ox == null || System.currentTimeMillis() - p > 2000) {
            p = System.currentTimeMillis();
            ox = p();
        }
        Map<Integer, String> map = ox;
        if (map == null || map.containsKey(Integer.valueOf(i))) {
            try {
                String ox2 = com.bytedance.sdk.component.utils.dq.ox(map.get(Integer.valueOf(i)));
                return "null".equals(ox2) ? "" : ox2;
            } catch (Exception unused) {
            }
        }
        return str;
    }

    public static Map<String, String> dq(String str) throws JSONException {
        JSONObject d2 = d(str);
        if (d2 == null) {
            return null;
        }
        String optString = d2.optString("ext");
        if (TextUtils.isEmpty(optString)) {
            return null;
        }
        try {
            HashMap hashMap = new HashMap();
            try {
                JSONObject optJSONObject = new JSONObject(optString).optJSONObject(TTDownloadField.TT_HEADERS);
                if (optJSONObject == null) {
                    return null;
                }
                Iterator<String> keys = optJSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    hashMap.put(next, optJSONObject.optString(next));
                }
                return hashMap;
            } catch (Exception unused) {
                return hashMap;
            }
        } catch (Exception unused2) {
            return null;
        }
    }

    public static void dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        if (dq()) {
            String mn = dVar.mn();
            if (p(mn)) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("img_width", dVar.kk());
                    jSONObject.put("img_height", dVar.o());
                    jSONObject.put("express_width", dVar.no());
                    jSONObject.put("express_height", dVar.ig());
                    jSONObject.put("ad_count", dVar.jy());
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("rit", mn);
                contentValues.put("slot", com.bytedance.sdk.component.utils.dq.d(jSONObject.toString()));
                com.bytedance.sdk.openadsdk.core.multipro.dq.dq.update(wp.getContext(), "setting_rit", contentValues, "rit=?", new String[]{mn});
            }
        }
    }

    public static void dq(String str, JSONObject jSONObject) {
        if (!dq() || TextUtils.isEmpty(str) || jSONObject == null) {
            return;
        }
        Cursor query = com.bytedance.sdk.openadsdk.core.multipro.dq.dq.query(wp.getContext(), "setting_rit", null, "rit=?", new String[]{str}, null, null, null);
        boolean z = query != null && query.getCount() > 0;
        if (query != null) {
            try {
                query.close();
            } catch (Throwable unused) {
            }
        }
        JSONObject dq2 = com.bytedance.sdk.component.utils.dq.dq(jSONObject);
        ContentValues contentValues = new ContentValues();
        contentValues.put("rit", str);
        contentValues.put("value", dq2.toString());
        if (z) {
            com.bytedance.sdk.openadsdk.core.multipro.dq.dq.update(wp.getContext(), "setting_rit", contentValues, "rit=?", new String[]{str});
        } else {
            com.bytedance.sdk.openadsdk.core.multipro.dq.dq.insert(wp.getContext(), "setting_rit", contentValues);
        }
    }

    public static void dq(JSONObject jSONObject, String str) throws JSONException {
        JSONObject d2 = d(str);
        if (d2 == null) {
            return;
        }
        String optString = d2.optString("aid");
        String optString2 = d2.optString("cid");
        String optString3 = d2.optString("ext");
        if (!TextUtils.isEmpty(optString)) {
            jSONObject.put(MediationConstant.EXTRA_ADID, optString);
        }
        if (!TextUtils.isEmpty(optString2)) {
            jSONObject.put("creative_id", optString2);
        }
        if (TextUtils.isEmpty(optString3)) {
            return;
        }
        jSONObject.put("ext", optString3);
    }

    public static boolean dq() {
        return f3874d;
    }

    public static String ox() {
        return "CREATE TABLE IF NOT EXISTS setting_rit (_id INTEGER PRIMARY KEY AUTOINCREMENT,rit TEXT UNIQUE,value TEXT,slot TEXT,config TEXT,preview_ads TEXT)";
    }

    public static JSONObject ox(String str) throws JSONException {
        int columnIndex;
        if (!dq()) {
            return null;
        }
        Cursor query = com.bytedance.sdk.openadsdk.core.multipro.dq.dq.query(wp.getContext(), "setting_rit", null, "rit=?", new String[]{str}, null, null, null);
        if (query == null || query.getCount() <= 0) {
            if (query != null) {
                query.close();
            }
            return null;
        }
        try {
            String string = (!query.moveToNext() || (columnIndex = query.getColumnIndex("preview_ads")) < 0) ? "" : query.getString(columnIndex);
            if (!TextUtils.isEmpty(string)) {
                return new JSONObject(com.bytedance.sdk.component.utils.dq.ox(string));
            }
        } finally {
            try {
                query.close();
                return null;
            } finally {
                try {
                    query.close();
                } catch (Throwable unused) {
                }
            }
        }
        try {
            query.close();
        } catch (Throwable unused2) {
        }
        return null;
    }

    public static void ox(int i, String str) {
        if (dq()) {
            if (TextUtils.isEmpty(str)) {
                str = "null";
            }
            Cursor query = com.bytedance.sdk.openadsdk.core.multipro.dq.dq.query(wp.getContext(), "setting_global_info", null, "_id=?", new String[]{String.valueOf(i)}, null, null, null);
            boolean z = query != null && query.getCount() > 0;
            if (query != null) {
                try {
                    query.close();
                } catch (Exception unused) {
                }
            }
            String d2 = com.bytedance.sdk.component.utils.dq.d(str);
            ContentValues contentValues = new ContentValues();
            contentValues.put(ada.COLUMN_ID, Integer.valueOf(i));
            contentValues.put("value", d2);
            if (z) {
                com.bytedance.sdk.openadsdk.core.multipro.dq.dq.update(wp.getContext(), "setting_global_info", contentValues, "_id=?", new String[]{String.valueOf(i)});
            } else {
                com.bytedance.sdk.openadsdk.core.multipro.dq.dq.insert(wp.getContext(), "setting_global_info", contentValues);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0056, code lost:
    
        if (0 == 0) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Map<Integer, String> p() {
        HashMap hashMap = new HashMap();
        Cursor cursor = null;
        try {
            try {
                cursor = com.bytedance.sdk.openadsdk.core.multipro.dq.dq.query(wp.getContext(), "setting_global_info", new String[]{ada.COLUMN_ID, "value"}, null, null, null, null, null);
            } catch (Exception unused) {
            }
            if (cursor == null) {
                if (cursor != null) {
                    cursor.close();
                    return hashMap;
                }
                return hashMap;
            }
            while (cursor.moveToNext()) {
                try {
                    int i = cursor.getInt(cursor.getColumnIndex(ada.COLUMN_ID));
                    String string = cursor.getString(cursor.getColumnIndex("value"));
                    Integer valueOf = Integer.valueOf(i);
                    if (string == null) {
                        string = "";
                    }
                    hashMap.put(valueOf, string);
                } catch (Exception unused2) {
                }
            }
            cursor.close();
            return hashMap;
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0026 A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean p(String str) {
        boolean z;
        Cursor query = com.bytedance.sdk.openadsdk.core.multipro.dq.dq.query(wp.getContext(), "setting_rit", null, "rit=?", new String[]{str}, null, null, null);
        if (query != null) {
            try {
                if (query.getCount() > 0) {
                    z = true;
                    if (query != null) {
                    }
                    return z;
                }
            } finally {
                query.close();
            }
        }
        z = false;
        if (query != null) {
        }
        return z;
    }
}
