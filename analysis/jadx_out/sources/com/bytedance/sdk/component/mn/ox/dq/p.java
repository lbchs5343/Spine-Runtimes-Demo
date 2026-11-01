package com.bytedance.sdk.component.mn.ox.dq;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import java.util.Map;

/* loaded from: classes.dex */
public class p {
    private Context dq;

    private Context getContext() {
        Context context = this.dq;
        return context == null ? com.bytedance.sdk.component.mn.ox.getContext() : context;
    }

    public int delete(Uri uri, String str, String[] strArr) {
        String[] split = uri.getPath().split("/");
        if (split[2].equals("clean")) {
            ox.dq(getContext(), uri.getQueryParameter("sp_file_name"));
            return 0;
        }
        String str2 = split[3];
        if (ox.dq(getContext(), uri.getQueryParameter("sp_file_name"), str2)) {
            ox.d(getContext(), uri.getQueryParameter("sp_file_name"), str2);
        }
        return 0;
    }

    public String dq() {
        return "t_sp";
    }

    public void dq(Context context) {
        this.dq = context;
    }

    public String getType(Uri uri) {
        String[] split = uri.getPath().split("/");
        String str = split[2];
        String str2 = split[3];
        if (str.equals("contain")) {
            StringBuilder sb = new StringBuilder();
            sb.append(ox.dq(com.bytedance.sdk.component.mn.ox.getContext(), uri.getQueryParameter("sp_file_name"), str2));
            return sb.toString();
        }
        return ox.dq(getContext(), uri.getQueryParameter("sp_file_name"), str2, str);
    }

    public Uri insert(Uri uri, ContentValues contentValues) {
        if (contentValues == null) {
            return null;
        }
        String str = uri.getPath().split("/")[3];
        Object obj = contentValues.get("value");
        if (obj != null) {
            ox.dq(getContext(), uri.getQueryParameter("sp_file_name"), str, obj);
        }
        return null;
    }

    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        Map<String, ?> d2;
        if (!uri.getPath().split("/")[2].equals("get_all") || (d2 = ox.d(getContext(), uri.getQueryParameter("sp_file_name"))) == null) {
            return null;
        }
        MatrixCursor matrixCursor = new MatrixCursor(new String[]{"cursor_name", "cursor_type", "cursor_value"});
        for (String str3 : d2.keySet()) {
            Object[] objArr = new Object[3];
            objArr[0] = str3;
            Object obj = d2.get(str3);
            objArr[2] = obj;
            if (obj instanceof Boolean) {
                objArr[1] = "boolean";
            } else if (obj instanceof String) {
                objArr[1] = "string";
            } else if (obj instanceof Integer) {
                objArr[1] = "int";
            } else if (obj instanceof Long) {
                objArr[1] = "long";
            } else if (obj instanceof Float) {
                objArr[1] = "float";
            }
            matrixCursor.addRow(objArr);
        }
        return matrixCursor;
    }

    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        if (contentValues == null) {
            return 0;
        }
        insert(uri, contentValues);
        return 0;
    }
}
