package com.ss.android.socialbase.appdownloader.dq;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.io.File;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class p {
    public static dq dq(Context context, String str, JSONObject jSONObject, DownloadInfo downloadInfo) {
        if (downloadInfo != null && context != null && jSONObject != null) {
            String savePath = downloadInfo.getSavePath();
            if (!TextUtils.isEmpty(savePath) && !TextUtils.isEmpty(str)) {
                File file = new File(savePath);
                com.ss.android.socialbase.downloader.mn.dq dq = com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo);
                if (str.equals("v1")) {
                    return new o(context, dq, downloadInfo.getTargetFilePath());
                }
                if (str.equals("v2")) {
                    return new no(context, dq, file.getAbsolutePath());
                }
                if (str.equals("v3")) {
                    return new ig(context, dq, file.getAbsolutePath());
                }
                if (str.equals("o1")) {
                    return new mn(context, dq, file.getAbsolutePath());
                }
                if (str.equals("o2")) {
                    return new ia(context, dq, file.getAbsolutePath());
                }
                if (str.equals("o3")) {
                    String dBJsonString = downloadInfo.getDBJsonString("file_content_uri");
                    if (!TextUtils.isEmpty(dBJsonString)) {
                        return new kk(context, dq, file.getAbsolutePath(), dBJsonString, downloadInfo.getName());
                    }
                } else {
                    if (str.equals(MediationConstant.KEY_USE_POLICY_OBJ_CUSTOM)) {
                        return new ox(context, dq, file.getAbsolutePath(), jSONObject);
                    }
                    if (str.equals("vbi")) {
                        return new mp(context, dq, com.ss.android.socialbase.appdownloader.ox.dq(downloadInfo.getId(), Downloader.getInstance(context).getDownloadFileUriProvider(downloadInfo.getId()), context, com.ss.android.socialbase.appdownloader.p.o().p(), new File(downloadInfo.getSavePath() + File.separator + downloadInfo.getName())).toString());
                    }
                }
            }
        }
        return null;
    }

    public static boolean dq(Context context, String str, JSONObject jSONObject, com.ss.android.socialbase.downloader.mn.dq dqVar) {
        if (context != null && str != null) {
            String d2 = com.ss.android.socialbase.appdownloader.ox.d();
            if (!TextUtils.isEmpty(d2) && !TextUtils.isEmpty(str)) {
                dq oVar = (com.ss.android.socialbase.appdownloader.iw.s.p() && str.equals("v1")) ? new o(context, dqVar, d2) : (com.ss.android.socialbase.appdownloader.iw.s.p() && str.equals("v2")) ? new no(context, dqVar, d2) : (com.ss.android.socialbase.appdownloader.iw.s.p() && str.equals("v3")) ? new ig(context, dqVar, d2) : (com.ss.android.socialbase.appdownloader.iw.s.s() && str.equals("o1")) ? new mn(context, dqVar, d2) : (com.ss.android.socialbase.appdownloader.iw.s.s() && str.equals("o2")) ? new ia(context, dqVar, d2) : (com.ss.android.socialbase.appdownloader.iw.s.s() && str.equals("o3")) ? new kk(context, dqVar, d2, d2, d2) : (com.ss.android.socialbase.appdownloader.iw.s.p() && str.equals(MediationConstant.KEY_USE_POLICY_OBJ_CUSTOM)) ? new ox(context, dqVar, d2, jSONObject) : (com.ss.android.socialbase.appdownloader.iw.s.p() && str.equals("vbi")) ? new mp(context, dqVar, d2) : null;
                if (oVar != null && oVar.dq()) {
                    return true;
                }
            }
        }
        return false;
    }
}
