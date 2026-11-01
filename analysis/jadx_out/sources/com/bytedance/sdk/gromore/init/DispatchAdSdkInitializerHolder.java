package com.bytedance.sdk.gromore.init;

import android.content.Context;
import android.os.Bundle;
import com.bykv.vk.openvk.api.proto.Initializer;
import com.bykv.vk.openvk.api.proto.Loader;
import com.bykv.vk.openvk.api.proto.Manager;

/* loaded from: classes.dex */
public class DispatchAdSdkInitializerHolder {

    /* renamed from: d, reason: collision with root package name */
    private static Initializer f2360d;
    private static volatile Initializer dq;

    public static Loader getCsjLoader(Context context) {
        if (getCsjManger() != null) {
            return getCsjManger().createLoader(context);
        }
        return null;
    }

    public static Manager getCsjManger() {
        Initializer initializer = f2360d;
        if (initializer != null) {
            return initializer.getManager();
        }
        return null;
    }

    public static Initializer getInstance(Bundle bundle, Initializer initializer) {
        f2360d = initializer;
        if (dq == null) {
            synchronized (DispatchAdSdkInitializerHolder.class) {
                try {
                    if (dq == null) {
                        dq = new q(bundle, initializer);
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    public static boolean isInitSuccess() {
        Initializer initializer = f2360d;
        return initializer != null && initializer.isInitSuccess();
    }
}
