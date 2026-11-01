package com.bytedance.sdk.component.mn.ox.dq;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import g.awf;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class d {
    private static ContentResolver d() {
        try {
            if (dq()) {
                return com.bytedance.sdk.component.mn.ox.getContext().getContentResolver();
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String d(String str, String str2, String str3) {
        String type;
        if (dq()) {
            try {
                ContentResolver d2 = d();
                if (d2 != null && (type = d2.getType(Uri.parse(ox("string", str2, str)))) != null && !type.equals("null")) {
                    if (!TextUtils.isEmpty(type)) {
                        return type;
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return str3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1, types: [java.util.HashSet] */
    /* JADX WARN: Type inference failed for: r8v10, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r8v6, types: [java.lang.Float] */
    /* JADX WARN: Type inference failed for: r8v8, types: [java.lang.Long] */
    public static Map<String, ?> d(String str) {
        Cursor cursor;
        String str2;
        if (!dq()) {
            return null;
        }
        try {
            ContentResolver d2 = d();
            if (d2 != null) {
                cursor = d2.query(Uri.parse(ox() + "get_all" + ox(str)), null, null, null, null);
                try {
                    HashMap hashMap = new HashMap();
                    if (cursor != null && cursor.moveToFirst()) {
                        int columnIndex = cursor.getColumnIndex("cursor_name");
                        int columnIndex2 = cursor.getColumnIndex("cursor_type");
                        int columnIndex3 = cursor.getColumnIndex("cursor_value");
                        do {
                            String string = cursor.getString(columnIndex);
                            String string2 = cursor.getString(columnIndex2);
                            if (string2.equalsIgnoreCase("string")) {
                                String string3 = cursor.getString(columnIndex3);
                                boolean contains = string3.contains("__COMMA__");
                                str2 = string3;
                                if (contains) {
                                    boolean matches = string3.matches("\\[.*\\]");
                                    str2 = string3;
                                    if (matches) {
                                        String substring = string3.substring(1, string3.length() - 1);
                                        String[] split = substring.split(", ");
                                        ?? hashSet = new HashSet();
                                        if (!TextUtils.isEmpty(substring)) {
                                            for (String str3 : split) {
                                                hashSet.add(str3.replace("__COMMA__", ", "));
                                            }
                                        }
                                        str2 = hashSet;
                                    }
                                }
                            } else {
                                str2 = string2.equalsIgnoreCase("boolean") ? cursor.getString(columnIndex3) : string2.equalsIgnoreCase("int") ? Integer.valueOf(cursor.getInt(columnIndex3)) : string2.equalsIgnoreCase("long") ? Long.valueOf(cursor.getLong(columnIndex3)) : string2.equalsIgnoreCase("float") ? Float.valueOf(cursor.getFloat(columnIndex3)) : string2.equalsIgnoreCase("string_set") ? cursor.getString(columnIndex3) : null;
                            }
                            hashMap.put(string, str2);
                        } while (cursor.moveToNext());
                    }
                    if (cursor != null && !cursor.isClosed()) {
                        cursor.close();
                    }
                    return hashMap;
                } catch (Throwable unused) {
                    if (cursor != null && !cursor.isClosed()) {
                        cursor.close();
                    }
                    return null;
                }
            }
        } catch (Throwable unused2) {
            cursor = null;
        }
        return null;
    }

    @TargetApi(11)
    public static Set<String> d(String str, String str2, Set<String> set) {
        String type;
        if (dq()) {
            try {
                ContentResolver d2 = d();
                if (d2 != null && (type = d2.getType(Uri.parse(ox("string_set", str2, str)))) != null && !type.equals("null") && !TextUtils.isEmpty(type) && type.matches("\\[.*\\]")) {
                    String substring = type.substring(1, type.length() - 1);
                    String[] split = substring.split(", ");
                    HashSet hashSet = new HashSet();
                    if (!TextUtils.isEmpty(substring)) {
                        for (String str3 : split) {
                            hashSet.add(str3.replace("__COMMA__", ", "));
                        }
                    }
                    return hashSet;
                }
            } catch (Throwable unused) {
            }
        }
        return set;
    }

    public static float dq(String str, String str2, float f2) {
        String type;
        if (dq()) {
            try {
                ContentResolver d2 = d();
                if (d2 != null && (type = d2.getType(Uri.parse(ox("float", str2, str)))) != null && !type.equals("null") && !TextUtils.isEmpty(type)) {
                    return Float.parseFloat(type);
                }
            } catch (Throwable unused) {
            }
        }
        return f2;
    }

    public static int dq(String str, String str2, int i) {
        String type;
        if (dq()) {
            try {
                ContentResolver d2 = d();
                if (d2 != null && (type = d2.getType(Uri.parse(ox("int", str2, str)))) != null && !type.equals("null") && !TextUtils.isEmpty(type)) {
                    return Integer.parseInt(type);
                }
            } catch (Throwable unused) {
            }
        }
        return i;
    }

    public static long dq(String str, String str2, long j) {
        String type;
        if (dq()) {
            try {
                ContentResolver d2 = d();
                if (d2 != null && (type = d2.getType(Uri.parse(ox("long", str2, str)))) != null && !type.equals("null") && !TextUtils.isEmpty(type)) {
                    return Long.parseLong(type);
                }
            } catch (Throwable unused) {
            }
        }
        return j;
    }

    public static void dq(String str) {
        if (dq()) {
            try {
                ContentResolver d2 = d();
                if (d2 != null) {
                    d2.delete(Uri.parse(ox() + "clean" + ox(str)), null, null);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static void dq(String str, String str2) {
        if (dq()) {
            try {
                ContentResolver d2 = d();
                if (d2 != null) {
                    d2.delete(Uri.parse(ox("long", str2, str)), null, null);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static synchronized void dq(String str, String str2, Boolean bool) {
        synchronized (d.class) {
            if (dq()) {
                try {
                    ContentResolver d2 = d();
                    if (d2 != null) {
                        Uri parse = Uri.parse(ox("boolean", str2, str));
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("value", bool);
                        d2.update(parse, contentValues, null, null);
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    public static synchronized void dq(String str, String str2, Float f2) {
        synchronized (d.class) {
            if (dq()) {
                try {
                    ContentResolver d2 = d();
                    if (d2 != null) {
                        Uri parse = Uri.parse(ox("float", str2, str));
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("value", f2);
                        d2.update(parse, contentValues, null, null);
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    public static synchronized void dq(String str, String str2, Integer num) {
        synchronized (d.class) {
            if (dq()) {
                try {
                    ContentResolver d2 = d();
                    if (d2 != null) {
                        Uri parse = Uri.parse(ox("int", str2, str));
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("value", num);
                        d2.update(parse, contentValues, null, null);
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    public static synchronized void dq(String str, String str2, Long l) {
        synchronized (d.class) {
            if (dq()) {
                try {
                    ContentResolver d2 = d();
                    if (d2 != null) {
                        Uri parse = Uri.parse(ox("long", str2, str));
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("value", l);
                        d2.update(parse, contentValues, null, null);
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    public static synchronized void dq(String str, String str2, String str3) {
        synchronized (d.class) {
            if (dq()) {
                try {
                    ContentResolver d2 = d();
                    if (d2 != null) {
                        Uri parse = Uri.parse(ox("string", str2, str));
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("value", str3);
                        d2.update(parse, contentValues, null, null);
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    public static synchronized void dq(String str, String str2, Set<String> set) {
        synchronized (d.class) {
            if (dq()) {
                try {
                    ContentResolver d2 = d();
                    if (d2 != null) {
                        Uri parse = Uri.parse(ox("string_set", str2, str));
                        ContentValues contentValues = new ContentValues();
                        HashSet hashSet = new HashSet();
                        Iterator<String> it = set.iterator();
                        while (it.hasNext()) {
                            hashSet.add(it.next().replace(",", "__COMMA__"));
                        }
                        contentValues.put("value", hashSet.toString());
                        d2.update(parse, contentValues, null, null);
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    public static boolean dq() {
        return com.bytedance.sdk.component.mn.ox.getContext() != null;
    }

    public static boolean dq(String str, String str2, boolean z) {
        String type;
        if (dq()) {
            try {
                ContentResolver d2 = d();
                if (d2 != null && (type = d2.getType(Uri.parse(ox("boolean", str2, str)))) != null && !type.equals("null") && !TextUtils.isEmpty(type)) {
                    return Boolean.parseBoolean(type);
                }
            } catch (Throwable unused) {
            }
        }
        return z;
    }

    public static Context getContext() {
        return com.bytedance.sdk.component.mn.ox.getContext();
    }

    private static String ox() {
        return awf.ad(new StringBuilder(), s.f2006d, "/t_sp/");
    }

    private static String ox(String str) {
        return TextUtils.isEmpty(str) ? "" : "?sp_file_name=".concat(String.valueOf(str));
    }

    private static String ox(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder();
        awf.y(sb, ox(), str, "/", str2);
        sb.append(ox(str3));
        return sb.toString();
    }
}
