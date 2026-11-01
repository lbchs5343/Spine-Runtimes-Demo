package com.tencent.bugly.crashreport.crash.anr;

import com.tencent.bugly.proguard.al;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class TraceFileHelper {

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public long f9511a;

        /* renamed from: b, reason: collision with root package name */
        public String f9512b;

        /* renamed from: c, reason: collision with root package name */
        public long f9513c;

        /* renamed from: d, reason: collision with root package name */
        public Map<String, String[]> f9514d;
    }

    public interface b {
        boolean a(long j);

        boolean a(long j, long j2, String str);

        boolean a(String str, int i, String str2, String str3);
    }

    private static String a(BufferedReader bufferedReader) throws IOException {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < 3; i++) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                return null;
            }
            stringBuffer.append(readLine.concat("\n"));
        }
        return stringBuffer.toString();
    }

    private static Object[] a(BufferedReader bufferedReader, Pattern... patternArr) throws IOException {
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                return null;
            }
            for (Pattern pattern : patternArr) {
                if (pattern.matcher(readLine).matches()) {
                    return new Object[]{pattern, readLine};
                }
            }
        }
    }

    private static String b(BufferedReader bufferedReader) throws IOException {
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null || readLine.trim().length() <= 0) {
                break;
            }
            stringBuffer.append(readLine.concat("\n"));
        }
        return stringBuffer.toString();
    }

    public static a readFirstDumpInfo(String str, boolean z) {
        if (str == null) {
            al.e("path:%s", str);
            return null;
        }
        a aVar = new a();
        readTraceFile(str, new com.tencent.bugly.crashreport.crash.anr.b(aVar, z));
        if (aVar.f9511a > 0 && aVar.f9513c > 0 && aVar.f9512b != null) {
            return aVar;
        }
        al.e("first dump error %s", aVar.f9511a + " " + aVar.f9513c + " " + aVar.f9512b);
        return null;
    }

    public static a readTargetDumpInfo(String str, String str2, boolean z) {
        if (str == null || str2 == null) {
            return null;
        }
        a aVar = new a();
        readTraceFile(str2, new com.tencent.bugly.crashreport.crash.anr.a(aVar, str, z));
        if (aVar.f9511a <= 0 || aVar.f9513c <= 0 || aVar.f9512b == null) {
            return null;
        }
        return aVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0152, code lost:
    
        if (r17.a(java.lang.Long.parseLong(r1[1].toString().split("\\s")[2])) != false) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0154, code lost:
    
        r10.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0157, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0158, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x015d, code lost:
    
        if (com.tencent.bugly.proguard.al.a(r0) != false) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void readTraceFile(String str, b bVar) {
        Throwable th;
        BufferedReader bufferedReader;
        if (str == null || bVar == null) {
            return;
        }
        File file = new File(str);
        if (!file.exists()) {
            return;
        }
        file.lastModified();
        file.length();
        BufferedReader bufferedReader2 = null;
        try {
            try {
                bufferedReader = new BufferedReader(new FileReader(file));
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
        try {
            Pattern compile = Pattern.compile("-{5}\\spid\\s\\d+\\sat\\s\\d+-\\d+-\\d+\\s\\d{2}:\\d{2}:\\d{2}\\s-{5}");
            Pattern compile2 = Pattern.compile("-{5}\\send\\s\\d+\\s-{5}");
            Pattern compile3 = Pattern.compile("Cmd\\sline:\\s(\\S+)");
            Pattern compile4 = Pattern.compile("\".+\"\\s(daemon\\s){0,1}prio=\\d+\\stid=\\d+\\s.*");
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);
            while (true) {
                Object[] a2 = a(bufferedReader, compile);
                if (a2 != null) {
                    Object[] a3 = a(bufferedReader, compile3);
                    if (a3 != null) {
                        String[] split = a2[1].toString().split("\\s");
                        long parseLong = Long.parseLong(split[2]);
                        long time = simpleDateFormat.parse(split[4] + " " + split[5]).getTime();
                        Matcher matcher = compile3.matcher(a3[1].toString());
                        matcher.find();
                        matcher.group(1);
                        if (bVar.a(parseLong, time, matcher.group(1))) {
                            while (true) {
                                Object[] a4 = a(bufferedReader, compile4, compile2);
                                if (a4 != null) {
                                    if (a4[0] != compile4) {
                                        break;
                                    }
                                    String obj = a4[1].toString();
                                    Matcher matcher2 = Pattern.compile("\".+\"").matcher(obj);
                                    matcher2.find();
                                    String group = matcher2.group();
                                    String substring = group.substring(1, group.length() - 1);
                                    obj.contains("NATIVE");
                                    Matcher matcher3 = Pattern.compile("tid=\\d+").matcher(obj);
                                    matcher3.find();
                                    String group2 = matcher3.group();
                                    bVar.a(substring, Integer.parseInt(group2.substring(group2.indexOf("=") + 1)), a(bufferedReader), b(bufferedReader));
                                } else {
                                    break;
                                }
                            }
                        } else {
                            try {
                                bufferedReader.close();
                                return;
                            } catch (IOException e3) {
                                e = e3;
                                if (al.a(e)) {
                                    return;
                                }
                            }
                        }
                    } else {
                        al.d("Failed to find process name.", new Object[0]);
                        try {
                            bufferedReader.close();
                            return;
                        } catch (IOException e4) {
                            e = e4;
                            if (al.a(e)) {
                                return;
                            }
                        }
                    }
                } else {
                    try {
                        bufferedReader.close();
                        return;
                    } catch (IOException e5) {
                        e = e5;
                        if (al.a(e)) {
                            return;
                        }
                    }
                }
                e.printStackTrace();
                return;
            }
        } catch (Exception e6) {
            e = e6;
            bufferedReader2 = bufferedReader;
            if (!al.a(e)) {
                e.printStackTrace();
            }
            al.d("trace open fail:%s : %s", e.getClass().getName(), e.getMessage());
            if (bufferedReader2 == null) {
                return;
            }
            try {
                bufferedReader2.close();
            } catch (IOException e7) {
                e = e7;
                if (al.a(e)) {
                }
            }
        } catch (Throwable th3) {
            th = th3;
            bufferedReader2 = bufferedReader;
            if (bufferedReader2 == null) {
                throw th;
            }
            try {
                bufferedReader2.close();
                throw th;
            } catch (IOException e8) {
                if (al.a(e8)) {
                    throw th;
                }
                e8.printStackTrace();
                throw th;
            }
        }
    }
}
