package com.ss.android.downloadlib.addownload;

import android.content.Intent;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.ss.android.download.api.config.IDownloadButtonClickListener;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import com.ss.android.downloadad.api.download.AdDownloadModel;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import g.awf;
import java.io.File;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class kk {
    public static boolean d(int i) {
        return i == 2 || i == 1;
    }

    public static boolean d(DownloadModel downloadModel) {
        return downloadModel != null && downloadModel.getModelType() == 2;
    }

    public static int dq(com.ss.android.downloadlib.addownload.d.s sVar, boolean z, com.ss.android.socialbase.appdownloader.iw iwVar) {
        int i;
        if (iwVar == null || TextUtils.isEmpty(iwVar.dq()) || iwVar.getContext() == null) {
            return 0;
        }
        try {
            i = dq(iwVar, iwVar.dq());
        } catch (Throwable th) {
            no.r().dq(th, "redirectSavePathIfPossible");
            i = 4;
        }
        iwVar.dq(i);
        if (i == 0) {
            iwVar.dq(new com.ss.android.downloadlib.ox.dq());
        }
        if (!iwVar.cv()) {
            iwVar.dq(new com.ss.android.downloadlib.ox.d());
        }
        int dq = com.ss.android.socialbase.appdownloader.p.o().dq(iwVar);
        com.ss.android.downloadad.api.dq.d dq2 = dq(sVar, dq);
        com.ss.android.downloadlib.addownload.d.iw.dq().dq(dq2);
        dq2.mn(dq);
        dq2.ia(System.currentTimeMillis());
        dq2.kk(0L);
        com.ss.android.socialbase.downloader.mn.dq dq3 = com.ss.android.socialbase.downloader.mn.dq.dq(iwVar.bu());
        if (!dq(iwVar, dq3, dq) && sVar.f9152d.isShowToast()) {
            String startToast = sVar.f9152d.getStartToast();
            if (TextUtils.isEmpty(startToast)) {
                startToast = dq3.ox("download_start_toast_text");
            }
            if (TextUtils.isEmpty(startToast)) {
                startToast = z ? "已开始下载，可在\"我的\"里查看管理" : "已开始下载";
            }
            no.ox().dq(2, iwVar.getContext(), sVar.f9152d, startToast, null, 0);
        }
        return dq;
    }

    private static int dq(com.ss.android.socialbase.appdownloader.iw iwVar, String str) {
        com.ss.android.socialbase.downloader.mn.dq dq = com.ss.android.socialbase.downloader.mn.dq.dq(iwVar.bu());
        JSONObject p = dq.p("download_dir");
        if (p == null || TextUtils.isEmpty(p.optString("dir_name"))) {
            return -1;
        }
        String d2 = iwVar.d();
        String j = iwVar.j();
        if (TextUtils.isEmpty(j)) {
            j = com.ss.android.socialbase.appdownloader.ox.dq(str, d2, iwVar.ig(), true);
        }
        if (j.length() > 255) {
            j = j.substring(j.length() - MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        }
        if (TextUtils.isEmpty(d2)) {
            d2 = j;
        }
        String ox = iwVar.ox();
        if (TextUtils.isEmpty(ox)) {
            ox = com.ss.android.socialbase.appdownloader.ox.d();
        }
        StringBuilder o = awf.o(ox);
        o.append(File.separator);
        o.append(com.ss.android.socialbase.appdownloader.ox.dq(d2, dq));
        String sb = o.toString();
        DownloadInfo dq2 = com.ss.android.socialbase.appdownloader.p.o().dq(iwVar.getContext(), str);
        if (dq2 != null && dq2.isSavePathRedirected()) {
            iwVar.ox(dq2.getSavePath());
            try {
                iwVar.dq(new JSONObject(dq2.getDownloadSettingString()));
                return 0;
            } catch (Throwable unused) {
                return 0;
            }
        }
        if (dq2 != null || !"application/vnd.android.package-archive".equalsIgnoreCase(com.ss.android.socialbase.appdownloader.p.o().dq(j, iwVar.ig()))) {
            return dq2 != null ? 8 : 9;
        }
        int dq3 = com.ss.android.socialbase.appdownloader.d.dq(dq);
        if (dq3 == 0) {
            iwVar.ox(sb);
        }
        return dq3;
    }

    private static com.ss.android.downloadad.api.dq.d dq(com.ss.android.downloadlib.addownload.d.s sVar, int i) {
        com.ss.android.downloadad.api.dq.d dVar = new com.ss.android.downloadad.api.dq.d(sVar.f9152d, sVar.ox, sVar.p, i);
        boolean z = true;
        if (com.ss.android.socialbase.downloader.mn.dq.dq(i).dq("download_event_opt", 1) > 1) {
            try {
                String packageName = sVar.f9152d.getPackageName();
                if (!TextUtils.isEmpty(packageName)) {
                    if (no.getContext().getPackageManager().getPackageInfo(packageName, 0) == null) {
                        z = false;
                    }
                    dVar.ia(z);
                }
            } catch (Throwable unused) {
            }
        }
        return dVar;
    }

    public static String dq(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return null;
        }
        try {
            String extra = downloadInfo.getExtra();
            if (!TextUtils.isEmpty(extra)) {
                return new JSONObject(extra).optString("notification_jump_url", null);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return null;
    }

    public static boolean dq(int i) {
        return i == 0 || i == 1;
    }

    public static boolean dq(DownloadModel downloadModel) {
        return downloadModel.isAd() && (downloadModel instanceof AdDownloadModel) && downloadModel.getModelType() == 1;
    }

    public static boolean dq(DownloadModel downloadModel, IDownloadButtonClickListener iDownloadButtonClickListener) {
        return downloadModel.isAd() && iDownloadButtonClickListener != null;
    }

    private static boolean dq(com.ss.android.socialbase.appdownloader.iw iwVar, com.ss.android.socialbase.downloader.mn.dq dqVar, int i) {
        String optString;
        JSONArray s = dqVar.s("ah_plans");
        if (s != null && s.length() != 0) {
            int length = s.length();
            JSONObject jSONObject = null;
            for (int i2 = 0; i2 < length; i2++) {
                JSONObject optJSONObject = s.optJSONObject(i2);
                if (optJSONObject != null && ((optString = optJSONObject.optString("type")) == "plan_c" || com.ss.android.socialbase.appdownloader.iw.dq.dq(optJSONObject))) {
                    optString.getClass();
                    switch (optString) {
                        case "plan_a":
                        case "plan_b":
                        case "plan_e":
                        case "plan_f":
                            if (com.ss.android.socialbase.appdownloader.d.dq(optJSONObject, dqVar).f9272d == 0) {
                                break;
                            } else {
                                break;
                            }
                        case "plan_c":
                            jSONObject = optJSONObject;
                            break;
                        case "plan_g":
                            if (com.ss.android.socialbase.appdownloader.d.d(optJSONObject, dqVar).f9272d == 0) {
                                break;
                            } else {
                                break;
                            }
                    }
                }
            }
            if (jSONObject != null && jSONObject.optInt("show_unknown_source_on_startup") == 1) {
                return com.ss.android.socialbase.appdownloader.d.dq(com.ss.android.socialbase.downloader.downloader.ox.ob(), (Intent) null, jSONObject, i, new com.ss.android.socialbase.appdownloader.dq());
            }
        }
        return false;
    }

    public static String ox(DownloadModel downloadModel) {
        try {
            if (TextUtils.isEmpty(downloadModel.getLogExtra())) {
                return null;
            }
            return new JSONObject(downloadModel.getLogExtra()).optString("clickid");
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static String p(DownloadModel downloadModel) {
        try {
            if (TextUtils.isEmpty(downloadModel.getLogExtra())) {
                return null;
            }
            return new JSONObject(downloadModel.getLogExtra()).optString(AdBaseConstants.MARKET_OPEN_INTENT_EXTRA);
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
