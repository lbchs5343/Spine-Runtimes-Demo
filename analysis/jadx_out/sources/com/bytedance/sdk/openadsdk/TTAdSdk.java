package com.bytedance.sdk.openadsdk;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.api.dq;
import com.bytedance.sdk.openadsdk.api.ox;
import com.bytedance.sdk.openadsdk.api.plugin.ia;
import com.bytedance.sdk.openadsdk.mediation.IMediationManager;
import com.bytedance.sdk.openadsdk.mediation.MediationManagerVisitor;
import java.util.Map;

/* loaded from: classes.dex */
public final class TTAdSdk {
    public static final String BRANCH = "";
    public static final String BUILT_IN_PLUGIN_NAME = "com.byted.pangle";
    public static final String C_H = "29e9223cf3";
    public static final int EXT_API_VERSION_CODE = 999;
    public static final boolean INCLUDE_LIVE = true;
    public static final String INITIALIZER_CLASS_NAME = "com.bytedance.sdk.openadsdk.core.AdSdkInitializerHolder";
    public static final boolean IS_BOOST = true;
    public static final boolean IS_P = false;
    public static final String LIVE_PLUGIN_PACKAGE_NAME = "com.byted.live.lite";
    public static final boolean ONLY_API = false;
    public static final String PLUGIN_ADAPTER_PACKAGE_NAME = "com.byted.mixed";
    public static final int SDK_VERSION_CODE = 6607;
    public static final String SDK_VERSION_NAME = "6.6.0.7";
    public static final String S_C = "main";

    /* renamed from: d, reason: collision with root package name */
    private static volatile TTAdConfig f2389d;
    private static final dq dq = new ia();

    public interface Callback extends InitCallback {
    }

    @Deprecated
    public interface InitCallback {
        void fail(int i, String str);

        void success();
    }

    private static void dq(Context context, TTAdConfig tTAdConfig) {
        if (tTAdConfig != null && tTAdConfig.isDebug()) {
            ox.dq();
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            ox.dq("Wrong Thread ! Please exec TTAdSdk.init in main thread.");
        }
        dq(context, "Context is null, please check.");
        dq(tTAdConfig, "TTAdConfig is null, please check.");
        TTAppContextHolder.setContext(context);
        updateConfigAuth(tTAdConfig);
    }

    private static void dq(Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(str);
        }
    }

    public static TTAdManager getAdManager() {
        dq dqVar = dq;
        if (dqVar != null) {
            return dqVar.d();
        }
        return null;
    }

    public static View getEcMallBackUpView() {
        dq.ox d2 = dq.d();
        if (d2 == null) {
            return null;
        }
        return (View) d2.getExtra(View.class, null);
    }

    public static IMediationManager getMediationManager() {
        if (dq != null) {
            return MediationManagerVisitor.getInstance().getMediationManager();
        }
        return null;
    }

    public static boolean init(Context context, TTAdConfig tTAdConfig) {
        f2389d = tTAdConfig;
        dq(context, f2389d);
        return true;
    }

    @Deprecated
    public static boolean isInitSuccess() {
        dq dqVar = dq;
        if (dqVar != null) {
            return dqVar.dq();
        }
        return false;
    }

    public static boolean isOnePointFiveAdType(TTNativeExpressAd tTNativeExpressAd) {
        Map<String, Object> mediaExtraInfo;
        if (tTNativeExpressAd == null) {
            mediaExtraInfo = null;
        } else {
            try {
                mediaExtraInfo = tTNativeExpressAd.getMediaExtraInfo();
            } catch (Throwable th) {
                th.printStackTrace();
                return false;
            }
        }
        if (mediaExtraInfo == null || !mediaExtraInfo.containsKey("_tt_ad_type_onepointfive")) {
            return false;
        }
        return ((Boolean) mediaExtraInfo.get("_tt_ad_type_onepointfive")).booleanValue();
    }

    public static boolean isOpenMediationMap() {
        TTAdManager adManager = getAdManager();
        if (adManager == null) {
            return false;
        }
        Bundle bundle = new Bundle();
        bundle.putString("extra_name", "use_mediation_map");
        Map map = (Map) adManager.getExtra(Map.class, bundle);
        if (map == null || !(map.get("use_mediation_map") instanceof Boolean)) {
            return false;
        }
        return ((Boolean) map.get("use_mediation_map")).booleanValue();
    }

    public static boolean isSdkReady() {
        dq dqVar = dq;
        if (dqVar != null) {
            return dqVar.dq();
        }
        return false;
    }

    public static void start(Callback callback) {
        dq(f2389d, "TTAdConfig is null, please exec TTAdSdk.init before TTAdSdk.start.");
        dq dqVar = dq;
        if (dqVar == null) {
            callback.fail(4100, "Load initializer failed");
        } else {
            dqVar.dq(TTAppContextHolder.getContext(), f2389d, callback);
        }
    }

    public static void updateAdConfig(TTAdConfig tTAdConfig) {
        dq.ox d2;
        if (tTAdConfig == null || (d2 = dq.d()) == null) {
            return;
        }
        Bundle bundle = new Bundle();
        if (!TextUtils.isEmpty(tTAdConfig.getData())) {
            bundle.putString("extra_data", tTAdConfig.getData());
        }
        if (!TextUtils.isEmpty(tTAdConfig.getKeywords())) {
            bundle.putString("keywords", tTAdConfig.getKeywords());
        }
        if (!bundle.keySet().isEmpty()) {
            d2.getExtra(ValueSet.class, bundle);
        }
        IMediationManager mediationManager = getMediationManager();
        if (mediationManager != null) {
            if (tTAdConfig.getCustomController() != null) {
                mediationManager.updatePrivacyConfig(tTAdConfig.getCustomController());
            }
            Map<String, Object> initExtra = tTAdConfig.getInitExtra();
            if (initExtra == null || initExtra.isEmpty()) {
                return;
            }
            mediationManager.updateLocalExtra(tTAdConfig.getInitExtra());
        }
    }

    public static void updateConfigAuth(TTAdConfig tTAdConfig) {
        Map<String, Object> initExtra;
        Object obj;
        if (tTAdConfig == null || (initExtra = tTAdConfig.getInitExtra()) == null || (obj = initExtra.get(TTAdConstant.KEY_INIT_FOR_LIVE)) == null || !(obj instanceof Map)) {
            return;
        }
        com.bytedance.sdk.openadsdk.live.ox.dq().dq((Map<String, String>) obj);
    }

    public static void updatePaid(boolean z) {
        dq.ox d2 = dq.d();
        if (d2 == null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("is_paid", z);
        if (bundle.keySet().isEmpty()) {
            return;
        }
        d2.getExtra(ValueSet.class, bundle);
    }
}
