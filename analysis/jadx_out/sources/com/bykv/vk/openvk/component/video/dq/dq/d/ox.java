package com.bykv.vk.openvk.component.video.dq.dq.d;

import android.content.Context;
import android.os.Build;
import com.bykv.vk.openvk.component.video.api.ox.p;
import com.bykv.vk.openvk.component.video.api.s.dq;
import j$.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class ox {
    public static final ConcurrentHashMap<String, d> dq = new ConcurrentHashMap<>();

    public static synchronized void dq(Context context, p pVar, dq.InterfaceC0005dq interfaceC0005dq) {
        synchronized (ox.class) {
            if (pVar == null) {
                com.bykv.vk.openvk.component.video.api.iw.ox.dq(" url、dir and hash is must property   in VideoInfoModel");
                return;
            }
            if (Build.VERSION.SDK_INT >= 23) {
                ConcurrentHashMap<String, d> concurrentHashMap = dq;
                d dVar = concurrentHashMap.get(pVar.fw());
                if (dVar == null) {
                    dVar = new d(context, pVar);
                    concurrentHashMap.put(pVar.fw(), dVar);
                    com.bykv.vk.openvk.component.video.api.iw.ox.dq("VideoFileManager", "preloadVideo:  cache size = ", Integer.valueOf(pVar.iw()), pVar.fw());
                }
                dVar.dq(interfaceC0005dq);
            }
            com.bykv.vk.openvk.component.video.api.iw.ox.dq("VideoFileManager", "preloadVideo:  cache size = ", Integer.valueOf(pVar.iw()), pVar.fw());
        }
    }

    public static synchronized void dq(p pVar) {
        synchronized (ox.class) {
            try {
                if (Build.VERSION.SDK_INT >= 23) {
                    d remove = dq.remove(pVar.fw());
                    if (remove != null) {
                        remove.dq(true);
                    }
                    com.bykv.vk.openvk.component.video.api.iw.ox.dq("VideoFileManager", "removePreload:  cache size = ", Integer.valueOf(pVar.iw()), pVar.fw());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
