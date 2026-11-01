package com.bytedance.sdk.openadsdk.mediation;

import android.os.Bundle;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.mediation.dq.dq.dq.d;
import com.bytedance.sdk.openadsdk.mediation.dq.dq.mn;

/* loaded from: classes3.dex */
public class MediationManagerVisitor {

    /* renamed from: d, reason: collision with root package name */
    private static volatile Bridge f3803d;
    private static volatile MediationManagerVisitor dq;
    private d ox;

    private MediationManagerVisitor() {
    }

    public static MediationManagerVisitor getInstance() {
        if (dq == null) {
            synchronized (MediationManagerVisitor.class) {
                try {
                    if (dq == null) {
                        dq = new MediationManagerVisitor();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    public synchronized IMediationManager getMediationManager() {
        try {
            Bundle bundle = new Bundle();
            bundle.putString("mediation_manager", "mediation_manager");
            TTAdManager adManager = TTAdSdk.getAdManager();
            if (adManager != null) {
                f3803d = (Bridge) adManager.getExtra(null, bundle);
            }
            if (f3803d == null) {
                return null;
            }
            if (this.ox == null) {
                this.ox = new mn(f3803d);
            }
            return this.ox;
        } catch (Throwable th) {
            throw th;
        }
    }
}
