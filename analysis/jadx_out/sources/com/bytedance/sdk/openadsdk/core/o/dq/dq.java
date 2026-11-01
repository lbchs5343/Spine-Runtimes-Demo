package com.bytedance.sdk.openadsdk.core.o.dq;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.iw;
import com.bytedance.sdk.openadsdk.TTDownloadEventLogger;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.o.ia;
import com.bytedance.sdk.openadsdk.core.o.iw;
import com.bytedance.sdk.openadsdk.core.o.kk;
import com.bytedance.sdk.openadsdk.core.o.mn;
import com.bytedance.sdk.openadsdk.core.o.o;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.downloadnew.core.DialogBuilder;
import com.bytedance.sdk.openadsdk.downloadnew.core.ITTDownloadVisitor;
import com.bytedance.sdk.openadsdk.downloadnew.core.ITTHttpCallback;
import com.bytedance.sdk.openadsdk.downloadnew.core.ITTPermissionCallback;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadEventModel;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq implements ITTDownloadVisitor {
    private dq() {
    }

    public static ITTDownloadVisitor dq() {
        return new dq();
    }

    private boolean dq(TTDownloadEventModel tTDownloadEventModel) {
        JSONObject extJson;
        if (tTDownloadEventModel == null || (extJson = tTDownloadEventModel.getExtJson()) == null) {
            return false;
        }
        String optString = extJson.optString("ad_extra_data");
        if (TextUtils.isEmpty(optString)) {
            return false;
        }
        try {
            return new JSONObject(optString).optJSONObject("open_ad_sdk_download_extra") != null;
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.downloadnew.core.ITTDownloadVisitor
    public void checkAutoControl(JSONObject jSONObject, String str) {
        com.bytedance.sdk.openadsdk.core.o.ox.d.dq dq;
        j jVar;
        JSONObject optJSONObject = jSONObject.optJSONObject("open_ad_sdk_download_extra");
        if (optJSONObject == null || !ce.dq() || (dq = com.bytedance.sdk.openadsdk.core.o.ox.d.dq.dq(optJSONObject)) == null || (jVar = dq.dq) == null) {
            return;
        }
        o.dq(str, jVar);
    }

    @Override // com.bytedance.sdk.openadsdk.downloadnew.core.ITTDownloadVisitor
    public void clearAllData(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        iw.ox(new File(str));
    }

    @Override // com.bytedance.sdk.openadsdk.downloadnew.core.ITTDownloadVisitor
    public void execute(int i, String str, Map<String, Object> map, ITTHttpCallback iTTHttpCallback) {
        mn.dq(i, str, map, iTTHttpCallback);
    }

    @Override // com.bytedance.sdk.openadsdk.downloadnew.core.ITTDownloadVisitor
    public void executeLogUpload(TTDownloadEventModel tTDownloadEventModel, boolean z) {
        if (dq(tTDownloadEventModel)) {
            try {
                com.bytedance.sdk.component.o.mn.dq(iw.dq.dq(tTDownloadEventModel, z), 5);
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.downloadnew.core.ITTDownloadVisitor
    public boolean getAppIsBackground() {
        return no.ia().dq();
    }

    @Override // com.bytedance.sdk.openadsdk.downloadnew.core.ITTDownloadVisitor
    public JSONObject getDownloadSettings() {
        JSONObject d2 = o.d();
        try {
            if (!wp.d().le()) {
                d2.put("enable_app_install_receiver", 0);
            }
        } catch (Exception unused) {
        }
        return d2;
    }

    @Override // com.bytedance.sdk.openadsdk.downloadnew.core.ITTDownloadVisitor
    public TTDownloadEventLogger getTTDownloadEventLogger() {
        return no.ia().ji();
    }

    @Override // com.bytedance.sdk.openadsdk.downloadnew.core.ITTDownloadVisitor
    public boolean hasPermission(Context context, String str) {
        return kk.dq(context, str);
    }

    @Override // com.bytedance.sdk.openadsdk.downloadnew.core.ITTDownloadVisitor
    public String initPath(boolean z) {
        return o.dq(z);
    }

    @Override // com.bytedance.sdk.openadsdk.downloadnew.core.ITTDownloadVisitor
    public boolean isOpenSdkEvent(String str) {
        return com.bytedance.sdk.openadsdk.core.o.iw.dq(str);
    }

    @Override // com.bytedance.sdk.openadsdk.downloadnew.core.ITTDownloadVisitor
    public void postBody(String str, byte[] bArr, String str2, ITTHttpCallback iTTHttpCallback) {
        mn.dq(str, bArr, str2, 0, iTTHttpCallback);
    }

    @Override // com.bytedance.sdk.openadsdk.downloadnew.core.ITTDownloadVisitor
    public void requestPermission(Activity activity, String[] strArr, ITTPermissionCallback iTTPermissionCallback) {
        kk.dq(activity, strArr, iTTPermissionCallback);
    }

    @Override // com.bytedance.sdk.openadsdk.downloadnew.core.ITTDownloadVisitor
    public void showDialogByDelegate(WeakReference<Context> weakReference, boolean z, DialogBuilder dialogBuilder) {
        ia.dq(weakReference, z, dialogBuilder);
    }

    @Override // com.bytedance.sdk.openadsdk.downloadnew.core.ITTDownloadVisitor
    public AlertDialog showDialogBySelf(Activity activity, boolean z, DialogBuilder dialogBuilder) {
        return ia.dq(activity, z, dialogBuilder);
    }
}
