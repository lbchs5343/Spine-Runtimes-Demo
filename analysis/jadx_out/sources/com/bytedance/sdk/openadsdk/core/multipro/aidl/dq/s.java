package com.bytedance.sdk.openadsdk.core.multipro.aidl.dq;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.f;
import g.awf;
import java.util.Map;

/* loaded from: classes3.dex */
public class s extends dq {

    /* renamed from: d, reason: collision with root package name */
    private static volatile s f3194d;
    private static Map<String, RemoteCallbackList<f>> dq = awf.ab();

    public static s d() {
        if (f3194d == null) {
            synchronized (s.class) {
                try {
                    if (f3194d == null) {
                        f3194d = new s();
                    }
                } finally {
                }
            }
        }
        return f3194d;
    }

    private synchronized void ox(String str, String str2) {
        try {
            if (dq != null) {
                RemoteCallbackList<f> remove = "recycleRes".equals(str2) ? dq.remove(str) : dq.get(str);
                if (remove != null) {
                    int beginBroadcast = remove.beginBroadcast();
                    for (int i = 0; i < beginBroadcast; i++) {
                        try {
                            f broadcastItem = remove.getBroadcastItem(i);
                            if (broadcastItem != null) {
                                if ("onAdShow".equals(str2)) {
                                    broadcastItem.d();
                                } else if ("onAdClose".equals(str2)) {
                                    broadcastItem.p();
                                } else if ("onVideoComplete".equals(str2)) {
                                    broadcastItem.s();
                                } else if ("onSkippedVideo".equals(str2)) {
                                    broadcastItem.iw();
                                } else if ("onAdVideoBarClick".equals(str2)) {
                                    broadcastItem.ox();
                                } else if ("recycleRes".equals(str2)) {
                                    broadcastItem.dq();
                                }
                            }
                        } catch (Throwable th) {
                            ig.d("MultiProcess", "fullScreen2 method " + str2 + " throws Exception :", th);
                        }
                    }
                    remove.finishBroadcast();
                    if ("recycleRes".equals(str2)) {
                        remove.kill();
                    }
                }
            }
        } catch (Throwable th2) {
            ig.d("MultiProcess", "fullScreen1 method " + str2 + " throws Exception :", th2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.multipro.aidl.dq.dq, com.bytedance.sdk.openadsdk.core.fw
    public synchronized void dq(String str, f fVar) throws RemoteException {
        RemoteCallbackList<f> remoteCallbackList = new RemoteCallbackList<>();
        remoteCallbackList.register(fVar);
        dq.put(str, remoteCallbackList);
    }

    @Override // com.bytedance.sdk.openadsdk.core.multipro.aidl.dq.dq, com.bytedance.sdk.openadsdk.core.fw
    public void dq(String str, String str2) throws RemoteException {
        ox(str, str2);
    }
}
