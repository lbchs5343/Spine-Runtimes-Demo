package com.bytedance.sdk.openadsdk.core.o.ox.d;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.o.o;
import com.bytedance.sdk.openadsdk.core.o.ox.ox.s;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.p;
import com.bytedance.sdk.openadsdk.core.r.r;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.ss.android.download.api.config.IDownloadButtonClickListener;
import com.ss.android.download.api.download.DownloadEventConfig;
import com.ss.android.download.api.model.DeepLink;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import com.ss.android.downloadad.api.download.AdDownloadController;
import com.ss.android.downloadad.api.download.AdDownloadEventConfig;
import com.ss.android.downloadad.api.download.AdDownloadModel;
import com.ss.android.socialbase.downloader.depend.IDownloadFileUriProvider;
import g.hat;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class ox {
    /* JADX INFO: Access modifiers changed from: private */
    public static void d(final Map<String, Object> map, j jVar) {
        o.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.d.ox.3
            @Override // java.lang.Runnable
            public void run() {
                if (no.ia().h() != null) {
                    Bridge h = no.ia().h();
                    hat f2 = hat.f();
                    f2.f19148c.put(0, map);
                    h.call(12, f2.k(), Boolean.class);
                }
            }
        }, jVar);
    }

    public static DownloadEventConfig dq(DownloadEventConfig downloadEventConfig, JSONObject jSONObject) {
        return (downloadEventConfig == null || jSONObject == null) ? downloadEventConfig : new AdDownloadEventConfig.Builder().setClickButtonTag(downloadEventConfig.getClickButtonTag()).setClickItemTag(downloadEventConfig.getClickItemTag()).setClickStartLabel(downloadEventConfig.getClickStartLabel()).setClickContinueLabel(downloadEventConfig.getClickContinueLabel()).setClickPauseLabel(downloadEventConfig.getClickPauseLabel()).setStorageDenyLabel(downloadEventConfig.getStorageDenyLabel()).setClickInstallLabel(downloadEventConfig.getClickInstallLabel()).setIsEnableClickEvent(downloadEventConfig.isEnableClickEvent()).setIsEnableV3Event(downloadEventConfig.isEnableV3Event()).setExtraEventObject(jSONObject).build();
    }

    public static AdDownloadController.Builder dq(j jVar, boolean z) {
        int p = r.p(jVar);
        int s = r.s(jVar);
        if (jVar != null && (!TextUtils.isEmpty(jVar.gn()) || z)) {
            s = 2;
        }
        AdDownloadController.Builder isAddToDownloadManage = new AdDownloadController.Builder().setLinkMode(p).setDownloadMode(s).setIsEnableBackDialog(true).setIsAddToDownloadManage(false);
        if (jVar != null && jVar.zc() != null) {
            isAddToDownloadManage.setEnableAH(jVar.zc().dq());
            isAddToDownloadManage.setEnableAM(jVar.zc().d());
        }
        return isAddToDownloadManage;
    }

    public static AdDownloadEventConfig.Builder dq(String str) {
        return new AdDownloadEventConfig.Builder().setClickButtonTag(str).setClickItemTag(str).setClickStartLabel("click_start").setClickContinueLabel("click_continue").setClickPauseLabel("click_pause").setStorageDenyLabel("download_failed").setClickInstallLabel("click_install").setIsEnableClickEvent(true).setIsEnableV3Event(false);
    }

    public static AdDownloadModel.Builder dq(String str, j jVar, JSONObject jSONObject) {
        String str2;
        String str3;
        String str4;
        String str5;
        j jVar2;
        JSONObject jSONObject2;
        if (jVar == null) {
            return new AdDownloadModel.Builder();
        }
        p gm = jVar.gm();
        if (gm != null) {
            String d2 = gm.d();
            String ox = gm.ox();
            str4 = gm.p();
            str2 = d2;
            str3 = ox;
            jVar2 = jVar;
            jSONObject2 = jSONObject;
            str5 = str;
        } else {
            str2 = "";
            str3 = str2;
            str4 = str3;
            str5 = str;
            jVar2 = jVar;
            jSONObject2 = jSONObject;
        }
        return dq(str5, jVar2, jSONObject2, str2, str3, str4);
    }

    private static AdDownloadModel.Builder dq(String str, j jVar, JSONObject jSONObject, String str2, String str3, String str4) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("open_ad_sdk_download_extra", dq.dq().dq(str).d(jSONObject).dq(jVar).d());
        } catch (Exception unused) {
        }
        AdDownloadModel.Builder fileUriProvider = new AdDownloadModel.Builder().setAdId(Double.valueOf(jVar.fx()).longValue()).setAppIcon(jVar.wq() == null ? null : jVar.wq().dq()).setIsShowNotification(no.ia().i()).setAutoInstallWithoutNotification(!no.ia().i()).setLogExtra(jVar.dn()).setExtra(jSONObject2).setDistinctDir(true).setIsAd(true).setFileUriProvider(new IDownloadFileUriProvider() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.d.ox.1
            @Override // com.ss.android.socialbase.downloader.depend.IDownloadFileUriProvider
            public Uri getUriForFile(String str5, String str6) {
                return com.bytedance.sdk.openadsdk.jy.d.dq(str5, str6);
            }
        });
        try {
            JSONObject d2 = o.d();
            JSONObject jSONObject3 = new JSONObject();
            int i = 0;
            int optInt = d2.optInt("notification_opt_2", 0);
            if (optInt == 1) {
                i = optInt;
            }
            int gh = r.gh(jVar);
            if (!op.iw()) {
                jSONObject3.put("cancel_pause_optimise_switch", gh);
                jSONObject3.put("cancel_pause_optimise_wifi_retain_switch", gh);
                jSONObject3.put("cancel_pause_optimise_apk_retain_switch", gh);
                jSONObject3.put("cancel_pause_optimise_download_percent_retain_switch", gh);
            }
            jSONObject3.put("show_pause_continue_toast", gh);
            if (gh == 1) {
                fileUriProvider.setIsShowToast(true);
                jSONObject3.put("download_start_toast_text", d2.optString("download_start_toast_text", "已开始下载，再次点击可暂停或取消该下载任务。"));
            }
            jSONObject3.put("notification_opt_2", i);
            jSONObject3.put("is_use_obm_convert", r.d(jVar));
            fileUriProvider.setDownloadSettings(jSONObject3);
        } catch (JSONException unused2) {
        }
        if (!TextUtils.isEmpty(str2)) {
            fileUriProvider.setDownloadUrl(str2);
        }
        if (!TextUtils.isEmpty(str3)) {
            fileUriProvider.setAppName(str3);
        }
        if (!TextUtils.isEmpty(str4)) {
            fileUriProvider.setPackageName(str4);
        }
        if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
            fileUriProvider.setNeedIndependentProcess(true);
        }
        fileUriProvider.setFilePath(no.ia().d());
        DeepLink deepLink = new DeepLink();
        if (jVar.kf() != null) {
            deepLink.setId(Long.valueOf(jVar.fx()).longValue());
            deepLink.setOpenUrl(jVar.kf().dq());
            deepLink.setWebTitle(jVar.lk());
            if (jVar.kf().ox() == 2 && !j.d(jVar)) {
                deepLink.setWebUrl(null);
            } else if (jVar.kf().ox() == 1) {
                deepLink.setWebUrl(jVar.kf().d());
            } else {
                deepLink.setWebUrl(jVar.ae());
            }
        } else {
            deepLink.setWebUrl(jVar.ae());
        }
        fileUriProvider.setDeepLink(deepLink);
        return fileUriProvider;
    }

    public static AdDownloadModel.Builder dq(String str, String str2, j jVar, JSONObject jSONObject) {
        if (jVar != null && !TextUtils.isEmpty(str)) {
            String fg = jVar.fg();
            if (TextUtils.isEmpty(fg) && jVar.hy() != null) {
                fg = jVar.hy().ig();
            }
            return dq(str2, jVar, jSONObject, str, "", fg);
        }
        return new AdDownloadModel.Builder();
    }

    public static void dq(Map<String, Object> map, IDownloadButtonClickListener iDownloadButtonClickListener) {
        if (op.f3334d < 4400 || map == null || iDownloadButtonClickListener == null || map.get(TTDownloadField.TT_DOWNLOAD_BUTTON_CLICK_LISTENER) != null) {
            return;
        }
        map.put(TTDownloadField.TT_DOWNLOAD_BUTTON_CLICK_LISTENER, iDownloadButtonClickListener);
    }

    public static boolean dq(Context context, String str, j jVar, String str2, boolean z) {
        if (context == null) {
            return false;
        }
        try {
            c.dq(z, false, jVar, str2);
            Uri parse = Uri.parse(str);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(parse);
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            intent.putExtra(AdBaseConstants.MARKET_OPEN_INTENT_OPEN_URL, str);
            context.startActivity(intent);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean dq(Uri uri, j jVar, Context context, String str) {
        if (no.ia().h() == null || jVar == null) {
            return false;
        }
        AdDownloadModel build = dq(str, jVar, null).build();
        com.bytedance.sdk.openadsdk.core.ir.op<String, Object> dq = new com.bytedance.sdk.openadsdk.core.ir.op().dq("uri", uri).dq(TTDownloadField.TT_DOWNLOAD_MODEL, build).dq(TTDownloadField.TT_DOWNLOAD_EVENT_CONFIG, dq(str).build()).dq(TTDownloadField.TT_DOWNLOAD_CONTROLLER, dq(jVar, false).build());
        com.bytedance.sdk.openadsdk.core.o.ox.ox.ox oxVar = new com.bytedance.sdk.openadsdk.core.o.ox.ox.ox(context, jVar);
        oxVar.dq(new s());
        if (dq(jVar, str, dq, oxVar)) {
            return true;
        }
        d(dq, jVar);
        return true;
    }

    private static boolean dq(final j jVar, String str, final Map<String, Object> map, com.bytedance.sdk.openadsdk.core.o.ox.ox.ox oxVar) {
        if (!oxVar.p(false)) {
            return false;
        }
        oxVar.dq(str, new com.bytedance.sdk.openadsdk.core.o.ox.dq.d() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.d.ox.2
            @Override // com.bytedance.sdk.openadsdk.core.o.ox.dq.d
            public void dq() {
                ox.d(map, jVar);
            }
        });
        return true;
    }
}
