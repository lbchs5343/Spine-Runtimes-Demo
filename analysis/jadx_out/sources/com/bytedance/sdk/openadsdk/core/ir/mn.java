package com.bytedance.sdk.openadsdk.core.ir;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.core.fw;
import g.awf;
import java.util.Map;

/* loaded from: classes3.dex */
public class mn {

    /* renamed from: d, reason: collision with root package name */
    private static com.bytedance.sdk.openadsdk.core.fw f3063d;
    private static final Map<String, dq> dq = awf.ab();

    public interface dq {
        void dq();

        void dq(String str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static com.bytedance.sdk.openadsdk.core.fw d() {
        if (f3063d == null) {
            f3063d = fw.dq.dq(com.bytedance.sdk.openadsdk.core.multipro.aidl.dq.dq(com.bytedance.sdk.openadsdk.core.wp.getContext()).dq(4));
        }
        return f3063d;
    }

    private static dq d(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return dq.remove(str);
    }

    public static void dq(final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
            com.bytedance.sdk.component.o.mn.ox().execute(new com.bytedance.sdk.component.o.kk("handleYes", 5) { // from class: com.bytedance.sdk.openadsdk.core.ir.mn.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        mn.d().d(str, (String) null);
                    } catch (Throwable unused) {
                    }
                }
            });
            return;
        }
        dq d2 = d(str);
        if (d2 == null) {
            return;
        }
        d2.dq();
    }

    private static void dq(final String str, final dq dqVar) {
        if (TextUtils.isEmpty(str) || dqVar == null) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
            com.bytedance.sdk.component.o.mn.d(new com.bytedance.sdk.component.o.kk("addListener") { // from class: com.bytedance.sdk.openadsdk.core.ir.mn.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        com.bytedance.sdk.component.utils.ig.p("MultiProcess", "getListenerManager().registerPermissionListener...");
                        mn.d().dq(str, new com.bytedance.sdk.openadsdk.core.multipro.aidl.d.d(dqVar));
                    } catch (Throwable th) {
                        th.printStackTrace();
                        com.bytedance.sdk.component.utils.ig.p("MultiProcess", th.toString());
                    }
                }
            }, 5);
        } else {
            dq.put(str, dqVar);
        }
    }

    public static void dq(final String str, final String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
            com.bytedance.sdk.component.o.mn.ox().execute(new com.bytedance.sdk.component.o.kk("handleNo", 5) { // from class: com.bytedance.sdk.openadsdk.core.ir.mn.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        mn.d().d(str, str2);
                    } catch (Throwable unused) {
                    }
                }
            });
            return;
        }
        dq d2 = d(str);
        if (d2 == null) {
            return;
        }
        d2.dq(str2);
    }

    public static void dq(String str, String[] strArr, dq dqVar) {
        if (TextUtils.isEmpty(str) || strArr == null || strArr.length <= 0) {
            return;
        }
        dq(str, dqVar);
        TTDelegateActivity.dq(str, strArr);
    }
}
