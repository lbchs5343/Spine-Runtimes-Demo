package g;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import j$.util.DesugarTimeZone;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: classes.dex */
public final class fzg {

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f17697a;

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f17698b;

    /* renamed from: c, reason: collision with root package name */
    public static final boolean[] f17699c;

    /* renamed from: d, reason: collision with root package name */
    public static final ThreadLocal f17700d;

    /* renamed from: e, reason: collision with root package name */
    public static final int[] f17701e;

    /* renamed from: f, reason: collision with root package name */
    public static final boolean[] f17702f;

    /* renamed from: g, reason: collision with root package name */
    public static final boolean f17703g;
    public int h;
    public final Locale i;
    public final int j;
    public final String k;
    public char l;
    public Calendar m;
    public int n;
    public int o;
    public char[] p;
    public final String q;
    public int r;
    public boolean s;
    public int t;
    public final TimeZone u;
    public final boolean v;
    public final int w;
    public int x;

    static {
        int i;
        try {
            i = Class.forName("android.os.Build$VERSION").getField("SDK_INT").getInt(null);
        } catch (Exception unused) {
            i = -1;
        }
        char c2 = 0;
        f17703g = i >= 23;
        f17700d = new ThreadLocal();
        f17701e = new int[103];
        for (int i2 = 48; i2 <= 57; i2++) {
            f17701e[i2] = i2 - 48;
        }
        for (int i3 = 97; i3 <= 102; i3++) {
            f17701e[i3] = i3 - 87;
        }
        for (int i4 = 65; i4 <= 70; i4++) {
            f17701e[i4] = i4 - 55;
        }
        char[] charArray = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
        f17697a = charArray;
        int[] iArr = new int[256];
        f17698b = iArr;
        Arrays.fill(iArr, -1);
        int length = charArray.length;
        for (int i5 = 0; i5 < length; i5++) {
            f17698b[f17697a[i5]] = i5;
        }
        f17698b[61] = 0;
        f17699c = new boolean[256];
        char c3 = 0;
        while (true) {
            boolean[] zArr = f17699c;
            if (c3 >= zArr.length) {
                break;
            }
            if (c3 >= 'A' && c3 <= 'Z') {
                zArr[c3] = true;
            } else if (c3 >= 'a' && c3 <= 'z') {
                zArr[c3] = true;
            } else if (c3 == '_') {
                zArr[c3] = true;
            }
            c3 = (char) (c3 + 1);
        }
        f17702f = new boolean[256];
        while (true) {
            boolean[] zArr2 = f17702f;
            if (c2 >= zArr2.length) {
                return;
            }
            if (c2 >= 'A' && c2 <= 'Z') {
                zArr2[c2] = true;
            } else if (c2 >= 'a' && c2 <= 'z') {
                zArr2[c2] = true;
            } else if (c2 == '_') {
                zArr2[c2] = true;
            } else if (c2 >= '0' && c2 <= '9') {
                zArr2[c2] = true;
            }
            c2 = (char) (c2 + 1);
        }
    }

    public fzg(String str) {
        this(str, ex.f16307a);
    }

    public fzg(String str, int i) {
        this.w = ex.f16307a;
        this.u = ex.f16310d;
        this.i = ex.f16311e;
        this.m = null;
        this.r = 0;
        char[] cArr = (char[]) f17700d.get();
        this.p = cArr;
        if (cArr == null) {
            this.p = new char[512];
        }
        this.w = i;
        this.k = str;
        int length = str.length();
        this.j = length;
        int i2 = (-1) + 1;
        this.n = i2;
        char charAt = i2 >= length ? (char) 26 : str.charAt(i2);
        this.l = charAt;
        if (charAt == 65279) {
            ag();
        }
        this.q = (cbj.InitStringFieldAsEmpty.mask & i) != 0 ? "" : null;
        this.v = (cbj.DisableCircularReferenceDetect.mask & i) != 0;
    }

    public static String aa(char[] cArr, int i) {
        int i2;
        int i3;
        char[] cArr2 = new char[i];
        int i4 = 0;
        int i5 = 0;
        while (i4 < i) {
            char c2 = cArr[i4];
            if (c2 != '\\') {
                cArr2[i5] = c2;
                i5++;
            } else {
                int i6 = i4 + 1;
                char c3 = cArr[i6];
                if (c3 == '\"') {
                    i2 = i5 + 1;
                    cArr2[i5] = '\"';
                } else if (c3 != '\'') {
                    if (c3 != 'F') {
                        if (c3 == '\\') {
                            i2 = i5 + 1;
                            cArr2[i5] = '\\';
                        } else if (c3 == 'b') {
                            i2 = i5 + 1;
                            cArr2[i5] = '\b';
                        } else if (c3 != 'f') {
                            if (c3 == 'n') {
                                i2 = i5 + 1;
                                cArr2[i5] = '\n';
                            } else if (c3 != 'r') {
                                if (c3 != 'x') {
                                    switch (c3) {
                                        case '/':
                                            i2 = i5 + 1;
                                            cArr2[i5] = '/';
                                            break;
                                        case '0':
                                            i2 = i5 + 1;
                                            cArr2[i5] = 0;
                                            break;
                                        case '1':
                                            i2 = i5 + 1;
                                            cArr2[i5] = 1;
                                            break;
                                        case '2':
                                            i2 = i5 + 1;
                                            cArr2[i5] = 2;
                                            break;
                                        case '3':
                                            i2 = i5 + 1;
                                            cArr2[i5] = 3;
                                            break;
                                        case '4':
                                            i2 = i5 + 1;
                                            cArr2[i5] = 4;
                                            break;
                                        case '5':
                                            i2 = i5 + 1;
                                            cArr2[i5] = 5;
                                            break;
                                        case '6':
                                            i2 = i5 + 1;
                                            cArr2[i5] = 6;
                                            break;
                                        case '7':
                                            i2 = i5 + 1;
                                            cArr2[i5] = 7;
                                            break;
                                        default:
                                            switch (c3) {
                                                case 't':
                                                    i2 = i5 + 1;
                                                    cArr2[i5] = '\t';
                                                    break;
                                                case 'u':
                                                    i3 = i5 + 1;
                                                    char c4 = cArr[i4 + 2];
                                                    char c5 = cArr[i4 + 3];
                                                    char c6 = cArr[i4 + 4];
                                                    i4 += 5;
                                                    cArr2[i5] = (char) Integer.parseInt(new String(new char[]{c4, c5, c6, cArr[i4]}), 16);
                                                    break;
                                                case 'v':
                                                    i2 = i5 + 1;
                                                    cArr2[i5] = 11;
                                                    break;
                                                default:
                                                    throw new bfj("unclosed.str.lit");
                                            }
                                    }
                                } else {
                                    i3 = i5 + 1;
                                    char c7 = cArr[i4 + 2];
                                    int[] iArr = f17701e;
                                    i4 += 3;
                                    cArr2[i5] = (char) ((iArr[c7] * 16) + iArr[cArr[i4]]);
                                }
                                i5 = i3;
                            } else {
                                i2 = i5 + 1;
                                cArr2[i5] = '\r';
                            }
                        }
                    }
                    i2 = i5 + 1;
                    cArr2[i5] = '\f';
                } else {
                    i2 = i5 + 1;
                    cArr2[i5] = '\'';
                }
                i5 = i2;
                i4 = i6;
            }
            i4++;
        }
        return new String(cArr2, 0, i5);
    }

