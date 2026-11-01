package com.bytedance.sdk.openadsdk.core.multipro;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.bytedance.sdk.openadsdk.ITTProvider;

/* loaded from: classes3.dex */
public class dq implements ITTProvider {
    private com.bytedance.sdk.component.ia.d.d.d.dq dq;

    public dq(com.bytedance.sdk.component.ia.d.d.d.dq dqVar) {
        this.dq = dqVar;
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public int delete(Uri uri, String str, String[] strArr) {
        com.bytedance.sdk.component.ia.d.d.d.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.delete(uri, str, strArr);
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public String getTableName() {
        com.bytedance.sdk.component.ia.d.d.d.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.dq();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public String getType(Uri uri) {
        com.bytedance.sdk.component.ia.d.d.d.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.getType(uri);
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public void init() {
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public void injectContext(Context context) {
        com.bytedance.sdk.component.ia.d.d.d.dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.dq(context);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        com.bytedance.sdk.component.ia.d.d.d.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.insert(uri, contentValues);
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        com.bytedance.sdk.component.ia.d.d.d.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.query(uri, strArr, str, strArr2, str2);
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        com.bytedance.sdk.component.ia.d.d.d.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.update(uri, contentValues, str, strArr);
        }
        return 0;
    }
}
