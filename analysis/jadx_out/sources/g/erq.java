package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import j$.util.DesugarTimeZone;
import java.io.Closeable;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public abstract class erq {

    /* renamed from: a, reason: collision with root package name */
    public static final hck f16041a;

    /* renamed from: b, reason: collision with root package name */
    public static final TimeZone f16042b;

    /* renamed from: c, reason: collision with root package name */
    public static final byte[] f16043c;

    /* renamed from: d, reason: collision with root package name */
    public static final hu f16044d;

    /* renamed from: e, reason: collision with root package name */
    public static final dvq f16045e = dyd.aj(new String[0]);

    /* renamed from: f, reason: collision with root package name */
    public static final dhd f16046f;

    /* renamed from: g, reason: collision with root package name */
    public static final String f16047g;

    /* JADX WARN: Code restructure failed: missing block: B:70:0x0182, code lost:
    
        continue;
     */
    static {
        int i;
        byte[] bArr = new byte[0];
        f16043c = bArr;
        clq clqVar = new clq();
        clqVar.af(0, bArr);
        long j = 0;
        f16046f = new dhd(null, j, clqVar, 1);
        ac(j, j, j);
        gei geiVar = gei.n;
        gei[] geiVarArr = {dwm.ab("efbbbf"), dwm.ab("feff"), dwm.ab("fffe"), dwm.ab("0000ffff"), dwm.ab("ffff0000")};
        ArrayList arrayList = new ArrayList(new ecu(geiVarArr, false));
        if (arrayList.size() > 1) {
            Collections.sort(arrayList);
        }
        ArrayList arrayList2 = new ArrayList(5);
        for (int i2 = 0; i2 < 5; i2++) {
            gei geiVar2 = geiVarArr[i2];
            arrayList2.add(-1);
        }
        Integer[] numArr = (Integer[]) arrayList2.toArray(new Integer[0]);
        ArrayList d2 = grj.d(Arrays.copyOf(numArr, numArr.length));
        int i3 = 0;
        int i4 = 0;
        while (i3 < 5) {
            gei geiVar3 = geiVarArr[i3];
            int i5 = i4 + 1;
            int size = arrayList.size();
            int size2 = arrayList.size();
            if (size < 0) {
                throw new IllegalArgumentException(awf.b(size, "fromIndex (0) is greater than toIndex (", ")."));
            }
            if (size > size2) {
                throw new IndexOutOfBoundsException("toIndex (" + size + ") is greater than size (" + size2 + ").");
            }
            int i6 = size - 1;
            int i7 = 0;
            while (true) {
                if (i7 > i6) {
                    i = -(i7 + 1);
                    break;
                }
                i = (i7 + i6) >>> 1;
                Comparable comparable = (Comparable) arrayList.get(i);
                int compareTo = comparable == geiVar3 ? 0 : comparable == null ? -1 : geiVar3 == null ? 1 : comparable.compareTo(geiVar3);
                if (compareTo < 0) {
                    i7 = i + 1;
                } else if (compareTo > 0) {
                    i6 = i - 1;
                }
            }
            d2.set(i, Integer.valueOf(i4));
            i3++;
            i4 = i5;
        }
        if (((gei) arrayList.get(0)).d() <= 0) {
            throw new IllegalArgumentException("the empty byte string is not a supported option");
        }
        int i8 = 0;
        while (i8 < arrayList.size()) {
            gei geiVar4 = (gei) arrayList.get(i8);
            int i9 = i8 + 1;
            int i10 = i9;
            while (i10 < arrayList.size()) {
                gei geiVar5 = (gei) arrayList.get(i10);
                geiVar5.getClass();
                bff.p(geiVar4, "prefix");
                if (geiVar5.j(geiVar4, geiVar4.d())) {
                    if (geiVar5.d() == geiVar4.d()) {
                        throw new IllegalArgumentException(("duplicate option: " + geiVar5).toString());
                    }
                    if (((Number) d2.get(i10)).intValue() > ((Number) d2.get(i8)).intValue()) {
                        arrayList.remove(i10);
                        d2.remove(i10);
                    } else {
                        i10++;
                    }
                }
            }
            i8 = i9;
        }
        clq clqVar2 = new clq();
        awt.ak(0L, clqVar2, 0, arrayList, 0, arrayList.size(), d2);
        int[] iArr = new int[(int) (clqVar2.f13080b / 4)];
        int i11 = 0;
        while (!clqVar2.aj()) {
            iArr[i11] = clqVar2.readInt();
            i11++;
        }
        Object[] copyOf = Arrays.copyOf(geiVarArr, 5);
        bff.e(copyOf, "copyOf(this, size)");
        f16041a = new hck((gei[]) copyOf, iArr);
        TimeZone timeZone = DesugarTimeZone.getTimeZone("GMT");
        bff.d(timeZone);
        f16042b = timeZone;
        f16044d = new hu("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
        String bp = dcv.bp(fys.class.getName(), "okhttp3.");
        if (dmc.by(bp, "Client")) {
            bp = bp.substring(0, bp.length() - 6);
            bff.e(bp, "substring(...)");
        }
        f16047g = bp;
    }

    public static final int aa(char c2) {
        if ('0' <= c2 && c2 < ':') {
            return c2 - '0';
        }
        if ('a' <= c2 && c2 < 'g') {
            return c2 - 'W';
        }
        if ('A' > c2 || c2 >= 'G') {
            return -1;
        }
        return c2 - '7';
    }

    public static final boolean ab(cpv cpvVar, int i) {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        bff.p(timeUnit, "timeUnit");
        long nanoTime = System.nanoTime();
        long u = cpvVar.e().r() ? cpvVar.e().u() - nanoTime : Long.MAX_VALUE;
        cpvVar.e().a(Math.min(u, timeUnit.toNanos(i)) + nanoTime);
        try {
            clq clqVar = new clq();
            while (cpvVar.c(clqVar, 8192L) != -1) {
                clqVar.aa();
            }
            if (u == Long.MAX_VALUE) {
                cpvVar.e().s();
                return true;
            }
            cpvVar.e().a(nanoTime + u);
            return true;
        } catch (InterruptedIOException unused) {
            if (u == Long.MAX_VALUE) {
                cpvVar.e().s();
                return false;
            }
            cpvVar.e().a(nanoTime + u);
            return false;
        } catch (Throwable th) {
            if (u == Long.MAX_VALUE) {
                cpvVar.e().s();
            } else {
                cpvVar.e().a(nanoTime + u);
            }
            throw th;
        }
    }

    public static final void ac(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static final int ad(int i, String str) {
        if (str != null) {
            try {
                long parseLong = Long.parseLong(str);
                if (parseLong > 2147483647L) {
                    return he.UNDEFINED_ITEM_ID;
                }
                if (parseLong < 0) {
                    return 0;
                }
                return (int) parseLong;
            } catch (NumberFormatException unused) {
            }
        }
        return i;
    }

    public static final int ae(String str, int i, int i2, char c2) {
        bff.p(str, "<this>");
        while (i < i2) {
            if (str.charAt(i) == c2) {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static final Charset af(dsy dsyVar, Charset charset) {
        bff.p(dsyVar, "<this>");
        bff.p(charset, "default");
        int w = dsyVar.w(f16041a);
        if (w == -1) {
            return charset;
        }
        if (w == 0) {
            Charset charset2 = StandardCharsets.UTF_8;
            bff.e(charset2, "UTF_8");
            return charset2;
        }
        if (w == 1) {
            Charset charset3 = StandardCharsets.UTF_16BE;
            bff.e(charset3, "UTF_16BE");
            return charset3;
        }
        if (w == 2) {
            Charset charset4 = StandardCharsets.UTF_16LE;
            bff.e(charset4, "UTF_16LE");
            return charset4;
        }
        if (w == 3) {
            Charset charset5 = ejm.f15667a;
            Charset charset6 = ejm.f15669c;
            if (charset6 != null) {
                return charset6;
            }
            Charset forName = Charset.forName("UTF-32BE");
            bff.e(forName, "forName(...)");
            ejm.f15669c = forName;
            return forName;
        }
        if (w != 4) {
            throw new AssertionError();
        }
        Charset charset7 = ejm.f15667a;
        Charset charset8 = ejm.f15668b;
        if (charset8 != null) {
            return charset8;
        }
        Charset forName2 = Charset.forName("UTF-32LE");
        bff.e(forName2, "forName(...)");
        ejm.f15668b = forName2;
        return forName2;
    }

    public static final String h(String str, Object... objArr) {
        bff.p(str, "format");
        Locale locale = Locale.US;
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
        return String.format(locale, str, Arrays.copyOf(copyOf, copyOf.length));
    }

    public static final List i(Object... objArr) {
        bff.p(objArr, "elements");
        Object[] objArr2 = (Object[]) objArr.clone();
        List unmodifiableList = Collections.unmodifiableList(grj.e(Arrays.copyOf(objArr2, objArr2.length)));
        bff.e(unmodifiableList, "unmodifiableList(listOf(*elements.clone()))");
        return unmodifiableList;
    }

    public static final String[] j(Comparator comparator, String[] strArr, String[] strArr2) {
        bff.p(strArr2, "other");
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
        return (String[]) arrayList.toArray(new String[0]);
    }

    public static final String k(int i, int i2, String str) {
        int w = w(i, i2, str);
        String substring = str.substring(w, l(w, i2, str));
        bff.e(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public static final int l(int i, int i2, String str) {
        bff.p(str, "<this>");
        int i3 = i2 - 1;
        if (i <= i3) {
            while (true) {
                char charAt = str.charAt(i3);
                if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                    return i3 + 1;
                }
                if (i3 == i) {
                    break;
                }
                i3--;
            }
        }
        return i;
    }

    public static final void m(Closeable closeable) {
        bff.p(closeable, "<this>");
        try {
            closeable.close();
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception unused) {
        }
    }

    public static final int n(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (bff.ad(charAt, 31) <= 0 || bff.ad(charAt, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE) >= 0) {
                return i;
            }
        }
        return -1;
    }

    public static final void o(Socket socket) {
        bff.p(socket, "<this>");
        try {
            socket.close();
        } catch (AssertionError e2) {
            throw e2;
        } catch (RuntimeException e3) {
            if (!bff.n(e3.getMessage(), "bio == null")) {
                throw e3;
            }
        } catch (Exception unused) {
        }
    }

    public static final boolean p(eyn eynVar, eyn eynVar2) {
        bff.p(eynVar, "<this>");
        bff.p(eynVar2, "other");
        return bff.n(eynVar.f16373c, eynVar2.f16373c) && eynVar.f16374d == eynVar2.f16374d && bff.n(eynVar.f16375e, eynVar2.f16375e);
    }

    public static final dvq q(List list) {
        ArrayList arrayList = new ArrayList(20);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            heb hebVar = (heb) it.next();
            gei geiVar = hebVar.f19331g;
            gei geiVar2 = hebVar.h;
            String q = geiVar.q();
            String q2 = geiVar2.q();
            arrayList.add(q);
            arrayList.add(dcv.bk(q2).toString());
        }
        return new dvq((String[]) arrayList.toArray(new String[0]));
    }

    public static final String r(eyn eynVar, boolean z) {
        bff.p(eynVar, "<this>");
        int i = eynVar.f16374d;
        String str = eynVar.f16373c;
        if (dcv.bq(str, ":")) {
            str = "[" + str + ']';
        }
        if (!z) {
            String str2 = eynVar.f16375e;
            bff.p(str2, "scheme");
            if (i == (str2.equals("http") ? 80 : str2.equals("https") ? 443 : -1)) {
                return str;
            }
        }
        return str + ':' + i;
    }

    public static final List s(List list) {
        bff.p(list, "<this>");
        List unmodifiableList = Collections.unmodifiableList(new ArrayList(list));
        bff.e(unmodifiableList, "unmodifiableList(toMutableList())");
        return unmodifiableList;
    }

    public static final int t(int i, int i2, String str, String str2) {
        bff.p(str, "<this>");
        while (i < i2) {
            if (dcv.bg(str2, str.charAt(i))) {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static final int u(dsy dsyVar) {
        bff.p(dsyVar, "<this>");
        return (dsyVar.readByte() & 255) | ((dsyVar.readByte() & 255) << 16) | ((dsyVar.readByte() & 255) << 8);
    }

    public static final boolean v(String str) {
        bff.p(str, abn.EXTRA_UA_APP_NAME);
        return str.equalsIgnoreCase("Authorization") || str.equalsIgnoreCase("Cookie") || str.equalsIgnoreCase("Proxy-Authorization") || str.equalsIgnoreCase("Set-Cookie");
    }

    public static final int w(int i, int i2, String str) {
        bff.p(str, "<this>");
        while (i < i2) {
            char charAt = str.charAt(i);
            if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0038, code lost:
    
        r2 = r2 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final boolean x(Comparator comparator, String[] strArr, String[] strArr2) {
        bff.p(strArr, "<this>");
        if (strArr.length != 0 && strArr2 != null && strArr2.length != 0) {
            int length = strArr.length;
            int i = 0;
            while (i < length) {
                String str = strArr[i];
                int i2 = 0;
                while (true) {
                    if (i2 < strArr2.length) {
                        int i3 = i2 + 1;
                        try {
                            if (comparator.compare(str, strArr2[i2]) == 0) {
                                return true;
                            }
                            i2 = i3;
                        } catch (ArrayIndexOutOfBoundsException e2) {
                            throw new NoSuchElementException(e2.getMessage());
                        }
                    }
                }
            }
        }
        return false;
    }

    public static final int y() {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        if (timeUnit == null) {
            throw new IllegalStateException("unit == null");
        }
        long millis = timeUnit.toMillis(30000L);
        if (millis > 2147483647L) {
            throw new IllegalArgumentException("timeout".concat(" too large.").toString());
        }
        if (millis != 0) {
            return (int) millis;
        }
        throw new IllegalArgumentException("timeout".concat(" too small.").toString());
    }

    public static final long z(enb enbVar) {
        String c2 = enbVar.n.c("Content-Length");
        if (c2 == null) {
            return -1L;
        }
        try {
            return Long.parseLong(c2);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }
}
