package g;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.bytedance.pangle.ZeusPluginEventCallback;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import j$.lang.Iterable;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.TreeSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class buj {

    /* renamed from: f, reason: collision with root package name */
    public static int f12224f;

    /* renamed from: g, reason: collision with root package name */
    public static volatile eie f12225g;
    public static ArrayList h;
    public static volatile fnq i;
    public static final String[] j = {"standard", "accelerate", "decelerate", "linear"};
    public static final int[] k = {R.attr.state_enabled, R.attr.state_pressed};
    public static fbc l;

    public static void aa(eob eobVar, Object[] objArr) {
        if (objArr == null) {
            return;
        }
        int length = objArr.length;
        int i2 = 0;
        while (i2 < length) {
            Object obj = objArr[i2];
            i2++;
            if (obj == null) {
                eobVar.b(i2);
            } else if (obj instanceof byte[]) {
                eobVar.c(i2, (byte[]) obj);
            } else if (obj instanceof Float) {
                eobVar.d(((Number) obj).floatValue(), i2);
            } else if (obj instanceof Double) {
                eobVar.d(((Number) obj).doubleValue(), i2);
            } else if (obj instanceof Long) {
                eobVar.f(i2, ((Number) obj).longValue());
            } else if (obj instanceof Integer) {
                eobVar.f(i2, ((Number) obj).intValue());
            } else if (obj instanceof Short) {
                eobVar.f(i2, ((Number) obj).shortValue());
            } else if (obj instanceof Byte) {
                eobVar.f(i2, ((Number) obj).byteValue());
            } else if (obj instanceof String) {
                eobVar.e(i2, (String) obj);
            } else {
                if (!(obj instanceof Boolean)) {
                    throw new IllegalArgumentException("Cannot bind " + obj + " at index " + i2 + " Supported types: Null, ByteArray, Float, Double, Long, Int, Short, Byte, String");
                }
                eobVar.f(i2, ((Boolean) obj).booleanValue() ? 1L : 0L);
            }
        }
    }

    public static void ab(String str) {
        String au = au(str);
        if (TextUtils.isEmpty(au)) {
            return;
        }
        File file = new File(au);
        if (file.exists() && file.isDirectory()) {
            return;
        }
        file.mkdirs();
    }

    public static ColorStateList ac(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return ColorStateList.valueOf(0);
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 22 && i2 <= 27 && Color.alpha(colorStateList.getDefaultColor()) == 0) {
            Color.alpha(colorStateList.getColorForState(k, 0));
        }
        return colorStateList;
    }

    public static int ad(deb debVar) {
        try {
            long g2 = debVar.g();
            String s = debVar.s(Long.MAX_VALUE);
            if (g2 >= 0 && g2 <= 2147483647L && s.length() <= 0) {
                return (int) g2;
            }
            throw new IOException("expected an int but was \"" + g2 + s + '\"');
        } catch (NumberFormatException e2) {
            throw new IOException(e2.getMessage());
        }
    }

    public static int ae(byte[] bArr, int i2) {
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    public static long af(int i2, byte[] bArr) {
        return ((bArr[i2 + 7] & 255) << 56) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 24) | ((bArr[i2 + 4] & 255) << 32) | ((bArr[i2 + 5] & 255) << 40) | ((bArr[i2 + 6] & 255) << 48);
    }

    public static boolean ag(String str, String str2, boolean z) {
        FileWriter fileWriter;
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        FileWriter fileWriter2 = null;
        try {
            try {
                ab(str);
                fileWriter = new FileWriter(str, z);
            } catch (IOException e2) {
                throw e2;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            fileWriter.write(str2);
            erl.ap(fileWriter);
            return true;
        } catch (IOException e3) {
            throw e3;
        } catch (Throwable th2) {
            th = th2;
            fileWriter2 = fileWriter;
            erl.ap(fileWriter2);
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v11, types: [java.lang.Object, java.util.Map] */
    /* JADX WARN: Type inference failed for: r10v9, types: [java.util.AbstractMap, java.util.LinkedHashMap] */
    public static final void ah(Context context) {
        dyq dyqVar;
        File file;
        bff.p(context, "context");
        File databasePath = context.getDatabasePath("androidx.work.workdb");
        bff.e(databasePath, "context.getDatabasePath(WORK_DATABASE_NAME)");
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 23 || !databasePath.exists()) {
            return;
        }
        cyl f2 = cyl.f();
        String[] strArr = bas.f11189a;
        f2.getClass();
        if (i2 >= 23) {
            File databasePath2 = context.getDatabasePath("androidx.work.workdb");
            bff.e(databasePath2, "context.getDatabasePath(WORK_DATABASE_NAME)");
            if (i2 < 23) {
                file = context.getDatabasePath("androidx.work.workdb");
                bff.e(file, "context.getDatabasePath(WORK_DATABASE_NAME)");
            } else {
                File noBackupFilesDir = context.getNoBackupFilesDir();
                bff.e(noBackupFilesDir, "context.noBackupFilesDir");
                file = new File(noBackupFilesDir, "androidx.work.workdb");
            }
            String[] strArr2 = bas.f11189a;
            int av = fhj.av(strArr2.length);
            if (av < 16) {
                av = 16;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(av);
            for (String str : strArr2) {
                ger gerVar = new ger(new File(databasePath2.getPath() + str), new File(file.getPath() + str));
                linkedHashMap.put(gerVar.d(), gerVar.a());
            }
            ger gerVar2 = new ger(databasePath2, file);
            if (linkedHashMap.isEmpty()) {
                ?? singletonMap = Collections.singletonMap(gerVar2.d(), gerVar2.a());
                bff.e(singletonMap, "singletonMap(...)");
                dyqVar = singletonMap;
            } else {
                ?? linkedHashMap2 = new LinkedHashMap(linkedHashMap);
                linkedHashMap2.put(gerVar2.d(), gerVar2.a());
                dyqVar = linkedHashMap2;
            }
        } else {
            dyqVar = dyq.f15095a;
        }
        for (Map.Entry entry : dyqVar.entrySet()) {
            File file2 = (File) entry.getKey();
            File file3 = (File) entry.getValue();
            if (file2.exists()) {
                if (file3.exists()) {
                    cyl f3 = cyl.f();
                    String[] strArr3 = bas.f11189a;
                    file3.toString();
                    f3.getClass();
                }
                if (file2.renameTo(file3)) {
                    file2.toString();
                    file3.toString();
                } else {
                    file2.toString();
                    file3.toString();
                }
                cyl f4 = cyl.f();
                String[] strArr4 = bas.f11189a;
                f4.getClass();
            }
        }
    }

    public static int ai(byte[] bArr, int i2, fks fksVar) {
        int i3 = i2 + 1;
        long j2 = bArr[i2];
        if (j2 >= 0) {
            fksVar.f16944b = j2;
            return i3;
        }
        int i4 = i2 + 2;
        byte b2 = bArr[i3];
        long j3 = (j2 & 127) | ((b2 & Byte.MAX_VALUE) << 7);
        int i5 = 7;
        while (b2 < 0) {
            int i6 = i4 + 1;
            i5 += 7;
            j3 |= (r10 & Byte.MAX_VALUE) << i5;
            b2 = bArr[i4];
            i4 = i6;
        }
        fksVar.f16944b = j3;
        return i4;
    }

    public static long aj(int i2, String str) {
        int m = m(str, 0, i2, false);
        Matcher matcher = ayz.f11091c.matcher(str);
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        int i7 = -1;
        int i8 = -1;
        while (m < i2) {
            int m2 = m(str, m + 1, i2, true);
            matcher.region(m, m2);
            if (i4 == -1 && matcher.usePattern(ayz.f11091c).matches()) {
                String group = matcher.group(1);
                bff.e(group, "matcher.group(1)");
                i4 = Integer.parseInt(group);
                String group2 = matcher.group(2);
                bff.e(group2, "matcher.group(2)");
                i7 = Integer.parseInt(group2);
                String group3 = matcher.group(3);
                bff.e(group3, "matcher.group(3)");
                i8 = Integer.parseInt(group3);
            } else if (i5 == -1 && matcher.usePattern(ayz.f11090b).matches()) {
                String group4 = matcher.group(1);
                bff.e(group4, "matcher.group(1)");
                i5 = Integer.parseInt(group4);
            } else {
                if (i6 == -1) {
                    Pattern pattern = ayz.f11089a;
                    if (matcher.usePattern(pattern).matches()) {
                        String group5 = matcher.group(1);
                        bff.e(group5, "matcher.group(1)");
                        Locale locale = Locale.US;
                        bff.e(locale, "US");
                        String lowerCase = group5.toLowerCase(locale);
                        bff.e(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                        String pattern2 = pattern.pattern();
                        bff.e(pattern2, "MONTH_PATTERN.pattern()");
                        i6 = dcv.bm(pattern2, lowerCase, 0, 6) / 4;
                    }
                }
                if (i3 == -1 && matcher.usePattern(ayz.f11092d).matches()) {
                    String group6 = matcher.group(1);
                    bff.e(group6, "matcher.group(1)");
                    i3 = Integer.parseInt(group6);
                }
            }
            m = m(str, m2 + 1, i2, false);
        }
        if (70 <= i3 && i3 < 100) {
            i3 += 1900;
        }
        if (i3 >= 0 && i3 < 70) {
            i3 += ZeusPluginEventCallback.EVENT_START_LOAD;
        }
        if (i3 < 1601) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (i6 == -1) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (1 > i5 || i5 >= 32) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (i4 < 0 || i4 >= 24) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (i7 < 0 || i7 >= 60) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (i8 < 0 || i8 >= 60) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar(erq.f16042b);
        gregorianCalendar.setLenient(false);
        gregorianCalendar.set(1, i3);
        gregorianCalendar.set(2, i6 - 1);
        gregorianCalendar.set(5, i5);
        gregorianCalendar.set(11, i4);
        gregorianCalendar.set(12, i7);
        gregorianCalendar.set(13, i8);
        gregorianCalendar.set(14, 0);
        return gregorianCalendar.getTimeInMillis();
    }

    public static fnq ak(Context context) {
        fnq fnqVar;
        Context applicationContext = context.getApplicationContext();
        fnq fnqVar2 = i;
        if (fnqVar2 != null) {
            return fnqVar2;
        }
        synchronized (fnq.class) {
            try {
                fnqVar = i;
                if (fnqVar == null) {
                    fnqVar = new fnq(0, new ccb(applicationContext));
                    i = fnqVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return fnqVar;
    }

    public static void al(ArrayList arrayList, String str) {
        FileWriter fileWriter;
        int i2;
        if (acw.u(arrayList)) {
            return;
        }
        FileWriter fileWriter2 = null;
        try {
            try {
                ab(str);
                i2 = 0;
                fileWriter = new FileWriter(str, false);
            } catch (Throwable th) {
                th = th;
            }
            try {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    String str2 = (String) it.next();
                    int i3 = i2 + 1;
                    if (i2 > 0) {
                        fileWriter.write("\r\n");
                    }
                    fileWriter.write(str2);
                    i2 = i3;
                }
                erl.ap(fileWriter);
            } catch (IOException e2) {
            } catch (Throwable th2) {
                th = th2;
                fileWriter2 = fileWriter;
                erl.ap(fileWriter2);
                throw th;
            }
        } catch (IOException e3) {
            throw e3;
        }
    }

    public static String am(int i2, String str) {
        char[] charArray;
        if (TextUtils.isEmpty(str) || (charArray = str.toCharArray()) == null || charArray.length == 0 || i2 < 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder(i2);
        Random random = new Random();
        for (int i3 = 0; i3 < i2; i3++) {
            sb.append(charArray[random.nextInt(charArray.length)]);
        }
        return sb.toString();
    }

    public static String an(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String str2 = File.separator;
        int lastIndexOf = str.lastIndexOf(str2);
        if (lastIndexOf == -1) {
            return "";
        }
        String substring = str.substring(0, lastIndexOf);
        int lastIndexOf2 = substring.lastIndexOf(str2);
        return lastIndexOf2 == -1 ? substring : substring.substring(lastIndexOf2 + 1, lastIndexOf);
    }

    public static long ao(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1L;
        }
        File file = new File(str);
        if (file.exists() && file.isFile()) {
            return file.length();
        }
        return -1L;
    }

    public static int ap(byte[] bArr, int i2, fks fksVar) {
        int as = as(bArr, i2, fksVar);
        int i3 = fksVar.f16943a;
        if (i3 < 0) {
            throw drq.c();
        }
        if (i3 == 0) {
            fksVar.f16945c = "";
            return as;
        }
        cuf cufVar = gua.f18749a;
        int length = bArr.length;
        if ((as | i3 | ((length - as) - i3)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(as), Integer.valueOf(i3)));
        }
        int i4 = as + i3;
        char[] cArr = new char[i3];
        int i5 = 0;
        while (as < i4) {
            byte b2 = bArr[as];
            if (b2 < 0) {
                break;
            }
            as++;
            cArr[i5] = (char) b2;
            i5++;
        }
        while (as < i4) {
            int i6 = as + 1;
            byte b3 = bArr[as];
            if (b3 >= 0) {
                cArr[i5] = (char) b3;
                i5++;
                as = i6;
                while (as < i4) {
                    byte b4 = bArr[as];
                    if (b4 >= 0) {
                        as++;
                        cArr[i5] = (char) b4;
                        i5++;
                    }
                }
            } else if (b3 < -32) {
                if (i6 >= i4) {
                    throw drq.b();
                }
                as += 2;
                int i7 = i5 + 1;
                byte b5 = bArr[i6];
                if (b3 < -62 || eyt.ao(b5)) {
                    throw drq.b();
                }
                cArr[i5] = (char) ((b5 & 63) | ((b3 & 31) << 6));
                i5 = i7;
            } else {
                if (b3 < -16) {
                    if (i6 >= i4 - 1) {
                        throw drq.b();
                    }
                    int i8 = as + 2;
                    as += 3;
                    int i9 = i5 + 1;
                    byte b6 = bArr[i6];
                    byte b7 = bArr[i8];
                    if (!eyt.ao(b6)) {
                        if (b3 == -32) {
                            if (b6 >= -96) {
                                b3 = -32;
                            }
                        }
                        if (b3 == -19) {
                            if (b6 < -96) {
                                b3 = -19;
                            }
                        }
                        if (!eyt.ao(b7)) {
                            cArr[i5] = (char) (((b6 & 63) << 6) | ((b3 & 15) << 12) | (b7 & 63));
                            i5 = i9;
                        }
                    }
                    throw drq.b();
                }
                if (i6 >= i4 - 2) {
                    throw drq.b();
                }
                int i10 = as + 2;
                int i11 = as + 3;
                as += 4;
                byte b8 = bArr[i6];
                byte b9 = bArr[i10];
                byte b10 = bArr[i11];
                if (eyt.ao(b8) || (((b8 + 112) + (b3 << 28)) >> 30) != 0 || eyt.ao(b9) || eyt.ao(b10)) {
                    throw drq.b();
                }
                int i12 = ((b8 & 63) << 12) | ((b3 & 7) << 18) | ((b9 & 63) << 6) | (b10 & 63);
                cArr[i5] = (char) ((i12 >>> 10) + 55232);
                cArr[i5 + 1] = (char) ((i12 & 1023) + 56320);
                i5 += 2;
            }
        }
        fksVar.f16945c = new String(cArr, 0, i5);
        return i4;
    }

    public static int aq(ciw ciwVar, int i2, byte[] bArr, int i3, int i4, cwe cweVar, fks fksVar) {
        int ay = ay(ciwVar, bArr, i3, i4, fksVar);
        cweVar.add(fksVar.f16945c);
        while (ay < i4) {
            int as = as(bArr, ay, fksVar);
            if (i2 != fksVar.f16943a) {
                break;
            }
            ay = ay(ciwVar, bArr, as, i4, fksVar);
            cweVar.add(fksVar.f16945c);
        }
        return ay;
    }

    public static void ar(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        File file = new File(str);
        if (file.exists()) {
            if (file.isFile()) {
                file.delete();
                return;
            }
            if (!z && file.isDirectory()) {
                for (File file2 : file.listFiles()) {
                    if (file2.isFile()) {
                        file2.delete();
                    } else if (file2.isDirectory()) {
                        ar(file2.getAbsolutePath(), false);
                    }
                }
                file.delete();
            }
        }
    }

    public static int as(byte[] bArr, int i2, fks fksVar) {
        int i3 = i2 + 1;
        byte b2 = bArr[i2];
        if (b2 < 0) {
            return z(b2, bArr, i3, fksVar);
        }
        fksVar.f16943a = b2;
        return i3;
    }

    public static blw at(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        blw blwVar = new blw();
        blwVar.f11806a = "global";
        Uri parse = Uri.parse(str);
        if (parse == null) {
            return null;
        }
        if (!TextUtils.isEmpty(parse.getScheme())) {
            blwVar.f11806a = parse.getScheme();
        }
        String authority = parse.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            authority = parse.getPath();
        }
        blwVar.f11807b = authority;
        HashMap hashMap = new HashMap();
        Set<String> queryParameterNames = parse.getQueryParameterNames();
        if (queryParameterNames != null && queryParameterNames.size() > 0) {
            for (String str2 : queryParameterNames) {
                hashMap.put(str2, dzm.ae(parse.getQueryParameter(str2), jSONObject));
            }
        }
        blwVar.f11808c = hashMap;
        return blwVar;
    }

    public static String au(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int lastIndexOf = str.lastIndexOf(File.separator);
        return lastIndexOf == -1 ? "" : str.substring(0, lastIndexOf);
    }

    public static StringBuilder av(String str) {
        File file = new File(str);
        StringBuilder sb = new StringBuilder("");
        BufferedReader bufferedReader = null;
        try {
            if (!file.isFile()) {
                return null;
            }
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream(file), "utf-8"));
                while (true) {
                    try {
                        String readLine = bufferedReader2.readLine();
                        if (readLine == null) {
                            erl.ap(bufferedReader2);
                            return sb;
                        }
                        if (!sb.toString().equals("")) {
                            sb.append("\r\n");
                        }
                        sb.append(readLine);
                    } catch (IOException e2) {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                        erl.ap(bufferedReader);
                        throw th;
                    }
                }
            } catch (IOException e3) {
                throw e3;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static String aw(eyn eynVar) {
        bff.p(eynVar, abn.EXTRA_URL);
        gei geiVar = gei.n;
        return dwm.ac(eynVar.f16377g).k("MD5").f();
    }

    public static void ax(hed hedVar, avy avyVar) {
        int size = hedVar.ak.size() * 5;
        int i2 = 0;
        while (true) {
            boolean t = t(hedVar, avyVar, hedVar.ao);
            int i3 = i2 + 1;
            if (i2 > size) {
                StringBuilder z = tn.z(size, "Iterative traversal limit reached: limit: ", ", visitor: ");
                z.append(avyVar.getClass().getName());
                z.append(", blocks count: ");
                z.append(hedVar.ak.size());
                throw new gck(z.toString());
            }
            if (!t) {
                return;
            } else {
                i2 = i3;
            }
        }
    }

    public static int ay(ciw ciwVar, byte[] bArr, int i2, int i3, fks fksVar) {
        int i4 = i2 + 1;
        int i5 = bArr[i2];
        if (i5 < 0) {
            i4 = z(i5, bArr, i4, fksVar);
            i5 = fksVar.f16943a;
        }
        int i6 = i4;
        if (i5 < 0 || i5 > i3 - i6) {
            throw drq.d();
        }
        Object zze = ciwVar.zze();
        int i7 = i6 + i5;
        ciwVar.g(zze, bArr, i6, i7, fksVar);
        ciwVar.f(zze);
        fksVar.f16945c = zze;
        return i7;
    }

    public static int az(int i2, byte[] bArr, int i3, int i4, fjx fjxVar, fks fksVar) {
        if ((i2 >>> 3) == 0) {
            throw new drq("Protocol message contained an invalid tag (zero).");
        }
        int i5 = i2 & 7;
        if (i5 == 0) {
            int ai = ai(bArr, i3, fksVar);
            fjxVar.j(i2, Long.valueOf(fksVar.f16944b));
            return ai;
        }
        if (i5 == 1) {
            fjxVar.j(i2, Long.valueOf(af(i3, bArr)));
            return i3 + 8;
        }
        if (i5 == 2) {
            int as = as(bArr, i3, fksVar);
            int i6 = fksVar.f16943a;
            if (i6 < 0) {
                throw drq.c();
            }
            if (i6 > bArr.length - as) {
                throw drq.d();
            }
            if (i6 == 0) {
                fjxVar.j(i2, cyb.f13731d);
            } else {
                fjxVar.j(i2, cyb.f(as, bArr, i6));
            }
            return as + i6;
        }
        if (i5 != 3) {
            if (i5 != 5) {
                throw new drq("Protocol message contained an invalid tag (zero).");
            }
            fjxVar.j(i2, Integer.valueOf(ae(bArr, i3)));
            return i3 + 4;
        }
        int i7 = (i2 & (-8)) | 4;
        fjx g2 = fjx.g();
        int i8 = 0;
        while (true) {
            if (i3 >= i4) {
                break;
            }
            int as2 = as(bArr, i3, fksVar);
            i8 = fksVar.f16943a;
            if (i8 == i7) {
                i3 = as2;
                break;
            }
            i3 = az(i8, bArr, as2, i4, g2, fksVar);
        }
        if (i3 > i4 || i8 != i7) {
            throw new drq("Failed to parse the message.");
        }
        fjxVar.j(i2, g2);
        return i3;
    }

    public static void ba(File file, InputStream inputStream) {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                ab(file.getAbsolutePath());
                fileOutputStream = new FileOutputStream(file, false);
            } catch (Throwable th) {
                th = th;
            }
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read == -1) {
                        fileOutputStream.flush();
                        erl.ap(fileOutputStream);
                        erl.ap(inputStream);
                        return;
                    }
                    fileOutputStream.write(bArr, 0, read);
                }
            } catch (FileNotFoundException e2) {
                throw e2;
            } catch (IOException e3) {
                throw e3;
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream2 = fileOutputStream;
                erl.ap(fileOutputStream2);
                erl.ap(inputStream);
                throw th;
            }
        } catch (FileNotFoundException e4) {
        } catch (IOException e5) {
        }
    }

    public static void bb(hed hedVar, byr byrVar, amj amjVar) {
        if (amjVar instanceof cih) {
            byrVar.bq(hedVar, (cih) amjVar);
        } else if (amjVar instanceof cfm) {
            cfm cfmVar = (cfm) amjVar;
            if (byrVar._cs(hedVar, cfmVar)) {
                Iterable.b.forEach(cfmVar.x(), new esv(hedVar, 4, byrVar));
            }
            byrVar._ar(hedVar, cfmVar);
        }
    }

    public static final Object bc(Object obj, Object obj2) {
        if (obj == null) {
            return obj2;
        }
        if (obj instanceof ArrayList) {
            ((ArrayList) obj).add(obj2);
            return obj;
        }
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(obj);
        arrayList.add(obj2);
        return arrayList;
    }

    public static void bd() {
        int i2 = f12224f;
        if (i2 > 0) {
            f12224f = i2 - 1;
        }
    }

    public static int be(int i2, int i3) {
        if (i2 > i3) {
            return 0;
        }
        return i2 == i3 ? i2 : new Random().nextInt(i3 - i2) + i2;
    }

    public static int m(String str, int i2, int i3, boolean z) {
        while (i2 < i3) {
            char charAt = str.charAt(i2);
            if (((charAt < ' ' && charAt != '\t') || charAt >= 127 || ('0' <= charAt && charAt < ':') || (('a' <= charAt && charAt < '{') || (('A' <= charAt && charAt < '[') || charAt == ':'))) == (!z)) {
                return i2;
            }
            i2++;
        }
        return i3;
    }

    public static String n(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int lastIndexOf = str.lastIndexOf(".");
        return (lastIndexOf != -1 && str.lastIndexOf(File.separator) < lastIndexOf) ? str.substring(lastIndexOf + 1) : "";
    }

    public static Set o(dvq dvqVar) {
        int size = dvqVar.size();
        TreeSet treeSet = null;
        for (int i2 = 0; i2 < size; i2++) {
            if ("Vary".equalsIgnoreCase(dvqVar.e(i2))) {
                String b2 = dvqVar.b(i2);
                if (treeSet == null) {
                    Comparator comparator = String.CASE_INSENSITIVE_ORDER;
                    bff.e(comparator, "CASE_INSENSITIVE_ORDER");
                    treeSet = new TreeSet(comparator);
                }
                Iterator it = dcv.bt(b2, new char[]{','}).iterator();
                while (it.hasNext()) {
                    treeSet.add(dcv.bk((String) it.next()).toString());
                }
            }
        }
        return treeSet == null ? gpk.f18539a : treeSet;
    }

    public static int p(byte[] bArr, int i2, fks fksVar) {
        int as = as(bArr, i2, fksVar);
        int i3 = fksVar.f16943a;
        if (i3 < 0) {
            throw drq.c();
        }
        if (i3 > bArr.length - as) {
            throw drq.d();
        }
        if (i3 == 0) {
            fksVar.f16945c = cyb.f13731d;
            return as;
        }
        fksVar.f16945c = cyb.f(as, bArr, i3);
        return as + i3;
    }

    public static String q(String str, boolean z) {
        long ao = ao(str);
        String str2 = "";
        if (ao == -1) {
            return "";
        }
        DecimalFormat decimalFormat = new DecimalFormat("#.#");
        DecimalFormat decimalFormat2 = new DecimalFormat("#,###,###");
        if (z) {
            str2 = "(" + decimalFormat2.format(ao) + "B)";
        }
        float f2 = ao;
        if (f2 >= 1.0737418E9f) {
            return decimalFormat.format(f2 / 1.0737418E9f) + "GB" + str2;
        }
        if (f2 >= 1048576.0f) {
            return decimalFormat.format(f2 / 1048576.0f) + "MB" + str2;
        }
        if (f2 < 1024.0f) {
            return Long.toString(ao) + "B";
        }
        return decimalFormat.format(f2 / 1024.0f) + "KB" + str2;
    }

    public static int r(byte[] bArr, int i2, fks fksVar) {
        int as = as(bArr, i2, fksVar);
        int i3 = fksVar.f16943a;
        if (i3 < 0) {
            throw drq.c();
        }
        if (i3 == 0) {
            fksVar.f16945c = "";
            return as;
        }
        fksVar.f16945c = new String(bArr, as, i3, dhz.f14209a);
        return as + i3;
    }

    public static int s(ciw ciwVar, byte[] bArr, int i2, int i3, int i4, fks fksVar) {
        ecy ecyVar = (ecy) ciwVar;
        Object zze = ecyVar.zze();
        int ak = ecyVar.ak(zze, bArr, i2, i3, i4, fksVar);
        ecyVar.f(zze);
        fksVar.f16945c = zze;
        return ak;
    }

    public static boolean t(hed hedVar, avy avyVar, amj amjVar) {
        if (!(amjVar instanceof cfm)) {
            return false;
        }
        cfm cfmVar = (cfm) amjVar;
        if (avyVar._bq(hedVar, cfmVar)) {
            return true;
        }
        Iterator it = cfmVar.x().iterator();
        while (it.hasNext()) {
            try {
                if (t(hedVar, avyVar, (amj) it.next())) {
                    return true;
                }
            } catch (StackOverflowError unused) {
                throw new blf("Region traversal failed: Recursive call in traverseIterativeStepInternal method");
            }
        }
        return false;
    }

    public static int u(int i2, byte[] bArr, int i3, int i4, cwe cweVar, fks fksVar) {
        eaa eaaVar = (eaa) cweVar;
        int as = as(bArr, i3, fksVar);
        eaaVar.d(fksVar.f16943a);
        while (as < i4) {
            int as2 = as(bArr, as, fksVar);
            if (i2 != fksVar.f16943a) {
                break;
            }
            as = as(bArr, as2, fksVar);
            eaaVar.d(fksVar.f16943a);
        }
        return as;
    }

    public static String v(long j2) {
        DecimalFormat decimalFormat = new DecimalFormat(awf.o("#.#").toString());
        float f2 = j2;
        if (f2 >= 1.0737418E9f) {
            return decimalFormat.format(f2 / 1.0737418E9f) + "GB";
        }
        if (f2 >= 1048576.0f) {
            return decimalFormat.format(f2 / 1048576.0f) + "MB";
        }
        if (f2 >= 1024.0f) {
            return decimalFormat.format(f2 / 1024.0f) + "KB";
        }
        return j2 + "B";
    }

    public static ArrayList w(String str) {
        File file = new File(str);
        ArrayList arrayList = new ArrayList();
        BufferedReader bufferedReader = null;
        if (!file.isFile()) {
            return null;
        }
        try {
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream(file), "utf-8"));
                while (true) {
                    try {
                        String readLine = bufferedReader2.readLine();
                        if (readLine == null) {
                            erl.ap(bufferedReader2);
                            return arrayList;
                        }
                        arrayList.add(readLine);
                    } catch (IOException e2) {
                        throw e2;
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                        erl.ap(bufferedReader);
                        throw th;
                    }
                }
            } catch (IOException e3) {
                throw e3;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static String x(String str) {
        int lastIndexOf;
        return (TextUtils.isEmpty(str) || (lastIndexOf = str.lastIndexOf(File.separator)) == -1) ? str : str.substring(lastIndexOf + 1);
    }

    public static void y(String str, String str2) {
        try {
            ba(str2 != null ? new File(str2) : null, new FileInputStream(str));
        } catch (FileNotFoundException e2) {
            throw new RuntimeException("FileNotFoundException occurred. ", e2);
        }
    }

    public static int z(int i2, byte[] bArr, int i3, fks fksVar) {
        int i4 = i2 & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE;
        int i5 = i3 + 1;
        byte b2 = bArr[i3];
        if (b2 >= 0) {
            fksVar.f16943a = i4 | (b2 << 7);
            return i5;
        }
        int i6 = i4 | ((b2 & Byte.MAX_VALUE) << 7);
        int i7 = i3 + 2;
        byte b3 = bArr[i5];
        if (b3 >= 0) {
            fksVar.f16943a = i6 | (b3 << 14);
            return i7;
        }
        int i8 = i6 | ((b3 & Byte.MAX_VALUE) << 14);
        int i9 = i3 + 3;
        byte b4 = bArr[i7];
        if (b4 >= 0) {
            fksVar.f16943a = i8 | (b4 << 21);
            return i9;
        }
        int i10 = i8 | ((b4 & Byte.MAX_VALUE) << 21);
        int i11 = i3 + 4;
        byte b5 = bArr[i9];
        if (b5 >= 0) {
            fksVar.f16943a = i10 | (b5 << 28);
            return i11;
        }
        int i12 = i10 | ((b5 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i13 = i11 + 1;
            if (bArr[i11] >= 0) {
                fksVar.f16943a = i12;
                return i13;
            }
            i11 = i13;
        }
    }

    public abstract void a(aoh aohVar, Thread thread);

    public abstract void b(aoh aohVar, aoh aohVar2);

    public abstract boolean c(zi ziVar, aoh aohVar, aoh aohVar2);

    public abstract boolean d(zi ziVar, fxt fxtVar, fxt fxtVar2);

    public abstract boolean e(zi ziVar, Object obj, Object obj2);
}
