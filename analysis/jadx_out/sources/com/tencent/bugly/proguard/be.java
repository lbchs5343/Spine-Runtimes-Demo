package com.tencent.bugly.proguard;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfigUserInfoForSegment;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class be {

    /* renamed from: a, reason: collision with root package name */
    private static List<File> f9678a = new ArrayList();

    /* JADX WARN: Type inference failed for: r7v3, types: [boolean] */
    public static CrashDetailBean a(Context context, String str, NativeExceptionHandler nativeExceptionHandler) {
        BufferedInputStream bufferedInputStream;
        String str2;
        String a2;
        BufferedInputStream bufferedInputStream2 = null;
        if (context == null || str == null || nativeExceptionHandler == null) {
            al.e("get eup record file args error", new Object[0]);
            return null;
        }
        File file = new File(str, "rqd_record.eup");
        if (file.exists()) {
            ?? canRead = file.canRead();
            try {
                if (canRead != 0) {
                    try {
                        bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                        try {
                            String a3 = a(bufferedInputStream);
                            if (a3 != null && a3.equals("NATIVE_RQD_REPORT")) {
                                HashMap hashMap = new HashMap();
                                loop0: while (true) {
                                    str2 = null;
                                    while (true) {
                                        a2 = a(bufferedInputStream);
                                        if (a2 == null) {
                                            break loop0;
                                        }
                                        if (str2 == null) {
                                            str2 = a2;
                                        }
                                    }
                                    hashMap.put(str2, a2);
                                }
                                if (str2 != null) {
                                    al.e("record not pair! drop! %s", str2);
                                    try {
                                        bufferedInputStream.close();
                                    } catch (IOException e2) {
                                        e2.printStackTrace();
                                    }
                                    return null;
                                }
                                CrashDetailBean a4 = a(context, hashMap, nativeExceptionHandler);
                                try {
                                    bufferedInputStream.close();
                                    return a4;
                                } catch (IOException e3) {
                                    e3.printStackTrace();
                                    return a4;
                                }
                            }
                            al.e("record read fail! %s", a3);
                            try {
                                bufferedInputStream.close();
                            } catch (IOException e4) {
                                e4.printStackTrace();
                            }
                            return null;
                        } catch (IOException e5) {
                            e = e5;
                            e.printStackTrace();
                            if (bufferedInputStream != null) {
                                try {
                                    bufferedInputStream.close();
                                } catch (IOException e6) {
                                    e6.printStackTrace();
                                }
                            }
                            return null;
                        }
                    } catch (IOException e7) {
                        e = e7;
                        bufferedInputStream = null;
                    } catch (Throwable th) {
                        th = th;
                        if (bufferedInputStream2 != null) {
                            try {
                                bufferedInputStream2.close();
                            } catch (IOException e8) {
                                e8.printStackTrace();
                            }
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedInputStream2 = canRead;
            }
        }
        return null;
    }

    private static CrashDetailBean a(Context context, Map<String, String> map, NativeExceptionHandler nativeExceptionHandler) {
        boolean z;
        if (aa.a(context) == null) {
            al.e("abnormal com info not created", new Object[0]);
        } else {
            String str = map.get("intStateStr");
            if (str != null && str.trim().length() > 0) {
                Map<String, Integer> d2 = d(map.get("intStateStr"));
                if (d2 == null) {
                    al.e("parse intSateMap fail", Integer.valueOf(map.size()));
                    return null;
                }
                try {
                    d2.get("sino").getClass();
                    d2.get("sud").getClass();
                    String str2 = map.get("soVersion");
                    if (TextUtils.isEmpty(str2)) {
                        al.e("error format at version", new Object[0]);
                        return null;
                    }
                    String str3 = (String) a(map, "codeMsg", MediationConfigUserInfoForSegment.GENDER_UNKNOWN);
                    String str4 = (String) a(map, "signalName", MediationConfigUserInfoForSegment.GENDER_UNKNOWN);
                    map.get("errnoMsg");
                    String str5 = (String) a(map, "stack", MediationConfigUserInfoForSegment.GENDER_UNKNOWN);
                    String str6 = map.get("jstack");
                    if (str6 != null) {
                        str5 = str5 + "java:\n" + str6;
                    }
                    Integer num = d2.get("sico");
                    if (num != null && num.intValue() > 0) {
                        str4 = str4 + "(" + str3 + ")";
                        str3 = "KERNEL";
                    }
                    String str7 = str3;
                    String str8 = str4;
                    String str9 = map.get("nativeLog");
                    byte[] a2 = (str9 == null || str9.isEmpty()) ? null : ap.a(str9, "BuglyNativeLog.txt");
                    String str10 = (String) a(map, "sendingProcess", MediationConfigUserInfoForSegment.GENDER_UNKNOWN);
                    Integer num2 = d2.get("spd");
                    if (num2 != null) {
                        str10 = str10 + "(" + num2 + ")";
                    }
                    String str11 = str10;
                    String str12 = (String) a(map, "threadName", MediationConfigUserInfoForSegment.GENDER_UNKNOWN);
                    Integer num3 = d2.get("et");
                    if (num3 != null) {
                        str12 = str12 + "(" + num3 + ")";
                    }
                    String str13 = str12;
                    String str14 = (String) a(map, "processName", MediationConfigUserInfoForSegment.GENDER_UNKNOWN);
                    Integer num4 = d2.get("ep");
                    if (num4 != null) {
                        str14 = str14 + "(" + num4 + ")";
                    }
                    CrashDetailBean packageCrashDatas = nativeExceptionHandler.packageCrashDatas(str14, str13, (d2.get("ets").intValue() * 1000) + (d2.get("etms").intValue() / 1000), str8, (String) a(map, "errorAddr", MediationConfigUserInfoForSegment.GENDER_UNKNOWN), a(str5), str7, str11, (String) a(map, "tombPath", MediationConfigUserInfoForSegment.GENDER_UNKNOWN), map.get("sysLogPath"), map.get("jniLogPath"), str2, a2, a(map), false, false);
                    if (packageCrashDatas != null) {
                        String str15 = (String) a(map, "userId", packageCrashDatas.m);
                        packageCrashDatas.m = str15;
                        al.c("[Native record info] userId: %s", str15);
                        String str16 = (String) a(map, "sysLog", packageCrashDatas.w);
                        packageCrashDatas.w = str16;
                        String str17 = (String) a(map, "appVersion", str16);
                        packageCrashDatas.f9509f = str17;
                        al.c("[Native record info] appVersion: %s", str17);
                        String str18 = map.get("isAppForeground");
                        if (str18 != null) {
                            al.c("[Native record info] isAppForeground: %s", str18);
                            z = str18.equalsIgnoreCase("true");
                        } else {
                            z = false;
                        }
                        packageCrashDatas.R = z;
                        packageCrashDatas.Q = b(map);
                        packageCrashDatas.z = null;
                        packageCrashDatas.k = true;
                    }
                    return packageCrashDatas;
                } catch (Throwable th) {
                    al.e("error format", new Object[0]);
                    th.printStackTrace();
                    return null;
                }
            }
            al.e("no intStateStr", new Object[0]);
        }
        return null;
    }

    private static <KeyT, ValueT> ValueT a(Map<KeyT, ValueT> map, KeyT keyt, ValueT valuet) {
        try {
            ValueT valuet2 = map.get(keyt);
            return valuet2 != null ? valuet2 : valuet;
        } catch (Exception e2) {
            al.a(e2);
            return valuet;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0026, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0032, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x002f, code lost:
    
        if (r1 == null) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String a(BufferedInputStream bufferedInputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream(1024);
            while (true) {
                try {
                    int read = bufferedInputStream.read();
                    if (read == -1) {
                        break;
                    }
                    if (read == 0) {
                        String str = new String(byteArrayOutputStream.toByteArray(), "UTf-8");
                        byteArrayOutputStream.close();
                        return str;
                    }
                    byteArrayOutputStream.write(read);
                } catch (Throwable th) {
                    th = th;
                    try {
                        al.a(th);
                    } catch (Throwable th2) {
                        if (byteArrayOutputStream != null) {
                            byteArrayOutputStream.close();
                        }
                        throw th2;
                    }
                }
            }
        } catch (Throwable th3) {
            th = th3;
            byteArrayOutputStream = null;
        }
    }

    public static String a(String str) {
        if (str == null) {
            return "";
        }
        String[] split = str.split("\n");
        if (split == null || split.length == 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        for (String str2 : split) {
            if (!str2.contains("java.lang.Thread.getStackTrace(")) {
                sb.append(str2);
                sb.append("\n");
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v7 */
    public static String a(String str, int i, String str2, boolean z) {
        BufferedReader bufferedReader = null;
        if (str != null && i > 0) {
            File file = new File(str);
            if (file.exists() && file.canRead()) {
                al.a("Read system log from native record file(length: %s bytes): %s", Long.valueOf(file.length()), file.getAbsolutePath());
                f9678a.add(file);
                al.c("Add this record file to list for cleaning lastly.", new Object[0]);
                if (str2 == null) {
                    return ap.a(new File(str), i, z);
                }
                String sb = new StringBuilder();
                try {
                    try {
                        BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream(file), "utf-8"));
                        while (true) {
                            try {
                                String readLine = bufferedReader2.readLine();
                                if (readLine == null) {
                                    break;
                                }
                                if (Pattern.compile(str2 + "[ ]*:").matcher(readLine).find()) {
                                    sb.append(readLine);
                                    sb.append("\n");
                                }
                                if (i > 0 && sb.length() > i) {
                                    if (z) {
                                        sb.delete(i, sb.length());
                                        break;
                                    }
                                    sb.delete(0, sb.length() - i);
                                }
                            } catch (Throwable th) {
                                th = th;
                                bufferedReader = bufferedReader2;
                                try {
                                    al.a(th);
                                    sb.append("\n[error:" + th.toString() + "]");
                                    sb = sb.toString();
                                    if (bufferedReader != null) {
                                        bufferedReader.close();
                                        sb = sb;
                                    }
                                    return sb;
                                } catch (Throwable th2) {
                                    if (bufferedReader != null) {
                                        try {
                                            bufferedReader.close();
                                        } catch (Exception e2) {
                                            al.a(e2);
                                        }
                                    }
                                    throw th2;
                                }
                            }
                        }
                        String sb2 = sb.toString();
                        bufferedReader2.close();
                        sb = sb2;
                    } catch (Exception e3) {
                        al.a(e3);
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
                return sb;
            }
        }
        return null;
    }

    public static String a(String str, String str2) {
        if (str == null || str2 == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        String b2 = b(str, str2);
        if (b2 != null && !b2.isEmpty()) {
            sb.append("Register infos:\n");
            sb.append(b2);
        }
        String c2 = c(str, str2);
        if (c2 != null && !c2.isEmpty()) {
            if (sb.length() > 0) {
                sb.append("\n");
            }
            sb.append("System SO infos:\n");
            sb.append(c2);
        }
        return sb.toString();
    }

    private static Map<String, String> a(Map<String, String> map) {
        String str = map.get("key-value");
        if (str == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (String str2 : str.split("\n")) {
            String[] split = str2.split("=");
            if (split.length == 2) {
                hashMap.put(split[0], split[1]);
            }
        }
        return hashMap;
    }

    public static void a(boolean z, String str) {
        if (str != null) {
            f9678a.add(new File(str, "rqd_record.eup"));
            f9678a.add(new File(str, "reg_record.txt"));
            f9678a.add(new File(str, "map_record.txt"));
            f9678a.add(new File(str, "backup_record.txt"));
            if (z) {
                c(str);
            }
        }
        List<File> list = f9678a;
        if (list == null || list.size() <= 0) {
            return;
        }
        for (File file : f9678a) {
            if (file.exists() && file.canWrite()) {
                file.delete();
                al.c("Delete record file %s", file.getAbsoluteFile());
            }
        }
    }

    private static long b(Map<String, String> map) {
        String str = map.get("launchTime");
        if (str == null) {
            return -1L;
        }
        al.c("[Native record info] launchTime: %s", str);
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException e2) {
            if (al.a(e2)) {
                return -1L;
            }
            e2.printStackTrace();
            return -1L;
        }
    }

    public static String b(String str) {
        if (str == null) {
            return null;
        }
        File file = new File(str, "backup_record.txt");
        if (file.exists()) {
            return file.getAbsolutePath();
        }
        return null;
    }

    private static String b(String str, String str2) {
        BufferedReader b2 = ap.b(str, "reg_record.txt");
        if (b2 == null) {
            return null;
        }
        try {
            StringBuilder sb = new StringBuilder();
            String readLine = b2.readLine();
            if (readLine != null && readLine.startsWith(str2)) {
                int i = 18;
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    String readLine2 = b2.readLine();
                    if (readLine2 == null) {
                        sb.append("\n");
                        String sb2 = sb.toString();
                        try {
                            return sb2;
                        } catch (Exception e2) {
                            return sb2;
                        }
                    }
                    if (i2 % 4 == 0) {
                        if (i2 > 0) {
                            sb.append("\n");
                        }
                        sb.append("  ");
                    } else {
                        if (readLine2.length() > 16) {
                            i = 28;
                        }
                        sb.append("                ".substring(0, i - i3));
                    }
                    i3 = readLine2.length();
                    sb.append(readLine2);
                    i2++;
                }
            }
            try {
                b2.close();
            } catch (Exception e3) {
                al.a(e3);
            }
            return null;
        } catch (Throwable th) {
            try {
                al.a(th);
                try {
                    b2.close();
                } catch (Exception e4) {
                    al.a(e4);
                }
                return null;
            } finally {
                try {
                    b2.close();
                } catch (Exception e22) {
                    al.a(e22);
                }
            }
        }
    }

    private static String c(String str, String str2) {
        BufferedReader b2 = ap.b(str, "map_record.txt");
        if (b2 == null) {
            return null;
        }
        try {
            StringBuilder sb = new StringBuilder();
            String readLine = b2.readLine();
            if (readLine != null && readLine.startsWith(str2)) {
                while (true) {
                    String readLine2 = b2.readLine();
                    if (readLine2 == null) {
                        String sb2 = sb.toString();
                        try {
                            return sb2;
                        } catch (Exception e2) {
                            return sb2;
                        }
                    }
                    sb.append("  ");
                    sb.append(readLine2);
                    sb.append("\n");
                }
            }
            try {
                b2.close();
            } catch (Exception e3) {
                al.a(e3);
            }
            return null;
        } catch (Throwable th) {
            try {
                al.a(th);
                try {
                    b2.close();
                } catch (Exception e4) {
                    al.a(e4);
                }
                return null;
            } finally {
                try {
                    b2.close();
                } catch (Exception e22) {
                    al.a(e22);
                }
            }
        }
    }

    public static void c(String str) {
        File[] listFiles;
        if (str == null) {
            return;
        }
        try {
            File file = new File(str);
            if (file.canRead() && file.isDirectory() && (listFiles = file.listFiles()) != null) {
                for (File file2 : listFiles) {
                    if (file2.canRead() && file2.canWrite() && file2.length() == 0) {
                        file2.delete();
                        al.c("Delete empty record file %s", file2.getAbsoluteFile());
                    }
                }
            }
        } catch (Throwable th) {
            al.a(th);
        }
    }

    private static Map<String, Integer> d(String str) {
        if (str == null) {
            return null;
        }
        try {
            HashMap hashMap = new HashMap();
            for (String str2 : str.split(",")) {
                String[] split = str2.split(":");
                if (split.length != 2) {
                    al.e("error format at %s", str2);
                    return null;
                }
                hashMap.put(split[0], Integer.valueOf(Integer.parseInt(split[1])));
            }
            return hashMap;
        } catch (Exception e2) {
            al.e("error format intStateStr %s", str);
            e2.printStackTrace();
            return null;
        }
    }
}
