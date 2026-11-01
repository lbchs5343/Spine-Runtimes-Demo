package com.bytedance.msdk.ia.ox.dq.dq;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.ITTProvider;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private ITTProvider f1100d;
    private final com.bytedance.sdk.openadsdk.core.multipro.dq dq = new com.bytedance.sdk.openadsdk.core.multipro.dq(new com.bytedance.sdk.component.ia.d.d.d.dq("csj_mediation"));

    private ITTProvider dq(Uri uri) {
        if (uri == null) {
            return null;
        }
        String[] split = uri.getPath().split("/");
        if (split.length < 2) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "uri is error2");
            return null;
        }
        String str = split[1];
        if (TextUtils.isEmpty(str)) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "uri is error3");
            return null;
        }
        if (this.f1100d == null) {
            ox oxVar = new ox();
            this.f1100d = oxVar;
            oxVar.init();
        }
        if (str.equals(this.f1100d.getTableName())) {
            return this.f1100d;
        }
        if (str.equals(this.dq.getTableName())) {
            return this.dq;
        }
        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", "uri is error4");
        return null;
    }

    public int delete(Uri uri, String str, String[] strArr) {
        ITTProvider dq = dq(uri);
        if (dq != null) {
            return dq.delete(uri, str, strArr);
        }
        return 0;
    }

    public String getType(Uri uri) {
        ITTProvider dq = dq(uri);
        if (dq != null) {
            return dq.getType(uri);
        }
        return null;
    }

    public Uri insert(Uri uri, ContentValues contentValues) {
        ITTProvider dq = dq(uri);
        if (dq != null) {
            return dq.insert(uri, contentValues);
        }
        return null;
    }

    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        ITTProvider dq = dq(uri);
        if (dq != null) {
            return dq.query(uri, strArr, str, strArr2, str2);
        }
        return null;
    }

    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        ITTProvider dq = dq(uri);
        if (dq != null) {
            return dq.update(uri, contentValues, str, strArr);
        }
        return 0;
    }
}
