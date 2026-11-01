package com.bytedance.sdk.openadsdk.core.multipro.aidl.dq;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.r;
import g.awf;
import java.util.Map;

/* loaded from: classes3.dex */
public class d extends dq {

    /* renamed from: d, reason: collision with root package name */
    private static volatile d f3189d;
    private static Map<String, RemoteCallbackList<r>> dq = awf.ab();

    public static d d() {
        if (f3189d == null) {
            synchronized (d.class) {
                try {
                    if (f3189d == null) {
                        f3189d = new d();
                    }
                } finally {
                }
            }
        }
        return f3189d;
    }

    private synchronized void d(String str, String str2, long j, long j2, String str3, String str4) {
        r broadcastItem;
        try {
            if (dq == null) {
                return;
            }
            if ("recycleRes".equals(str2)) {
                dq(dq.remove(str));
                ig.p("DMLibManager", "aidl executeMultiProcessAppDownloadCallBack recycle res, materialMd5:".concat(String.valueOf(str)));
                ig.p("DMLibManager", "aidl executeMultiProcessAppDownloadCallBack recycle res, mListenerMap sizee:" + dq.size());
                return;
            }
            RemoteCallbackList<r> remoteCallbackList = dq.get(str);
            if (remoteCallbackList != null) {
                int beginBroadcast = remoteCallbackList.beginBroadcast();
                for (int i = 0; i < beginBroadcast; i++) {
                    try {
                        broadcastItem = remoteCallbackList.getBroadcastItem(i);
                    } catch (Throwable th) {
                        th = th;
                    }
                    if (broadcastItem != null) {
                        if ("onIdle".equals(str2)) {
                            broadcastItem.dq();
                        } else if ("onDownloadActive".equals(str2)) {
                            broadcastItem.dq(j, j2, str3, str4);
                        } else if ("onDownloadPaused".equals(str2)) {
                            broadcastItem.d(j, j2, str3, str4);
                        } else {
                            if ("onDownloadFailed".equals(str2)) {
                                try {
                                    broadcastItem.ox(j, j2, str3, str4);
                                } catch (Throwable th2) {
                                    th = th2;
                                    ig.d("MultiProcess", "AppDownloadListenerManagerImpl MultiProcess1: " + str2 + " throws Exception :", th);
                                }
                            } else if ("onDownloadFinished".equals(str2)) {
                                broadcastItem.dq(j, str3, str4);
                            } else if ("onInstalled".equals(str2)) {
                                broadcastItem.dq(str3, str4);
                            }
                        }
                    }
                }
                remoteCallbackList.finishBroadcast();
            }
        } catch (Throwable th3) {
            ig.d("MultiProcess", "AppDownloadListenerManagerImpl MultiProcess2: " + str2 + " throws Exception :", th3);
        }
    }

    private void dq(RemoteCallbackList<r> remoteCallbackList) {
        if (remoteCallbackList != null) {
            try {
                int beginBroadcast = remoteCallbackList.beginBroadcast();
                for (int i = 0; i < beginBroadcast; i++) {
                    try {
                        r broadcastItem = remoteCallbackList.getBroadcastItem(i);
                        if (broadcastItem != null) {
                            ((com.bytedance.sdk.openadsdk.core.multipro.aidl.d.iw) broadcastItem).ox();
                        }
                    } catch (Throwable th) {
                        ig.d("MultiProcess", "recycleRes1 throw Exception : ", th);
                    }
                }
                remoteCallbackList.finishBroadcast();
                remoteCallbackList.kill();
            } catch (Throwable th2) {
                ig.d("MultiProcess", "recycleRes2 throw Exception : ", th2);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.multipro.aidl.dq.dq, com.bytedance.sdk.openadsdk.core.fw
    public void d(String str, r rVar) throws RemoteException {
        Map<String, RemoteCallbackList<r>> map = dq;
        if (map == null) {
            ig.p("DMLibManager", "aidl unregisterTTAppDownloadListener mListenerMap = null, materialMd5:".concat(String.valueOf(str)));
            return;
        }
        RemoteCallbackList<r> remove = map.remove(str);
        if (remove == null) {
            ig.p("DMLibManager", "aidl unregisterTTAppDownloadListener cbs = null, materialMd5:".concat(String.valueOf(str)));
            return;
        }
        dq(remove);
        ig.p("DMLibManager", "aidl unregisterTTAppDownloadListener, materialMd5:".concat(String.valueOf(str)));
        ig.p("DMLibManager", "aidl unregisterTTAppDownloadListener, mListenerMap size:" + dq.size());
    }

    @Override // com.bytedance.sdk.openadsdk.core.multipro.aidl.dq.dq, com.bytedance.sdk.openadsdk.core.fw
    public void dq(String str, r rVar) throws RemoteException {
        RemoteCallbackList<r> remoteCallbackList = dq.get(str);
        if (remoteCallbackList == null) {
            remoteCallbackList = new RemoteCallbackList<>();
        }
        remoteCallbackList.register(rVar);
        dq.put(str, remoteCallbackList);
        ig.p("DMLibManager", "aidl registerTTAppDownloadListener, materialMd5:".concat(String.valueOf(str)));
        ig.p("DMLibManager", "aidl registerTTAppDownloadListener, mListenerMap size:" + dq.size());
    }

    @Override // com.bytedance.sdk.openadsdk.core.multipro.aidl.dq.dq, com.bytedance.sdk.openadsdk.core.fw
    public void dq(String str, String str2, long j, long j2, String str3, String str4) throws RemoteException {
        d(str, str2, j, j2, str3, str4);
    }
}
