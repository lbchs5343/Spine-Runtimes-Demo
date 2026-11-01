package com.bytedance.sdk.openadsdk.core.o;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import com.bytedance.sdk.openadsdk.core.gh.ig;
import com.bytedance.sdk.openadsdk.core.ir.mn;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.downloadnew.core.ITTPermissionCallback;

/* loaded from: classes3.dex */
public class kk {
    public static void dq(Activity activity, final String[] strArr, final ITTPermissionCallback iTTPermissionCallback) {
        if (strArr != null && strArr.length > 0) {
            int length = strArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if ("android.permission.WRITE_EXTERNAL_STORAGE".equalsIgnoreCase(strArr[i])) {
                    com.bytedance.sdk.openadsdk.f.d.ox.p no = no.ia().no();
                    if (no != null && iTTPermissionCallback != null && !no.s()) {
                        iTTPermissionCallback.onDenied("android.permission.WRITE_EXTERNAL_STORAGE");
                        return;
                    }
                } else {
                    i++;
                }
            }
        }
        if (Build.VERSION.SDK_INT >= 23 && com.bytedance.sdk.openadsdk.core.mn.dq.ox(activity) < 23) {
            if (iTTPermissionCallback != null) {
                iTTPermissionCallback.onGranted();
            }
        } else if (strArr == null || strArr.length <= 0) {
            if (iTTPermissionCallback != null) {
                iTTPermissionCallback.onGranted();
            }
        } else {
            long hashCode = activity.hashCode();
            for (String str : strArr) {
                hashCode += str.hashCode();
            }
            com.bytedance.sdk.openadsdk.core.ir.mn.dq(String.valueOf(hashCode), strArr, new mn.dq() { // from class: com.bytedance.sdk.openadsdk.core.o.kk.1
                @Override // com.bytedance.sdk.openadsdk.core.ir.mn.dq
                public void dq() {
                    ITTPermissionCallback iTTPermissionCallback2 = ITTPermissionCallback.this;
                    if (iTTPermissionCallback2 != null) {
                        iTTPermissionCallback2.onGranted();
                    }
                    ig.dq().dq(true, strArr);
                }

                @Override // com.bytedance.sdk.openadsdk.core.ir.mn.dq
                public void dq(String str2) {
                    ITTPermissionCallback iTTPermissionCallback2 = ITTPermissionCallback.this;
                    if (iTTPermissionCallback2 != null) {
                        iTTPermissionCallback2.onDenied(str2);
                    }
                    ig.dq().dq(false, new String[]{str2});
                }
            });
        }
    }

    public static boolean dq(Context context, String str) {
        com.bytedance.sdk.openadsdk.f.d.ox.p kk;
        if ("android.permission.WRITE_EXTERNAL_STORAGE".equalsIgnoreCase(str) && (kk = no.ia().kk()) != null && !kk.s()) {
            return false;
        }
        if (context == null) {
            context = wp.getContext();
        }
        return com.bytedance.sdk.openadsdk.core.k.s.dq().dq(context, str);
    }
}
