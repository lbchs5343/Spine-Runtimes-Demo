package com.bytedance.sdk.openadsdk.core;

import android.os.Build;
import android.os.Environment;
import android.os.FileObserver;
import java.io.File;

/* loaded from: classes3.dex */
public class n {
    private static d iw;
    public static String dq = Environment.DIRECTORY_DCIM;

    /* renamed from: d, reason: collision with root package name */
    private static String f3199d = Environment.DIRECTORY_PICTURES;
    private static String ox = "Screenshots";
    private static volatile boolean p = false;
    private static volatile boolean s = false;
    private static long mn = 0;

    public static final class d extends FileObserver {
        private dq dq;

        private d(File file, int i, dq dqVar) {
            super(file, i);
            this.dq = dqVar;
        }

        private d(String str, int i, dq dqVar) {
            super(str, i);
            this.dq = dqVar;
        }

        public static d dq(File file, dq dqVar) {
            if (file == null || dqVar == null) {
                return null;
            }
            return Build.VERSION.SDK_INT >= 29 ? new d(file, 256, dqVar) : new d(file.getAbsolutePath(), 256, dqVar);
        }

        @Override // android.os.FileObserver
        public void onEvent(int i, String str) {
            dq dqVar = this.dq;
            if (dqVar != null) {
                dqVar.dq(str);
            }
        }
    }

    public interface dq {
        void dq(String str);
    }

    public static void d() {
        int checkSelfPermission;
        s = true;
        if (p) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            checkSelfPermission = wp.getContext().checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE");
            if (checkSelfPermission != 0) {
                return;
            }
        }
        com.bytedance.sdk.component.o.mn.p(new com.bytedance.sdk.component.o.kk("sso") { // from class: com.bytedance.sdk.openadsdk.core.n.1
            @Override // java.lang.Runnable
            public void run() {
                n.s();
            }
        });
    }

    public static void dq() {
        if (!s || p) {
            return;
        }
        try {
            d();
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.ig.p("ScreenShotObserver", "权限检查出错时,异常代码：" + e2);
        }
    }

    private static File iw() {
        return null;
    }

    public static long ox() {
        return mn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void s() {
        File iw2;
        if (p || (iw2 = iw()) == null) {
            return;
        }
        iw = d.dq(iw2, new dq() { // from class: com.bytedance.sdk.openadsdk.core.n.2
            @Override // com.bytedance.sdk.openadsdk.core.n.dq
            public void dq(String str) {
                long unused = n.mn = System.currentTimeMillis();
            }
        });
        p = true;
        iw2.exists();
        d dVar = iw;
        if (dVar != null) {
            dVar.startWatching();
        }
    }
}