    public static boolean y(char c2, char c3, char c4, char c5, char c6, char c7, int i, int i2) {
        if ((c2 == '1' || c2 == '2') && c3 >= '0' && c3 <= '9' && c4 >= '0' && c4 <= '9' && c5 >= '0' && c5 <= '9') {
            if (c6 == '0') {
                if (c7 < '1' || c7 > '9') {
                    return false;
                }
            } else if (c6 != '1' || (c7 != '0' && c7 != '1' && c7 != '2')) {
                return false;
            }
            if (i == 48) {
                return i2 >= 49 && i2 <= 57;
            }
            if (i != 49 && i != 50) {
                return i == 51 && (i2 == 48 || i2 == 49);
            }
            if (i2 >= 48 && i2 <= 57) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x001d, code lost:
    
        if (r5 <= '4') goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean z(char c2, char c3, char c4, char c5, char c6, char c7) {
        if (c2 == '0') {
            if (c3 < '0' || c3 > '9') {
                return false;
            }
        } else {
            if (c2 != '1') {
                if (c2 == '2') {
                    if (c3 >= '0') {
                    }
                }
                return false;
            }
            if (c3 < '0' || c3 > '9') {
                return false;
            }
        }
        if (c4 < '0' || c4 > '5') {
            if (c4 != '6' || c5 != '0') {
                return false;
            }
        } else if (c5 < '0' || c5 > '9') {
            return false;
        }
        return (c6 < '0' || c6 > '5') ? c6 == '6' && c7 == '0' : c7 >= '0' && c7 <= '9';
    }

    public final String ab(char[] cArr) {
        String str;
        this.r = 0;
        boolean be = be(cArr);
        String str2 = this.q;
        if (!be) {
            this.r = -2;
            return str2;
        }
        int length = cArr.length;
        int i = length + 1;
        int i2 = this.n + length;
        int i3 = this.j;
        if (i2 >= i3) {
            throw new bfj("unclosed str, " + ac());
        }
        String str3 = this.k;
        if (str3.charAt(i2) != '\"') {
            this.r = -1;
            return str2;
        }
        int i4 = this.n + i;
        int indexOf = str3.indexOf(34, i4);
        if (indexOf == -1) {
            throw new bfj("unclosed str, " + ac());
        }
        if (f17703g) {
            str = str3.substring(i4, indexOf);
        } else {
            int i5 = indexOf - i4;
            str = new String(ai(this.n + i, i5), 0, i5);
        }
        if (str.indexOf(92) != -1) {
            boolean z = false;
            while (true) {
                int i6 = indexOf - 1;
                int i7 = 0;
                while (i6 >= 0 && str3.charAt(i6) == '\\') {
                    i7++;
                    i6--;
                    z = true;
                }
                if (i7 % 2 == 0) {
                    break;
                }
                indexOf = str3.indexOf(34, indexOf + 1);
            }
            int i8 = indexOf - i4;
            char[] ai = ai(this.n + i, i8);
            if (z) {
                str = aa(ai, i8);
            } else {
                str = new String(ai, 0, i8);
                if (str.indexOf(92) != -1) {
                    str = aa(ai, i8);
                }
            }
        }
        int i9 = indexOf + 1;
        char charAt = i9 >= i3 ? (char) 26 : str3.charAt(i9);
        if (charAt == ',') {
            int i10 = indexOf + 2;
            this.n = i10;
            this.l = i10 < i3 ? str3.charAt(i10) : (char) 26;
            this.r = 3;
            this.o = 16;
            return str;
        }
        if (charAt != '}') {
            this.r = -1;
            return str2;
        }
        int i11 = indexOf + 2;
        char bk = bk(i11);
        if (bk == ',') {
            this.o = 16;
            this.n = i11;
            ag();
        } else if (bk == ']') {
            this.o = 15;
            this.n = i11;
            ag();
        } else if (bk == '}') {
            this.o = 13;
            this.n = i11;
            ag();
        } else {
            if (bk != 26) {
                this.r = -1;
                return str2;
            }
            this.o = 20;
            this.n = i11;
            this.l = (char) 26;
        }
        this.r = 4;
        return str;
    }

    public final String ac() {
        StringBuilder sb = new StringBuilder("pos ");
        sb.append(this.n);
        sb.append(", json : ");
        String str = this.k;
        if (str.length() >= 65536) {
            str = str.substring(0, 65536);
        }
        sb.append(str);
        return sb.toString();
    }

    public final boolean ad() {
        int i = 0;
        while (true) {
            char bk = bk(i);
            if (bk == 26) {
                return true;
            }
            if (bk > ' ' || !(bk == ' ' || bk == '\n' || bk == '\r' || bk == '\t' || bk == '\f' || bk == '\b')) {
                break;
            }
            i++;
        }
        return false;
    }

    public final String ae() {
        String str;
        int i = this.n + 1;
        String str2 = this.k;
        int indexOf = str2.indexOf(34, i);
        if (indexOf == -1) {
            throw new bfj("unclosed str, " + ac());
        }
        if (f17703g) {
            str = str2.substring(i, indexOf);
        } else {
            int i2 = indexOf - i;
            str = new String(ai(this.n + 1, i2), 0, i2);
        }
        if (str.indexOf(92) != -1) {
            while (true) {
                int i3 = 0;
                for (int i4 = indexOf - 1; i4 >= 0 && str2.charAt(i4) == '\\'; i4--) {
                    i3++;
                }
                if (i3 % 2 == 0) {
                    break;
                }
                indexOf = str2.indexOf(34, indexOf + 1);
            }
            int i5 = indexOf - i;
            str = aa(ai(this.n + 1, i5), i5);
        }
        int i6 = indexOf + 1;
        this.n = i6;
        this.l = i6 >= this.j ? (char) 26 : str2.charAt(i6);
        return str;
    }

    public final void af(char c2, char c3, char c4, char c5, char c6, char c7, char c8, char c9) {
        Calendar calendar = Calendar.getInstance(this.u, this.i);
        this.m = calendar;
        int i = c5 - '0';
        calendar.set(1, i + ((c4 - '0') * 10) + ((c3 - '0') * 100) + ((c2 - '0') * 1000));
        this.m.set(2, ((c7 - '0') + ((c6 - '0') * 10)) - 1);
        this.m.set(5, (c9 - '0') + ((c8 - '0') * 10));
    }

    public final char ag() {
        int i = this.n + 1;
        this.n = i;
        char charAt = i >= this.j ? (char) 26 : this.k.charAt(i);
        this.l = charAt;
        return charAt;
    }

    public final long ah(char[] cArr) {
        int i;
        char charAt;
        boolean z = false;
        this.r = 0;
        if (!be(cArr)) {
            this.r = -2;
            return 0L;
        }
        int length = cArr.length;
        int i2 = length + 1;
        int i3 = this.n + length;
        String str = this.k;
        int i4 = this.j;
        char charAt2 = i3 >= i4 ? (char) 26 : str.charAt(i3);
        if (charAt2 == '\"') {
            int i5 = length + 2;
            int i6 = this.n + i2;
            charAt2 = i6 >= i4 ? (char) 26 : str.charAt(i6);
            i2 = i5;
            z = true;
        }
        if (charAt2 < '0' || charAt2 > '9') {
            this.r = -1;
            return 0L;
        }
        long j = charAt2 - '0';
        while (true) {
            i = i2 + 1;
            int i7 = this.n + i2;
            charAt = i7 >= i4 ? (char) 26 : str.charAt(i7);
            if (charAt < '0' || charAt > '9') {
                break;
            }
            j = (j * 10) + (charAt - '0');
            i2 = i;
        }
        if (charAt == '.') {
            this.r = -1;
            return 0L;
        }
        if (charAt == '\"') {
            if (!z) {
                this.r = -1;
                return 0L;
            }
            int i8 = i2 + 2;
            int i9 = this.n + i;
            charAt = i9 >= i4 ? (char) 26 : str.charAt(i9);
            i = i8;
        }
        if (j < 0) {
            this.r = -1;
            return 0L;
        }
        if (charAt == ',') {
            int i10 = (i - 1) + this.n + 1;
            this.n = i10;
            this.l = i10 < i4 ? str.charAt(i10) : (char) 26;
            this.r = 3;
            this.o = 16;
            return j;
        }
        if (charAt != '}') {
            this.r = -1;
            return 0L;
        }
        char bk = bk(this.n + i);
        if (bk == ',') {
            this.o = 16;
            int i11 = this.n + i + 1;
            this.n = i11;
            this.l = i11 < i4 ? str.charAt(i11) : (char) 26;
        } else if (bk == ']') {
            this.o = 15;
            int i12 = this.n + i + 1;
            this.n = i12;
            this.l = i12 < i4 ? str.charAt(i12) : (char) 26;
        } else if (bk == '}') {
            this.o = 13;
            int i13 = this.n + i + 1;
            this.n = i13;
            this.l = i13 < i4 ? str.charAt(i13) : (char) 26;
        } else {
            if (bk != 26) {
                this.r = -1;
                return 0L;
            }
            this.o = 20;
            this.n += i;
            this.l = (char) 26;
        }
        this.r = 4;
        return j;
    }

    public final char[] ai(int i, int i2) {
        char[] cArr = this.p;
        int length = cArr.length;
        String str = this.k;
        if (i2 < length) {
            str.getChars(i, i2 + i, cArr, 0);
            return this.p;
        }
        char[] cArr2 = new char[i2];
        this.p = cArr2;
        str.getChars(i, i2 + i, cArr2, 0);
        return cArr2;
    }

    public final void aj() {
        while (true) {
            char c2 = this.l;
            if (c2 > '/') {
                return;
            }
            if (c2 == ' ' || c2 == '\r' || c2 == '\n' || c2 == '\t' || c2 == '\f' || c2 == '\b') {
                ag();
            } else if (c2 != '/') {
                return;
            } else {
                as();
            }
        }
    }

    public final void ak() {
        char c2 = this.l;
        int i = this.n + 1;
        String str = this.k;
        int indexOf = str.indexOf(c2, i);
        if (indexOf == -1) {
            throw new bfj("unclosed str, " + ac());
        }
        int i2 = indexOf - i;
        char[] ai = ai(this.n + 1, i2);
        boolean z = false;
        while (i2 > 0 && ai[i2 - 1] == '\\') {
            int i3 = 1;
            for (int i4 = i2 - 2; i4 >= 0 && ai[i4] == '\\'; i4--) {
                i3++;
            }
            if (i3 % 2 == 0) {
                break;
            }
            int indexOf2 = str.indexOf(c2, indexOf + 1);
            int i5 = (indexOf2 - indexOf) + i2;
            if (i5 >= ai.length) {
                int length = (ai.length * 3) / 2;
                if (length < i5) {
                    length = i5;
                }
                char[] cArr = new char[length];
                System.arraycopy(ai, 0, cArr, 0, ai.length);
                ai = cArr;
            }
            str.getChars(indexOf, indexOf2, ai, i2);
            indexOf = indexOf2;
            i2 = i5;
            z = true;
        }
        if (!z) {
            for (int i6 = 0; i6 < i2; i6++) {
                if (ai[i6] == '\\') {
                    z = true;
                }
            }
        }
        this.p = ai;
        this.x = i2;
        this.h = this.n;
        this.s = z;
        int i7 = indexOf + 1;
        this.n = i7;
        this.l = i7 >= this.j ? (char) 26 : str.charAt(i7);
        this.o = 4;
    }

    public final boolean al(char[] cArr) {
        if (!be(cArr)) {
            return false;
        }
        int length = this.n + cArr.length;
        this.n = length;
        int i = this.j;
        if (length >= i) {
            throw new bfj("unclosed str, " + ac());
        }
        String str = this.k;
        char charAt = str.charAt(length);
        this.l = charAt;
        if (charAt == '{') {
            int i2 = this.n + 1;
            this.n = i2;
            this.l = i2 < i ? str.charAt(i2) : (char) 26;
            this.o = 12;
        } else if (charAt == '[') {
            int i3 = this.n + 1;
            this.n = i3;
            this.l = i3 < i ? str.charAt(i3) : (char) 26;
            this.o = 14;
        } else {
            az();
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x02e4  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x02f1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean am(boolean z) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        char bk;
        int i6;
        char bk2;
        int i7;
        char bk3;
        String str = this.k;
        int length = str.length();
        int i8 = this.n;
        int i9 = length - i8;
        if (!z && i9 > 13 && str.startsWith("/Date(", i8) && bk((this.n + i9) - 1) == '/' && bk((this.n + i9) - 2) == ')') {
            int i10 = -1;
            for (int i11 = 6; i11 < i9; i11++) {
                char bk4 = bk(this.n + i11);
                if (bk4 != '+') {
                    if (bk4 < '0' || bk4 > '9') {
                        break;
                    }
                } else {
                    i10 = i11;
                }
            }
            if (i10 != -1) {
                int i12 = this.n + 6;
                long parseLong = Long.parseLong(bc(i12, i10 - i12));
                Calendar calendar = Calendar.getInstance(this.u, this.i);
                this.m = calendar;
                calendar.setTimeInMillis(parseLong);
                this.o = 5;
                return true;
            }
        } else {
            int i13 = 3;
            if (i9 == 8 || i9 == 14 || i9 == 17) {
                if (!z) {
                    char bk5 = bk(this.n);
                    char bk6 = bk(this.n + 1);
                    char bk7 = bk(this.n + 2);
                    char bk8 = bk(this.n + 3);
                    char bk9 = bk(this.n + 4);
                    char bk10 = bk(this.n + 5);
                    char bk11 = bk(this.n + 6);
                    char bk12 = bk(this.n + 7);
                    if (y(bk5, bk6, bk7, bk8, bk9, bk10, bk11, bk12)) {
                        af(bk5, bk6, bk7, bk8, bk9, bk10, bk11, bk12);
                        if (i9 != 8) {
                            char bk13 = bk(this.n + 8);
                            char bk14 = bk(this.n + 9);
                            char bk15 = bk(this.n + 10);
                            char bk16 = bk(this.n + 11);
                            char bk17 = bk(this.n + 12);
                            char bk18 = bk(this.n + 13);
                            if (!z(bk13, bk14, bk15, bk16, bk17, bk18)) {
                                return false;
                            }
                            if (i9 == 17) {
                                char bk19 = bk(this.n + 14);
                                char bk20 = bk(this.n + 15);
                                char bk21 = bk(this.n + 16);
                                if (bk19 < '0' || bk19 > '9' || bk20 < '0' || bk20 > '9' || bk21 < '0' || bk21 > '9') {
                                    return false;
                                }
                                i5 = (bk21 - '0') + ((bk20 - '0') * 10) + ((bk19 - '0') * 100);
                            } else {
                                i5 = 0;
                            }
                            int i14 = ((bk13 - '0') * 10) + (bk14 - '0');
                            i3 = (bk18 - '0') + ((bk17 - '0') * 10);
                            i2 = i5;
                            i = ((bk15 - '0') * 10) + (bk16 - '0');
                            i4 = i14;
                        } else {
                            i = 0;
                            i2 = 0;
                            i3 = 0;
                            i4 = 0;
                        }
                        this.m.set(11, i4);
                        this.m.set(12, i);
                        this.m.set(13, i3);
                        this.m.set(14, i2);
                        this.o = 5;
                        return true;
                    }
                }
            } else if (i9 >= 10 && bk(this.n + 4) == '-' && bk(this.n + 7) == '-') {
                char bk22 = bk(this.n);
                char bk23 = bk(this.n + 1);
                char bk24 = bk(this.n + 2);
                char bk25 = bk(this.n + 3);
                char bk26 = bk(this.n + 5);
                char bk27 = bk(this.n + 6);
                char bk28 = bk(this.n + 8);
                char bk29 = bk(this.n + 9);
                if (y(bk22, bk23, bk24, bk25, bk26, bk27, bk28, bk29)) {
                    af(bk22, bk23, bk24, bk25, bk26, bk27, bk28, bk29);
                    char bk30 = bk(this.n + 10);
                    if (bk30 == 'T' || (bk30 == ' ' && !z)) {
                        if (i9 >= 19 && bk(this.n + 13) == ':' && bk(this.n + 16) == ':') {
                            char bk31 = bk(this.n + 11);
                            char bk32 = bk(this.n + 12);
                            char bk33 = bk(this.n + 14);
                            char bk34 = bk(this.n + 15);
                            char bk35 = bk(this.n + 17);
                            char bk36 = bk(this.n + 18);
                            if (z(bk31, bk32, bk33, bk34, bk35, bk36)) {
                                this.m.set(11, (bk32 - '0') + ((bk31 - '0') * 10));
                                this.m.set(12, (bk34 - '0') + ((bk33 - '0') * 10));
                                this.m.set(13, (bk36 - '0') + ((bk35 - '0') * 10));
                                char bk37 = bk(this.n + 19);
                                if (bk37 != '.') {
                                    this.m.set(14, 0);
                                    int i15 = this.n + 19;
                                    this.n = i15;
                                    this.l = bk(i15);
                                    this.o = 5;
                                    if (bk37 == 'Z' && this.m.getTimeZone().getRawOffset() != 0) {
                                        String[] availableIDs = TimeZone.getAvailableIDs(0);
                                        if (availableIDs.length > 0) {
                                            this.m.setTimeZone(DesugarTimeZone.getTimeZone(availableIDs[0]));
                                        }
                                    }
                                    return true;
                                }
                                if (i9 >= 23 && (bk = bk(this.n + 20)) >= '0' && bk <= '9') {
                                    int[] iArr = f17701e;
                                    int i16 = iArr[bk];
                                    char bk38 = bk(this.n + 21);
                                    if (bk38 < '0' || bk38 > '9') {
                                        i6 = 1;
                                    } else {
                                        i16 = (i16 * 10) + iArr[bk38];
                                        i6 = 2;
                                    }
                                    if (i6 == 2 && (bk3 = bk(this.n + 22)) >= '0' && bk3 <= '9') {
                                        i16 = (i16 * 10) + iArr[bk3];
                                        i6 = 3;
                                    }
                                    this.m.set(14, i16);
                                    char bk39 = bk(this.n + 20 + i6);
                                    if (bk39 == '+' || bk39 == '-') {
                                        char bk40 = bk(this.n + 20 + i6 + 1);
                                        if (bk40 >= '0' && bk40 <= '1' && (bk2 = bk(this.n + 20 + i6 + 2)) >= '0' && bk2 <= '9') {
                                            char bk41 = bk(this.n + 20 + i6 + 3);
                                            if (bk41 != ':') {
                                                if (bk41 == '0') {
                                                    if (bk(this.n + 20 + i6 + 4) == '0') {
                                                        i13 = 5;
                                                    }
                                                }
                                                i7 = ((iArr[bk40] * 10) + iArr[bk2]) * 3600000;
                                                if (bk39 == '-') {
                                                }
                                                if (this.m.getTimeZone().getRawOffset() != i7) {
                                                }
                                            } else if (bk(this.n + 20 + i6 + 4) == '0' && bk(this.n + 20 + i6 + 5) == '0') {
                                                i13 = 6;
                                                i7 = ((iArr[bk40] * 10) + iArr[bk2]) * 3600000;
                                                if (bk39 == '-') {
                                                    i7 = -i7;
                                                }
                                                if (this.m.getTimeZone().getRawOffset() != i7) {
                                                    String[] availableIDs2 = TimeZone.getAvailableIDs(i7);
                                                    if (availableIDs2.length > 0) {
                                                        this.m.setTimeZone(DesugarTimeZone.getTimeZone(availableIDs2[0]));
                                                    }
                                                }
                                            }
                                        }
                                    } else if (bk39 == 'Z') {
                                        if (this.m.getTimeZone().getRawOffset() != 0) {
                                            String[] availableIDs3 = TimeZone.getAvailableIDs(0);
                                            if (availableIDs3.length > 0) {
                                                this.m.setTimeZone(DesugarTimeZone.getTimeZone(availableIDs3[0]));
                                            }
                                        }
                                        i13 = 1;
                                    } else {
                                        i13 = 0;
                                    }
                                    int i17 = i6 + 20 + i13;
                                    char bk42 = bk(this.n + i17);
                                    if (bk42 == 26 || bk42 == '\"') {
                                        int i18 = this.n + i17;
                                        this.n = i18;
                                        this.l = bk(i18);
                                        this.o = 5;
                                        return true;
                                    }
                                }
                            }
                        }
                    } else if (bk30 == '\"' || bk30 == 26) {
                        this.m.set(11, 0);
                        this.m.set(12, 0);
                        this.m.set(13, 0);
                        this.m.set(14, 0);
                        int i19 = this.n + 10;
                        this.n = i19;
                        this.l = bk(i19);
                        this.o = 5;
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean an(cbj cbjVar) {
        return (cbjVar.mask & this.w) != 0;
    }

    public final byte[] ao() {
        String str;
        int[] iArr;
        int i;
        int i2 = this.h + 1;
        int i3 = this.x;
        if (i3 == 0) {
            return new byte[0];
        }
        int i4 = (i2 + i3) - 1;
        while (true) {
            str = this.k;
            iArr = f17698b;
            if (i2 >= i4 || iArr[str.charAt(i2)] >= 0) {
                break;
            }
            i2++;
        }
        while (i4 > 0 && iArr[str.charAt(i4)] < 0) {
            i4--;
        }
        int i5 = str.charAt(i4) == '=' ? str.charAt(i4 + (-1)) == '=' ? 2 : 1 : 0;
        int i6 = (i4 - i2) + 1;
        if (i3 > 76) {
            i = (str.charAt(76) == '\r' ? i6 / 78 : 0) << 1;
        } else {
            i = 0;
        }
        int i7 = (((i6 - i) * 6) >> 3) - i5;
        byte[] bArr = new byte[i7];
        int i8 = (i7 / 3) * 3;
        int i9 = 0;
        int i10 = 0;
        while (i9 < i8) {
            int i11 = i2 + 4;
            int i12 = (iArr[str.charAt(i2 + 2)] << 6) | (iArr[str.charAt(i2 + 1)] << 12) | (iArr[str.charAt(i2)] << 18) | iArr[str.charAt(i2 + 3)];
            bArr[i9] = (byte) (i12 >> 16);
            int i13 = i9 + 2;
            bArr[i9 + 1] = (byte) (i12 >> 8);
            i9 += 3;
            bArr[i13] = (byte) i12;
            if (i <= 0 || (i10 = i10 + 1) != 19) {
                i2 = i11;
            } else {
                i2 += 6;
                i10 = 0;
            }
        }
        if (i9 < i7) {
            int i14 = 0;
            int i15 = 0;
            while (i2 <= i4 - i5) {
                i14 |= iArr[str.charAt(i2)] << (18 - (i15 * 6));
                i15++;
                i2++;
            }
            int i16 = 16;
            while (i9 < i7) {
                bArr[i9] = (byte) (i14 >> i16);
                i16 -= 8;
                i9++;
            }
        }
        return bArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0074  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean ap(char[] cArr) {
        int i;
        boolean z;
        char bk;
        this.r = 0;
        if (!be(cArr)) {
            this.r = -2;
            return false;
        }
        int length = cArr.length;
        int i2 = this.n + length;
        String str = this.k;
        if (!str.startsWith("false", i2)) {
            if (str.startsWith("true", this.n + length)) {
                i = length + 4;
            } else if (str.startsWith("\"false\"", this.n + length)) {
                i = length + 7;
            } else {
                if (!str.startsWith("\"true\"", this.n + length)) {
                    this.r = -1;
                    return false;
                }
                i = length + 6;
            }
            z = true;
            int i3 = i + 1;
            bk = bk(this.n + i);
            int i4 = this.j;
            if (bk != ',') {
                int i5 = this.n + i + 1;
                this.n = i5;
                this.l = i5 < i4 ? str.charAt(i5) : (char) 26;
                this.r = 3;
                this.o = 16;
                return z;
            }
            if (bk != '}') {
                this.r = -1;
                return false;
            }
            char bk2 = bk(this.n + i3);
            if (bk2 == ',') {
                this.o = 16;
                int i6 = i + 1 + this.n + 1;
                this.n = i6;
                this.l = i6 < i4 ? str.charAt(i6) : (char) 26;
            } else if (bk2 == ']') {
                this.o = 15;
                int i7 = i + 1 + this.n + 1;
                this.n = i7;
                this.l = i7 < i4 ? str.charAt(i7) : (char) 26;
            } else if (bk2 == '}') {
                this.o = 13;
                int i8 = i + 1 + this.n + 1;
                this.n = i8;
                this.l = i8 < i4 ? str.charAt(i8) : (char) 26;
            } else {
                if (bk2 != 26) {
                    this.r = -1;
                    return false;
                }
                this.o = 20;
                this.n = i + 1 + this.n;
                this.l = (char) 26;
            }
            this.r = 4;
            return z;
        }
        i = length + 5;
        z = false;
        int i32 = i + 1;
        bk = bk(this.n + i);
        int i42 = this.j;
        if (bk != ',') {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a6, code lost:
    
        if (r0 != false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a9, code lost:
    
        return -r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00aa, code lost:
    
        return r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long aq() {
        long j;
        boolean z = false;
        this.h = 0;
        char c2 = this.l;
        String str = this.k;
        int i = this.j;
        if (c2 == '-') {
            this.h = 1;
            int i2 = this.n + 1;
            this.n = i2;
            if (i2 >= i) {
                throw new bfj("syntax error, " + ac());
            }
            this.l = str.charAt(i2);
            j = Long.MIN_VALUE;
            z = true;
        } else {
            j = -9223372036854775807L;
        }
        long j2 = 0;
        while (true) {
            char c3 = this.l;
            if (c3 < '0' || c3 > '9') {
                break;
            }
            int i3 = c3 - '0';
            if (j2 < -922337203685477580L) {
                StringBuilder l = awf.l(j2, "error long value, ", ", ");
                l.append(ac());
                throw new bfj(l.toString());
            }
            long j3 = j2 * 10;
            long j4 = i3;
            if (j3 < j + j4) {
                StringBuilder l2 = awf.l(j3, "error long value, ", ", ");
                l2.append(ac());
                throw new bfj(l2.toString());
            }
            j2 = j3 - j4;
            this.h++;
            int i4 = this.n + 1;
            this.n = i4;
            this.l = i4 >= i ? (char) 26 : str.charAt(i4);
        }
    }

    public final void ar() {
        this.h = this.n - 1;
        this.s = false;
        do {
            this.x++;
            ag();
        } while (Character.isLetterOrDigit(this.l));
        String bj = bj();
        if (bj.equals("null")) {
            this.o = 8;
            return;
        }
        if (bj.equals("true")) {
            this.o = 6;
            return;
        }
        if (bj.equals("false")) {
            this.o = 7;
            return;
        }
        if (bj.equals("new")) {
            this.o = 9;
            return;
        }
        if (bj.equals("undefined")) {
            this.o = 23;
            return;
        }
        if (bj.equals("Set")) {
            this.o = 21;
        } else if (bj.equals("TreeSet")) {
            this.o = 22;
        } else {
            this.o = 18;
        }
    }

    public final void as() {
        ag();
        char c2 = this.l;
        if (c2 == '/') {
            do {
                ag();
            } while (this.l != '\n');
            ag();
        } else {
            if (c2 != '*') {
                throw new bfj("invalid comment");
            }
            ag();
            while (true) {
                char c3 = this.l;
                if (c3 == 26) {
                    return;
                }
                if (c3 == '*') {
                    ag();
                    if (this.l == '/') {
                        ag();
                        return;
                    }
                } else {
                    ag();
                }
            }
        }
    }

    public final String at(gqc gqcVar) {
        int i = this.l;
        boolean[] zArr = f17699c;
        if (i < zArr.length && !zArr[i]) {
            throw new bfj("illegal identifier : " + this.l + ", " + ac());
        }
        this.h = this.n;
        this.x = 1;
        while (true) {
            char ag = ag();
            boolean[] zArr2 = f17702f;
            if (ag < zArr2.length && !zArr2[ag]) {
                break;
            }
            i = (i * 31) + ag;
            this.x++;
        }
        this.l = bk(this.n);
        this.o = 18;
        int i2 = this.x;
        String str = this.k;
        if (i2 == 4 && str.startsWith("null", this.h)) {
            return null;
        }
        return gqcVar.az(str, this.h, this.x, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x007b A[ADDED_TO_REGION] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:59:0x007d -> B:56:0x006e). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final double au(char[] cArr) {
        int i;
        char bk;
        this.r = 0;
        if (!be(cArr)) {
            this.r = -2;
            return 0.0d;
        }
        int length = cArr.length;
        int i2 = length + 1;
        char bk2 = bk(this.n + length);
        if (bk2 < '0' || bk2 > '9') {
            this.r = -1;
            return 0.0d;
        }
        while (true) {
            i = i2 + 1;
            bk = bk(this.n + i2);
            if (bk < '0' || bk > '9') {
                break;
            }
            i2 = i;
        }
        if (bk == '.') {
            int i3 = i2 + 2;
            char bk3 = bk(this.n + i);
            if (bk3 >= '0' && bk3 <= '9') {
                while (true) {
                    i = i3 + 1;
                    bk = bk(this.n + i3);
                    if (bk < '0' || bk > '9') {
                        break;
                    }
                    i3 = i;
                }
            } else {
                this.r = -1;
                return 0.0d;
            }
        }
        if (bk == 'e' || bk == 'E') {
            int i4 = i + 1;
            bk = bk(this.n + i);
            if (bk == '+' || bk == '-') {
                i += 2;
                bk = bk(this.n + i4);
                if (bk >= '0' && bk <= '9') {
                    i4 = i + 1;
                    bk = bk(this.n + i);
                }
            }
            i = i4;
            if (bk >= '0') {
                i4 = i + 1;
                bk = bk(this.n + i);
                i = i4;
                if (bk >= '0') {
                }
            }
        }
        double parseDouble = Double.parseDouble(bc(cArr.length + this.n, ((r4 + i) - r10) - 1));
        if (bk == ',') {
            this.n = (i - 1) + this.n;
            ag();
            this.r = 3;
            this.o = 16;
            return parseDouble;
        }
        if (bk != '}') {
            this.r = -1;
            return 0.0d;
        }
        char bk4 = bk(this.n + i);
        if (bk4 == ',') {
            this.o = 16;
            this.n += i;
            ag();
        } else if (bk4 == ']') {
            this.o = 15;
            this.n += i;
            ag();
        } else if (bk4 == '}') {
            this.o = 13;
            this.n += i;
            ag();
        } else {
            if (bk4 != 26) {
                this.r = -1;
                return 0.0d;
            }
            this.o = 20;
            this.n += i;
            this.l = (char) 26;
        }
        this.r = 4;
        return parseDouble;
    }

    public final float av(char[] cArr) {
        int i;
        char bk;
        this.r = 0;
        if (!be(cArr)) {
            this.r = -2;
            return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }
        int length = cArr.length;
        int i2 = length + 1;
        char bk2 = bk(this.n + length);
        if (bk2 < '0' || bk2 > '9') {
            this.r = -1;
            return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }
        while (true) {
            i = i2 + 1;
            bk = bk(this.n + i2);
            if (bk < '0' || bk > '9') {
                break;
            }
            i2 = i;
        }
        if (bk == '.') {
            int i3 = i2 + 2;
            char bk3 = bk(this.n + i);
            if (bk3 >= '0' && bk3 <= '9') {
                while (true) {
                    i = i3 + 1;
                    bk = bk(this.n + i3);
                    if (bk < '0' || bk > '9') {
                        break;
                    }
                    i3 = i;
                }
            } else {
                this.r = -1;
                return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            }
        }
        float parseFloat = Float.parseFloat(bc(cArr.length + this.n, ((r3 + i) - r9) - 1));
        if (bk == ',') {
            this.n = (i - 1) + this.n;
            ag();
            this.r = 3;
            this.o = 16;
            return parseFloat;
        }
        if (bk != '}') {
            this.r = -1;
            return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }
        char bk4 = bk(this.n + i);
        if (bk4 == ',') {
            this.o = 16;
            this.n += i;
            ag();
        } else if (bk4 == ']') {
            this.o = 15;
            this.n += i;
            ag();
        } else if (bk4 == '}') {
            this.o = 13;
            this.n += i;
            ag();
        } else {
            if (bk4 != 26) {
                this.r = -1;
                return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            }
            this.n += i;
            this.o = 20;
            this.l = (char) 26;
        }
        this.r = 4;
        return parseFloat;
    }

    public final void aw() {
        char[] cArr = this.p;
        if (cArr.length <= 8196) {
            f17700d.set(cArr);
        }
        this.p = null;
    }

    public final String ax(gqc gqcVar, char c2) {
        String aa;
        int i = this.n + 1;
        String str = this.k;
        int indexOf = str.indexOf(c2, i);
        if (indexOf == -1) {
            throw new bfj("unclosed str, " + ac());
        }
        int i2 = indexOf - i;
        char[] ai = ai(this.n + 1, i2);
        boolean z = false;
        while (i2 > 0 && ai[i2 - 1] == '\\') {
            int i3 = 1;
            for (int i4 = i2 - 2; i4 >= 0 && ai[i4] == '\\'; i4--) {
                i3++;
            }
            if (i3 % 2 == 0) {
                break;
            }
            int indexOf2 = str.indexOf(c2, indexOf + 1);
            int i5 = (indexOf2 - indexOf) + i2;
            if (i5 >= ai.length) {
                int length = (ai.length * 3) / 2;
                if (length < i5) {
                    length = i5;
                }
                char[] cArr = new char[length];
                System.arraycopy(ai, 0, cArr, 0, ai.length);
                ai = cArr;
            }
            str.getChars(indexOf, indexOf2, ai, i2);
            indexOf = indexOf2;
            i2 = i5;
            z = true;
        }
        if (z) {
            aa = aa(ai, i2);
        } else {
            int i6 = 0;
            for (int i7 = 0; i7 < i2; i7++) {
                char c3 = ai[i7];
                i6 = (i6 * 31) + c3;
                if (c3 == '\\') {
                    z = true;
                }
            }
            if (z) {
                aa = aa(ai, i2);
            } else if (i2 < 20) {
                int i8 = gqcVar.f18566ab & i6;
                dsg[] dsgVarArr = (dsg[]) gqcVar.z;
                dsg dsgVar = dsgVarArr[i8];
                if (dsgVar != null) {
                    char[] cArr2 = (char[]) dsgVar.f14705b;
                    if (i6 == dsgVar.f14707d && i2 == cArr2.length) {
                        for (int i9 = 0; i9 < i2; i9++) {
                            if (ai[i9] == cArr2[i9]) {
                            }
                        }
                        aa = (String) dsgVar.f14704a;
                    }
                    aa = new String(ai, 0, i2);
                    break;
                } else {
                    String intern = new String(ai, 0, i2).intern();
                    dsgVarArr[i8] = new dsg(intern, i6);
                    aa = intern;
                }
            } else {
                aa = new String(ai, 0, i2);
            }
        }
        int i10 = indexOf + 1;
        this.n = i10;
        this.l = i10 >= this.j ? (char) 26 : str.charAt(i10);
        return aa;
    }

    public final String ay() {
        char charAt = this.k.charAt((this.h + this.x) - 1);
        int i = this.x;
        if (charAt == 'L' || charAt == 'S' || charAt == 'B' || charAt == 'F' || charAt == 'D') {
            i--;
        }
        return bc(this.h, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0027, code lost:
    
        bm();
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002a, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00a1, code lost:
    
        if (r16.o == 20) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00a3, code lost:
    
        r16.o = 20;
        r16.n = 0;
        r16.t = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00a9, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00b1, code lost:
    
        throw new g.bfj("EOF error");
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0111, code lost:
    
        ar();
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0114, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void az() {
        int i = 0;
        this.x = 0;
        while (true) {
            int i2 = this.n;
            this.t = i2;
            char c2 = this.l;
            if (c2 == '/') {
                as();
            } else {
                if (c2 == '\"') {
                    ak();
                    return;
                }
                if ((c2 < '0' || c2 > '9') && c2 != '-') {
                    if (c2 == ',') {
                        ag();
                        this.o = 16;
                        return;
                    }
                    if (c2 != '\f' && c2 != '\r' && c2 != ' ') {
                        if (c2 == ':') {
                            ag();
                            this.o = 17;
                            return;
                        }
                        int i3 = this.j;
                        String str = this.k;
                        if (c2 == '[') {
                            int i4 = i2 + 1;
                            this.n = i4;
                            this.l = i4 < i3 ? str.charAt(i4) : (char) 26;
                            this.o = 14;
                            return;
                        }
                        if (c2 == ']') {
                            ag();
                            this.o = 15;
                            return;
                        }
                        if (c2 == 'f') {
                            if (str.startsWith("false", i2)) {
                                int i5 = this.n + 5;
                                this.n = i5;
                                char bk = bk(i5);
                                this.l = bk;
                                if (bk == ' ' || bk == ',' || bk == '}' || bk == ']' || bk == '\n' || bk == '\r' || bk == '\t' || bk == 26 || bk == '\f' || bk == '\b' || bk == ':') {
                                    this.o = 7;
                                    return;
                                }
                            }
                            throw new bfj("scan false error");
                        }
                        if (c2 == 'n') {
                            if (str.startsWith("null", i2)) {
                                this.n += 4;
                                i = 8;
                            } else if (str.startsWith("new", this.n)) {
                                this.n += 3;
                                i = 9;
                            }
                            if (i != 0) {
                                char bk2 = bk(this.n);
                                this.l = bk2;
                                if (bk2 == ' ' || bk2 == ',' || bk2 == '}' || bk2 == ']' || bk2 == '\n' || bk2 == '\r' || bk2 == '\t' || bk2 == 26 || bk2 == '\f' || bk2 == '\b') {
                                    this.o = i;
                                    return;
                                }
                            }
                            throw new bfj("scan null/new error");
                        }
                        if (c2 == '{') {
                            int i6 = i2 + 1;
                            this.n = i6;
                            this.l = i6 < i3 ? str.charAt(i6) : (char) 26;
                            this.o = 12;
                            return;
                        }
                        if (c2 == '}') {
                            int i7 = i2 + 1;
                            this.n = i7;
                            this.l = i7 < i3 ? str.charAt(i7) : (char) 26;
                            this.o = 13;
                            return;
                        }
                        if (c2 != 'S' && c2 != 'T') {
                            if (c2 == 't') {
                                if (str.startsWith("true", i2)) {
                                    int i8 = this.n + 4;
                                    this.n = i8;
                                    char bk3 = bk(i8);
                                    this.l = bk3;
                                    if (bk3 == ' ' || bk3 == ',' || bk3 == '}' || bk3 == ']' || bk3 == '\n' || bk3 == '\r' || bk3 == '\t' || bk3 == 26 || bk3 == '\f' || bk3 == '\b' || bk3 == ':') {
                                        this.o = 6;
                                        return;
                                    }
                                }
                                throw new bfj("scan true error");
                            }
                            if (c2 != 'u') {
                                switch (c2) {
                                    case '\b':
                                    case '\t':
                                    case '\n':
                                        break;
                                    default:
                                        switch (c2) {
                                            case '\'':
                                                if ((cbj.AllowSingleQuotes.mask & this.w) == 0) {
                                                    throw new bfj("Feature.AllowSingleQuotes is false");
                                                }
                                                ak();
                                                return;
                                            case '(':
                                                ag();
                                                this.o = 10;
                                                return;
                                            case ')':
                                                ag();
                                                this.o = 11;
                                                return;
                                            default:
                                                if (i2 != i3 && (c2 != 26 || i2 + 1 != i3)) {
                                                    if (c2 > 31 && c2 != 127) {
                                                        this.o = 1;
                                                        ag();
                                                        return;
                                                    } else {
                                                        ag();
                                                        continue;
                                                    }
                                                }
                                                break;
                                        }
                                }
                            }
                        }
                    }
                    ag();
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002d  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x005f -> B:6:0x0027). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long ba() {
        boolean z;
        long j;
        long j2;
        int i = this.h;
        int i2 = this.x + i;
        if (bk(i) == '-') {
            i++;
            j = Long.MIN_VALUE;
            z = true;
        } else {
            z = false;
            j = -9223372036854775807L;
        }
        if (i < i2) {
            int i3 = i + 1;
            j2 = -(bk(i) - '0');
            i = i3;
            if (i < i2) {
                i3 = i + 1;
                char charAt = i >= this.j ? (char) 26 : this.k.charAt(i);
                if (charAt == 'L' || charAt == 'S' || charAt == 'B') {
                    i = i3;
                } else {
                    int i4 = charAt - '0';
                    if (j2 < -922337203685477580L) {
                        throw new NumberFormatException(ay());
                    }
                    long j3 = j2 * 10;
                    long j4 = i4;
                    if (j3 < j + j4) {
                        throw new NumberFormatException(ay());
                    }
                    j2 = j3 - j4;
                    i = i3;
                    if (i < i2) {
                    }
                }
            }
            if (z) {
                return -j2;
            }
            if (i > this.h + 1) {
                return j2;
            }
            throw new NumberFormatException(ay());
        }
        j2 = 0;
        if (i < i2) {
        }
        if (z) {
        }
    }

    public final String bb() {
        return gs.h(this.o);
    }

    public final String bc(int i, int i2) {
        char[] cArr = this.p;
        int length = cArr.length;
        String str = this.k;
        if (i2 < length) {
            str.getChars(i, i + i2, cArr, 0);
            return new String(this.p, 0, i2);
        }
        char[] cArr2 = new char[i2];
        str.getChars(i, i2 + i, cArr2, 0);
        return new String(cArr2);
    }

    public final int bd() {
        int i;
        boolean z;
        int i2 = this.h;
        int i3 = this.x + i2;
        int i4 = 0;
        if (bk(i2) == '-') {
            i2++;
            i = Integer.MIN_VALUE;
            z = true;
        } else {
            i = -2147483647;
            z = false;
        }
        if (i2 < i3) {
            i4 = -(bk(i2) - '0');
            i2++;
        }
        while (i2 < i3) {
            int i5 = i2 + 1;
            char bk = bk(i2);
            if (bk == 'L' || bk == 'S' || bk == 'B') {
                i2 = i5;
                break;
            }
            int i6 = bk - '0';
            if (i4 < -214748364) {
                throw new NumberFormatException(ay());
            }
            int i7 = i4 * 10;
            if (i7 < i + i6) {
                throw new NumberFormatException(ay());
            }
            i4 = i7 - i6;
            i2 = i5;
        }
        if (!z) {
            return -i4;
        }
        if (i2 > this.h + 1) {
            return i4;
        }
        throw new NumberFormatException(ay());
    }

    public final boolean be(char[] cArr) {
        int length = cArr.length;
        if (this.n + length > this.j) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (cArr[i] != this.k.charAt(this.n + i)) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0086  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0084 -> B:11:0x004e). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Number bf() {
        char c2;
        boolean z;
        long j;
        long j2;
        int i = this.h;
        int i2 = this.x + i;
        char bk = bk(i2 - 1);
        if (bk == 'B') {
            i2--;
            c2 = 'B';
        } else if (bk == 'L') {
            i2--;
            c2 = 'L';
        } else if (bk != 'S') {
            c2 = ' ';
        } else {
            i2--;
            c2 = 'S';
        }
        if (bk(this.h) == '-') {
            i++;
            j = Long.MIN_VALUE;
            z = true;
        } else {
            z = false;
            j = -9223372036854775807L;
        }
        if (i < i2) {
            int i3 = i + 1;
            j2 = -(bk(i) - '0');
            i = i3;
            if (i < i2) {
                i3 = i + 1;
                int bk2 = bk(i) - '0';
                if (j2 < -922337203685477580L) {
                    return new BigInteger(ay());
                }
                long j3 = j2 * 10;
                long j4 = bk2;
                if (j3 < j + j4) {
                    return new BigInteger(ay());
                }
                j2 = j3 - j4;
                i = i3;
                if (i < i2) {
                    if (!z) {
                        long j5 = -j2;
                        return (j5 > 2147483647L || c2 == 'L') ? Long.valueOf(j5) : c2 == 'S' ? Short.valueOf((short) j5) : c2 == 'B' ? Byte.valueOf((byte) j5) : Integer.valueOf((int) j5);
                    }
                    if (i > this.h + 1) {
                        return (j2 < -2147483648L || c2 == 'L') ? Long.valueOf(j2) : c2 == 'S' ? Short.valueOf((short) j2) : c2 == 'B' ? Byte.valueOf((byte) j2) : Integer.valueOf((int) j2);
                    }
                    throw new NumberFormatException(ay());
                }
            }
        } else {
            j2 = 0;
            if (i < i2) {
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void bg(int i) {
        char c2;
        this.x = 0;
        while (true) {
            if (i != 2) {
                String str = this.k;
                int i2 = this.j;
                if (i == 4) {
                    char c3 = this.l;
                    if (c3 == '\"') {
                        this.t = this.n;
                        ak();
                        return;
                    } else if (c3 >= '0' && c3 <= '9') {
                        this.t = this.n;
                        bm();
                        return;
                    } else if (c3 == '{') {
                        this.o = 12;
                        int i3 = this.n + 1;
                        this.n = i3;
                        this.l = i3 < i2 ? str.charAt(i3) : (char) 26;
                        return;
                    }
                } else if (i == 12) {
                    char c4 = this.l;
                    if (c4 == '{') {
                        this.o = 12;
                        int i4 = this.n + 1;
                        this.n = i4;
                        this.l = i4 < i2 ? str.charAt(i4) : (char) 26;
                        return;
                    }
                    if (c4 == '[') {
                        this.o = 14;
                        int i5 = this.n + 1;
                        this.n = i5;
                        this.l = i5 < i2 ? str.charAt(i5) : (char) 26;
                        return;
                    }
                } else {
                    if (i == 18) {
                        while (true) {
                            c2 = this.l;
                            if (c2 <= ' ' && (c2 == ' ' || c2 == '\n' || c2 == '\r' || c2 == '\t' || c2 == '\f' || c2 == '\b')) {
                                ag();
                            }
                        }
                        if (c2 == '_' || Character.isLetter(c2)) {
                            ar();
                            return;
                        } else {
                            az();
                            return;
                        }
                    }
                    if (i != 20) {
                        switch (i) {
                            case 14:
                                char c5 = this.l;
                                if (c5 != '[') {
                                    if (c5 == '{') {
                                        this.o = 12;
                                        ag();
                                        break;
                                    }
                                } else {
                                    this.o = 14;
                                    ag();
                                    break;
                                }
                                break;
                            case 15:
                                if (this.l == ']') {
                                    this.o = 15;
                                    ag();
                                    break;
                                }
                                break;
                            case 16:
                                char c6 = this.l;
                                if (c6 != ',') {
                                    if (c6 != '}') {
                                        if (c6 != ']') {
                                            if (c6 == 26) {
                                                this.o = 20;
                                                break;
                                            }
                                        } else {
                                            this.o = 15;
                                            int i6 = this.n + 1;
                                            this.n = i6;
                                            this.l = i6 < i2 ? str.charAt(i6) : (char) 26;
                                            break;
                                        }
                                    } else {
                                        this.o = 13;
                                        int i7 = this.n + 1;
                                        this.n = i7;
                                        this.l = i7 < i2 ? str.charAt(i7) : (char) 26;
                                        break;
                                    }
                                } else {
                                    this.o = 16;
                                    int i8 = this.n + 1;
                                    this.n = i8;
                                    this.l = i8 < i2 ? str.charAt(i8) : (char) 26;
                                    break;
                                }
                                break;
                        }
                        return;
                    }
                    if (this.l == 26) {
                        this.o = 20;
                        return;
                    }
                }
            } else {
                char c7 = this.l;
                if (c7 >= '0' && c7 <= '9') {
                    this.t = this.n;
                    bm();
                    return;
                }
                if (c7 == '\"') {
                    this.t = this.n;
                    ak();
                    return;
                } else if (c7 == '[') {
                    this.o = 14;
                    ag();
                    return;
                } else if (c7 == '{') {
                    this.o = 12;
                    ag();
                    return;
                }
            }
            char c8 = this.l;
            if (c8 != ' ' && c8 != '\n' && c8 != '\r' && c8 != '\t' && c8 != '\f' && c8 != '\b') {
                az();
                return;
            }
            ag();
        }
    }

    public final String bh(char[] cArr, gqc gqcVar) {
        int i = 0;
        this.r = 0;
        if (!be(cArr)) {
            this.r = -2;
            return null;
        }
        int length = cArr.length;
        int i2 = length + 1;
        if (bk(this.n + length) != '\"') {
            this.r = -1;
            return null;
        }
        while (true) {
            int i3 = i2 + 1;
            char bk = bk(this.n + i2);
            if (bk == '\"') {
                int length2 = cArr.length + this.n + 1;
                String str = this.k;
                String az = gqcVar.az(str, length2, ((r1 + i3) - length2) - 1, i);
                int i4 = i2 + 2;
                char bk2 = bk(this.n + i3);
                if (bk2 == ',') {
                    int i5 = i2 + 1 + this.n + 1;
                    this.n = i5;
                    this.l = i5 < this.j ? str.charAt(i5) : (char) 26;
                    this.r = 3;
                    return az;
                }
                if (bk2 != '}') {
                    this.r = -1;
                    return null;
                }
                char bk3 = bk(this.n + i4);
                if (bk3 == ',') {
                    this.o = 16;
                    this.n = i2 + 2 + this.n;
                    ag();
                } else if (bk3 == ']') {
                    this.o = 15;
                    this.n = i2 + 2 + this.n;
                    ag();
                } else if (bk3 == '}') {
                    this.o = 13;
                    this.n = i2 + 2 + this.n;
                    ag();
                } else {
                    if (bk3 != 26) {
                        this.r = -1;
                        return null;
                    }
                    this.o = 20;
                    this.n = i2 + 2 + this.n;
                    this.l = (char) 26;
                }
                this.r = 4;
                return az;
            }
            i = (i * 31) + bk;
            if (bk == '\\') {
                this.r = -1;
                return null;
            }
            i2 = i3;
        }
    }

    public final Number bi() {
        long j;
        boolean z;
        char c2;
        Number number;
        boolean z2;
        char c3;
        char c4;
        boolean z3;
        int i = this.n;
        this.h = 0;
        char c5 = this.l;
        int i2 = this.j;
        String str = this.k;
        if (c5 == '-') {
            this.h = 1;
            int i3 = i + 1;
            this.n = i3;
            this.l = i3 >= i2 ? (char) 26 : str.charAt(i3);
            j = Long.MIN_VALUE;
            z = true;
        } else {
            j = -9223372036854775807L;
            z = false;
        }
        long j2 = 0;
        boolean z4 = false;
        while (true) {
            c2 = this.l;
            if (c2 < '0' || c2 > '9') {
                break;
            }
            int i4 = c2 - '0';
            if (j2 < -922337203685477580L) {
                z4 = true;
            }
            long j3 = j2 * 10;
            long j4 = i4;
            if (j3 < j + j4) {
                z4 = true;
            }
            j2 = j3 - j4;
            this.h++;
            int i5 = this.n + 1;
            this.n = i5;
            this.l = i5 >= i2 ? (char) 26 : str.charAt(i5);
        }
        if (!z) {
            j2 = -j2;
        }
        if (c2 == 'L') {
            this.h++;
            ag();
            number = Long.valueOf(j2);
        } else if (c2 == 'S') {
            this.h++;
            ag();
            number = Short.valueOf((short) j2);
        } else if (c2 == 'B') {
            this.h++;
            ag();
            number = Byte.valueOf((byte) j2);
        } else if (c2 == 'F') {
            this.h++;
            ag();
            number = Float.valueOf(j2);
        } else if (c2 == 'D') {
            this.h++;
            ag();
            number = Double.valueOf(j2);
        } else {
            number = null;
        }
        if (this.l == '.') {
            this.h++;
            int i6 = this.n + 1;
            this.n = i6;
            this.l = i6 >= i2 ? (char) 26 : str.charAt(i6);
            while (true) {
                char c6 = this.l;
                if (c6 < '0' || c6 > '9') {
                    break;
                }
                this.h++;
                int i7 = this.n + 1;
                this.n = i7;
                this.l = i7 >= i2 ? (char) 26 : str.charAt(i7);
            }
            z2 = true;
        } else {
            z2 = false;
        }
        char c7 = this.l;
        if (c7 == 'e' || c7 == 'E') {
            this.h++;
            int i8 = this.n + 1;
            this.n = i8;
            char charAt = i8 >= i2 ? (char) 26 : str.charAt(i8);
            this.l = charAt;
            if (charAt == '+' || charAt == '-') {
                this.h++;
                int i9 = this.n + 1;
                this.n = i9;
                this.l = i9 >= i2 ? (char) 26 : str.charAt(i9);
            }
            while (true) {
                c3 = this.l;
                if (c3 < '0' || c3 > '9') {
                    break;
                }
                this.h++;
                int i10 = this.n + 1;
                this.n = i10;
                this.l = i10 >= i2 ? (char) 26 : str.charAt(i10);
            }
            if (c3 == 'D' || c3 == 'F') {
                this.h++;
                ag();
            } else {
                c3 = 0;
            }
            c4 = c3;
            z3 = true;
        } else {
            c4 = 0;
            z3 = false;
        }
        if (!z2 && !z3) {
            if (z4) {
                int i11 = this.n;
                char[] cArr = new char[i11 - i];
                str.getChars(i, i11, cArr, 0);
                number = new BigInteger(new String(cArr));
            }
            return number == null ? (j2 <= -2147483648L || j2 >= 2147483647L) ? Long.valueOf(j2) : Integer.valueOf((int) j2) : number;
        }
        int i12 = this.n - i;
        if (c4 != 0) {
            i12--;
        }
        char[] cArr2 = new char[i12];
        str.getChars(i, i12 + i, cArr2, 0);
        if (!z3 && (cbj.UseBigDecimal.mask & this.w) != 0) {
            return new BigDecimal(cArr2);
        }
        String str2 = new String(cArr2);
        try {
            return c4 == 'F' ? Float.valueOf(str2) : Double.valueOf(Double.parseDouble(str2));
        } catch (NumberFormatException e2) {
            throw new bfj(e2.getMessage() + ", " + ac(), (Throwable) e2);
        }
    }

    public final String bj() {
        return this.s ? aa(this.p, this.x) : bc(this.h + 1, this.x);
    }

    public final char bk(int i) {
        if (i >= this.j) {
            return (char) 26;
        }
        return this.k.charAt(i);
    }

    public final String bl(gqc gqcVar) {
        char c2;
        while (true) {
            c2 = this.l;
            if (c2 != ' ' && c2 != '\n' && c2 != '\r' && c2 != '\t' && c2 != '\f' && c2 != '\b') {
                break;
            }
            ag();
        }
        if (c2 == '\"') {
            return ax(gqcVar, '\"');
        }
        int i = this.w;
        if (c2 == '\'') {
            if ((cbj.AllowSingleQuotes.mask & i) != 0) {
                return ax(gqcVar, '\'');
            }
            throw new bfj("syntax error");
        }
        if (c2 == '}') {
            ag();
            this.o = 13;
            return null;
        }
        if (c2 == ',') {
            ag();
            this.o = 16;
            return null;
        }
        if (c2 == 26) {
            this.o = 20;
            return null;
        }
        if ((cbj.AllowUnQuotedFieldNames.mask & i) != 0) {
            return at(gqcVar);
        }
        throw new bfj("syntax error");
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0129  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void bm() {
        char c2;
        boolean z;
        char c3;
        int i = this.n;
        this.h = i;
        char c4 = this.l;
        String str = this.k;
        int i2 = this.j;
        boolean z2 = true;
        if (c4 == '-') {
            this.x++;
            int i3 = i + 1;
            this.n = i3;
            this.l = i3 >= i2 ? (char) 26 : str.charAt(i3);
        }
        while (true) {
            c2 = this.l;
            if (c2 < '0' || c2 > '9') {
                break;
            }
            this.x++;
            int i4 = this.n + 1;
            this.n = i4;
            this.l = i4 >= i2 ? (char) 26 : str.charAt(i4);
        }
        if (c2 == '.') {
            this.x++;
            int i5 = this.n + 1;
            this.n = i5;
            this.l = i5 >= i2 ? (char) 26 : str.charAt(i5);
            while (true) {
                char c5 = this.l;
                if (c5 < '0' || c5 > '9') {
                    break;
                }
                this.x++;
                int i6 = this.n + 1;
                this.n = i6;
                this.l = i6 >= i2 ? (char) 26 : str.charAt(i6);
            }
            z = true;
        } else {
            z = false;
        }
        char c6 = this.l;
        if (c6 == 'L') {
            this.x++;
            ag();
        } else if (c6 == 'S') {
            this.x++;
            ag();
        } else {
            if (c6 != 'B') {
                if (c6 == 'F') {
                    this.x++;
                    ag();
                } else if (c6 == 'D') {
                    this.x++;
                    ag();
                } else if (c6 == 'e' || c6 == 'E') {
                    this.x++;
                    int i7 = this.n + 1;
                    this.n = i7;
                    char charAt = i7 >= i2 ? (char) 26 : str.charAt(i7);
                    this.l = charAt;
                    if (charAt == '+' || charAt == '-') {
                        this.x++;
                        int i8 = this.n + 1;
                        this.n = i8;
                        this.l = i8 >= i2 ? (char) 26 : str.charAt(i8);
                    }
                    while (true) {
                        c3 = this.l;
                        if (c3 < '0' || c3 > '9') {
                            break;
                        }
                        this.x++;
                        int i9 = this.n + 1;
                        this.n = i9;
                        this.l = i9 >= i2 ? (char) 26 : str.charAt(i9);
                    }
                    if (c3 == 'D' || c3 == 'F') {
                        this.x++;
                        ag();
                    }
                }
                if (z2) {
                    this.o = 2;
                    return;
                } else {
                    this.o = 3;
                    return;
                }
            }
            this.x++;
            ag();
        }
        z2 = z;
        if (z2) {
        }
    }

    public final int bn(char[] cArr) {
        boolean z;
        int i;
        char bk;
        this.r = 0;
        if (!be(cArr)) {
            this.r = -2;
            return 0;
        }
        int length = cArr.length;
        int i2 = length + 1;
        char bk2 = bk(this.n + length);
        String str = this.k;
        int i3 = this.j;
        if (bk2 == '\"') {
            int i4 = length + 2;
            int i5 = this.n + i2;
            bk2 = i5 >= i3 ? (char) 26 : str.charAt(i5);
            i2 = i4;
            z = true;
        } else {
            z = false;
        }
        if (bk2 < '0' || bk2 > '9') {
            this.r = -1;
            return 0;
        }
        int i6 = bk2 - '0';
        while (true) {
            i = i2 + 1;
            bk = bk(this.n + i2);
            if (bk < '0' || bk > '9') {
                break;
            }
            i6 = (i6 * 10) + (bk - '0');
            i2 = i;
        }
        if (bk == '.') {
            this.r = -1;
            return 0;
        }
        if (bk == '\"') {
            if (!z) {
                this.r = -1;
                return 0;
            }
            int i7 = i2 + 2;
            int i8 = this.n + i;
            bk = i8 >= i3 ? (char) 26 : str.charAt(i8);
            i = i7;
        }
        if (i6 < 0) {
            this.r = -1;
            return 0;
        }
        if (bk == ',') {
            int i9 = (i - 1) + this.n + 1;
            this.n = i9;
            this.l = i9 < i3 ? str.charAt(i9) : (char) 26;
            this.r = 3;
            this.o = 16;
            return i6;
        }
        if (bk != '}') {
            this.r = -1;
            return 0;
        }
        char bk3 = bk(this.n + i);
        if (bk3 == ',') {
            this.o = 16;
            int i10 = this.n + i + 1;
            this.n = i10;
            this.l = i10 < i3 ? str.charAt(i10) : (char) 26;
        } else if (bk3 == ']') {
            this.o = 15;
            int i11 = this.n + i + 1;
            this.n = i11;
            this.l = i11 < i3 ? str.charAt(i11) : (char) 26;
        } else if (bk3 == '}') {
            this.o = 13;
            int i12 = this.n + i + 1;
            this.n = i12;
            this.l = i12 < i3 ? str.charAt(i12) : (char) 26;
        } else {
            if (bk3 != 26) {
                this.r = -1;
                return 0;
            }
            this.o = 20;
            this.n += i;
            this.l = (char) 26;
        }
        this.r = 4;
        return i6;
    }

    public final Number bo(boolean z) {
        char bk = bk((this.h + this.x) - 1);
        try {
            if (bk == 'F') {
                return Float.valueOf(Float.parseFloat(ay()));
            }
            if (bk != 'D' && z) {
                return new BigDecimal(ay());
            }
            return Double.valueOf(Double.parseDouble(ay()));
        } catch (NumberFormatException e2) {
            throw new bfj(e2.getMessage() + ", " + ac());
        }
    }

    public final void bp() {
        this.x = 0;
        while (true) {
            char c2 = this.l;
            if (c2 == ':') {
                int i = this.n + 1;
                this.n = i;
                this.l = i >= this.j ? (char) 26 : this.k.charAt(i);
                az();
                return;
            }
            if (c2 != ' ' && c2 != '\n' && c2 != '\r' && c2 != '\t' && c2 != '\f' && c2 != '\b') {
                throw new bfj("not match : - " + this.l);
            }
            ag();
        }
    }
}
