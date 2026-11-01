package com.bykv.vk.openvk.preload.dq.p;

import com.bykv.vk.openvk.preload.dq.d.dq.s;
import com.bykv.vk.openvk.preload.dq.d.iw;
import com.bykv.vk.openvk.preload.dq.f;
import g.awf;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class dq implements Closeable {
    private int[] ig;
    private int[] jy;
    private long kk;
    private String no;
    private int o;
    private final Reader ox;
    private String[] q;
    public boolean dq = false;
    private final char[] p = new char[1024];
    private int s = 0;
    private int iw = 0;
    private int mn = 0;
    private int ia = 0;

    /* renamed from: d, reason: collision with root package name */
    int f635d = 0;
    private int mp = 1;

    static {
        iw.dq = new iw() { // from class: com.bykv.vk.openvk.preload.dq.p.dq.1
            @Override // com.bykv.vk.openvk.preload.dq.d.iw
            public final void dq(dq dqVar) throws IOException {
                if (dqVar instanceof s) {
                    s sVar = (s) dqVar;
                    sVar.dq(d.NAME);
                    Map.Entry entry = (Map.Entry) ((Iterator) sVar.mn()).next();
                    sVar.dq(entry.getValue());
                    sVar.dq(new f((String) entry.getKey()));
                    return;
                }
                int i = dqVar.f635d;
                if (i == 0) {
                    i = dqVar.fw();
                }
                if (i == 13) {
                    dqVar.f635d = 9;
                    return;
                }
                if (i == 12) {
                    dqVar.f635d = 8;
                } else {
                    if (i == 14) {
                        dqVar.f635d = 10;
                        return;
                    }
                    throw new IllegalStateException("Expected a name but was " + dqVar.iw() + dqVar.cd());
                }
            }
        };
    }

    public dq(Reader reader) {
        int[] iArr = new int[32];
        this.ig = iArr;
        iArr[0] = 6;
        this.q = new String[32];
        this.jy = new int[32];
        this.ox = reader;
    }

    private IOException d(String str) throws IOException {
        StringBuilder o = awf.o(str);
        o.append(cd());
        throw new p(o.toString());
    }

    private String d(char c2) throws IOException {
        char[] cArr = this.p;
        StringBuilder sb = null;
        while (true) {
            int i = this.s;
            int i2 = this.iw;
            int i3 = i;
            while (true) {
                if (i3 < i2) {
                    int i4 = i3 + 1;
                    char c3 = cArr[i3];
                    if (c3 == c2) {
                        this.s = i4;
                        int i5 = (i4 - i) - 1;
                        if (sb == null) {
                            return new String(cArr, i, i5);
                        }
                        sb.append(cArr, i, i5);
                        return sb.toString();
                    }
                    if (c3 == '\\') {
                        this.s = i4;
                        int i6 = i4 - i;
                        int i7 = i6 - 1;
                        if (sb == null) {
                            sb = new StringBuilder(Math.max(i6 * 2, 16));
                        }
                        sb.append(cArr, i, i7);
                        sb.append(k());
                    } else {
                        if (c3 == '\n') {
                            this.mn++;
                            this.ia = i4;
                        }
                        i3 = i4;
                    }
                } else {
                    if (sb == null) {
                        sb = new StringBuilder(Math.max((i3 - i) * 2, 16));
                    }
                    sb.append(cArr, i, i3 - i);
                    this.s = i3;
                    if (!d(1)) {
                        throw d("Unterminated string");
                    }
                }
            }
        }
    }

    private boolean d(int i) throws IOException {
        int i2;
        int i3;
        char[] cArr = this.p;
        int i4 = this.ia;
        int i5 = this.s;
        this.ia = i4 - i5;
        int i6 = this.iw;
        if (i6 != i5) {
            int i7 = i6 - i5;
            this.iw = i7;
            System.arraycopy(cArr, i5, cArr, 0, i7);
        } else {
            this.iw = 0;
        }
        this.s = 0;
        do {
            Reader reader = this.ox;
            int i8 = this.iw;
            int read = reader.read(cArr, i8, cArr.length - i8);
            if (read == -1) {
                return false;
            }
            i2 = this.iw + read;
            this.iw = i2;
            if (this.mn == 0 && (i3 = this.ia) == 0 && i2 > 0 && cArr[0] == 65279) {
                this.s++;
                this.ia = i3 + 1;
                i++;
            }
        } while (i2 < i);
        return true;
    }

    private int dq(boolean z) throws IOException {
        char c2;
        char[] cArr = this.p;
        int i = this.s;
        int i2 = this.iw;
        while (true) {
            if (i == i2) {
                this.s = i;
                if (!d(1)) {
                    if (!z) {
                        return -1;
                    }
                    throw new EOFException("End of input" + cd());
                }
                i = this.s;
                i2 = this.iw;
            }
            int i3 = i + 1;
            c2 = cArr[i];
            if (c2 == '\n') {
                this.mn++;
                this.ia = i3;
            } else if (c2 != ' ' && c2 != '\r' && c2 != '\t') {
                if (c2 == '/') {
                    this.s = i3;
                    if (i3 == i2) {
                        this.s = i;
                        boolean d2 = d(2);
                        this.s++;
                        if (!d2) {
                            break;
                        }
                    }
                    i();
                    int i4 = this.s;
                    char c3 = cArr[i4];
                    if (c3 == '*') {
                        this.s = i4 + 1;
                        if (!dq("*/")) {
                            throw d("Unterminated comment");
                        }
                        i = this.s + 2;
                        i2 = this.iw;
                    } else {
                        if (c3 != '/') {
                            break;
                        }
                        this.s = i4 + 1;
                        le();
                        i = this.s;
                        i2 = this.iw;
                    }
                } else {
                    if (c2 != '#') {
                        this.s = i3;
                        return c2;
                    }
                    this.s = i3;
                    i();
                    le();
                    i = this.s;
                    i2 = this.iw;
                }
            }
            i = i3;
        }
        return c2;
    }

    private void dq(int i) {
        int i2 = this.mp;
        int[] iArr = this.ig;
        if (i2 == iArr.length) {
            int i3 = i2 * 2;
            this.ig = Arrays.copyOf(iArr, i3);
            this.jy = Arrays.copyOf(this.jy, i3);
            this.q = (String[]) Arrays.copyOf(this.q, i3);
        }
        int[] iArr2 = this.ig;
        int i4 = this.mp;
        this.mp = i4 + 1;
        iArr2[i4] = i;
    }

    private boolean dq(char c2) throws IOException {
        if (c2 == '\t' || c2 == '\n' || c2 == '\f' || c2 == '\r' || c2 == ' ') {
            return false;
        }
        if (c2 != '#') {
            if (c2 == ',') {
                return false;
            }
            if (c2 != '/' && c2 != '=') {
                if (c2 == '{' || c2 == '}' || c2 == ':') {
                    return false;
                }
                if (c2 != ';') {
                    switch (c2) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        i();
        return false;
    }

    private boolean dq(String str) throws IOException {
        int i;
        int length = str.length();
        while (true) {
            if (this.s + length > this.iw && !d(length)) {
                return false;
            }
            char[] cArr = this.p;
            int i2 = this.s;
            if (cArr[i2] != '\n') {
                while (i < length) {
                    i = this.p[this.s + i] == str.charAt(i) ? i + 1 : 0;
                }
                return true;
            }
            this.mn++;
            this.ia = i2 + 1;
            this.s++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0096, code lost:
    
        if (r9 != 2) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0098, code lost:
    
        if (r10 == false) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x009e, code lost:
    
        if (r11 != Long.MIN_VALUE) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x00a0, code lost:
    
        if (r13 == false) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00a4, code lost:
    
        if (r11 != 0) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00a6, code lost:
    
        if (r13 != false) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00a8, code lost:
    
        if (r13 == false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00ab, code lost:
    
        r11 = -r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00ac, code lost:
    
        r19.kk = r11;
        r19.s += r8;
        r19.f635d = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00b7, code lost:
    
        return 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00b8, code lost:
    
        if (r9 == 2) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00bb, code lost:
    
        if (r9 == 4) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00be, code lost:
    
        if (r9 != 7) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00c1, code lost:
    
        return r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00c2, code lost:
    
        r19.o = r8;
        r19.f635d = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00c8, code lost:
    
        return 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0093, code lost:
    
        if (dq(r14) == false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0095, code lost:
    
        return 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int gh() throws IOException {
        int i;
        char[] cArr = this.p;
        int i2 = this.s;
        int i3 = this.iw;
        int i4 = 0;
        int i5 = 0;
        char c2 = 0;
        boolean z = true;
        long j = 0;
        boolean z2 = false;
        while (true) {
            if (i2 + i5 == i3) {
                if (i5 != cArr.length) {
                    if (!d(i5 + 1)) {
                        i = 0;
                        break;
                    }
                    i2 = this.s;
                    i3 = this.iw;
                } else {
                    return i4;
                }
            }
            char c3 = cArr[i2 + i5];
            i = 0;
            if (c3 != '+') {
                if (c3 == 'E' || c3 == 'e') {
                    if (c2 != 2 && c2 != 4) {
                        return 0;
                    }
                    c2 = 5;
                } else if (c3 != '-') {
                    if (c3 != '.') {
                        if (c3 < '0' || c3 > '9') {
                            break;
                        }
                        if (c2 == 1 || c2 == 0) {
                            j = -(c3 - '0');
                            c2 = 2;
                        } else if (c2 == 2) {
                            if (j == 0) {
                                return 0;
                            }
                            long j2 = (10 * j) - (c3 - '0');
                            z &= j > -922337203685477580L || (j == -922337203685477580L && j2 < j);
                            j = j2;
                        } else if (c2 == 3) {
                            c2 = 4;
                        } else if (c2 == 5 || c2 == 6) {
                            c2 = 7;
                        }
                    } else {
                        if (c2 != 2) {
                            return 0;
                        }
                        c2 = 3;
                    }
                } else if (c2 == 0) {
                    c2 = 1;
                    z2 = true;
                } else if (c2 != 5) {
                    return 0;
                }
                i5++;
                i4 = 0;
            } else if (c2 != 5) {
                return 0;
            }
            c2 = 6;
            i5++;
            i4 = 0;
        }
    }

    private void i() throws IOException {
        if (!this.dq) {
            throw d("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private char k() throws IOException {
        int i;
        if (this.s == this.iw && !d(1)) {
            throw d("Unterminated escape sequence");
        }
        char[] cArr = this.p;
        int i2 = this.s;
        int i3 = i2 + 1;
        this.s = i3;
        char c2 = cArr[i2];
        if (c2 == '\n') {
            this.mn++;
            this.ia = i3;
            return c2;
        }
        if (c2 == '\"' || c2 == '\'' || c2 == '/' || c2 == '\\') {
            return c2;
        }
        if (c2 == 'b') {
            return '\b';
        }
        if (c2 == 'f') {
            return '\f';
        }
        if (c2 == 'n') {
            return '\n';
        }
        if (c2 == 'r') {
            return '\r';
        }
        if (c2 == 't') {
            return '\t';
        }
        if (c2 != 'u') {
            throw d("Invalid escape sequence");
        }
        if (i2 + 5 > this.iw && !d(4)) {
            throw d("Unterminated escape sequence");
        }
        int i4 = this.s;
        int i5 = i4 + 4;
        char c3 = 0;
        while (i4 < i5) {
            char c4 = this.p[i4];
            char c5 = (char) (c3 << 4);
            if (c4 >= '0' && c4 <= '9') {
                i = c4 - '0';
            } else if (c4 >= 'a' && c4 <= 'f') {
                i = c4 - 'W';
            } else {
                if (c4 < 'A' || c4 > 'F') {
                    throw new NumberFormatException("\\u".concat(new String(this.p, this.s, 4)));
                }
                i = c4 - '7';
            }
            c3 = (char) (i + c5);
            i4++;
        }
        this.s += 4;
        return c3;
    }

    private void le() throws IOException {
        char c2;
        do {
            if (this.s >= this.iw && !d(1)) {
                return;
            }
            char[] cArr = this.p;
            int i = this.s;
            int i2 = i + 1;
            this.s = i2;
            c2 = cArr[i];
            if (c2 == '\n') {
                this.mn++;
                this.ia = i2;
                return;
            }
        } while (c2 != '\r');
    }

    private int mn() throws IOException {
        String str;
        String str2;
        int i;
        char c2 = this.p[this.s];
        if (c2 == 't' || c2 == 'T') {
            str = "true";
            str2 = "TRUE";
            i = 5;
        } else if (c2 == 'f' || c2 == 'F') {
            str = "false";
            str2 = "FALSE";
            i = 6;
        } else {
            if (c2 != 'n' && c2 != 'N') {
                return 0;
            }
            str = "null";
            str2 = "NULL";
            i = 7;
        }
        int length = str.length();
        for (int i2 = 1; i2 < length; i2++) {
            if (this.s + i2 >= this.iw && !d(i2 + 1)) {
                return 0;
            }
            char c3 = this.p[this.s + i2];
            if (c3 != str.charAt(i2) && c3 != str2.charAt(i2)) {
                return 0;
            }
        }
        if ((this.s + length < this.iw || d(length + 1)) && dq(this.p[this.s + length])) {
            return 0;
        }
        this.s += length;
        this.f635d = i;
        return i;
    }

    private void ox(char c2) throws IOException {
        char[] cArr = this.p;
        while (true) {
            int i = this.s;
            int i2 = this.iw;
            while (true) {
                if (i < i2) {
                    int i3 = i + 1;
                    char c3 = cArr[i];
                    if (c3 == c2) {
                        this.s = i3;
                        return;
                    }
                    if (c3 == '\\') {
                        this.s = i3;
                        k();
                        break;
                    } else {
                        if (c3 == '\n') {
                            this.mn++;
                            this.ia = i3;
                        }
                        i = i3;
                    }
                } else {
                    this.s = i;
                    if (!d(1)) {
                        throw d("Unterminated string");
                    }
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x004a, code lost:
    
        i();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:54:0x0044. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String r() throws IOException {
        String sb;
        StringBuilder sb2 = null;
        int i = 0;
        do {
            int i2 = 0;
            while (true) {
                int i3 = this.s;
                if (i3 + i2 < this.iw) {
                    char c2 = this.p[i3 + i2];
                    if (c2 != '\t' && c2 != '\n' && c2 != '\f' && c2 != '\r' && c2 != ' ') {
                        if (c2 != '#') {
                            if (c2 != ',') {
                                if (c2 != '/' && c2 != '=') {
                                    if (c2 != '{' && c2 != '}' && c2 != ':') {
                                        if (c2 != ';') {
                                            switch (c2) {
                                                case '[':
                                                case ']':
                                                    break;
                                                case '\\':
                                                    break;
                                                default:
                                                    i2++;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                } else if (i2 >= this.p.length) {
                    if (sb2 == null) {
                        sb2 = new StringBuilder(Math.max(i2, 16));
                    }
                    sb2.append(this.p, this.s, i2);
                    this.s += i2;
                } else if (d(i2 + 1)) {
                }
            }
            i = i2;
            if (sb2 != null) {
                sb = new String(this.p, this.s, i);
            } else {
                sb2.append(this.p, this.s, i);
                sb = sb2.toString();
            }
            this.s += i;
            return sb;
        } while (d(1));
        if (sb2 != null) {
        }
        this.s += i;
        return sb;
    }

    private void wp() throws IOException {
        dq(true);
        int i = this.s;
        int i2 = i - 1;
        this.s = i2;
        if (i + 4 <= this.iw || d(5)) {
            char[] cArr = this.p;
            if (cArr[i2] == ')' && cArr[i] == ']' && cArr[i + 1] == '}' && cArr[i + 2] == '\'' && cArr[i + 3] == '\n') {
                this.s += 5;
            }
        }
    }

    public final String cd() {
        StringBuilder z = awf.z(this.mn + 1, (this.s - this.ia) + 1, " at line ", " column ", " path ");
        z.append(f());
        return z.toString();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f635d = 0;
        this.ig[0] = 8;
        this.mp = 1;
        this.ox.close();
    }

    public void d() throws IOException {
        int i = this.f635d;
        if (i == 0) {
            i = fw();
        }
        if (i != 4) {
            throw new IllegalStateException("Expected END_ARRAY but was " + iw() + cd());
        }
        int i2 = this.mp;
        this.mp = i2 - 1;
        int[] iArr = this.jy;
        int i3 = i2 - 2;
        iArr[i3] = iArr[i3] + 1;
        this.f635d = 0;
    }

    public void dq() throws IOException {
        int i = this.f635d;
        if (i == 0) {
            i = fw();
        }
        if (i == 3) {
            dq(1);
            this.jy[this.mp - 1] = 0;
            this.f635d = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_ARRAY but was " + iw() + cd());
        }
    }

    public String f() {
        StringBuilder sb = new StringBuilder("$");
        int i = this.mp;
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = this.ig[i2];
            if (i3 == 1 || i3 == 2) {
                sb.append('[');
                sb.append(this.jy[i2]);
                sb.append(']');
            } else if (i3 == 3 || i3 == 4 || i3 == 5) {
                sb.append('.');
                String str = this.q[i2];
                if (str != null) {
                    sb.append(str);
                }
            }
        }
        return sb.toString();
    }

    public final int fw() throws IOException {
        int dq;
        int[] iArr = this.ig;
        int i = this.mp;
        int i2 = iArr[i - 1];
        if (i2 == 1) {
            iArr[i - 1] = 2;
        } else if (i2 == 2) {
            int dq2 = dq(true);
            if (dq2 != 44) {
                if (dq2 != 59) {
                    if (dq2 != 93) {
                        throw d("Unterminated array");
                    }
                    this.f635d = 4;
                    return 4;
                }
                i();
            }
        } else {
            if (i2 == 3 || i2 == 5) {
                iArr[i - 1] = 4;
                if (i2 == 5 && (dq = dq(true)) != 44) {
                    if (dq != 59) {
                        if (dq != 125) {
                            throw d("Unterminated object");
                        }
                        this.f635d = 2;
                        return 2;
                    }
                    i();
                }
                int dq3 = dq(true);
                if (dq3 == 34) {
                    this.f635d = 13;
                    return 13;
                }
                if (dq3 == 39) {
                    i();
                    this.f635d = 12;
                    return 12;
                }
                if (dq3 == 125) {
                    if (i2 == 5) {
                        throw d("Expected name");
                    }
                    this.f635d = 2;
                    return 2;
                }
                i();
                this.s--;
                if (!dq((char) dq3)) {
                    throw d("Expected name");
                }
                this.f635d = 14;
                return 14;
            }
            if (i2 == 4) {
                iArr[i - 1] = 5;
                int dq4 = dq(true);
                if (dq4 != 58) {
                    if (dq4 != 61) {
                        throw d("Expected ':'");
                    }
                    i();
                    if (this.s < this.iw || d(1)) {
                        char[] cArr = this.p;
                        int i3 = this.s;
                        if (cArr[i3] == '>') {
                            this.s = i3 + 1;
                        }
                    }
                }
            } else if (i2 == 6) {
                if (this.dq) {
                    wp();
                }
                this.ig[this.mp - 1] = 7;
            } else if (i2 == 7) {
                if (dq(false) == -1) {
                    this.f635d = 17;
                    return 17;
                }
                i();
                this.s--;
            } else if (i2 == 8) {
                throw new IllegalStateException("JsonReader is closed");
            }
        }
        int dq5 = dq(true);
        if (dq5 == 34) {
            this.f635d = 9;
            return 9;
        }
        if (dq5 == 39) {
            i();
            this.f635d = 8;
            return 8;
        }
        if (dq5 != 44 && dq5 != 59) {
            if (dq5 == 91) {
                this.f635d = 3;
                return 3;
            }
            if (dq5 != 93) {
                if (dq5 == 123) {
                    this.f635d = 1;
                    return 1;
                }
                this.s--;
                int mn = mn();
                if (mn != 0) {
                    return mn;
                }
                int gh = gh();
                if (gh != 0) {
                    return gh;
                }
                if (!dq(this.p[this.s])) {
                    throw d("Expected value");
                }
                i();
                this.f635d = 10;
                return 10;
            }
            if (i2 == 1) {
                this.f635d = 4;
                return 4;
            }
        }
        if (i2 != 1 && i2 != 2) {
            throw d("Unexpected value");
        }
        i();
        this.s--;
        this.f635d = 7;
        return 7;
    }

    public String ia() throws IOException {
        String d2;
        int i = this.f635d;
        if (i == 0) {
            i = fw();
        }
        if (i == 14) {
            d2 = r();
        } else if (i == 12) {
            d2 = d('\'');
        } else {
            if (i != 13) {
                throw new IllegalStateException("Expected a name but was " + iw() + cd());
            }
            d2 = d('\"');
        }
        this.f635d = 0;
        this.q[this.mp - 1] = d2;
        return d2;
    }

    public double ig() throws IOException {
        int i = this.f635d;
        if (i == 0) {
            i = fw();
        }
        if (i == 15) {
            this.f635d = 0;
            int[] iArr = this.jy;
            int i2 = this.mp - 1;
            iArr[i2] = iArr[i2] + 1;
            return this.kk;
        }
        if (i == 16) {
            this.no = new String(this.p, this.s, this.o);
            this.s += this.o;
        } else if (i == 8 || i == 9) {
            this.no = d(i == 8 ? '\'' : '\"');
        } else if (i == 10) {
            this.no = r();
        } else if (i != 11) {
            throw new IllegalStateException("Expected a double but was " + iw() + cd());
        }
        this.f635d = 11;
        double parseDouble = Double.parseDouble(this.no);
        if (!this.dq && (Double.isNaN(parseDouble) || Double.isInfinite(parseDouble))) {
            throw new p("JSON forbids NaN and infinities: " + parseDouble + cd());
        }
        this.no = null;
        this.f635d = 0;
        int[] iArr2 = this.jy;
        int i3 = this.mp - 1;
        iArr2[i3] = iArr2[i3] + 1;
        return parseDouble;
    }

    public d iw() throws IOException {
        int i = this.f635d;
        if (i == 0) {
            i = fw();
        }
        switch (i) {
            case 1:
                return d.BEGIN_OBJECT;
            case 2:
                return d.END_OBJECT;
            case 3:
                return d.BEGIN_ARRAY;
            case 4:
                return d.END_ARRAY;
            case 5:
            case 6:
                return d.BOOLEAN;
            case 7:
                return d.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return d.STRING;
            case 12:
            case 13:
            case 14:
                return d.NAME;
            case 15:
            case 16:
                return d.NUMBER;
            case 17:
                return d.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:65:0x009d. Please report as an issue. */
    public void jy() throws IOException {
        int i = 0;
        do {
            int i2 = this.f635d;
            if (i2 == 0) {
                i2 = fw();
            }
            if (i2 == 3) {
                dq(1);
            } else if (i2 == 1) {
                dq(3);
            } else {
                if (i2 == 4) {
                    this.mp--;
                } else if (i2 == 2) {
                    this.mp--;
                } else {
                    if (i2 == 14 || i2 == 10) {
                        do {
                            int i3 = 0;
                            while (true) {
                                int i4 = this.s;
                                if (i4 + i3 < this.iw) {
                                    char c2 = this.p[i4 + i3];
                                    if (c2 != '\t' && c2 != '\n' && c2 != '\f' && c2 != '\r' && c2 != ' ') {
                                        if (c2 != '#') {
                                            if (c2 != ',') {
                                                if (c2 != '/' && c2 != '=') {
                                                    if (c2 != '{' && c2 != '}' && c2 != ':') {
                                                        if (c2 != ';') {
                                                            switch (c2) {
                                                                case '[':
                                                                case ']':
                                                                    break;
                                                                case '\\':
                                                                    break;
                                                                default:
                                                                    i3++;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    this.s = i4 + i3;
                                }
                            }
                            i();
                            this.s += i3;
                        } while (d(1));
                    } else if (i2 == 8 || i2 == 12) {
                        ox('\'');
                    } else if (i2 == 9 || i2 == 13) {
                        ox('\"');
                    } else if (i2 == 16) {
                        this.s += this.o;
                    }
                    this.f635d = 0;
                }
                i--;
                this.f635d = 0;
            }
            i++;
            this.f635d = 0;
        } while (i != 0);
        int[] iArr = this.jy;
        int i5 = this.mp;
        int i6 = i5 - 1;
        iArr[i6] = iArr[i6] + 1;
        this.q[i5 - 1] = "null";
    }

    public String kk() throws IOException {
        String str;
        int i = this.f635d;
        if (i == 0) {
            i = fw();
        }
        if (i == 10) {
            str = r();
        } else if (i == 8) {
            str = d('\'');
        } else if (i == 9) {
            str = d('\"');
        } else if (i == 11) {
            str = this.no;
            this.no = null;
        } else if (i == 15) {
            str = Long.toString(this.kk);
        } else {
            if (i != 16) {
                throw new IllegalStateException("Expected a string but was " + iw() + cd());
            }
            str = new String(this.p, this.s, this.o);
            this.s += this.o;
        }
        this.f635d = 0;
        int[] iArr = this.jy;
        int i2 = this.mp - 1;
        iArr[i2] = iArr[i2] + 1;
        return str;
    }

    public long mp() throws IOException {
        int i = this.f635d;
        if (i == 0) {
            i = fw();
        }
        if (i == 15) {
            this.f635d = 0;
            int[] iArr = this.jy;
            int i2 = this.mp - 1;
            iArr[i2] = iArr[i2] + 1;
            return this.kk;
        }
        if (i == 16) {
            this.no = new String(this.p, this.s, this.o);
            this.s += this.o;
        } else {
            if (i != 8 && i != 9 && i != 10) {
                throw new IllegalStateException("Expected a long but was " + iw() + cd());
            }
            if (i == 10) {
                this.no = r();
            } else {
                this.no = d(i == 8 ? '\'' : '\"');
            }
            try {
                long parseLong = Long.parseLong(this.no);
                this.f635d = 0;
                int[] iArr2 = this.jy;
                int i3 = this.mp - 1;
                iArr2[i3] = iArr2[i3] + 1;
                return parseLong;
            } catch (NumberFormatException unused) {
            }
        }
        this.f635d = 11;
        double parseDouble = Double.parseDouble(this.no);
        long j = (long) parseDouble;
        if (j != parseDouble) {
            throw new NumberFormatException("Expected a long but was " + this.no + cd());
        }
        this.no = null;
        this.f635d = 0;
        int[] iArr3 = this.jy;
        int i4 = this.mp - 1;
        iArr3[i4] = iArr3[i4] + 1;
        return j;
    }

    public void no() throws IOException {
        int i = this.f635d;
        if (i == 0) {
            i = fw();
        }
        if (i != 7) {
            throw new IllegalStateException("Expected null but was " + iw() + cd());
        }
        this.f635d = 0;
        int[] iArr = this.jy;
        int i2 = this.mp - 1;
        iArr[i2] = iArr[i2] + 1;
    }

    public boolean o() throws IOException {
        int i = this.f635d;
        if (i == 0) {
            i = fw();
        }
        if (i == 5) {
            this.f635d = 0;
            int[] iArr = this.jy;
            int i2 = this.mp - 1;
            iArr[i2] = iArr[i2] + 1;
            return true;
        }
        if (i != 6) {
            throw new IllegalStateException("Expected a boolean but was " + iw() + cd());
        }
        this.f635d = 0;
        int[] iArr2 = this.jy;
        int i3 = this.mp - 1;
        iArr2[i3] = iArr2[i3] + 1;
        return false;
    }

    public void ox() throws IOException {
        int i = this.f635d;
        if (i == 0) {
            i = fw();
        }
        if (i == 1) {
            dq(3);
            this.f635d = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_OBJECT but was " + iw() + cd());
        }
    }

    public void p() throws IOException {
        int i = this.f635d;
        if (i == 0) {
            i = fw();
        }
        if (i != 2) {
            throw new IllegalStateException("Expected END_OBJECT but was " + iw() + cd());
        }
        int i2 = this.mp;
        int i3 = i2 - 1;
        this.mp = i3;
        this.q[i3] = null;
        int[] iArr = this.jy;
        int i4 = i2 - 2;
        iArr[i4] = iArr[i4] + 1;
        this.f635d = 0;
    }

    public int q() throws IOException {
        int i = this.f635d;
        if (i == 0) {
            i = fw();
        }
        if (i == 15) {
            long j = this.kk;
            int i2 = (int) j;
            if (j != i2) {
                throw new NumberFormatException("Expected an int but was " + this.kk + cd());
            }
            this.f635d = 0;
            int[] iArr = this.jy;
            int i3 = this.mp - 1;
            iArr[i3] = iArr[i3] + 1;
            return i2;
        }
        if (i == 16) {
            this.no = new String(this.p, this.s, this.o);
            this.s += this.o;
        } else {
            if (i != 8 && i != 9 && i != 10) {
                throw new IllegalStateException("Expected an int but was " + iw() + cd());
            }
            if (i == 10) {
                this.no = r();
            } else {
                this.no = d(i == 8 ? '\'' : '\"');
            }
            try {
                int parseInt = Integer.parseInt(this.no);
                this.f635d = 0;
                int[] iArr2 = this.jy;
                int i4 = this.mp - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return parseInt;
            } catch (NumberFormatException unused) {
            }
        }
        this.f635d = 11;
        double parseDouble = Double.parseDouble(this.no);
        int i5 = (int) parseDouble;
        if (i5 != parseDouble) {
            throw new NumberFormatException("Expected an int but was " + this.no + cd());
        }
        this.no = null;
        this.f635d = 0;
        int[] iArr3 = this.jy;
        int i6 = this.mp - 1;
        iArr3[i6] = iArr3[i6] + 1;
        return i5;
    }

    public boolean s() throws IOException {
        int i = this.f635d;
        if (i == 0) {
            i = fw();
        }
        return (i == 2 || i == 4) ? false : true;
    }

    public String toString() {
        return getClass().getSimpleName() + cd();
    }
}
