package com.bytedance.sdk.openadsdk.core.multipro.aidl.dq;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.core.q;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class ox extends dq {

    /* renamed from: d, reason: collision with root package name */
    private static volatile ox f3192d;
    public static HashMap<String, RemoteCallbackList<q>> dq = new HashMap<>();

    public static ox d() {
        if (f3192d == null) {
            synchronized (ox.class) {
                try {
                    if (f3192d == null) {
                        f3192d = new ox();
                    }
                } finally {
                }
            }
        }
        return f3192d;
    }

    @Override // com.bytedance.sdk.openadsdk.core.multipro.aidl.dq.dq, com.bytedance.sdk.openadsdk.core.fw
    public void dq(String str, int i) throws RemoteException {
        RemoteCallbackList<q> remove = dq.remove(str);
        if (remove == null) {
            return;
        }
        int beginBroadcast = remove.beginBroadcast();
        for (int i2 = 0; i2 < beginBroadcast; i2++) {
            q broadcastItem = remove.getBroadcastItem(i2);
            if (broadcastItem != null) {
                if (i == 1) {
                    broadcastItem.dq();
                } else if (i == 2) {
                    broadcastItem.d();
                } else if (i != 3) {
                    broadcastItem.ox();
                } else {
                    broadcastItem.ox();
                }
            }
        }
        remove.finishBroadcast();
        remove.kill();
    }

    @Override // com.bytedance.sdk.openadsdk.core.multipro.aidl.dq.dq, com.bytedance.sdk.openadsdk.core.fw
    public void dq(String str, q qVar) throws RemoteException {
        if (qVar == null) {
            return;
        }
        RemoteCallbackList<q> remoteCallbackList = new RemoteCallbackList<>();
        remoteCallbackList.register(qVar);
        dq.put(str, remoteCallbackList);
    }
}
