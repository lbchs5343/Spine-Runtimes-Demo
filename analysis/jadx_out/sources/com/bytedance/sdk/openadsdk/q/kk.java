package com.bytedance.sdk.openadsdk.q;

import android.os.Build;

/* loaded from: classes3.dex */
public class kk {
    private static void d(com.bytedance.sdk.component.mp.dq dqVar) {
        try {
            dqVar.d("searchBoxJavaBridge_");
            dqVar.d("accessibility");
            dqVar.d("accessibilityTraversal");
        } catch (Throwable th) {
            mn.dq("WebViewSettings", "removeJavascriptInterfacesSafe error", th);
        }
    }

    public static void dq(com.bytedance.sdk.component.mp.dq dqVar) {
        d(dqVar);
        try {
            dqVar.setJavaScriptEnabled(true);
            dqVar.setMediaPlaybackRequiresUserGesture(false);
        } catch (Throwable th) {
            mn.dq("WebViewSettings", "setJavaScriptEnabled error", th);
        }
        try {
            dqVar.setSupportZoom(false);
        } catch (Throwable th2) {
            mn.dq("WebViewSettings", "setSupportZoom error", th2);
        }
        dqVar.setLoadWithOverviewMode(true);
        dqVar.setUseWideViewPort(true);
        dqVar.setDomStorageEnabled(true);
        dqVar.setAllowFileAccess(false);
        dqVar.setBlockNetworkImage(false);
        dqVar.setDisplayZoomControls(false);
        int i = Build.VERSION.SDK_INT;
        dqVar.setAllowFileAccessFromFileURLs(false);
        dqVar.setAllowUniversalAccessFromFileURLs(false);
        dqVar.setSavePassword(false);
        boolean z = i >= 28;
        try {
        } catch (Throwable th3) {
            mn.dq("WebViewSettings", "setLayerType error", th3);
        }
        if (z) {
            if (z) {
                dqVar.setLayerType(2, null);
            }
            dqVar.setMixedContentMode(0);
        }
        dqVar.setLayerType(0, null);
        dqVar.setMixedContentMode(0);
    }
}
