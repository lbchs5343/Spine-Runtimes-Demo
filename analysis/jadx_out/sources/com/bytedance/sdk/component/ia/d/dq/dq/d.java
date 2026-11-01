package com.bytedance.sdk.component.ia.d.dq.dq;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.component.ia.dq.s;
import java.util.List;

/* loaded from: classes.dex */
public class d {
    public static int delete(Context context, String str, String str2, String[] strArr, s sVar) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            return dq.dq(context).dq().delete(sVar, str, str2, strArr);
        } catch (Throwable unused) {
            return 0;
        }
    }

    public static String dq(Context context, String str, s sVar) {
        if (TextUtils.isEmpty(str)) {
            return "sql is null";
        }
        try {
            dq.dq(context).dq().dq(sVar, Uri.decode(str));
            return "execSql ok";
        } catch (Throwable th) {
            return "exec sql exception:" + th.getMessage();
        }
    }

    public static void insert(Context context, String str, ContentValues contentValues, s sVar) {
        if (contentValues == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            dq.dq(context).dq().insert(sVar, str, (String) null, contentValues);
        } catch (Throwable unused) {
        }
    }

    public static void insert(Context context, String str, List<com.bytedance.sdk.component.ia.dq.d> list, s sVar) {
        if (list == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            dq.dq(context).dq().insert(sVar, str, (String) null, list);
        } catch (Throwable unused) {
        }
    }

    public static Cursor query(Context context, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, s sVar) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return dq.dq(context).dq().query(sVar, str, strArr, str2, strArr2, null, null, str5);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static int update(Context context, String str, ContentValues contentValues, String str2, String[] strArr, s sVar) {
        if (contentValues != null && !TextUtils.isEmpty(str)) {
            try {
                return dq.dq(context).dq().update(sVar, str, contentValues, str2, strArr);
            } catch (Throwable unused) {
            }
        }
        return 0;
    }
}
