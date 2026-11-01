package com.bytedance.sdk.openadsdk.core.multipro;

import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import android.webkit.WebView;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.utils.fw;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.h.mn;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.nio.channels.FileLock;

/* loaded from: classes3.dex */
public class p {
    private static String dq() {
        try {
            Method declaredMethod = Class.class.getDeclaredMethod("forName", String.class);
            Method declaredMethod2 = Class.class.getDeclaredMethod("getDeclaredField", String.class);
            declaredMethod2.setAccessible(true);
            Class cls = (Class) declaredMethod.invoke(null, "android.webkit.WebViewFactory");
            return (String) ((Field) declaredMethod2.invoke(cls, "sDataDirectorySuffix")).get(cls);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void dq(final Context context) {
        if (context == null) {
            return;
        }
        com.bytedance.sdk.component.mn.ox.dq(context.getApplicationContext());
        try {
            if (Build.VERSION.SDK_INT >= 28) {
                if (fw.dq(context)) {
                    mn.dq(new kk("tt_webview_file_path") { // from class: com.bytedance.sdk.openadsdk.core.multipro.p.1
                        @Override // java.lang.Runnable
                        public void run() {
                            p.ox(context);
                        }
                    });
                    return;
                }
                String d2 = fw.d(context);
                try {
                    if (TextUtils.isEmpty(d2)) {
                        d2 = context.getPackageName() + Process.myPid();
                    }
                    WebView.setDataDirectorySuffix(d2);
                } catch (IllegalStateException unused) {
                    dq(d2);
                } catch (Exception unused2) {
                }
            }
        } catch (Throwable th) {
            ig.d(th.getMessage());
        }
    }

    private static void dq(File file, boolean z) {
        if (!z || file.exists()) {
            return;
        }
        try {
            file.createNewFile();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    private static void dq(String str) {
        try {
            Method declaredMethod = Class.class.getDeclaredMethod("forName", String.class);
            Method declaredMethod2 = Class.class.getDeclaredMethod("getDeclaredField", String.class);
            declaredMethod2.setAccessible(true);
            Class cls = (Class) declaredMethod.invoke(null, "android.webkit.WebViewFactory");
            Field field = (Field) declaredMethod2.invoke(cls, "sDataDirectorySuffix");
            field.setAccessible(true);
            if (TextUtils.isEmpty((String) field.get(cls))) {
                field.set(cls, str);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ox(Context context) {
        RandomAccessFile randomAccessFile;
        Throwable th;
        String dq = dq();
        File file = new File(com.bytedance.sdk.openadsdk.api.plugin.d.dq(context, TextUtils.isEmpty(dq) ? "webview" : "webview_".concat(String.valueOf(dq)), 0).getPath(), "webview_data.lock");
        ig.dq("TTMultiInitHelper", file.getAbsolutePath());
        if (file.exists()) {
            RandomAccessFile randomAccessFile2 = null;
            try {
                try {
                    randomAccessFile = new RandomAccessFile(file, "rw");
                } catch (Exception unused) {
                }
            } catch (Throwable th2) {
                randomAccessFile = randomAccessFile2;
                th = th2;
            }
            try {
                FileLock tryLock = randomAccessFile.getChannel().tryLock();
                if (tryLock != null) {
                    tryLock.close();
                } else {
                    dq(file, file.delete());
                }
                com.bytedance.sdk.component.iw.ox.ox.d.dq(randomAccessFile);
            } catch (Exception unused2) {
                randomAccessFile2 = randomAccessFile;
                dq(file, file.exists() ? file.delete() : false);
                com.bytedance.sdk.component.iw.ox.ox.d.dq(randomAccessFile2);
            } catch (Throwable th3) {
                th = th3;
                com.bytedance.sdk.component.iw.ox.ox.d.dq(randomAccessFile);
                throw th;
            }
        }
    }
}
