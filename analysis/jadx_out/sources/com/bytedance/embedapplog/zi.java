package com.bytedance.embedapplog;

import android.content.ContentProviderClient;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.bytedance.embedapplog.hy;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.dub;

/* loaded from: classes.dex */
final class zi implements hy {
    @Override // com.bytedance.embedapplog.hy
    public hy.dq d(Context context) {
        Uri parse = Uri.parse("content://cn.nubia.identity/identity");
        try {
            int i = Build.VERSION.SDK_INT;
            ContentProviderClient acquireContentProviderClient = context.getContentResolver().acquireContentProviderClient(parse);
            if (acquireContentProviderClient != null) {
                Bundle call = acquireContentProviderClient.call("getOAID", null, null);
                if (i >= 24) {
                    dub.i(acquireContentProviderClient);
                } else {
                    acquireContentProviderClient.release();
                }
                if (call != null) {
                    if (call.getInt(PluginConstants.KEY_ERROR_CODE, -1) == 0) {
                        hy.dq dqVar = new hy.dq();
                        dqVar.f721d = call.getString(TTDownloadField.TT_ID);
                        return dqVar;
                    }
                    String string = call.getString("message");
                    if (!TextUtils.isEmpty(string)) {
                        jo.d(string);
                    }
                }
            }
            return null;
        } catch (Exception e2) {
            jo.dq(e2);
            return null;
        }
    }

    @Override // com.bytedance.embedapplog.hy
    public boolean dq(Context context) {
        return Build.VERSION.SDK_INT > 28;
    }
}
