package com.bytedance.sdk.openadsdk.core.multipro.aidl.dq;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.core.jy;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class p extends dq {

    /* renamed from: d, reason: collision with root package name */
    private static volatile p f3193d;
    private static HashMap<String, RemoteCallbackList<jy>> dq = new HashMap<>();

    public static p d() {
        if (f3193d == null) {
            synchronized (p.class) {
                try {
                    if (f3193d == null) {
                        f3193d = new p();
                    }
                } finally {
                }
            }
        }
        return f3193d;
    }

    @Override // com.bytedance.sdk.openadsdk.core.multipro.aidl.dq.dq, com.bytedance.sdk.openadsdk.core.fw
    public void d(String str, String str2) throws RemoteException {
        RemoteCallbackList<jy> remove = dq.remove(str);
        if (remove == null) {
            return;
        }
        int beginBroadcast = remove.beginBroadcast();
        for (int i = 0; i < beginBroadcast; i++) {
            jy broadcastItem = remove.getBroadcastItem(i);
            if (broadcastItem != null) {
                if (str2 == null) {
                    broadcastItem.dq();
                } else {
                    broadcastItem.dq(str2);
                }
            }
        }
        remove.finishBroadcast();
        remove.kill();
    }

    @Override // com.bytedance.sdk.openadsdk.core.multipro.aidl.dq.dq, com.bytedance.sdk.openadsdk.core.fw
    public void dq(String str, jy jyVar) throws RemoteException {
        if (jyVar == null) {
            return;
        }
        RemoteCallbackList<jy> remoteCallbackList = new RemoteCallbackList<>();
        remoteCallbackList.register(jyVar);
        dq.put(str, remoteCallbackList);
    }
}
