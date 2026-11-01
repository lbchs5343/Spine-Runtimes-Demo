package com.bytedance.sdk.openadsdk.mediation;

/* loaded from: classes3.dex */
public interface IMediationDrawAdTokenCallback {
    void onAdTokenLoaded(String str, IMediationDrawTokenInfo iMediationDrawTokenInfo);

    void onAdTokenLoadedFail(int i, String str);
}
