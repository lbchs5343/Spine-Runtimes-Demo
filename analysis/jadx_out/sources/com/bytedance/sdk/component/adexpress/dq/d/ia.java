package com.bytedance.sdk.component.adexpress.dq.d;

import com.bytedance.sdk.component.utils.ig;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ia {
    private static com.bytedance.sdk.component.adexpress.dq.ox.dq dq;

    public static synchronized com.bytedance.sdk.component.adexpress.dq.ox.dq d() {
        com.bytedance.sdk.component.adexpress.dq.ox.dq dqVar;
        synchronized (ia.class) {
            dqVar = dq;
        }
        return dqVar;
    }

    public static boolean d(com.bytedance.sdk.component.adexpress.dq.ox.dq dqVar) {
        return ox.ox(d(), dqVar);
    }

    public static void dq() {
        FileInputStream fileInputStream;
        Throwable th;
        FileInputStream fileInputStream2 = null;
        try {
            try {
                File file = new File(s.mn(), "temp_pkg_info.json");
                long length = file.length();
                Long valueOf = Long.valueOf(length);
                if (length > 0 && file.exists() && file.isFile()) {
                    byte[] bArr = new byte[valueOf.intValue()];
                    fileInputStream = new FileInputStream(file);
                    try {
                        fileInputStream.read(bArr);
                        com.bytedance.sdk.component.adexpress.dq.ox.dq dq2 = com.bytedance.sdk.component.adexpress.dq.ox.dq.dq(new JSONObject(new String(bArr, "utf-8")));
                        if (dq2 != null) {
                            dq = dq2;
                        }
                        fileInputStream2 = fileInputStream;
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            ig.d("Version", "version init error", th);
                            if (fileInputStream != null) {
                                fileInputStream.close();
                                return;
                            }
                            return;
                        } catch (Throwable th3) {
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException unused) {
                                }
                            }
                            throw th3;
                        }
                    }
                }
                if (fileInputStream2 != null) {
                    fileInputStream2.close();
                }
            } catch (IOException unused2) {
            }
        } catch (Throwable th4) {
            fileInputStream = null;
            th = th4;
        }
    }

    public static synchronized void dq(com.bytedance.sdk.component.adexpress.dq.ox.dq dqVar) {
        synchronized (ia.class) {
            if (dqVar != null) {
                if (dqVar.iw()) {
                    dq = dqVar;
                }
            }
        }
    }

    public static boolean dq(String str) {
        return ox.dq(d(), str);
    }

    public static void ox() {
        ox.dq(s.mn(), d(), "temp_pkg_info.json");
    }

    public static void p() {
        ox.d(s.mn(), d(), "temp_pkg_info.json");
        dq = null;
    }
}
