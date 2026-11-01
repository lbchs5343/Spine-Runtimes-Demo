package com.bytedance.sdk.openadsdk.downloadnew.core;

import android.content.Context;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.downloadnew.p;

/* loaded from: classes3.dex */
public class DownloadBridgeFactory {
    public static final Bridge getDownloadBridge(Context context) {
        return p.dq(context);
    }
}
