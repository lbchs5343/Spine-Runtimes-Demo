package com.bytedance.msdk.ia.ox.dq.dq;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.bytedance.sdk.openadsdk.ITTProvider;

/* loaded from: classes.dex */
public class ox implements ITTProvider {
    private com.bytedance.msdk.ia.dq.dq dq;

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public int delete(Uri uri, String str, String[] strArr) {
        com.bytedance.msdk.ia.dq.dq dqVar = this.dq;
        if (dqVar == null) {
            return 0;
        }
        dqVar.d(str, strArr);
        return 1;
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public String getTableName() {
        return "gromore_prime_rit_adn_perform";
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public void init() {
        if (com.bytedance.msdk.core.dq.getContext() != null) {
            this.dq = new com.bytedance.msdk.ia.dq.dq(com.bytedance.msdk.core.dq.getContext());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public void injectContext(Context context) {
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        com.bytedance.msdk.ia.dq.dq dqVar = this.dq;
        if (dqVar == null) {
            return null;
        }
        dqVar.dq(contentValues);
        return uri;
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        com.bytedance.msdk.ia.dq.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.dq(str, strArr2);
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.ITTProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
