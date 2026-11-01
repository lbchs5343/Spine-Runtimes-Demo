package ms.bz.bd.c.Pgl;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileReader;
import java.util.HashMap;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class j1 {

    /* renamed from: d, reason: collision with root package name */
    public static final String f21162d = (String) pblk.a(16777217, 0, 0, "b96c36", new byte[]{67, 41, 74, 20, 9, 50, 114, 23, 117});

    /* renamed from: g, reason: collision with root package name */
    public static final String f21165g = (String) pblk.a(16777217, 0, 0, "892eef", new byte[]{1, 58, 83, 21, 77, 112, 41, 29});
    public static final String i = (String) pblk.a(16777217, 0, 0, "e0e466", new byte[]{82, 55, 23, 84, 28, 51, 99, 2});

    /* renamed from: b, reason: collision with root package name */
    public static final String f21160b = (String) pblk.a(16777217, 0, 0, "a6d2ff", new byte[]{96, 55});

    /* renamed from: c, reason: collision with root package name */
    public static final String f21161c = (String) pblk.a(16777217, 0, 0, "50593d", new byte[]{44, 37});

    /* renamed from: e, reason: collision with root package name */
    public static final String f21163e = (String) pblk.a(16777217, 0, 0, "ea330e", new byte[]{114, 119});
    public static final String j = (String) pblk.a(16777217, 0, 0, "7754a3", new byte[]{43, 52, 94});

    /* renamed from: a, reason: collision with root package name */
    public static final String f21159a = (String) pblk.a(16777217, 0, 0, "593c6f", new byte[]{41, 50, 78});

    /* renamed from: f, reason: collision with root package name */
    public static final String f21164f = (String) pblk.a(16777217, 0, 0, "36df38", new byte[]{33, 59, 5, 23});
    public static final FileFilter h = new pgla();

    public static class pgla implements FileFilter {
        @Override // java.io.FileFilter
        public final boolean accept(File file) {
            return Pattern.matches((String) pblk.a(16777217, 0, 0L, "8209eb", new byte[]{42, 32, 86, 118, 10, 56, 98, 46}), file.getName());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0071, code lost:
    
        if (r2 != null) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static HashMap k() {
        FileReader fileReader;
        HashMap hashMap = new HashMap();
        BufferedReader bufferedReader = null;
        try {
            fileReader = new FileReader((String) pblk.a(16777217, 0, 0L, "873321", new byte[]{102, 37, 82, 72, 14, 105, 56, 6, 119, 106, 39, 51, 79}));
            try {
                BufferedReader bufferedReader2 = new BufferedReader(fileReader);
                while (true) {
                    try {
                        String readLine = bufferedReader2.readLine();
                        if (readLine == null) {
                            try {
                                break;
                            } catch (Throwable unused) {
                            }
                        } else {
                            String[] split = readLine.split((String) pblk.a(16777217, 0, 0L, "fd3c93", new byte[]{45}), 2);
                            if (split.length >= 2) {
                                String trim = split[0].trim();
                                String trim2 = split[1].trim();
                                if (hashMap.get(trim) == null) {
                                    hashMap.put(trim, trim2);
                                }
                            }
                        }
                    } catch (Throwable unused2) {
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (Throwable unused3) {
                            }
                        }
                    }
                }
                bufferedReader2.close();
            } catch (Throwable unused4) {
            }
        } catch (Throwable unused5) {
            fileReader = null;
        }
        try {
            fileReader.close();
        } catch (Throwable unused6) {
        }
        return hashMap;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0045, code lost:
    
        if (r10 != null) goto L41;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String l(String str) {
        FileReader fileReader;
        BufferedReader bufferedReader;
        File file;
        String str2 = null;
        try {
            file = new File(str);
        } catch (Throwable unused) {
            fileReader = null;
            bufferedReader = null;
        }
        if (!file.exists()) {
            return (String) pblk.a(16777217, 0, 0L, "7b7c6c", new byte[]{118});
        }
        fileReader = new FileReader(file);
        try {
            bufferedReader = new BufferedReader(fileReader);
            try {
                str2 = bufferedReader.readLine();
                try {
                    bufferedReader.close();
                } catch (Throwable unused2) {
                }
            } catch (Throwable unused3) {
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable unused4) {
                    }
                }
            }
        } catch (Throwable unused5) {
            bufferedReader = null;
        }
        try {
            fileReader.close();
        } catch (Throwable unused6) {
        }
        return str2 == null ? (String) pblk.a(16777217, 0, 0L, "dde9e9", new byte[]{37}) : str2.trim();
    }

    public static String m(HashMap hashMap, String str) {
        String str2;
        try {
            str2 = (String) hashMap.get(str);
        } catch (Throwable unused) {
            str2 = null;
        }
        return str2 == null ? "" : str2.trim();
    }
}
