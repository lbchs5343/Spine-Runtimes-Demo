package com.bykv.vk.openvk.preload.geckox.utils;

/* loaded from: classes.dex */
public final class ox {
    public static void dq(Throwable th) {
        if (s.dq()) {
            com.bykv.vk.openvk.preload.geckox.no.d.d("gecko-debug-tag", "throwIfDebug:", th);
            throw new RuntimeException(th);
        }
        com.bykv.vk.openvk.preload.geckox.no.d.dq("gecko-debug-tag", "throwIfDebug:", th);
    }
}
