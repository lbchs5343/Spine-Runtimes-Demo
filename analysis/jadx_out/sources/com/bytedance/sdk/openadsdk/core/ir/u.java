package com.bytedance.sdk.openadsdk.core.ir;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.Reader;
import java.util.Map;

/* loaded from: classes3.dex */
public class u {
    private static String dq;

    public static String d() {
        if (TextUtils.isEmpty(dq)) {
            dq = new String(Base64.decode("ZGV2aWNlX2lk", 0));
        }
        return dq;
    }

    public static String d(String str) {
        try {
            if (!dq()) {
                return str;
            }
            String er = com.bytedance.sdk.openadsdk.core.no.ia().er();
            return TextUtils.isEmpty(er) ? str : Uri.parse(str).buildUpon().appendQueryParameter(d(), er).appendQueryParameter("aid", "5001121").toString();
        } catch (Throwable unused) {
            return str;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0070 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0069 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v8, types: [java.io.FileReader, java.io.Reader] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String dq(String str) {
        ?? r0;
        BufferedReader bufferedReader;
        Exception e2;
        Reader reader;
        String str2 = "data/data/com.union_test.toutiao/";
        StringBuilder sb = new StringBuilder();
        Reader reader2 = null;
        try {
            try {
                File file = new File("data/data/com.union_test.toutiao/" + ((String) str));
                if (!file.exists()) {
                    return null;
                }
                str = new FileReader(file);
                try {
                    bufferedReader = new BufferedReader(str);
                    while (true) {
                        try {
                            String readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                break;
                            }
                            sb.append(readLine);
                        } catch (Exception e3) {
                            e2 = e3;
                            reader = str;
                            e2.printStackTrace();
                            if (reader != null) {
                                try {
                                    reader.close();
                                } catch (Throwable unused) {
                                }
                            }
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Throwable unused2) {
                                }
                            }
                            return sb.toString();
                        }
                    }
                    String sb2 = sb.toString();
                    try {
                        str.close();
                    } catch (Throwable unused3) {
                    }
                    try {
                        bufferedReader.close();
                    } catch (Throwable unused4) {
                    }
                    return sb2;
                } catch (Exception e4) {
                    e2 = e4;
                    bufferedReader = null;
                    reader = str;
                } catch (Throwable th) {
                    th = th;
                    str2 = null;
                    reader2 = str;
                    r0 = str2;
                    if (reader2 != null) {
                    }
                    if (r0 != 0) {
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e5) {
            bufferedReader = null;
            e2 = e5;
            reader = null;
        } catch (Throwable th3) {
            th = th3;
            r0 = 0;
            if (reader2 != null) {
                try {
                    reader2.close();
                } catch (Throwable unused5) {
                }
            }
            if (r0 != 0) {
                throw th;
            }
            try {
                r0.close();
                throw th;
            } catch (Throwable unused6) {
                throw th;
            }
        }
    }

    public static String dq(String str, String str2) {
        return str.contains("https://api-access.pangolin-sdk-toutiao.com") ? str.replace("https://api-access.pangolin-sdk-toutiao.com", str2) : str;
    }

    public static void dq(Map<String, String> map) {
        if (dq()) {
            map.put("x-app-id", "5001121");
            String er = com.bytedance.sdk.openadsdk.core.no.ia().er();
            if (TextUtils.isEmpty(er)) {
                return;
            }
            map.put("x-device-id", er);
        }
    }

    public static boolean dq() {
        if (com.bytedance.sdk.component.utils.ig.ox()) {
            return com.bytedance.sdk.openadsdk.core.no.ia().c();
        }
        return false;
    }
}
