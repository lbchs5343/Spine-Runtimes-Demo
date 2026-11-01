package com.bytedance.sdk.openadsdk.core.multipro.aidl.dq;

import android.os.Bundle;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.core.cd;
import g.awf;
import java.util.Map;

/* loaded from: classes3.dex */
public class iw extends dq {

    /* renamed from: d, reason: collision with root package name */
    private static volatile iw f3190d;
    private static final Map<String, RemoteCallbackList<cd>> dq = awf.ab();

    public static iw d() {
        if (f3190d == null) {
            synchronized (iw.class) {
                try {
                    if (f3190d == null) {
                        f3190d = new iw();
                    }
                } finally {
                }
            }
        }
        return f3190d;
    }

    private synchronized Bundle ox(String str, String str2, Bundle bundle) {
        Bundle bundle2;
        bundle2 = new Bundle();
        try {
            Map<String, RemoteCallbackList<cd>> map = dq;
            if (map != null) {
                RemoteCallbackList<cd> remove = "recycleRes".equals(str2) ? map.remove(str) : map.get(str);
                if (remove != null) {
                    int beginBroadcast = remove.beginBroadcast();
                    for (int i = 0; i < beginBroadcast; i++) {
                        try {
                            cd broadcastItem = remove.getBroadcastItem(i);
                            if (broadcastItem != null && "getPlayAgainCondition".equals(str2)) {
                                bundle2 = broadcastItem.dq(bundle.getInt("callback_extra_key_next_play_again_count"));
                            }
                        } catch (Throwable unused) {
                        }
                    }
                    remove.finishBroadcast();
                    if ("recycleRes".equals(str2)) {
                        remove.kill();
                    }
                }
            }
        } catch (Throwable unused2) {
        }
        return bundle2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.multipro.aidl.dq.dq, com.bytedance.sdk.openadsdk.core.fw
    public Bundle d(String str, String str2, Bundle bundle) throws RemoteException {
        return ox(str, str2, bundle);
    }

    @Override // com.bytedance.sdk.openadsdk.core.multipro.aidl.dq.dq, com.bytedance.sdk.openadsdk.core.fw
    public void dq(String str, cd cdVar) throws RemoteException {
        RemoteCallbackList<cd> remoteCallbackList = new RemoteCallbackList<>();
        remoteCallbackList.register(cdVar);
        dq.put(str, remoteCallbackList);
    }
}
