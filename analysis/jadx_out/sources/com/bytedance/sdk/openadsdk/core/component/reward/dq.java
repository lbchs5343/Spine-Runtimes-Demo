package com.bytedance.sdk.openadsdk.core.component.reward;

import android.os.Bundle;
import android.os.RemoteException;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.o.o;
import com.bytedance.sdk.openadsdk.core.fw;
import com.bytedance.sdk.openadsdk.core.multipro.aidl.d.p;
import com.bytedance.sdk.openadsdk.core.multipro.aidl.d.s;
import com.bytedance.sdk.openadsdk.core.wp;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;

/* loaded from: classes3.dex */
public class dq {
    protected static HashMap<Integer, fw> dq = new HashMap<>();

    /* renamed from: d, reason: collision with root package name */
    private static final ExecutorService f2572d = com.bytedance.sdk.component.o.ox.dq(new o("RewardFullCallback"));

    public static void dq(final int i, final String str, final String str2, final Bundle bundle) {
        f2572d.execute(new kk("executeMultiProcessCallback") { // from class: com.bytedance.sdk.openadsdk.core.component.reward.dq.1
            @Override // java.lang.Runnable
            public void run() {
                fw fwVar = dq.dq.get(Integer.valueOf(i));
                if (fwVar == null) {
                    fwVar = fw.dq.dq(com.bytedance.sdk.openadsdk.core.multipro.aidl.dq.dq(wp.getContext()).dq(i));
                    dq.dq.put(Integer.valueOf(i), fwVar);
                }
                if (fwVar == null) {
                    return;
                }
                try {
                    int i2 = i;
                    if (i2 == 0) {
                        fwVar.dq(str, str2, bundle);
                    } else if (i2 == 1) {
                        fwVar.dq(str, str2);
                    } else {
                        if (i2 != 5) {
                            return;
                        }
                        fwVar.d(str, str2, bundle);
                    }
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }
        });
    }

    public static void dq(final String str, final com.bytedance.sdk.openadsdk.k.dq.d.dq.dq dqVar) {
        f2572d.execute(new kk("registerMultiProcessListener") { // from class: com.bytedance.sdk.openadsdk.core.component.reward.dq.4
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.core.multipro.aidl.dq dq2 = com.bytedance.sdk.openadsdk.core.multipro.aidl.dq.dq(wp.getContext());
                if (dqVar != null) {
                    com.bytedance.sdk.openadsdk.core.multipro.aidl.d.ox oxVar = new com.bytedance.sdk.openadsdk.core.multipro.aidl.d.ox(dqVar);
                    fw dq3 = fw.dq.dq(dq2.dq(1));
                    if (dq3 != null) {
                        try {
                            dq3.dq(str, oxVar);
                        } catch (RemoteException e2) {
                            e2.printStackTrace();
                        }
                    }
                }
            }
        });
    }

    public static void dq(final String str, final com.bytedance.sdk.openadsdk.kx.dq.d.dq.d dVar) {
        f2572d.execute(new kk("registerMultiProcessListener") { // from class: com.bytedance.sdk.openadsdk.core.component.reward.dq.3
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.core.multipro.aidl.dq dq2 = com.bytedance.sdk.openadsdk.core.multipro.aidl.dq.dq(wp.getContext());
                if (dVar != null) {
                    p pVar = new p(dVar);
                    fw dq3 = fw.dq.dq(dq2.dq(5));
                    if (dq3 != null) {
                        try {
                            dq3.dq(str, pVar);
                        } catch (RemoteException e2) {
                            e2.printStackTrace();
                        }
                    }
                }
            }
        });
    }

    public static void dq(final String str, final com.bytedance.sdk.openadsdk.kx.dq.d.dq.dq dqVar) {
        f2572d.execute(new kk("registerMultiProcessListener") { // from class: com.bytedance.sdk.openadsdk.core.component.reward.dq.2
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.core.multipro.aidl.dq dq2 = com.bytedance.sdk.openadsdk.core.multipro.aidl.dq.dq(wp.getContext());
                if (dqVar != null) {
                    s sVar = new s(dqVar);
                    fw dq3 = fw.dq.dq(dq2.dq(0));
                    if (dq3 != null) {
                        try {
                            dq3.dq(str, sVar);
                        } catch (RemoteException e2) {
                            e2.printStackTrace();
                        }
                    }
                }
            }
        });
    }
}
