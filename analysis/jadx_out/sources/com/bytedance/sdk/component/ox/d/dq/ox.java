package com.bytedance.sdk.component.ox.d.dq;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.component.ox.d.h;
import com.bytedance.sdk.component.ox.d.i;
import com.bytedance.sdk.component.ox.d.n;
import com.bytedance.sdk.component.ox.dq.gh;
import com.bytedance.sdk.component.ox.dq.iw;
import com.bytedance.sdk.component.ox.dq.s;
import g.awf;
import g.tn;
import j$.util.DesugarTimeZone;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class ox {
    public static final byte[] dq;
    public static final n ox;
    public static final h p;

    /* renamed from: d, reason: collision with root package name */
    public static final String[] f2072d = new String[0];
    private static final iw kk = iw.d("efbbbf");
    private static final iw o = iw.d("feff");
    private static final iw no = iw.d("fffe");
    private static final iw ig = iw.d("0000ffff");
    private static final iw mp = iw.d("ffff0000");
    public static final Charset s = Charset.forName("UTF-8");
    public static final Charset iw = Charset.forName("ISO-8859-1");
    private static final Charset q = Charset.forName("UTF-16BE");
    private static final Charset jy = Charset.forName("UTF-16LE");

    /* renamed from: f, reason: collision with root package name */
    private static final Charset f2073f = Charset.forName("UTF-32BE");
    private static final Charset fw = Charset.forName("UTF-32LE");
    public static final TimeZone mn = DesugarTimeZone.getTimeZone("GMT");
    public static final Comparator<String> ia = new Comparator<String>() { // from class: com.bytedance.sdk.component.ox.d.dq.ox.1
        @Override // java.util.Comparator
        /* renamed from: dq, reason: merged with bridge method [inline-methods] */
        public int compare(String str, String str2) {
            return str.compareTo(str2);
        }
    };
    private static final Pattern cd = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    static {
        byte[] bArr = new byte[0];
        dq = bArr;
        ox = n.dq(null, bArr);
        p = h.dq((i) null, bArr);
    }

    public static int d(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt <= 31 || charAt >= 127) {
                return i;
            }
        }
        return -1;
    }

    public static int d(String str, int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            char charAt = str.charAt(i3);
            if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                return i3 + 1;
            }
        }
        return i;
    }

    public static boolean d(gh ghVar, int i, TimeUnit timeUnit) throws IOException {
        long nanoTime = System.nanoTime();
        long I_ = ghVar.dq().ox() ? ghVar.dq().I_() - nanoTime : Long.MAX_VALUE;
        ghVar.dq().dq(Math.min(I_, timeUnit.toNanos(i)) + nanoTime);
        try {
            com.bytedance.sdk.component.ox.dq.ox oxVar = new com.bytedance.sdk.component.ox.dq.ox();
            while (ghVar.dq(oxVar, 8192L) != -1) {
                oxVar.cd();
            }
            if (I_ == Long.MAX_VALUE) {
                ghVar.dq().iw();
                return true;
            }
            ghVar.dq().dq(nanoTime + I_);
            return true;
        } catch (InterruptedIOException unused) {
            if (I_ == Long.MAX_VALUE) {
                ghVar.dq().iw();
                return false;
            }
            ghVar.dq().dq(nanoTime + I_);
            return false;
        } catch (Throwable th) {
            if (I_ == Long.MAX_VALUE) {
                ghVar.dq().iw();
            } else {
                ghVar.dq().dq(nanoTime + I_);
            }
            throw th;
        }
    }

    public static boolean d(Comparator<String> comparator, String[] strArr, String[] strArr2) {
        if (strArr != null && strArr2 != null && strArr.length != 0 && strArr2.length != 0) {
            for (String str : strArr) {
                for (String str2 : strArr2) {
                    if (comparator.compare(str, str2) == 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static int dq(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        if (c2 >= 'a' && c2 <= 'f') {
            return c2 - 'W';
        }
        if (c2 < 'A' || c2 > 'F') {
            return -1;
        }
        return c2 - '7';
    }

    public static int dq(String str, int i, int i2) {
        while (i < i2) {
            char charAt = str.charAt(i);
            if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static int dq(String str, int i, int i2, char c2) {
        while (i < i2) {
            if (str.charAt(i) == c2) {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static int dq(String str, int i, int i2, String str2) {
        while (i < i2) {
            if (str2.indexOf(str.charAt(i)) != -1) {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static int dq(String str, long j, TimeUnit timeUnit) {
        if (j < 0) {
            throw new IllegalArgumentException(awf.c(str, " < 0"));
        }
        if (timeUnit == null) {
            throw new NullPointerException("unit == null");
        }
        long millis = timeUnit.toMillis(j);
        if (millis > 2147483647L) {
            throw new IllegalArgumentException(awf.c(str, " too large."));
        }
        if (millis != 0 || j <= 0) {
            return (int) millis;
        }
        throw new IllegalArgumentException(awf.c(str, " too small."));
    }

    public static int dq(Comparator<String> comparator, String[] strArr, String str) {
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            if (comparator.compare(strArr[i], str) == 0) {
                return i;
            }
        }
        return -1;
    }

    public static AssertionError dq(String str, Exception exc) {
        return (AssertionError) new AssertionError(str).initCause(exc);
    }

    public static String dq(com.bytedance.sdk.component.ox.d.gh ghVar, boolean z) {
        String mn2;
        if (ghVar.mn().contains(":")) {
            mn2 = "[" + ghVar.mn() + "]";
        } else {
            mn2 = ghVar.mn();
        }
        if (!z && ghVar.ia() == com.bytedance.sdk.component.ox.d.gh.dq(ghVar.ox())) {
            return mn2;
        }
        StringBuilder l = tn.l(mn2, ":");
        l.append(ghVar.ia());
        return l.toString();
    }

    public static String dq(String str) {
        if (str.contains(":")) {
            InetAddress p2 = (str.startsWith("[") && str.endsWith("]")) ? p(str, 1, str.length() - 1) : p(str, 0, str.length());
            if (p2 == null) {
                return null;
            }
            byte[] address = p2.getAddress();
            if (address.length == 16) {
                return dq(address);
            }
            throw new AssertionError(tn.ad("Invalid IPv6 address: '", str, "'"));
        }
        try {
            String lowerCase = IDN.toASCII(str).toLowerCase(Locale.US);
            if (lowerCase.isEmpty()) {
                return null;
            }
            if (p(lowerCase)) {
                return null;
            }
            return lowerCase;
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public static String dq(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    private static String dq(byte[] bArr) {
        int i = -1;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < bArr.length) {
            int i5 = i3;
            while (i5 < 16 && bArr[i5] == 0 && bArr[i5 + 1] == 0) {
                i5 += 2;
            }
            int i6 = i5 - i3;
            if (i6 > i4 && i6 >= 4) {
                i = i3;
                i4 = i6;
            }
            i3 = i5 + 2;
        }
        com.bytedance.sdk.component.ox.dq.ox oxVar = new com.bytedance.sdk.component.ox.dq.ox();
        while (i2 < bArr.length) {
            if (i2 == i) {
                oxVar.kk(58);
                i2 += i4;
                if (i2 == 16) {
                    oxVar.kk(58);
                }
            } else {
                if (i2 > 0) {
                    oxVar.kk(58);
                }
                oxVar.no(((bArr[i2] & 255) << 8) | (bArr[i2 + 1] & 255));
                i2 += 2;
            }
        }
        return oxVar.jy();
    }

    public static Charset dq(s sVar, Charset charset) throws IOException {
        if (sVar.dq(0L, kk)) {
            sVar.ia(r0.mn());
            return s;
        }
        if (sVar.dq(0L, o)) {
            sVar.ia(r0.mn());
            return q;
        }
        if (sVar.dq(0L, no)) {
            sVar.ia(r0.mn());
            return jy;
        }
        if (sVar.dq(0L, ig)) {
            sVar.ia(r0.mn());
            return f2073f;
        }
        if (!sVar.dq(0L, mp)) {
            return charset;
        }
        sVar.ia(r0.mn());
        return fw;
    }

    public static <T> List<T> dq(List<T> list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    public static <T> List<T> dq(T... tArr) {
        return Collections.unmodifiableList(Arrays.asList((Object[]) tArr.clone()));
    }

    public static ThreadFactory dq(final String str, final boolean z) {
        return new ThreadFactory() { // from class: com.bytedance.sdk.component.ox.d.dq.ox.2
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                com.bytedance.sdk.component.o.p.ox oxVar = new com.bytedance.sdk.component.o.p.ox(runnable, "csj_" + str);
                oxVar.setDaemon(z);
                oxVar.setPriority(10);
                return oxVar;
            }
        };
    }

    public static void dq(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static void dq(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused) {
            }
        }
    }

    public static void dq(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (AssertionError e2) {
                if (!dq(e2)) {
                    throw e2;
                }
            } catch (RuntimeException | Exception unused) {
            }
        }
    }

    public static boolean dq(gh ghVar, int i, TimeUnit timeUnit) {
        try {
            return d(ghVar, i, timeUnit);
        } catch (IOException unused) {
            return false;
        }
    }

    public static boolean dq(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    public static boolean dq(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    private static boolean dq(String str, int i, int i2, byte[] bArr, int i3) {
        int i4 = i3;
        while (i < i2) {
            if (i4 == bArr.length) {
                return false;
            }
            if (i4 != i3) {
                if (str.charAt(i) != '.') {
                    return false;
                }
                i++;
            }
            int i5 = i;
            int i6 = 0;
            while (i5 < i2) {
                char charAt = str.charAt(i5);
                if (charAt < '0' || charAt > '9') {
                    break;
                }
                if ((i6 == 0 && i != i5) || (i6 = ((i6 * 10) + charAt) - 48) > 255) {
                    return false;
                }
                i5++;
            }
            if (i5 - i == 0) {
                return false;
            }
            bArr[i4] = (byte) i6;
            i4++;
            i = i5;
        }
        return i4 == i3 + 4;
    }

    public static String[] dq(Comparator<? super String> comparator, String[] strArr, String[] strArr2) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            int length = strArr2.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (comparator.compare(str, strArr2[i]) == 0) {
                    arrayList.add(str);
                    break;
                }
                i++;
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static String[] dq(String[] strArr, String str) {
        int length = strArr.length;
        String[] strArr2 = new String[length + 1];
        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        strArr2[length] = str;
        return strArr2;
    }

    public static String ox(String str, int i, int i2) {
        int dq2 = dq(str, i, i2);
        return str.substring(dq2, d(str, dq2, i2));
    }

    public static boolean ox(String str) {
        return cd.matcher(str).matches();
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0077, code lost:
    
        return null;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static InetAddress p(String str, int i, int i2) {
        int i3;
        byte[] bArr = new byte[16];
        int i4 = 0;
        int i5 = -1;
        int i6 = -1;
        while (true) {
            if (i < i2) {
                if (i4 != 16) {
                    int i7 = i + 2;
                    if (i7 <= i2 && str.regionMatches(i, "::", 0, 2)) {
                        if (i5 == -1) {
                            i4 += 2;
                            i5 = i4;
                            if (i7 != i2) {
                                i6 = i7;
                                i = i6;
                                int i8 = 0;
                                while (i < i2) {
                                }
                                i3 = i - i6;
                                if (i3 == 0) {
                                    break;
                                }
                                break;
                            }
                            break;
                        }
                        return null;
                    }
                    if (i4 != 0) {
                        if (str.regionMatches(i, ":", 0, 1)) {
                            i++;
                        } else {
                            if (!str.regionMatches(i, ".", 0, 1) || !dq(str, i6, i2, bArr, i4 - 2)) {
                                return null;
                            }
                            i4 += 2;
                        }
                    }
                    i6 = i;
                    i = i6;
                    int i82 = 0;
                    while (i < i2) {
                        int dq2 = dq(str.charAt(i));
                        if (dq2 == -1) {
                            break;
                        }
                        i82 = (i82 << 4) + dq2;
                        i++;
                    }
                    i3 = i - i6;
                    if (i3 == 0 || i3 > 4) {
                        break;
                    }
                    int i9 = i4 + 1;
                    bArr[i4] = (byte) ((i82 >>> 8) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
                    i4 += 2;
                    bArr[i9] = (byte) (i82 & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
                } else {
                    return null;
                }
            } else {
                break;
            }
        }
        if (i4 != 16) {
            if (i5 == -1) {
                return null;
            }
            int i10 = i4 - i5;
            System.arraycopy(bArr, i5, bArr, 16 - i10, i10);
            Arrays.fill(bArr, i5, (16 - i4) + i5, (byte) 0);
        }
        try {
            return InetAddress.getByAddress(bArr);
        } catch (UnknownHostException unused) {
            throw new AssertionError();
        }
    }

    private static boolean p(String str) {
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt <= 31 || charAt >= 127 || " #%/:?@[\\]".indexOf(charAt) != -1) {
                return true;
            }
        }
        return false;
    }
}
