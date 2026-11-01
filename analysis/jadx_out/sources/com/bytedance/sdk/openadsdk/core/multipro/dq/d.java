package com.bytedance.sdk.openadsdk.core.multipro.dq;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.ITTProvider;
import com.bytedance.sdk.openadsdk.core.ia;
import com.bytedance.sdk.openadsdk.core.wp;

/* loaded from: classes3.dex */
public class d implements ITTProvider {
    private Context dq;

    private boolean dq(Uri uri) {
        return uri == null || TextUtils.isEmpty(uri.getPath());
    }

    private Context getContext() {
        Context context = this.dq;
        return context == null ? wp.getContext() : context;
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public int delete(Uri uri, String str, String[] strArr) {
        String[] split;
        if (!dq(uri) && (split = uri.getPath().split("/")) != null && split.length >= 4) {
            String str2 = split[2];
            String str3 = split[3];
            if ("ttopensdk.db".equals(str2)) {
                return ia.dq(getContext()).dq().delete(str3, str, strArr);
            }
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public String getTableName() {
        return "t_db";
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public String getType(Uri uri) {
        String[] split;
        if (!dq(uri) && (split = uri.getPath().split("/")) != null && split.length >= 5) {
            String str = split[2];
            String str2 = split[4];
            if ("ttopensdk.db".equals(str)) {
                if ("execSQL".equals(str2)) {
                    String queryParameter = uri.getQueryParameter("sql");
                    if (!TextUtils.isEmpty(queryParameter)) {
                        ia.dq(getContext()).dq().dq(Uri.decode(queryParameter));
                    }
                } else if ("transactionBegin".equals(str2)) {
                    ia.dq(getContext()).dq().ox();
                } else if ("transactionSetSuccess".equals(str2)) {
                    ia.dq(getContext()).dq().p();
                } else if ("transactionEnd".equals(str2)) {
                    ia.dq(getContext()).dq().s();
                }
            }
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public void init() {
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public void injectContext(Context context) {
        this.dq = context;
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        String[] split;
        if (!dq(uri) && (split = uri.getPath().split("/")) != null && split.length >= 4) {
            String str = split[2];
            String str2 = split[3];
            if ("ttopensdk.db".equals(str)) {
                ia.dq(getContext()).dq().insert(str2, null, contentValues);
            }
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        String[] split;
        if (!dq(uri) && (split = uri.getPath().split("/")) != null && split.length >= 4) {
            String str3 = split[2];
            String str4 = split[3];
            if ("ttopensdk.db".equals(str3)) {
                return ia.dq(getContext()).dq().query(str4, strArr, str, strArr2, null, null, str2);
            }
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        String[] split;
        if (!dq(uri) && (split = uri.getPath().split("/")) != null && split.length >= 4) {
            String str2 = split[2];
            String str3 = split[3];
            if ("ttopensdk.db".equals(str2)) {
                return ia.dq(getContext()).dq().update(str3, contentValues, str, strArr);
            }
        }
        return 0;
    }
}
