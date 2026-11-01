package com.bytedance.sdk.openadsdk.core.multipro.aidl.dq;

import android.os.Bundle;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.gh;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.r.ob;
import g.awf;
import java.util.Map;

/* loaded from: classes3.dex */
public class mn extends dq {

    /* renamed from: d, reason: collision with root package name */
    private static volatile mn f3191d;
    private static Map<String, RemoteCallbackList<gh>> dq = awf.ab();

    public static mn d() {
        if (f3191d == null) {
            synchronized (mn.class) {
                try {
                    if (f3191d == null) {
                        f3191d = new mn();
                    }
                } finally {
                }
            }
        }
        return f3191d;
    }

    private void d(gh ghVar, Bundle bundle) throws RemoteException {
        boolean z = bundle.getBoolean("callback_extra_key_reward_valid");
        int i = bundle.getInt("callback_extra_key_reward_type");
        ghVar.dq(z, i, c.dq(i, bundle));
    }

    private void dq(gh ghVar, Bundle bundle) throws RemoteException {
        boolean z = bundle.getBoolean("callback_extra_key_reward_valid");
        int i = bundle.getInt("callback_extra_key_reward_amount");
        String string = bundle.getString("callback_extra_key_reward_name");
        int i2 = bundle.getInt("callback_extra_key_error_code");
        String string2 = bundle.getString("callback_extra_key_error_msg");
        ghVar.dq(z, i, string != null ? string : "", i2, string2 != null ? string2 : "");
    }

    private synchronized void ox(String str, String str2, Bundle bundle) {
        RemoteCallbackList<gh> remoteCallbackList;
        RemoteCallbackList<gh> remoteCallbackList2;
        try {
            if (dq != null) {
                if ("recycleRes".equals(str2)) {
                    remoteCallbackList = dq.remove(str);
                    remoteCallbackList2 = dq.remove(ob.dq(str));
                } else {
                    remoteCallbackList = dq.get(str);
                    remoteCallbackList2 = null;
                }
                if (remoteCallbackList != null) {
                    int beginBroadcast = remoteCallbackList.beginBroadcast();
                    for (int i = 0; i < beginBroadcast; i++) {
                        try {
                            gh broadcastItem = remoteCallbackList.getBroadcastItem(i);
                            if (broadcastItem != null) {
                                if ("onAdShow".equals(str2)) {
                                    broadcastItem.d();
                                } else if ("onAdClose".equals(str2)) {
                                    broadcastItem.p();
                                } else if ("onVideoComplete".equals(str2)) {
                                    broadcastItem.s();
                                } else if ("onVideoError".equals(str2)) {
                                    broadcastItem.iw();
                                } else if ("onAdVideoBarClick".equals(str2)) {
                                    broadcastItem.ox();
                                } else if ("onRewardVerify".equals(str2)) {
                                    dq(broadcastItem, bundle);
                                } else if ("onRewardArrived".equals(str2)) {
                                    d(broadcastItem, bundle);
                                } else if ("onSkippedVideo".equals(str2)) {
                                    broadcastItem.mn();
                                } else if ("recycleRes".equals(str2)) {
                                    broadcastItem.dq();
                                }
                            }
                        } catch (Throwable th) {
                            ig.d("MultiProcess", "reward1 '" + str2 + "'  throws Exception :", th);
                        }
                    }
                    remoteCallbackList.finishBroadcast();
                    if ("recycleRes".equals(str2)) {
                        remoteCallbackList.kill();
                    }
                }
                if (remoteCallbackList2 != null) {
                    int beginBroadcast2 = remoteCallbackList2.beginBroadcast();
                    for (int i2 = 0; i2 < beginBroadcast2; i2++) {
                        try {
                            gh broadcastItem2 = remoteCallbackList2.getBroadcastItem(i2);
                            if (broadcastItem2 != null && "recycleRes".equals(str2)) {
                                broadcastItem2.dq();
                            }
                        } catch (Throwable unused) {
                        }
                    }
                    remoteCallbackList2.finishBroadcast();
                    if ("recycleRes".equals(str2)) {
                        remoteCallbackList2.kill();
                    }
                }
            }
        } catch (Throwable th2) {
            ig.d("MultiProcess", "reward2 '" + str2 + "'  throws Exception :", th2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.multipro.aidl.dq.dq, com.bytedance.sdk.openadsdk.core.fw
    public synchronized void dq(String str, gh ghVar) throws RemoteException {
        RemoteCallbackList<gh> remoteCallbackList = new RemoteCallbackList<>();
        remoteCallbackList.register(ghVar);
        dq.put(str, remoteCallbackList);
    }

    @Override // com.bytedance.sdk.openadsdk.core.multipro.aidl.dq.dq, com.bytedance.sdk.openadsdk.core.fw
    public void dq(String str, String str2, Bundle bundle) throws RemoteException {
        ox(str, str2, bundle);
    }
}
