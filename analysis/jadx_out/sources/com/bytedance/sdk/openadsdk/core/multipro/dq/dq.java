package com.bytedance.sdk.openadsdk.core.multipro.dq;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.multipro.s;
import com.bytedance.sdk.openadsdk.core.wp;
import g.awf;

/* loaded from: classes3.dex */
public class dq {
    public static int delete(Context context, String str, String str2, String[] strArr) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            ContentResolver dq = dq(context);
            if (dq != null) {
                return dq.delete(Uri.parse(dq() + str), str2, strArr);
            }
        } catch (Throwable unused) {
        }
        return 0;
    }

    private static ContentResolver dq(Context context) {
        if (context == null) {
            try {
                context = wp.getContext();
            } catch (Throwable unused) {
                return null;
            }
        }
        return context.getContentResolver();
    }

    private static String dq() {
        return awf.ad(new StringBuilder(), s.f3198d, "/t_db/ttopensdk.db/");
    }

    public static void dq(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            ContentResolver dq = dq(context);
            if (dq != null) {
                dq.getType(Uri.parse(dq() + "unknown/execSQL?sql=" + Uri.encode(str)));
            }
        } catch (Throwable unused) {
        }
    }

    public static void insert(Context context, String str, ContentValues contentValues) {
        if (contentValues == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            ContentResolver dq = dq(context);
            if (dq != null) {
                dq.insert(Uri.parse(dq() + str), contentValues);
            }
        } catch (Throwable unused) {
        }
    }

    public static Cursor query(Context context, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            ContentResolver dq = dq(context);
            if (dq != null) {
                return dq.query(Uri.parse(dq() + str), strArr, str2, strArr2, str5);
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static int update(Context context, String str, ContentValues contentValues, String str2, String[] strArr) {
        if (contentValues != null && !TextUtils.isEmpty(str)) {
            try {
                ContentResolver dq = dq(context);
                if (dq != null) {
                    return dq.update(Uri.parse(dq() + str), contentValues, str2, strArr);
                }
            } catch (Throwable unused) {
            }
        }
        return 0;
    }
}
