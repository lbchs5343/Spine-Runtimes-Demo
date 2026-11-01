package com.bytedance.sdk.component.ox.d;

import com.bytedance.pangle.ZeusPluginEventCallback;
import g.tn;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class ig {
    private final String ia;
    private final boolean ig;
    private final String iw;
    private final String kk;
    private final long mn;
    private final boolean mp;
    private final boolean no;
    private final boolean o;
    private final String s;
    private static final Pattern dq = Pattern.compile("(\\d{2,4})[^\\d]*");

    /* renamed from: d, reason: collision with root package name */
    private static final Pattern f2120d = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");
    private static final Pattern ox = Pattern.compile("(\\d{1,2})[^\\d]*");
    private static final Pattern p = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    private ig(String str, String str2, long j, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4) {
        this.s = str;
        this.iw = str2;
        this.mn = j;
        this.ia = str3;
        this.kk = str4;
        this.o = z;
        this.no = z2;
        this.mp = z3;
        this.ig = z4;
    }

    private static String d(String str) {
        if (str.endsWith(".")) {
            throw new IllegalArgumentException();
        }
        if (str.startsWith(".")) {
            str = str.substring(1);
        }
        String dq2 = com.bytedance.sdk.component.ox.d.dq.ox.dq(str);
        if (dq2 != null) {
            return dq2;
        }
        throw new IllegalArgumentException();
    }

    private static int dq(String str, int i, int i2, boolean z) {
        while (i < i2) {
            char charAt = str.charAt(i);
            if (((charAt < ' ' && charAt != '\t') || charAt >= 127 || (charAt >= '0' && charAt <= '9') || ((charAt >= 'a' && charAt <= 'z') || ((charAt >= 'A' && charAt <= 'Z') || charAt == ':'))) == (!z)) {
                return i;
            }
            i++;
        }
        return i2;
    }

    private static long dq(String str) {
        try {
            long parseLong = Long.parseLong(str);
            if (parseLong <= 0) {
                return Long.MIN_VALUE;
            }
            return parseLong;
        } catch (NumberFormatException e2) {
            if (str.matches("-?\\d+")) {
                return str.startsWith("-") ? Long.MIN_VALUE : Long.MAX_VALUE;
            }
            throw e2;
        }
    }

    private static long dq(String str, int i, int i2) {
        int dq2 = dq(str, i, i2, false);
        Matcher matcher = p.matcher(str);
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        int i7 = -1;
        int i8 = -1;
        while (dq2 < i2) {
            int dq3 = dq(str, dq2 + 1, i2, true);
            matcher.region(dq2, dq3);
            if (i4 == -1 && matcher.usePattern(p).matches()) {
                i4 = Integer.parseInt(matcher.group(1));
                i7 = Integer.parseInt(matcher.group(2));
                i8 = Integer.parseInt(matcher.group(3));
            } else if (i5 == -1 && matcher.usePattern(ox).matches()) {
                i5 = Integer.parseInt(matcher.group(1));
            } else {
                if (i6 == -1) {
                    Pattern pattern = f2120d;
                    if (matcher.usePattern(pattern).matches()) {
                        i6 = pattern.pattern().indexOf(matcher.group(1).toLowerCase(Locale.US)) / 4;
                    }
                }
                if (i3 == -1 && matcher.usePattern(dq).matches()) {
                    i3 = Integer.parseInt(matcher.group(1));
                }
            }
            dq2 = dq(str, dq3 + 1, i2, false);
        }
        if (i3 >= 70 && i3 <= 99) {
            i3 += 1900;
        }
        if (i3 >= 0 && i3 <= 69) {
            i3 += ZeusPluginEventCallback.EVENT_START_LOAD;
        }
        if (i3 < 1601) {
            throw new IllegalArgumentException();
        }
        if (i6 == -1) {
            throw new IllegalArgumentException();
        }
        if (i5 <= 0 || i5 > 31) {
            throw new IllegalArgumentException();
        }
        if (i4 < 0 || i4 > 23) {
            throw new IllegalArgumentException();
        }
        if (i7 < 0 || i7 > 59) {
            throw new IllegalArgumentException();
        }
        if (i8 < 0 || i8 > 59) {
            throw new IllegalArgumentException();
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar(com.bytedance.sdk.component.ox.d.dq.ox.mn);
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

    public static ig dq(long j, gh ghVar, String str) {
        long j2;
        String str2;
        int length = str.length();
        char c2 = ';';
        int dq2 = com.bytedance.sdk.component.ox.d.dq.ox.dq(str, 0, length, ';');
        int dq3 = com.bytedance.sdk.component.ox.d.dq.ox.dq(str, 0, dq2, '=');
        String str3 = null;
        if (dq3 == dq2) {
            return null;
        }
        String ox2 = com.bytedance.sdk.component.ox.d.dq.ox.ox(str, 0, dq3);
        if (ox2.isEmpty() || com.bytedance.sdk.component.ox.d.dq.ox.d(ox2) != -1) {
            return null;
        }
        String ox3 = com.bytedance.sdk.component.ox.d.dq.ox.ox(str, dq3 + 1, dq2);
        if (com.bytedance.sdk.component.ox.d.dq.ox.d(ox3) != -1) {
            return null;
        }
        int i = dq2 + 1;
        String str4 = null;
        long j3 = 253402300799999L;
        long j4 = -1;
        boolean z = true;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        while (i < length) {
            int dq4 = com.bytedance.sdk.component.ox.d.dq.ox.dq(str, i, length, c2);
            int dq5 = com.bytedance.sdk.component.ox.d.dq.ox.dq(str, i, dq4, '=');
            String ox4 = com.bytedance.sdk.component.ox.d.dq.ox.ox(str, i, dq5);
            String ox5 = dq5 < dq4 ? com.bytedance.sdk.component.ox.d.dq.ox.ox(str, dq5 + 1, dq4) : "";
            if (ox4.equalsIgnoreCase("expires")) {
                try {
                    j3 = dq(ox5, 0, ox5.length());
                } catch (NumberFormatException | IllegalArgumentException unused) {
                }
            } else if (ox4.equalsIgnoreCase("max-age")) {
                j4 = dq(ox5);
            } else {
                if (ox4.equalsIgnoreCase("domain")) {
                    str3 = d(ox5);
                    z = false;
                } else if (ox4.equalsIgnoreCase("path")) {
                    str4 = ox5;
                } else if (ox4.equalsIgnoreCase("secure")) {
                    z3 = true;
                } else if (ox4.equalsIgnoreCase("httponly")) {
                    z4 = true;
                }
                i = dq4 + 1;
                c2 = ';';
            }
            z2 = true;
            i = dq4 + 1;
            c2 = ';';
        }
        if (j4 == Long.MIN_VALUE) {
            j2 = Long.MIN_VALUE;
        } else if (j4 != -1) {
            long j5 = j + (j4 <= 9223372036854775L ? j4 * 1000 : Long.MAX_VALUE);
            j2 = (j5 < j || j5 > 253402300799999L) ? 253402300799999L : j5;
        } else {
            j2 = j3;
        }
        String mn = ghVar.mn();
        if (str3 == null) {
            str2 = mn;
        } else {
            if (!dq(mn, str3)) {
                return null;
            }
            str2 = str3;
        }
        if (mn.length() != str2.length() && com.bytedance.sdk.component.ox.d.dq.ia.dq.dq().dq(str2) == null) {
            return null;
        }
        if (str4 == null || !str4.startsWith("/")) {
            String kk = ghVar.kk();
            int lastIndexOf = kk.lastIndexOf(47);
            str4 = lastIndexOf != 0 ? kk.substring(0, lastIndexOf) : "/";
        }
        return new ig(ox2, ox3, j2, str2, str4, z3, z4, z, z2);
    }

    public static ig dq(gh ghVar, String str) {
        return dq(System.currentTimeMillis(), ghVar, str);
    }

    public static List<ig> dq(gh ghVar, cd cdVar) {
        List<String> d2 = cdVar.d("Set-Cookie");
        int size = d2.size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            ig dq2 = dq(ghVar, d2.get(i));
            if (dq2 != null) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(dq2);
            }
        }
        return arrayList != null ? Collections.unmodifiableList(arrayList) : Collections.EMPTY_LIST;
    }

    private static boolean dq(String str, String str2) {
        if (str.equals(str2)) {
            return true;
        }
        return str.endsWith(str2) && str.charAt((str.length() - str2.length()) - 1) == '.' && !com.bytedance.sdk.component.ox.d.dq.ox.ox(str);
    }

    public String d() {
        return this.iw;
    }

    public String dq() {
        return this.s;
    }

    public String dq(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.s);
        sb.append('=');
        sb.append(this.iw);
        if (this.ig) {
            if (this.mn == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                sb.append(com.bytedance.sdk.component.ox.d.dq.ox.p.dq(new Date(this.mn)));
            }
        }
        if (!this.mp) {
            sb.append("; domain=");
            if (z) {
                sb.append(".");
            }
            sb.append(this.ia);
        }
        sb.append("; path=");
        sb.append(this.kk);
        if (this.o) {
            sb.append("; secure");
        }
        if (this.no) {
            sb.append("; httponly");
        }
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ig)) {
            return false;
        }
        ig igVar = (ig) obj;
        return igVar.s.equals(this.s) && igVar.iw.equals(this.iw) && igVar.ia.equals(this.ia) && igVar.kk.equals(this.kk) && igVar.mn == this.mn && igVar.o == this.o && igVar.no == this.no && igVar.ig == this.ig && igVar.mp == this.mp;
    }

    public int hashCode() {
        int k = tn.k(tn.k(tn.k(tn.k(527, 31, this.s), 31, this.iw), 31, this.ia), 31, this.kk);
        long j = this.mn;
        return ((((((((k + ((int) (j ^ (j >>> 32)))) * 31) + (!this.o ? 1 : 0)) * 31) + (!this.no ? 1 : 0)) * 31) + (!this.ig ? 1 : 0)) * 31) + (!this.mp ? 1 : 0);
    }

    public String toString() {
        return dq(false);
    }
}
