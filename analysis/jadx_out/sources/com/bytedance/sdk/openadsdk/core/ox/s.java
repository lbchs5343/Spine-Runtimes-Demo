package com.bytedance.sdk.openadsdk.core.ox;

import android.content.Context;
import com.bytedance.sdk.component.utils.ia;
import com.bytedance.sdk.openadsdk.core.ir.o;
import com.bytedance.sdk.openadsdk.core.op;
import java.io.File;
import java.io.FileFilter;

/* loaded from: classes3.dex */
public class s {
    public static void d() {
        ia.dq().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ox.s.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    com.bytedance.sdk.openadsdk.ia.d.dq().d(0.0d);
                    com.bytedance.sdk.openadsdk.core.q.ox.dq.dq().d();
                    s.unregisterReceiver();
                } catch (Throwable unused) {
                }
            }
        }, 20000L);
        com.bytedance.sdk.component.panglearmor.iw.dq();
    }

    public static boolean dq() {
        return false;
    }

    public static boolean dq(Context context) {
        File[] listFiles;
        File file = new File(com.bytedance.sdk.openadsdk.api.plugin.d.dq(context), "/pangle_p/com.byted.pangle");
        return (!file.exists() || (listFiles = file.listFiles(new FileFilter() { // from class: com.bytedance.sdk.openadsdk.core.ox.s.1
            @Override // java.io.FileFilter
            public boolean accept(File file2) {
                return file2 != null && file2.getName().matches("^version-(\\d+)$");
            }
        })) == null || listFiles.length == 0) ? false : true;
    }

    public static int ox() {
        return op.dq ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void unregisterReceiver() {
        o.s();
        o.ig();
    }
}
