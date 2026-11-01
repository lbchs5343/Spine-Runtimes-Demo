package com.bytedance.sdk.gromore.init;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.ITTProvider;

/* loaded from: classes.dex */
public class ig implements ITTProvider {

    /* renamed from: d, reason: collision with root package name */
    private ITTProvider f2362d = com.bytedance.msdk.ia.ox.dq.dq.d.dq();
    private ITTProvider dq;

    public ig(ITTProvider iTTProvider) {
        this.dq = iTTProvider;
    }

    private boolean dq(Uri uri) {
        if (uri == null) {
            return false;
        }
        String[] split = uri.getPath().split("/");
        if (split.length < 2) {
            return false;
        }
        String str = split[1];
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.contains("gromore");
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return dq(uri) ? this.f2362d.delete(uri, str, strArr) : this.dq.delete(uri, str, strArr);
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public String getTableName() {
        return "";
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public String getType(Uri uri) {
        return (dq(uri) ? this.f2362d : this.dq).getType(uri);
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public void init() {
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public void injectContext(Context context) {
        ITTProvider iTTProvider = this.dq;
        if (iTTProvider != null) {
            iTTProvider.injectContext(context);
        }
        ITTProvider iTTProvider2 = this.f2362d;
        if (iTTProvider2 != null) {
            iTTProvider2.injectContext(context);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return dq(uri) ? this.f2362d.insert(uri, contentValues) : this.dq.insert(uri, contentValues);
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return dq(uri) ? this.f2362d.query(uri, strArr, str, strArr2, str2) : this.dq.query(uri, strArr, str, strArr2, str2);
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return dq(uri) ? this.f2362d.update(uri, contentValues, str, strArr) : this.dq.update(uri, contentValues, str, strArr);
    }
}
