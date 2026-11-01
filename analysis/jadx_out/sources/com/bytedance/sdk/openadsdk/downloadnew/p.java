package com.bytedance.sdk.openadsdk.downloadnew;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.api.dq.ia;
import com.bytedance.sdk.openadsdk.api.dq.iw;
import com.bytedance.sdk.openadsdk.api.dq.mn;
import com.bytedance.sdk.openadsdk.api.dq.s;
import com.bytedance.sdk.openadsdk.downloadnew.core.ExitInstallListener;
import com.bytedance.sdk.openadsdk.downloadnew.core.ITTDownloadAdapter;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.ss.android.download.api.config.DownloadMarketInterceptor;
import com.ss.android.download.api.config.IDownloadButtonClickListener;
import com.ss.android.download.api.config.OnItemClickListener;
import com.ss.android.download.api.download.DownloadController;
import com.ss.android.download.api.download.DownloadEventConfig;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.download.api.download.DownloadStatusChangeListener;
import com.ss.android.download.api.model.DeepLink;
import com.ss.android.download.api.model.p;
import com.ss.android.downloadad.api.download.AdDownloadController;
import com.ss.android.downloadad.api.download.AdDownloadEventConfig;
import com.ss.android.downloadad.api.download.AdDownloadModel;
import com.ss.android.socialbase.downloader.depend.IDownloadFileUriProvider;
import g.ada;
import g.hat;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class p implements Bridge {
    private static volatile p dq;

    /* renamed from: d, reason: collision with root package name */
    private final Context f3744d;
    private Map<Integer, AdDownloadModel.Builder> ox = new ConcurrentHashMap();
    private Map<Integer, AdDownloadModel> p = new ConcurrentHashMap();
    private Map<Integer, AdDownloadController.Builder> s = new ConcurrentHashMap();
    private Map<Integer, AdDownloadController> iw = new ConcurrentHashMap();
    private Map<Integer, AdDownloadEventConfig.Builder> mn = new ConcurrentHashMap();
    private Map<Integer, AdDownloadEventConfig> ia = new ConcurrentHashMap();

    private p(Context context) {
        this.f3744d = context;
    }

    private AdDownloadModel.Builder bf(int i) {
        return this.ox.get(Integer.valueOf(i));
    }

    private AdDownloadController bx(int i) {
        return this.iw.get(Integer.valueOf(i));
    }

    private DownloadModel d(Object obj) {
        if (obj instanceof DownloadModel) {
            return (DownloadModel) obj;
        }
        return null;
    }

    private void d(int i, Map<String, Object> map) {
        if (map == null || map.size() <= 0) {
            return;
        }
        AdDownloadModel.Builder dq2 = dq(((Long) map.get(TTDownloadField.TT_ID)).longValue(), (String) map.get(TTDownloadField.TT_APP_ICON), ((Boolean) map.get(TTDownloadField.TT_IS_SHOW_NOTIFICATION)).booleanValue(), ((Boolean) map.get(TTDownloadField.TT_IS_AUTO_INSTALL_WITHOUT_NOTIFICATION)).booleanValue(), (String) map.get(TTDownloadField.TT_LOG_EXTRA), (JSONObject) map.get(TTDownloadField.TT_EXTRA_JSON), (JSONObject) map.get(TTDownloadField.TT_DOWNLOAD_SETTINGS), (String) map.get(TTDownloadField.TT_FILE_PATH), (String) map.get(TTDownloadField.TT_DOWNLOAD_URL), (String) map.get(TTDownloadField.TT_APP_NAME), (String) map.get(TTDownloadField.TT_PACKAGE_NAME), ((Boolean) map.get(TTDownloadField.TT_IS_NEED_INDEPENDENT_PROCESS)).booleanValue(), (String) map.get(TTDownloadField.TT_OPEN_URL), (String) map.get(TTDownloadField.TT_WEB_TITLE), (String) map.get(TTDownloadField.TT_WEB_URL));
        this.ox.put(Integer.valueOf(i), dq2);
        this.p.put(Integer.valueOf(i), dq2.build());
    }

    public static p dq(Context context) {
        if (dq == null) {
            synchronized (p.class) {
                try {
                    if (dq == null) {
                        dq = new p(context);
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    private DownloadStatusChangeListener dq(Object obj) {
        if (obj instanceof DownloadStatusChangeListener) {
            return (DownloadStatusChangeListener) obj;
        }
        if (obj instanceof EventListener) {
            return new s((EventListener) obj);
        }
        return null;
    }

    private DeepLink dq(long j, String str, String str2, String str3) {
        DeepLink deepLink = new DeepLink();
        deepLink.setId(j);
        deepLink.setOpenUrl(str);
        deepLink.setWebTitle(str2);
        deepLink.setWebUrl(str3);
        return deepLink;
    }

    private AdDownloadModel.Builder dq(long j, String str, boolean z, boolean z2, String str2, JSONObject jSONObject, JSONObject jSONObject2, String str3, String str4, String str5, String str6, boolean z3, String str7, String str8, String str9) {
        AdDownloadModel.Builder fileUriProvider = new AdDownloadModel.Builder().setAdId(j).setAppIcon(str).setIsShowNotification(z).setAutoInstallWithoutNotification(z2).setLogExtra(str2).setExtra(jSONObject).setDistinctDir(true).setIsAd(true).setFileUriProvider(new IDownloadFileUriProvider() { // from class: com.bytedance.sdk.openadsdk.downloadnew.p.1
            @Override // com.ss.android.socialbase.downloader.depend.IDownloadFileUriProvider
            public Uri getUriForFile(String str10, String str11) {
                return null;
            }
        });
        if (jSONObject2 != null) {
            fileUriProvider.setDownloadSettings(jSONObject2);
        }
        if (!TextUtils.isEmpty(str3)) {
            fileUriProvider.setFilePath(str3);
        }
        if (!TextUtils.isEmpty(str4)) {
            fileUriProvider.setDownloadUrl(str4);
        }
        if (!TextUtils.isEmpty(str5)) {
            fileUriProvider.setAppName(str5);
        }
        if (!TextUtils.isEmpty(str6)) {
            fileUriProvider.setPackageName(str6);
        }
        fileUriProvider.setNeedIndependentProcess(z3);
        fileUriProvider.setDeepLink(dq(j, str7, str8, str9));
        return fileUriProvider;
    }

    private void dq(int i, int i2, int i3, boolean z, boolean z2, boolean z3) {
        AdDownloadController.Builder isAddToDownloadManage = new AdDownloadController.Builder().setLinkMode(i2).setDownloadMode(i3).setIsEnableBackDialog(true).setIsAddToDownloadManage(false);
        this.s.put(Integer.valueOf(i), isAddToDownloadManage);
        if (z) {
            isAddToDownloadManage.setEnableAH(z2);
            isAddToDownloadManage.setEnableAM(z3);
        }
        this.iw.put(Integer.valueOf(i), isAddToDownloadManage.build());
    }

    private void dq(int i, DownloadMarketInterceptor downloadMarketInterceptor) {
        AdDownloadController bx = bx(i);
        if (bx == null) {
            return;
        }
        bx.setDownloadMarketInterceptor(downloadMarketInterceptor);
    }

    private void dq(int i, String str, String str2, String str3) {
        AdDownloadModel.Builder bf = bf(i);
        if (bf == null) {
            return;
        }
        this.p.put(Integer.valueOf(i), bf.setAppIcon(str).setAppName(str2).setPackageName(str3).build());
    }

    private void dq(int i, boolean z, DownloadMarketInterceptor downloadMarketInterceptor) {
        AdDownloadController bx = bx(i);
        if (bx == null) {
            return;
        }
        try {
            bx.setDownloadMarketInterceptor(downloadMarketInterceptor);
            bx.setEnableOppoAutoDownload(z);
        } catch (Throwable unused) {
        }
    }

    private static boolean dq() {
        Field declaredField;
        try {
            try {
                declaredField = com.ss.android.downloadlib.p.class.getDeclaredField(ada.COLUMN_DOMAIN);
                declaredField.setAccessible(true);
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            Field declaredField2 = com.ss.android.downloadlib.p.class.getDeclaredField("dq");
            declaredField2.setAccessible(true);
            Object obj = declaredField2.get(null);
            if (obj instanceof Integer) {
                int intValue = ((Integer) obj).intValue();
                return intValue > 107000925 || (intValue <= 4061200 && intValue > 3000000);
            }
        }
        return declaredField.get(null) instanceof Integer;
    }

    private static boolean dq(IDownloadButtonClickListener iDownloadButtonClickListener) {
        if (iDownloadButtonClickListener == null) {
            return false;
        }
        if (TextUtils.equals("main", "internal")) {
            return dq();
        }
        return true;
    }

    private Activity getActivity(Object obj) {
        if (obj instanceof Activity) {
            return (Activity) obj;
        }
        return null;
    }

    private IDownloadButtonClickListener ia(Object obj) {
        if (obj instanceof IDownloadButtonClickListener) {
            return (IDownloadButtonClickListener) obj;
        }
        if (obj instanceof EventListener) {
            return new iw((EventListener) obj);
        }
        return null;
    }

    private DownloadMarketInterceptor iw(Object obj) {
        if (obj instanceof DownloadMarketInterceptor) {
            return (DownloadMarketInterceptor) obj;
        }
        if (obj instanceof EventListener) {
            return new mn((EventListener) obj);
        }
        return null;
    }

    private void iw(int i, int i2) {
        AdDownloadController bx = bx(i);
        if (bx == null) {
            return;
        }
        bx.setDownloadMode(i2);
    }

    private void iw(int i, Map<String, Object> map) {
        if (map == null || map.size() <= 0) {
            return;
        }
        long longValue = ((Long) map.get(TTDownloadField.TT_EXPECT_FILE_LENGTH)).longValue();
        String str = (String) map.get(TTDownloadField.TT_MD5);
        long longValue2 = ((Long) map.get(TTDownloadField.TT_EXTRA_VALUE)).longValue();
        boolean booleanValue = ((Boolean) map.get(TTDownloadField.TT_IS_AD)).booleanValue();
        int intValue = ((Integer) map.get(TTDownloadField.TT_MODEL_TYPE)).intValue();
        List<String> list = (List) map.get(TTDownloadField.TT_CLICK_TRACK_URL);
        List<String> list2 = (List) map.get(TTDownloadField.TT_BACK_UP_URLS);
        String str2 = (String) map.get(TTDownloadField.TT_NOTIFICATION_JUMP_URL);
        String str3 = (String) map.get(TTDownloadField.TT_MIME_TYPE);
        Map<String, String> map2 = (Map) map.get(TTDownloadField.TT_HEADERS);
        boolean booleanValue2 = ((Boolean) map.get(TTDownloadField.TT_IS_SHOW_TOAST)).booleanValue();
        boolean booleanValue3 = ((Boolean) map.get(TTDownloadField.TT_NEED_WIFI)).booleanValue();
        String str4 = (String) map.get(TTDownloadField.TT_FILE_NAME);
        int intValue2 = ((Integer) map.get(TTDownloadField.TT_VERSION_CODE)).intValue();
        String str5 = (String) map.get(TTDownloadField.TT_VERSION_NAME);
        String str6 = (String) map.get(TTDownloadField.TT_QUICK_APP_MODEL_OPEN_URL);
        com.ss.android.download.api.model.p dq2 = new p.dq().dq(str6).d((String) map.get(TTDownloadField.TT_QUICK_APP_MODEL_EXTRA_DATA)).dq();
        int intValue3 = ((Integer) map.get(TTDownloadField.TT_EXECUTOR_GROUP)).intValue();
        String str7 = (String) map.get(TTDownloadField.TT_START_TOAST);
        String str8 = (String) map.get(TTDownloadField.TT_SDK_MONITOR_SCENE);
        boolean booleanValue4 = ((Boolean) map.get(TTDownloadField.TT_AUTO_INSTALL)).booleanValue();
        boolean booleanValue5 = ((Boolean) map.get(TTDownloadField.TT_DISTINCT_DIR)).booleanValue();
        boolean booleanValue6 = ((Boolean) map.get(TTDownloadField.TT_ENABLE_PAUSE)).booleanValue();
        long longValue3 = ((Long) map.get(TTDownloadField.TT_ID)).longValue();
        String str9 = (String) map.get(TTDownloadField.TT_APP_ICON);
        boolean booleanValue7 = ((Boolean) map.get(TTDownloadField.TT_IS_SHOW_NOTIFICATION)).booleanValue();
        boolean booleanValue8 = ((Boolean) map.get(TTDownloadField.TT_IS_AUTO_INSTALL_WITHOUT_NOTIFICATION)).booleanValue();
        String str10 = (String) map.get(TTDownloadField.TT_LOG_EXTRA);
        JSONObject jSONObject = (JSONObject) map.get(TTDownloadField.TT_EXTRA_JSON);
        JSONObject jSONObject2 = (JSONObject) map.get(TTDownloadField.TT_DOWNLOAD_SETTINGS);
        String str11 = (String) map.get(TTDownloadField.TT_FILE_PATH);
        String str12 = (String) map.get(TTDownloadField.TT_DOWNLOAD_URL);
        String str13 = (String) map.get(TTDownloadField.TT_APP_NAME);
        String str14 = (String) map.get(TTDownloadField.TT_PACKAGE_NAME);
        boolean booleanValue9 = ((Boolean) map.get(TTDownloadField.TT_IS_NEED_INDEPENDENT_PROCESS)).booleanValue();
        String str15 = (String) map.get(TTDownloadField.TT_OPEN_URL);
        String str16 = (String) map.get(TTDownloadField.TT_WEB_TITLE);
        String str17 = (String) map.get(TTDownloadField.TT_WEB_URL);
        AdDownloadModel.Builder fileUriProvider = new AdDownloadModel.Builder().setExpectFileLength(longValue).setMd5(str).setId(longValue3).setExtraValue(longValue2).setIsAd(booleanValue).setModelType(intValue).setLogExtra(str10).setAppIcon(str9).setBackupUrls(list2).setNotificationJumpUrl(str2).setClickTrackUrl(list).setMimeType(str3).setHeaders(map2).setIsShowToast(booleanValue2).setIsShowNotification(booleanValue7).setNeedWifi(booleanValue3).setFileName(str4).setVersionCode(intValue2).setVersionName(str5).setQuickAppModel(dq2).setAutoInstallWithoutNotification(booleanValue8).setExecutorGroup(intValue3).setStartToast(str7).setSdkMonitorScene(str8).setAutoInstall(booleanValue4).setDistinctDir(booleanValue5).setEnablePause(booleanValue6).setExtra(jSONObject).setFileUriProvider(new IDownloadFileUriProvider() { // from class: com.bytedance.sdk.openadsdk.downloadnew.p.2
            @Override // com.ss.android.socialbase.downloader.depend.IDownloadFileUriProvider
            public Uri getUriForFile(String str18, String str19) {
                return null;
            }
        });
        if (jSONObject2 != null) {
            fileUriProvider.setDownloadSettings(jSONObject2);
        }
        if (!TextUtils.isEmpty(str11)) {
            fileUriProvider.setFilePath(str11);
        }
        if (!TextUtils.isEmpty(str12)) {
            fileUriProvider.setDownloadUrl(str12);
        }
        if (!TextUtils.isEmpty(str13)) {
            fileUriProvider.setAppName(str13);
        }
        if (!TextUtils.isEmpty(str14)) {
            fileUriProvider.setPackageName(str14);
        }
        fileUriProvider.setNeedIndependentProcess(booleanValue9);
        fileUriProvider.setDeepLink(dq(longValue3, str15, str16, str17));
        this.ox.put(Integer.valueOf(i), fileUriProvider);
        this.p.put(Integer.valueOf(i), fileUriProvider.build());
    }

    private OnItemClickListener mn(Object obj) {
        if (obj instanceof OnItemClickListener) {
            return (OnItemClickListener) obj;
        }
        if (obj instanceof EventListener) {
            return new ia((EventListener) obj);
        }
        return null;
    }

    private AdDownloadEventConfig nt(int i) {
        return this.ia.get(Integer.valueOf(i));
    }

    private DownloadEventConfig ox(Object obj) {
        if (obj instanceof DownloadEventConfig) {
            return (DownloadEventConfig) obj;
        }
        return null;
    }

    private void ox(int i, Map<String, Object> map) {
        if (map == null || map.size() <= 0) {
            return;
        }
        int intValue = ((Integer) map.get(TTDownloadField.TT_LINK_MODE)).intValue();
        int intValue2 = ((Integer) map.get(TTDownloadField.TT_DOWNLOAD_MODE)).intValue();
        boolean booleanValue = ((Boolean) map.get(TTDownloadField.TT_IS_ENABLE_BACK_DIALOG)).booleanValue();
        boolean booleanValue2 = ((Boolean) map.get(TTDownloadField.TT_IS_ADD_TO_DOWNLOAD_MANAGE)).booleanValue();
        map.get(TTDownloadField.TT_EXTRA_OPERATION);
        boolean booleanValue3 = ((Boolean) map.get(TTDownloadField.TT_SHOULD_USE_NEW_WEB_VIEW)).booleanValue();
        int intValue3 = ((Integer) map.get(TTDownloadField.TT_INTERCEPT_FLAG)).intValue();
        JSONObject jSONObject = (JSONObject) map.get(TTDownloadField.TT_EXTRA_JSON);
        Object obj = map.get(TTDownloadField.TT_EXTRA_OBJECT);
        boolean booleanValue4 = ((Boolean) map.get(TTDownloadField.TT_ENABLE_SHOW_COMPLIANCE_DIALOG)).booleanValue();
        boolean booleanValue5 = ((Boolean) map.get(TTDownloadField.TT_IS_AUTO_DOWNLOAD_ON_CARD_SHOW)).booleanValue();
        boolean booleanValue6 = ((Boolean) map.get(TTDownloadField.TT_ENABLE_NEW_ACTIVITY)).booleanValue();
        boolean booleanValue7 = ((Boolean) map.get(TTDownloadField.TT_IS_ENABLE_AH)).booleanValue();
        boolean booleanValue8 = ((Boolean) map.get(TTDownloadField.TT_IS_ENABLE_AM)).booleanValue();
        AdDownloadController.Builder enableOppoAutoDownload = new AdDownloadController.Builder().setLinkMode(intValue).setDownloadMode(intValue2).setIsEnableBackDialog(booleanValue).setIsAddToDownloadManage(booleanValue2).setShouldUseNewWebView(booleanValue3).setInterceptFlag(intValue3).setExtraJson(jSONObject).setExtraObject(obj).setEnableShowComplianceDialog(booleanValue4).setIsAutoDownloadOnCardShow(booleanValue5).setEnableNewActivity(booleanValue6).setEnableAH(booleanValue7).setEnableAM(booleanValue8).setEnableOppoAutoDownload(((Boolean) map.get(TTDownloadField.TT_IS_ENABLE_OPPO_AUTO_DOWNLOAD)).booleanValue());
        this.s.put(Integer.valueOf(i), enableOppoAutoDownload);
        this.iw.put(Integer.valueOf(i), enableOppoAutoDownload.build());
    }

    private DownloadController p(Object obj) {
        if (obj instanceof DownloadController) {
            return (DownloadController) obj;
        }
        return null;
    }

    private void p(int i, Map<String, Object> map) {
        if (map == null || map.size() <= 0) {
            return;
        }
        String str = (String) map.get(TTDownloadField.TT_CLICK_BUTTON_TAG);
        String str2 = (String) map.get(TTDownloadField.TT_CLICK_ITEM_TAG);
        String str3 = (String) map.get(TTDownloadField.TT_LABEL_CLICK_START);
        String str4 = (String) map.get(TTDownloadField.TT_LABEL_CLICK_CONTINUE);
        String str5 = (String) map.get(TTDownloadField.TT_LABEL_CLICK_PAUSE);
        String str6 = (String) map.get(TTDownloadField.TT_LABEL_STORAGE_DENY);
        String str7 = (String) map.get(TTDownloadField.TT_LABEL_CLICK_INSTALL);
        boolean booleanValue = ((Boolean) map.get(TTDownloadField.TT_IS_ENABLE_CLICK_EVENT)).booleanValue();
        boolean booleanValue2 = ((Boolean) map.get(TTDownloadField.TT_IS_ENABLE_V3_EVENT)).booleanValue();
        JSONObject jSONObject = (JSONObject) map.get(TTDownloadField.TT_EXTRA_EVENT_OBJECT);
        AdDownloadEventConfig.Builder isEnableV3Event = new AdDownloadEventConfig.Builder().setClickButtonTag(str).setClickItemTag(str2).setClickStartLabel(str3).setClickContinueLabel(str4).setClickPauseLabel(str5).setStorageDenyLabel(str6).setClickInstallLabel(str7).setIsEnableClickEvent(booleanValue).setIsEnableV3Event(booleanValue2);
        this.mn.put(Integer.valueOf(i), isEnableV3Event);
        if (jSONObject != null) {
            isEnableV3Event.setExtraEventObject(jSONObject);
        }
        this.ia.put(Integer.valueOf(i), isEnableV3Event.build());
    }

    private ExitInstallListener s(Object obj) {
        if (obj instanceof ExitInstallListener) {
            return (ExitInstallListener) obj;
        }
        return null;
    }

    private void s(int i, Map<String, Object> map) {
        if (map == null || map.size() <= 0) {
            return;
        }
        String str = (String) map.get(TTDownloadField.TT_CLICK_BUTTON_TAG);
        String str2 = (String) map.get(TTDownloadField.TT_CLICK_ITEM_TAG);
        String str3 = (String) map.get(TTDownloadField.TT_CLICK_LABEL);
        int intValue = ((Integer) map.get(TTDownloadField.TT_DOWNLOAD_SCENE)).intValue();
        String str4 = (String) map.get(TTDownloadField.TT_REFER);
        JSONObject jSONObject = (JSONObject) map.get(TTDownloadField.TT_EXTRA_JSON);
        JSONObject jSONObject2 = (JSONObject) map.get(TTDownloadField.TT_PARAMS_JSON);
        String str5 = (String) map.get(TTDownloadField.TT_LABEL_CLICK_START);
        String str6 = (String) map.get(TTDownloadField.TT_LABEL_CLICK_CONTINUE);
        String str7 = (String) map.get(TTDownloadField.TT_LABEL_CLICK_PAUSE);
        String str8 = (String) map.get(TTDownloadField.TT_LABEL_STORAGE_DENY);
        String str9 = (String) map.get(TTDownloadField.TT_LABEL_CLICK_INSTALL);
        boolean booleanValue = ((Boolean) map.get(TTDownloadField.TT_IS_ENABLE_CLICK_EVENT)).booleanValue();
        boolean booleanValue2 = ((Boolean) map.get(TTDownloadField.TT_IS_ENABLE_V3_EVENT)).booleanValue();
        JSONObject jSONObject3 = (JSONObject) map.get(TTDownloadField.TT_EXTRA_EVENT_OBJECT);
        AdDownloadEventConfig.Builder paramsJson = new AdDownloadEventConfig.Builder().setClickButtonTag(str).setClickItemTag(str2).setClickLabel(str3).setClickStartLabel(str5).setClickContinueLabel(str6).setClickPauseLabel(str7).setStorageDenyLabel(str8).setClickInstallLabel(str9).setIsEnableClickEvent(booleanValue).setDownloadScene(intValue).setIsEnableV3Event(booleanValue2).setRefer(str4).setExtraJson(jSONObject).setParamsJson(jSONObject2);
        this.mn.put(Integer.valueOf(i), paramsJson);
        if (jSONObject3 != null) {
            paramsJson.setExtraEventObject(jSONObject3);
        }
        this.ia.put(Integer.valueOf(i), paramsJson.build());
    }

    private int tv(int i) {
        AdDownloadController bx = bx(i);
        if (bx == null) {
            return 0;
        }
        return bx.getDownloadMode();
    }

    private AdDownloadModel x(int i) {
        return this.p.get(Integer.valueOf(i));
    }

    private void xj(int i) {
        this.ox.remove(Integer.valueOf(i));
        this.p.remove(Integer.valueOf(i));
        this.s.remove(Integer.valueOf(i));
        this.iw.remove(Integer.valueOf(i));
        this.mn.remove(Integer.valueOf(i));
        this.ia.remove(Integer.valueOf(i));
    }

    public boolean b(int i) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return false;
        }
        return x.distinctDir();
    }

    public boolean bl(int i) {
        AdDownloadEventConfig nt = nt(i);
        if (nt == null) {
            return false;
        }
        return nt.isEnableV3Event();
    }

    public String bu(int i) {
        AdDownloadModel x = x(i);
        return x == null ? "" : x.getLogExtra();
    }

    public boolean by(int i) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return false;
        }
        return x.isInExternalPublicDir();
    }

    public long c(int i) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return 0L;
        }
        return x.getExpectFileLength();
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i != 20) {
            return (T) dq(cls, i, (valueSet == null || valueSet.objectValue(0, Map.class) == null) ? new HashMap<>() : (Map) valueSet.objectValue(0, Map.class));
        }
        dq((Bundle) valueSet.objectValue(0, Bundle.class));
        return null;
    }

    public int cc(int i) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return 2;
        }
        return x.getExecutorGroup();
    }

    public String cd(int i) {
        AdDownloadEventConfig nt = nt(i);
        return nt == null ? "" : nt.getClickButtonTag();
    }

    public long ce(int i) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return 0L;
        }
        return x.getExtraValue();
    }

    public boolean cv(int i) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return false;
        }
        return x.needIndependentProcess();
    }

    public AdDownloadModel d(int i, List<String> list) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return null;
        }
        return x.setBackupUrls(list);
    }

    public void d(int i, int i2) {
        AdDownloadEventConfig nt = nt(i);
        if (nt == null) {
            return;
        }
        nt.setDownloadScene(i2);
    }

    public void d(int i, long j) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return;
        }
        x.setExtraValue(j);
    }

    public void d(int i, Object obj) {
        AdDownloadEventConfig nt = nt(i);
        if (nt == null) {
            return;
        }
        nt.setExtraEventObject(obj);
    }

    public void d(int i, String str) {
        AdDownloadEventConfig nt = nt(i);
        if (nt == null) {
            return;
        }
        nt.setClickItemTag(str);
    }

    public void d(int i, JSONObject jSONObject) {
        AdDownloadEventConfig nt = nt(i);
        if (nt == null) {
            return;
        }
        nt.setExtraJson(jSONObject);
    }

    public void d(int i, boolean z) {
        AdDownloadController bx = bx(i);
        if (bx == null) {
            return;
        }
        bx.setIsAutoDownloadOnCardShow(z);
    }

    public boolean d(int i) {
        AdDownloadController bx = bx(i);
        if (bx == null) {
            return false;
        }
        return bx.isEnableBackDialog();
    }

    public int dc(int i) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return 0;
        }
        return x.getVersionCode();
    }

    public int dq(int i) {
        AdDownloadController bx = bx(i);
        if (bx == null) {
            return 0;
        }
        return bx.getLinkMode();
    }

    public AdDownloadModel dq(int i, com.ss.android.download.api.model.p pVar) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return null;
        }
        return x.setQuickAppModel(pVar);
    }

    public AdDownloadModel dq(int i, List<String> list) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return null;
        }
        return x.setClickTrackUrl(list);
    }

    public AdDownloadModel dq(int i, Map<String, String> map) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return null;
        }
        return x.setHeaders(map);
    }

    public <T> T dq(Class<T> cls, int i, Map<String, Object> map) {
        Object obj = map.get(TTDownloadField.TT_HASHCODE);
        int intValue = obj instanceof Integer ? ((Integer) obj).intValue() : 0;
        AdDownloadModel x = x(intValue);
        switch (i) {
            case 3:
                ox.dq(((Integer) map.get(TTDownloadField.TT_HID)).intValue());
                break;
            case 4:
                ox.dq().dq(x == null ? (String) map.get(TTDownloadField.TT_DOWNLOAD_URL) : x.getDownloadUrl(), intValue);
                xj(intValue);
                break;
            case 5:
                ox.dq().dq(this.f3744d, intValue, dq(map.get(TTDownloadField.TT_DOWNLOAD_STATUSCHANGE_LISTENER)), x == null ? d(map.get(TTDownloadField.TT_DOWNLOAD_MODEL)) : x);
                break;
            case 6:
                break;
            case 7:
                ox.d();
                break;
            case 8:
                ox.dq().dq(x == null ? (String) map.get(TTDownloadField.TT_DOWNLOAD_URL) : x.getDownloadUrl(), ((Boolean) map.get(TTDownloadField.TT_FORCE)).booleanValue());
                break;
            case 9:
                ox.dq(((Integer) map.get(TTDownloadField.TT_HID)).intValue(), (ITTDownloadAdapter.OnEventLogHandler) map.get(TTDownloadField.TT_ONEVENT_LOG_HANDLER));
                break;
            case 10:
                ox.dq((String) map.get(TTDownloadField.TT_DOWNLOAD_PATH));
                break;
            case 12:
                Uri uri = (Uri) map.get("uri");
                AdDownloadModel d2 = x == null ? d(map.get(TTDownloadField.TT_DOWNLOAD_MODEL)) : x;
                DownloadEventConfig nt = nt(intValue);
                if (nt == null) {
                    nt = ox(map.get(TTDownloadField.TT_DOWNLOAD_EVENT_CONFIG));
                }
                DownloadEventConfig downloadEventConfig = nt;
                DownloadController bx = bx(intValue);
                if (bx == null) {
                    bx = p(map.get(TTDownloadField.TT_DOWNLOAD_CONTROLLER));
                }
                DownloadController downloadController = bx;
                IDownloadButtonClickListener ia = ia(map.get(TTDownloadField.TT_DOWNLOAD_BUTTON_CLICK_LISTENER));
                if (!dq(ia)) {
                    break;
                } else {
                    break;
                }
            case 13:
                boolean booleanValue = ((Boolean) map.get(TTDownloadField.TT_IS_DISABLE_DIALOG)).booleanValue();
                String str = (String) map.get(TTDownloadField.TT_USERAGENT);
                DownloadModel d3 = x == null ? d(map.get(TTDownloadField.TT_DOWNLOAD_MODEL)) : x;
                DownloadEventConfig nt2 = nt(intValue);
                if (nt2 == null) {
                    nt2 = ox(map.get(TTDownloadField.TT_DOWNLOAD_EVENT_CONFIG));
                }
                DownloadController bx2 = bx(intValue);
                if (bx2 == null) {
                    bx2 = p(map.get(TTDownloadField.TT_DOWNLOAD_CONTROLLER));
                }
                DownloadController downloadController2 = bx2;
                DownloadStatusChangeListener dq2 = dq(map.get(TTDownloadField.TT_DOWNLOAD_STATUSCHANGE_LISTENER));
                IDownloadButtonClickListener ia2 = ia(map.get(TTDownloadField.TT_DOWNLOAD_BUTTON_CLICK_LISTENER));
                if (!dq(ia2)) {
                    ox.dq().s().dq(this.f3744d, str, booleanValue, d3, nt2, downloadController2, dq2, intValue);
                    break;
                } else {
                    ox.dq().s().dq(this.f3744d, str, booleanValue, d3, nt2, downloadController2, dq2, intValue, ia2);
                    break;
                }
            case 14:
                break;
            case 16:
                String downloadUrl = x == null ? (String) map.get(TTDownloadField.TT_DOWNLOAD_URL) : x.getDownloadUrl();
                long longValue = x == null ? ((Long) map.get(TTDownloadField.TT_ID)).longValue() : x.getId();
                int intValue2 = ((Integer) map.get(TTDownloadField.TT_ACTION_TYPE_BUTTON)).intValue();
                DownloadEventConfig nt3 = nt(intValue);
                if (nt3 == null) {
                    nt3 = ox(map.get(TTDownloadField.TT_DOWNLOAD_EVENT_CONFIG));
                }
                DownloadEventConfig downloadEventConfig2 = nt3;
                DownloadController bx3 = bx(intValue);
                if (bx3 == null) {
                    bx3 = p(map.get(TTDownloadField.TT_DOWNLOAD_CONTROLLER));
                }
                ox.dq().dq(downloadUrl, longValue, intValue2, downloadEventConfig2, bx3);
                break;
            case 17:
                String downloadUrl2 = x == null ? (String) map.get(TTDownloadField.TT_DOWNLOAD_URL) : x.getDownloadUrl();
                long longValue2 = ((Long) map.get(TTDownloadField.TT_ID)).longValue();
                int intValue3 = ((Integer) map.get(TTDownloadField.TT_ACTION_TYPE_BUTTON)).intValue();
                DownloadEventConfig nt4 = nt(intValue);
                if (nt4 == null) {
                    nt4 = ox(map.get(TTDownloadField.TT_DOWNLOAD_EVENT_CONFIG));
                }
                DownloadEventConfig downloadEventConfig3 = nt4;
                DownloadController bx4 = bx(intValue);
                if (bx4 == null) {
                    bx4 = p(map.get(TTDownloadField.TT_DOWNLOAD_CONTROLLER));
                }
                ox.dq().dq(downloadUrl2, longValue2, intValue3, downloadEventConfig3, bx4, mn(map.get(TTDownloadField.TT_ITEM_CLICK_LISTENER)), ia(map.get(TTDownloadField.TT_DOWNLOAD_BUTTON_CLICK_LISTENER)));
                break;
            case 18:
                T t = (T) Boolean.valueOf(ox.dq().s().dq(x == null ? ((Long) map.get(TTDownloadField.TT_ID)).longValue() : x.getId(), intValue));
                xj(intValue);
                break;
            case 19:
                break;
            case 23:
                if (!((Boolean) map.get(TTDownloadField.TT_MATE_IS_EMPTY)).booleanValue()) {
                    d(intValue, map);
                    break;
                } else {
                    AdDownloadModel.Builder builder = new AdDownloadModel.Builder();
                    this.ox.put(Integer.valueOf(intValue), builder);
                    this.p.put(Integer.valueOf(intValue), builder.build());
                    break;
                }
            case 24:
                dq(intValue, (String) map.get(TTDownloadField.TT_APP_ICON), (String) map.get(TTDownloadField.TT_APP_NAME), (String) map.get(TTDownloadField.TT_PACKAGE_NAME));
                break;
            case 25:
                dq(intValue, ((Integer) map.get(TTDownloadField.TT_AUTO_OPEN)).intValue(), ((Integer) map.get(TTDownloadField.TT_DOWNLOAD_MODE)).intValue(), ((Boolean) map.get(TTDownloadField.TT_IS_HAVE_DOWNLOAD_SDK_CONFIG)).booleanValue(), ((Boolean) map.get(TTDownloadField.TT_IS_ENABLE_AH)).booleanValue(), ((Boolean) map.get(TTDownloadField.TT_IS_ENABLE_AM)).booleanValue());
                break;
            case 26:
                iw(intValue, ((Integer) map.get(TTDownloadField.TT_DOWNLOAD_MODE)).intValue());
                break;
            case 28:
                dq(intValue, ((Boolean) map.get(TTDownloadField.TT_IS_ENABLE_OPPO_AUTO_DOWNLOAD)).booleanValue(), iw(map.get(TTDownloadField.TT_DOWNLOAD_MARKET_INTERCEPTOR)));
                break;
            case 29:
                p(intValue, map);
                break;
            case 30:
                d(intValue, ((Integer) map.get(TTDownloadField.TT_DOWNLOAD_SCENE)).intValue());
                break;
            case 31:
                s(intValue, ((Boolean) map.get(TTDownloadField.TT_IS_SHOW_TOAST)).booleanValue());
                break;
            case 32:
                ox(intValue, map);
                break;
            case 44:
                dq(intValue, ((Integer) map.get(TTDownloadField.TT_LINK_MODE)).intValue());
                break;
            case 46:
                dq(intValue, ((Boolean) map.get(TTDownloadField.TT_ENABLE_SHOW_COMPLIANCE_DIALOG)).booleanValue());
                break;
            case 49:
                d(intValue, ((Boolean) map.get(TTDownloadField.TT_IS_AUTO_DOWNLOAD_ON_CARD_SHOW)).booleanValue());
                break;
            case 50:
                ox(intValue, ((Boolean) map.get(TTDownloadField.TT_ENABLE_NEW_ACTIVITY)).booleanValue());
                break;
            case 53:
                dq(intValue, map.get(TTDownloadField.TT_EXTRA_OBJECT));
                break;
            case 54:
                dq(intValue, (JSONObject) map.get(TTDownloadField.TT_EXTRA_JSON));
                break;
            case 56:
                s(intValue, map);
                break;
            case 72:
                d(intValue, map.get(TTDownloadField.TT_EXTRA_EVENT_OBJECT));
                break;
            case 73:
                dq(intValue, (String) map.get(TTDownloadField.TT_CLICK_BUTTON_TAG));
                break;
            case 74:
                d(intValue, (JSONObject) map.get(TTDownloadField.TT_EVENT_CONFIG_EXTRA_JSON));
                break;
            case 75:
                ox(intValue, (JSONObject) map.get(TTDownloadField.TT_PARAMS_JSON));
                break;
            case 76:
                d(intValue, (String) map.get(TTDownloadField.TT_CLICK_ITEM_TAG));
                break;
            case 78:
                ox(intValue, (String) map.get(TTDownloadField.TT_REFER));
                break;
            case 79:
                p(intValue, (String) map.get(TTDownloadField.TT_QUICK_APP_EVENT_TAG));
                break;
            case 80:
                iw(intValue, map);
                break;
            case 98:
                v(intValue);
                break;
            case 100:
                vw(intValue);
                break;
            case 101:
                ha(intValue);
                break;
            case 123:
                s(intValue, (String) map.get(TTDownloadField.TT_MD5));
                break;
            case 124:
                dq(intValue, ((Long) map.get(TTDownloadField.TT_EXPECT_FILE_LENGTH)).longValue());
                break;
            case 125:
                p(intValue, ((Boolean) map.get(TTDownloadField.TT_NEED_WIFI)).booleanValue());
                break;
            case TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE /* 127 */:
                d(intValue, ((Long) map.get(TTDownloadField.TT_EXTRA_VALUE)).longValue());
                break;
            case TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME /* 128 */:
                iw(intValue, (String) map.get(TTDownloadField.TT_APP_NAME));
                break;
            case TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA /* 129 */:
                p(intValue, (JSONObject) map.get(TTDownloadField.TT_EXTRA_JSON));
                break;
            case 130:
                mn(intValue, (String) map.get(TTDownloadField.TT_START_TOAST));
                break;
            case 131:
                ia(intValue, (String) map.get(TTDownloadField.TT_SDK_MONITOR_SCENE));
                break;
            case 132:
                ox(intValue, ((Long) map.get(TTDownloadField.TT_ID)).longValue());
                break;
            case 133:
                iw(intValue, ((Boolean) map.get(TTDownloadField.TT_IS_AD)).booleanValue());
                break;
            case 134:
                ox(intValue, ((Integer) map.get(TTDownloadField.TT_MODEL_TYPE)).intValue());
                break;
            case 135:
                kk(intValue, (String) map.get(TTDownloadField.TT_LOG_EXTRA));
                break;
            case 136:
                o(intValue, (String) map.get(TTDownloadField.TT_PACKAGE_NAME));
                break;
            case 137:
                no(intValue, (String) map.get(TTDownloadField.TT_APP_ICON));
                break;
            case 139:
                dq(intValue, (List<String>) map.get(TTDownloadField.TT_CLICK_TRACK_URL));
                break;
            case 140:
                ig(intValue, (String) map.get(TTDownloadField.TT_DOWNLOAD_URL));
                break;
            case 141:
                d(intValue, (List<String>) map.get(TTDownloadField.TT_BACK_UP_URLS));
                break;
            case 142:
                mp(intValue, (String) map.get(TTDownloadField.TT_NOTIFICATION_JUMP_URL));
                break;
            case 143:
                q(intValue, (String) map.get(TTDownloadField.TT_MIME_TYPE));
                break;
            case 144:
                dq(intValue, (Map<String, String>) map.get(TTDownloadField.TT_HEADERS));
                break;
            case 145:
                mn(intValue, ((Boolean) map.get(TTDownloadField.TT_IS_SHOW_NOTIFICATION)).booleanValue());
                break;
            case 146:
                jy(intValue, (String) map.get(TTDownloadField.TT_FILE_PATH));
                break;
            case 147:
                f(intValue, (String) map.get(TTDownloadField.TT_FILE_NAME));
                break;
            case 148:
                ia(intValue, ((Boolean) map.get(TTDownloadField.TT_IS_NEED_INDEPENDENT_PROCESS)).booleanValue());
                break;
            case TTDownloadField.CALL_DOWNLOAD_MODEL_SET_VERSION_CODE /* 149 */:
                p(intValue, ((Integer) map.get(TTDownloadField.TT_VERSION_CODE)).intValue());
                break;
            case 150:
                fw(intValue, (String) map.get(TTDownloadField.TT_VERSION_NAME));
                break;
            case 151:
                dq(intValue, new p.dq().dq((String) map.get(TTDownloadField.TT_QUICK_APP_MODEL_OPEN_URL)).d((String) map.get(TTDownloadField.TT_QUICK_APP_MODEL_EXTRA_DATA)).dq());
                break;
            case 152:
                kk(intValue, ((Boolean) map.get(TTDownloadField.TT_IS_AUTO_INSTALL_WITHOUT_NOTIFICATION)).booleanValue());
                break;
            case 153:
                s(intValue, ((Integer) map.get(TTDownloadField.TT_FUNNEL_TYPE)).intValue());
                break;
            case 154:
                dq(intValue, iw(map.get(TTDownloadField.TT_DOWNLOAD_MARKET_INTERCEPTOR)));
                break;
        }
        return null;
    }

    public void dq(int i, int i2) {
        AdDownloadController bx = bx(i);
        if (bx == null) {
            return;
        }
        bx.setLinkMode(i2);
    }

    public void dq(int i, long j) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return;
        }
        x.setExpectFileLength(j);
    }

    public void dq(int i, Object obj) {
        AdDownloadController bx = bx(i);
        if (bx == null) {
            return;
        }
        bx.setExtraObject(obj);
    }

    public void dq(int i, String str) {
        AdDownloadEventConfig nt = nt(i);
        if (nt == null) {
            return;
        }
        nt.setClickButtonTag(str);
    }

    public void dq(int i, JSONObject jSONObject) {
        AdDownloadController bx = bx(i);
        if (bx == null) {
            return;
        }
        bx.setExtraJson(jSONObject);
    }

    public void dq(int i, boolean z) {
        AdDownloadController bx = bx(i);
        if (bx == null) {
            return;
        }
        bx.setEnableShowComplianceDialog(z);
    }

    public void dq(Bundle bundle) {
        ox.dq(this.f3744d);
    }

    public JSONObject ds(int i) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return null;
        }
        return x.getDownloadSettings();
    }

    public String e(int i) {
        AdDownloadEventConfig nt = nt(i);
        return nt == null ? "" : nt.getStorageDenyLabel();
    }

    public String er(int i) {
        AdDownloadModel x = x(i);
        return x == null ? "" : x.getDownloadUrl();
    }

    public AdDownloadModel f(int i, String str) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return null;
        }
        return x.setFileName(str);
    }

    public boolean f(int i) {
        AdDownloadController bx = bx(i);
        if (bx == null) {
            return false;
        }
        return bx.enableOppoAutoDownload();
    }

    public boolean fd(int i) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return true;
        }
        return x.isAd();
    }

    public AdDownloadModel fw(int i, String str) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return null;
        }
        return x.setVersionName(str);
    }

    public String fw(int i) {
        AdDownloadEventConfig nt = nt(i);
        return nt == null ? "" : nt.getRefer();
    }

    public String gh(int i) {
        AdDownloadEventConfig nt = nt(i);
        return nt == null ? "" : nt.getClickItemTag();
    }

    public boolean gx(int i) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return false;
        }
        return x.isNeedWifi();
    }

    public int h(int i) {
        AdDownloadEventConfig nt = nt(i);
        if (nt == null) {
            return 0;
        }
        return nt.getDownloadScene();
    }

    public void ha(int i) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return;
        }
        x.forceHideNotification();
    }

    public boolean hf(int i) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return true;
        }
        return x.isAutoInstall();
    }

    public String i(int i) {
        AdDownloadEventConfig nt = nt(i);
        return nt == null ? "" : nt.getClickStartLabel();
    }

    public int ia(int i) {
        AdDownloadController bx = bx(i);
        if (bx == null) {
            return 0;
        }
        return bx.getInterceptFlag();
    }

    public AdDownloadModel ia(int i, boolean z) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return null;
        }
        return x.setNeedIndependentProcess(z);
    }

    public void ia(int i, String str) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return;
        }
        x.setSdkMonitorScene(str);
    }

    public AdDownloadModel ig(int i, String str) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return null;
        }
        return x.setDownloadUrl(str);
    }

    public boolean ig(int i) {
        AdDownloadController bx = bx(i);
        if (bx == null) {
            return false;
        }
        return bx.isAutoDownloadOnCardShow();
    }

    public String ij(int i) {
        AdDownloadModel x = x(i);
        return x == null ? "" : x.getAppIcon();
    }

    public int io(int i) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return 0;
        }
        return x.getModelType();
    }

    public long ir(int i) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return 0L;
        }
        return x.getId();
    }

    public int iw(int i) {
        AdDownloadController bx = bx(i);
        if (bx == null) {
            return 1;
        }
        return bx.getDowloadChunkCount();
    }

    public AdDownloadModel iw(int i, boolean z) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return null;
        }
        return x.setIsAd(z);
    }

    public void iw(int i, String str) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return;
        }
        x.setAppName(str);
    }

    public String j(int i) {
        AdDownloadModel x = x(i);
        return x == null ? "" : x.getNotificationJumpUrl();
    }

    public boolean ji(int i) {
        AdDownloadEventConfig nt = nt(i);
        if (nt == null) {
            return true;
        }
        return nt.isEnableClickEvent();
    }

    public String jo(int i) {
        AdDownloadModel x = x(i);
        return x == null ? "" : x.getStartToast();
    }

    public String jw(int i) {
        AdDownloadModel x = x(i);
        return x == null ? "" : x.getVersionName();
    }

    public AdDownloadModel jy(int i, String str) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return null;
        }
        return x.setFilePath(str);
    }

    public boolean jy(int i) {
        AdDownloadController bx = bx(i);
        if (bx == null) {
            return false;
        }
        return bx.enableAM();
    }

    public String k(int i) {
        AdDownloadEventConfig nt = nt(i);
        return nt == null ? "" : nt.getClickPauseLabel();
    }

    public AdDownloadModel kk(int i, String str) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return null;
        }
        return x.setLogExtra(str);
    }

    public AdDownloadModel kk(int i, boolean z) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return null;
        }
        return x.setAutoInstallWithoutNotification(z);
    }

    public JSONObject kk(int i) {
        AdDownloadController bx = bx(i);
        if (bx == null) {
            return null;
        }
        return bx.getExtraJson();
    }

    public Object kx(int i) {
        AdDownloadEventConfig nt = nt(i);
        if (nt == null) {
            return null;
        }
        return nt.getExtraEventObject();
    }

    public boolean l(int i) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return true;
        }
        return x.isShowToast();
    }

    public String le(int i) {
        AdDownloadEventConfig nt = nt(i);
        return nt == null ? "" : nt.getClickPauseLabel();
    }

    public com.ss.android.download.api.model.p m(int i) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return null;
        }
        return x.getQuickAppModel();
    }

    public int mc(int i) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return 1;
        }
        return x.getFunnelType();
    }

    public AdDownloadModel mn(int i, boolean z) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return null;
        }
        return x.setIsShowNotification(z);
    }

    public void mn(int i, String str) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return;
        }
        x.setStartToast(str);
    }

    public boolean mn(int i) {
        AdDownloadController bx = bx(i);
        if (bx == null) {
            return false;
        }
        return bx.shouldUseNewWebView();
    }

    public AdDownloadModel mp(int i, String str) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return null;
        }
        return x.setNotificationJumpUrl(str);
    }

    public boolean mp(int i) {
        AdDownloadController bx = bx(i);
        if (bx == null) {
            return false;
        }
        return bx.enableNewActivity();
    }

    public JSONObject n(int i) {
        AdDownloadEventConfig nt = nt(i);
        if (nt == null) {
            return null;
        }
        return nt.getExtraJson();
    }

    public String nh(int i) {
        AdDownloadModel x = x(i);
        return x == null ? "" : x.getName();
    }

    public AdDownloadModel no(int i, String str) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return null;
        }
        return x.setAppIcon(str);
    }

    public boolean no(int i) {
        AdDownloadController bx = bx(i);
        if (bx == null) {
            return false;
        }
        return bx.enableShowComplianceDialog();
    }

    public AdDownloadModel o(int i, String str) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return null;
        }
        return x.setPackageName(str);
    }

    public Object o(int i) {
        AdDownloadController bx = bx(i);
        if (bx == null) {
            return null;
        }
        return bx.getExtraObject();
    }

    public Map<String, String> ob(int i) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return null;
        }
        return x.getHeaders();
    }

    public JSONObject op(int i) {
        AdDownloadEventConfig nt = nt(i);
        if (nt == null) {
            return null;
        }
        return nt.getParamsJson();
    }

    public AdDownloadModel ox(int i, int i2) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return null;
        }
        return x.setModelType(i2);
    }

    public AdDownloadModel ox(int i, long j) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return null;
        }
        return x.setId(j);
    }

    public void ox(int i, String str) {
        AdDownloadEventConfig nt = nt(i);
        if (nt == null) {
            return;
        }
        nt.setRefer(str);
    }

    public void ox(int i, JSONObject jSONObject) {
        AdDownloadEventConfig nt = nt(i);
        if (nt == null) {
            return;
        }
        nt.setParamsJson(jSONObject);
    }

    public void ox(int i, boolean z) {
        AdDownloadController bx = bx(i);
        if (this.iw == null) {
            return;
        }
        bx.setEnableNewActivity(z);
    }

    public boolean ox(int i) {
        AdDownloadController bx = bx(i);
        if (bx == null) {
            return false;
        }
        return bx.isAddToDownloadManage();
    }

    public AdDownloadModel p(int i, int i2) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return null;
        }
        return x.setVersionCode(i2);
    }

    public Object p(int i) {
        AdDownloadController bx = bx(i);
        if (bx == null) {
            return null;
        }
        return bx.getExtraClickOperation();
    }

    public void p(int i, String str) {
        AdDownloadEventConfig nt = nt(i);
        if (nt == null) {
            return;
        }
        nt.setQuickAppEventTag(str);
    }

    public void p(int i, JSONObject jSONObject) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return;
        }
        x.setExtra(jSONObject);
    }

    public void p(int i, boolean z) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return;
        }
        x.setNeedWifi(z);
    }

    public JSONObject pa(int i) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return null;
        }
        return x.getExtra();
    }

    public AdDownloadModel q(int i, String str) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return null;
        }
        return x.setMimeType(str);
    }

    public boolean q(int i) {
        AdDownloadController bx = bx(i);
        if (bx == null) {
            return false;
        }
        return bx.enableAH();
    }

    public String r(int i) {
        AdDownloadEventConfig nt = nt(i);
        return nt == null ? "" : nt.getClickLabel();
    }

    public AdDownloadModel s(int i, int i2) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return null;
        }
        return x.setFunnelType(i2);
    }

    public void s(int i, String str) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return;
        }
        x.setMd5(str);
    }

    public void s(int i, boolean z) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return;
        }
        x.setIsShowToast(z);
    }

    public boolean s(int i) {
        AdDownloadController bx = bx(i);
        if (bx == null) {
            return false;
        }
        return bx.isEnableMultipleDownload();
    }

    public boolean t(int i) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return true;
        }
        return x.isShowNotification();
    }

    public boolean tl(int i) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return true;
        }
        return x.enablePause();
    }

    public String u(int i) {
        AdDownloadModel x = x(i);
        return x == null ? "" : x.getMd5();
    }

    public boolean uh(int i) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return false;
        }
        return x.isInExternalPublicDir();
    }

    public void v(int i) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return;
        }
        x.forceWifi();
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        hat f2 = hat.f();
        f2.f19148c.put(0, ox.dq);
        f2.f19148c.put(1, Boolean.valueOf(ox.f3738d));
        f2.o(10000, 3);
        return f2.k();
    }

    public String vf(int i) {
        AdDownloadModel x = x(i);
        return x == null ? "" : x.getMimeType();
    }

    public void vw(int i) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return;
        }
        x.forceHideToast();
    }

    public boolean wi(int i) {
        AdDownloadModel x = x(i);
        return x == null ? com.ss.android.download.api.ox.d.dq(com.ss.android.socialbase.downloader.mn.dq.dq(ds(i)), vf(i)) : x.shouldDownloadWithPatchApply();
    }

    public List<String> wn(int i) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return null;
        }
        return x.getBackupUrls();
    }

    public String wp(int i) {
        AdDownloadEventConfig nt = nt(i);
        return nt == null ? "" : nt.getClickInstallLabel();
    }

    public String ws(int i) {
        AdDownloadModel x = x(i);
        return x == null ? "" : x.getPackageName();
    }

    public DeepLink xi(int i) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return null;
        }
        return x.getDeepLink();
    }

    public boolean xv(int i) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return false;
        }
        return x.autoInstallWithoutNotification();
    }

    public String xz(int i) {
        AdDownloadModel x = x(i);
        return x == null ? "" : x.getFilePath();
    }

    public String yo(int i) {
        AdDownloadModel x = x(i);
        return x == null ? "" : x.getStartToast();
    }

    public String yy(int i) {
        AdDownloadModel x = x(i);
        return x == null ? "" : x.getFileName();
    }

    public List<String> z(int i) {
        AdDownloadModel x = x(i);
        if (x == null) {
            return null;
        }
        return x.getClickTrackUrl();
    }
}
