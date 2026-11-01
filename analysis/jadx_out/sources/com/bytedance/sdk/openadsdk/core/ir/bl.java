package com.bytedance.sdk.openadsdk.core.ir;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.hat;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Properties;

/* loaded from: classes3.dex */
public class bl {
    private String dq;

    private bl() {
        d();
    }

    private void d() {
        File dq;
        Context context = com.bytedance.sdk.openadsdk.core.wp.getContext();
        if (context == null) {
            return;
        }
        try {
            if ("mounted".equals(com.bytedance.sdk.openadsdk.h.ox.dq()) && (dq = com.bytedance.sdk.openadsdk.api.plugin.d.dq(context, "TTCache")) != null) {
                dq.mkdirs();
                this.dq = dq.getPath();
            }
            if (TextUtils.isEmpty(this.dq)) {
                File file = new File(com.bytedance.sdk.openadsdk.api.plugin.d.dq(context), "TTCache");
                file.mkdirs();
                this.dq = file.getPath();
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0118 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0111 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.Properties] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15, types: [java.io.FileOutputStream, java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.io.FileOutputStream, java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.util.Properties] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void d(Thread thread, Throwable th) {
        ?? r2;
        ?? r22;
        int i;
        boolean z;
        FileInputStream fileInputStream = null;
        try {
            if (TextUtils.isEmpty(this.dq)) {
                d();
            }
            if (TextUtils.isEmpty(this.dq)) {
                return;
            }
            File file = new File(this.dq, "tt_crash_count.properties");
            if (file.exists() && file.isFile() && file.canRead()) {
                ?? properties = new Properties();
                FileInputStream fileInputStream2 = new FileInputStream(file);
                try {
                    properties.load(fileInputStream2);
                    String property = properties.getProperty("crash_count", "0");
                    String property2 = properties.getProperty("crash_last_time", "0");
                    int intValue = Integer.valueOf(property).intValue();
                    long longValue = Long.valueOf(property2).longValue();
                    int i2 = 0;
                    if (System.currentTimeMillis() - longValue < 300000) {
                        i = intValue + 1;
                        z = false;
                    } else {
                        i = 1;
                        z = true;
                    }
                    boolean z2 = i >= 3;
                    if (!z2) {
                        i2 = i;
                    }
                    com.bytedance.sdk.component.utils.ig.p("TTCrashHandler", "==" + i2 + ", " + z2 + ", " + z);
                    if (z2) {
                        try {
                            file.delete();
                        } catch (Throwable unused) {
                        }
                    } else {
                        properties.setProperty("crash_count", String.valueOf(i2));
                        if (z) {
                            properties.setProperty("crash_last_time", String.valueOf(System.currentTimeMillis()));
                        }
                        r2 = new FileOutputStream(file);
                        try {
                            properties.store(r2, "tt_crash_info");
                            fileInputStream = r2;
                        } catch (Throwable th2) {
                            th = th2;
                            fileInputStream = fileInputStream2;
                            com.bytedance.sdk.component.utils.ig.d("TTCrashHandler", "crash count error", th);
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (Throwable unused2) {
                                }
                            }
                            if (r2 == 0) {
                                try {
                                    r2.close();
                                    return;
                                } catch (Throwable unused3) {
                                    return;
                                }
                            }
                            return;
                        }
                    }
                    if (z2) {
                        ox();
                    }
                    r22 = fileInputStream;
                    fileInputStream = fileInputStream2;
                } catch (Throwable th3) {
                    th = th3;
                    r2 = fileInputStream;
                }
            } else {
                ?? properties2 = new Properties();
                properties2.setProperty("crash_count", "1");
                properties2.setProperty("crash_last_time", String.valueOf(System.currentTimeMillis()));
                r2 = new FileOutputStream(file);
                try {
                    properties2.store(r2, "tt_crash_info");
                    com.bytedance.sdk.component.utils.ig.p("TTCrashHandler", "==first");
                    r22 = r2;
                } catch (Throwable th4) {
                    th = th4;
                    try {
                        com.bytedance.sdk.component.utils.ig.d("TTCrashHandler", "crash count error", th);
                        if (fileInputStream != null) {
                        }
                        if (r2 == 0) {
                        }
                    } finally {
                    }
                }
            }
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (Throwable unused4) {
                }
            }
            if (r22 != 0) {
                try {
                    r22.close();
                } catch (Throwable unused5) {
                }
            }
        } catch (Throwable th5) {
            th = th5;
            r2 = 0;
        }
    }

    public static bl dq() {
        return new bl();
    }

    private void ox() {
        try {
            com.bytedance.sdk.openadsdk.core.component.splash.dq.dq.dq().ox();
        } catch (Throwable unused) {
        }
        try {
            com.bytedance.sdk.openadsdk.core.component.reward.dq.dq.d.dq().d();
        } catch (Throwable unused2) {
        }
        try {
            com.bytedance.sdk.openadsdk.core.bl.s.d();
        } catch (Throwable unused3) {
        }
        try {
            com.bytedance.sdk.component.adexpress.dq.d.d.d();
            com.bytedance.sdk.openadsdk.core.ugeno.iw.dq.d().iw();
        } catch (Throwable unused4) {
        }
        try {
            Bridge h = com.bytedance.sdk.openadsdk.core.no.ia().h();
            if (h != null) {
                h.call(7, hat.f19147b, Void.class);
            }
        } catch (Throwable unused5) {
        }
        try {
            com.bytedance.sdk.openadsdk.core.ox.ox.dq().ia();
            com.bytedance.sdk.openadsdk.core.ox.p.dq().nh();
        } catch (Throwable unused6) {
        }
    }

    public void dq(Thread thread, Throwable th) {
        try {
            StringWriter stringWriter = new StringWriter();
            th.printStackTrace(new PrintWriter(stringWriter));
            String stringWriter2 = stringWriter.toString();
            r0 = stringWriter2 != null ? stringWriter2.contains(TTAdConstant.class.getPackage().getName()) : false;
            com.bytedance.sdk.openadsdk.core.iw.p.dq().dq(thread, th);
        } catch (Throwable unused) {
        }
        if (r0) {
            d(thread, th);
        }
    }
}
