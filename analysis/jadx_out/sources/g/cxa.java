package g;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.io.Writer;

/* loaded from: classes.dex */
public final class cxa extends Writer {

    /* renamed from: c, reason: collision with root package name */
    public static final byte[] f13662c;

    /* renamed from: d, reason: collision with root package name */
    public static final char[] f13663d;

    /* renamed from: e, reason: collision with root package name */
    public static final byte[] f13664e;
    public static final char[] i;
    public final int k;
    public char[] l;
    public int m;

    /* renamed from: f, reason: collision with root package name */
    public static final ThreadLocal f13665f = new ThreadLocal();

    /* renamed from: g, reason: collision with root package name */
    public static final int[] f13666g = {9, 99, 999, AVMDLDataLoader.KeyIsEnableEventInfo, 99999, 999999, 9999999, 99999999, 999999999, he.UNDEFINED_ITEM_ID};
    public static final char[] j = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};

    /* renamed from: b, reason: collision with root package name */
    public static final char[] f13661b = {'0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9'};

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f13660a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
    public static final char[] h = {'0', '0', '0', '1', '0', '2', '0', '3', '0', '4', '0', '5', '0', '6', '0', '7', '0', '8', '0', '9', '0', 'A', '0', 'B', '0', 'C', '0', 'D', '0', 'E', '0', 'F', '1', '0', '1', '1', '1', '2', '1', '3', '1', '4', '1', '5', '1', '6', '1', '7', '1', '8', '1', '9', '1', 'A', '1', 'B', '1', 'C', '1', 'D', '1', 'E', '1', 'F', '2', '0', '2', '1', '2', '2', '2', '3', '2', '4', '2', '5', '2', '6', '2', '7', '2', '8', '2', '9', '2', 'A', '2', 'B', '2', 'C', '2', 'D', '2', 'E', '2', 'F'};

    static {
        byte[] bArr = new byte[MediaPlayer.MEDIA_PLAYER_OPTION_DECODE_SECOND_VIDEO_FRAME_TIME];
        f13662c = bArr;
        byte[] bArr2 = new byte[MediaPlayer.MEDIA_PLAYER_OPTION_DECODE_SECOND_VIDEO_FRAME_TIME];
        f13664e = bArr2;
        f13663d = new char[93];
        bArr[0] = 4;
        bArr[1] = 4;
        bArr[2] = 4;
        bArr[3] = 4;
        bArr[4] = 4;
        bArr[5] = 4;
        bArr[6] = 4;
        bArr[7] = 4;
        bArr[8] = 1;
        bArr[9] = 1;
        bArr[10] = 1;
        bArr[11] = 4;
        bArr[12] = 1;
        bArr[13] = 1;
        bArr[34] = 1;
        bArr[92] = 1;
        bArr2[0] = 4;
        bArr2[1] = 4;
        bArr2[2] = 4;
        bArr2[3] = 4;
        bArr2[4] = 4;
        bArr2[5] = 4;
        bArr2[6] = 4;
        bArr2[7] = 4;
        bArr2[8] = 1;
        bArr2[9] = 1;
        bArr2[10] = 1;
        bArr2[11] = 4;
        bArr2[12] = 1;
        bArr2[13] = 1;
        bArr2[92] = 1;
        bArr2[39] = 1;
        for (int i2 = 14; i2 <= 31; i2++) {
            f13662c[i2] = 4;
            f13664e[i2] = 4;
        }
        for (int i3 = TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE; i3 <= 160; i3++) {
            f13662c[i3] = 4;
            f13664e[i3] = 4;
        }
        char[] cArr = f13663d;
        cArr[0] = '0';
        cArr[1] = '1';
        cArr[2] = '2';
        cArr[3] = '3';
        cArr[4] = '4';
        cArr[5] = '5';
        cArr[6] = '6';
        cArr[7] = '7';
        cArr[8] = 'b';
        cArr[9] = 't';
        cArr[10] = 'n';
        cArr[11] = 'v';
        cArr[12] = 'f';
        cArr[13] = 'r';
        cArr[34] = '\"';
        cArr[39] = '\'';
        cArr[47] = '/';
        cArr[92] = '\\';
        i = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    }

    public cxa(int i2, gar[] garVarArr) {
        ThreadLocal threadLocal = f13665f;
        char[] cArr = (char[]) threadLocal.get();
        this.l = cArr;
        if (cArr != null) {
            threadLocal.set(null);
        }
        if (this.l == null) {
            this.l = new char[1024];
        }
        for (gar garVar : garVarArr) {
            i2 |= garVar.mask;
        }
        this.k = i2;
    }

    public static void n(long j2, int i2, char[] cArr) {
        char c2;
        char[] cArr2;
        char[] cArr3;
        if (j2 < 0) {
            j2 = -j2;
            c2 = '-';
        } else {
            c2 = 0;
        }
        while (true) {
            cArr2 = f13661b;
            cArr3 = f13660a;
            if (j2 <= 2147483647L) {
                break;
            }
            long j3 = j2 / 100;
            int i3 = (int) (j2 - (((j3 << 6) + (j3 << 5)) + (j3 << 2)));
            cArr[i2 - 1] = cArr3[i3];
            i2 -= 2;
            cArr[i2] = cArr2[i3];
            j2 = j3;
        }
        int i4 = (int) j2;
        while (i4 >= 65536) {
            int i5 = i4 / 100;
            int i6 = i4 - (((i5 << 6) + (i5 << 5)) + (i5 << 2));
            cArr[i2 - 1] = cArr3[i6];
            i2 -= 2;
            cArr[i2] = cArr2[i6];
            i4 = i5;
        }
        while (true) {
            int i7 = (52429 * i4) >>> 19;
            int i8 = i2 - 1;
            cArr[i8] = j[i4 - ((i7 << 3) + (i7 << 1))];
            if (i7 == 0) {
                break;
            }
            i4 = i7;
            i2 = i8;
        }
        if (c2 != 0) {
            cArr[i2 - 2] = c2;
        }
    }

    @Override // java.io.Writer, java.lang.Appendable
    public final Writer append(char c2) {
        write(c2);
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public final /* bridge */ /* synthetic */ Writer append(CharSequence charSequence) {
        s(charSequence);
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public final Writer append(CharSequence charSequence, int i2, int i3) {
        if (charSequence == null) {
            charSequence = "null";
        }
        String charSequence2 = charSequence.subSequence(i2, i3).toString();
        write(charSequence2, 0, charSequence2.length());
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public final Appendable append(char c2) {
        write(c2);
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public final /* bridge */ /* synthetic */ Appendable append(CharSequence charSequence) {
        s(charSequence);
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public final Appendable append(CharSequence charSequence, int i2, int i3) {
        if (charSequence == null) {
            charSequence = "null";
        }
        String charSequence2 = charSequence.subSequence(i2, i3).toString();
        write(charSequence2, 0, charSequence2.length());
        return this;
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        char[] cArr = this.l;
        if (cArr.length <= 8192) {
            f13665f.set(cArr);
        }
        this.l = null;
    }

    @Override // java.io.Writer, java.io.Flushable
    public final void flush() {
    }

    public final void o() {
        write("null");
    }

    public final void p(String str, boolean z) {
        int i2 = gar.UseSingleQuotes.mask;
        int i3 = this.k;
        int i4 = i2 & i3;
        char c2 = '\\';
        char[] cArr = f13663d;
        if (i4 == 0) {
            if ((gar.QuoteFieldNames.mask & i3) != 0) {
                v(z, str, ':');
                return;
            }
            int length = str.length();
            int i5 = this.m + length + 1;
            if (i5 > this.l.length) {
                u(i5);
            }
            if (length == 0) {
                int i6 = this.m + 3;
                if (i6 > this.l.length) {
                    u(i6);
                }
                char[] cArr2 = this.l;
                int i7 = this.m;
                int i8 = i7 + 1;
                this.m = i8;
                cArr2[i7] = '\"';
                int i9 = i7 + 2;
                this.m = i9;
                cArr2[i8] = '\"';
                this.m = i7 + 3;
                cArr2[i9] = ':';
                return;
            }
            int i10 = this.m;
            int i11 = i10 + length;
            str.getChars(0, length, this.l, i10);
            this.m = i5;
            int i12 = i10;
            boolean z2 = false;
            while (i12 < i11) {
                char[] cArr3 = this.l;
                char c3 = cArr3[i12];
                byte[] bArr = f13662c;
                if (c3 < bArr.length && bArr[c3] != 0) {
                    if (z2) {
                        i5++;
                        if (i5 > cArr3.length) {
                            u(i5);
                        }
                        this.m = i5;
                        char[] cArr4 = this.l;
                        int i13 = i12 + 1;
                        System.arraycopy(cArr4, i13, cArr4, i12 + 2, i11 - i12);
                        char[] cArr5 = this.l;
                        cArr5[i12] = '\\';
                        cArr5[i13] = cArr[c3];
                        i11++;
                        i12 = i13;
                    } else {
                        i5 += 3;
                        if (i5 > cArr3.length) {
                            u(i5);
                        }
                        this.m = i5;
                        char[] cArr6 = this.l;
                        int i14 = i12 + 1;
                        System.arraycopy(cArr6, i14, cArr6, i12 + 3, (i11 - i12) - 1);
                        char[] cArr7 = this.l;
                        System.arraycopy(cArr7, 0, cArr7, 1, i12);
                        char[] cArr8 = this.l;
                        cArr8[i10] = '\"';
                        cArr8[i14] = '\\';
                        i12 += 2;
                        cArr8[i12] = cArr[c3];
                        i11 += 2;
                        cArr8[this.m - 2] = '\"';
                        z2 = true;
                    }
                }
                i12++;
            }
            this.l[this.m - 1] = ':';
            return;
        }
        if ((gar.QuoteFieldNames.mask & i3) != 0) {
            r(str);
            write(58);
            return;
        }
        int length2 = str.length();
        int i15 = this.m + length2 + 1;
        if (i15 > this.l.length) {
            u(i15);
        }
        if (length2 == 0) {
            int i16 = this.m + 3;
            if (i16 > this.l.length) {
                u(i16);
            }
            char[] cArr9 = this.l;
            int i17 = this.m;
            int i18 = i17 + 1;
            this.m = i18;
            cArr9[i17] = '\'';
            int i19 = i17 + 2;
            this.m = i19;
            cArr9[i18] = '\'';
            this.m = i17 + 3;
            cArr9[i19] = ':';
            return;
        }
        int i20 = this.m;
        int i21 = i20 + length2;
        str.getChars(0, length2, this.l, i20);
        this.m = i15;
        int i22 = i20;
        boolean z3 = false;
        while (i22 < i21) {
            char[] cArr10 = this.l;
            char c4 = cArr10[i22];
            byte[] bArr2 = f13664e;
            if (c4 < bArr2.length && bArr2[c4] != 0) {
                if (z3) {
                    i15++;
                    if (i15 > cArr10.length) {
                        u(i15);
                    }
                    this.m = i15;
                    char[] cArr11 = this.l;
                    int i23 = i22 + 1;
                    System.arraycopy(cArr11, i23, cArr11, i22 + 2, i21 - i22);
                    char[] cArr12 = this.l;
                    cArr12[i22] = '\\';
                    cArr12[i23] = cArr[c4];
                    i21++;
                    i22 = i23;
                    i22++;
                    c2 = '\\';
                } else {
                    i15 += 3;
                    if (i15 > cArr10.length) {
                        u(i15);
                    }
                    this.m = i15;
                    char[] cArr13 = this.l;
                    int i24 = i22 + 1;
                    System.arraycopy(cArr13, i24, cArr13, i22 + 3, (i21 - i22) - 1);
                    char[] cArr14 = this.l;
                    System.arraycopy(cArr14, 0, cArr14, 1, i22);
                    char[] cArr15 = this.l;
                    cArr15[i20] = '\'';
                    cArr15[i24] = c2;
                    i22 += 2;
                    cArr15[i22] = cArr[c4];
                    i21 += 2;
                    cArr15[this.m - 2] = '\'';
                    z3 = true;
                }
            }
            i22++;
            c2 = '\\';
        }
        this.l[i15 - 1] = ':';
    }

    public final void q(int i2) {
        if (i2 == Integer.MIN_VALUE) {
            write("-2147483648");
            return;
        }
        int i3 = 0;
        while ((i2 < 0 ? -i2 : i2) > f13666g[i3]) {
            i3++;
        }
        int i4 = i3 + 1;
        if (i2 < 0) {
            i4 = i3 + 2;
        }
        int i5 = this.m + i4;
        if (i5 > this.l.length) {
            u(i5);
        }
        n(i2, i5, this.l);
        this.m = i5;
    }

    public final void r(String str) {
        int i2 = 0;
        if (str == null) {
            int i3 = this.m + 4;
            if (i3 > this.l.length) {
                u(i3);
            }
            "null".getChars(0, 4, this.l, this.m);
            this.m = i3;
            return;
        }
        int length = str.length();
        int i4 = this.m + length + 2;
        if (i4 > this.l.length) {
            u(i4);
        }
        int i5 = this.m;
        int i6 = i5 + 1;
        int i7 = i6 + length;
        char[] cArr = this.l;
        cArr[i5] = '\'';
        str.getChars(0, length, cArr, i6);
        this.m = i4;
        char c2 = 0;
        int i8 = -1;
        for (int i9 = i6; i9 < i7; i9++) {
            char c3 = this.l[i9];
            if (c3 <= '\r' || c3 == '\\' || c3 == '\'' || (c3 == '/' && (gar.WriteSlashAsSpecial.mask & this.k) != 0)) {
                i2++;
                i8 = i9;
                c2 = c3;
            }
        }
        int i10 = i4 + i2;
        if (i10 > this.l.length) {
            u(i10);
        }
        this.m = i10;
        char[] cArr2 = f13663d;
        if (i2 == 1) {
            char[] cArr3 = this.l;
            int i11 = i8 + 1;
            System.arraycopy(cArr3, i11, cArr3, i8 + 2, (i7 - i8) - 1);
            char[] cArr4 = this.l;
            cArr4[i8] = '\\';
            cArr4[i11] = cArr2[c2];
        } else if (i2 > 1) {
            char[] cArr5 = this.l;
            int i12 = i8 + 1;
            System.arraycopy(cArr5, i12, cArr5, i8 + 2, (i7 - i8) - 1);
            char[] cArr6 = this.l;
            cArr6[i8] = '\\';
            cArr6[i12] = cArr2[c2];
            int i13 = i7 + 1;
            for (int i14 = i8 - 1; i14 >= i6; i14--) {
                char[] cArr7 = this.l;
                char c4 = cArr7[i14];
                if (c4 <= '\r' || c4 == '\\' || c4 == '\'' || (c4 == '/' && (gar.WriteSlashAsSpecial.mask & this.k) != 0)) {
                    int i15 = i14 + 1;
                    System.arraycopy(cArr7, i15, cArr7, i14 + 2, (i13 - i14) - 1);
                    char[] cArr8 = this.l;
                    cArr8[i14] = '\\';
                    cArr8[i15] = cArr2[c4];
                    i13++;
                }
            }
        }
        this.l[this.m - 1] = '\'';
    }

    public final void s(CharSequence charSequence) {
        String charSequence2 = charSequence == null ? "null" : charSequence.toString();
        write(charSequence2, 0, charSequence2.length());
    }

    public final void t(String str) {
        if ((gar.UseSingleQuotes.mask & this.k) != 0) {
            r(str);
        } else {
            v(true, str, (char) 0);
        }
    }

    public final String toString() {
        return new String(this.l, 0, this.m);
    }

    public final void u(int i2) {
        char[] cArr = this.l;
        int length = ((cArr.length * 3) / 2) + 1;
        if (length >= i2) {
            i2 = length;
        }
        char[] cArr2 = new char[i2];
        System.arraycopy(cArr, 0, cArr2, 0, this.m);
        this.l = cArr2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:123:0x01ba, code lost:
    
        if (r14 != '\\') goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x01c7, code lost:
    
        if (r14 != '\"') goto L87;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void v(boolean z, String str, char c2) {
        byte[] bArr;
        char c3;
        char c4;
        char c5;
        if (str == null) {
            o();
            if (c2 != 0) {
                write(c2);
                return;
            }
            return;
        }
        int length = str.length();
        int i2 = this.m + length;
        int i3 = i2 + 2;
        if (c2 != 0) {
            i3 = i2 + 3;
        }
        if (i3 > this.l.length) {
            u(i3);
        }
        int i4 = this.m;
        int i5 = i4 + 1;
        int i6 = i5 + length;
        char[] cArr = this.l;
        cArr[i4] = '\"';
        str.getChars(0, length, cArr, i5);
        this.m = i3;
        int i7 = gar.BrowserCompatible.mask & this.k;
        char[] cArr2 = f13663d;
        char[] cArr3 = i;
        int i8 = -1;
        if (i7 != 0) {
            int i9 = i5;
            while (true) {
                c3 = '\n';
                c4 = '\f';
                c5 = '\b';
                if (i9 >= i6) {
                    break;
                }
                char c6 = this.l[i9];
                if (c6 == '\"' || c6 == '/' || c6 == '\\' || c6 == '\b' || c6 == '\f' || c6 == '\n' || c6 == '\r' || c6 == '\t') {
                    i3++;
                } else if (c6 >= ' ' && c6 < 127) {
                    i9++;
                } else {
                    i3 += 5;
                }
                i8 = i9;
                i9++;
            }
            if (i3 > this.l.length) {
                u(i3);
            }
            this.m = i3;
            while (i8 >= i5) {
                char[] cArr4 = this.l;
                char c7 = cArr4[i8];
                if (c7 != c5 && c7 != c4 && c7 != c3) {
                    if (c7 != '\r' && c7 != '\t') {
                        if (c7 == '\"' || c7 == '/' || c7 == '\\') {
                            int i10 = i8 + 1;
                            System.arraycopy(cArr4, i10, cArr4, i8 + 2, (i6 - i8) - 1);
                            char[] cArr5 = this.l;
                            cArr5[i8] = '\\';
                            cArr5[i10] = c7;
                            i6++;
                            i8--;
                            c5 = '\b';
                            c3 = '\n';
                            c4 = '\f';
                        } else {
                            if (c7 < ' ') {
                                int i11 = i8 + 1;
                                System.arraycopy(cArr4, i11, cArr4, i8 + 6, (i6 - i8) - 1);
                                char[] cArr6 = this.l;
                                cArr6[i8] = '\\';
                                cArr6[i11] = 'u';
                                cArr6[i8 + 2] = '0';
                                cArr6[i8 + 3] = '0';
                                int i12 = c7 * 2;
                                char[] cArr7 = h;
                                cArr6[i8 + 4] = cArr7[i12];
                                cArr6[i8 + 5] = cArr7[i12 + 1];
                            } else if (c7 >= 127) {
                                int i13 = i8 + 1;
                                System.arraycopy(cArr4, i13, cArr4, i8 + 6, (i6 - i8) - 1);
                                char[] cArr8 = this.l;
                                cArr8[i8] = '\\';
                                cArr8[i13] = 'u';
                                cArr8[i8 + 2] = cArr3[(c7 >>> '\f') & 15];
                                cArr8[i8 + 3] = cArr3[(c7 >>> '\b') & 15];
                                cArr8[i8 + 4] = cArr3[(c7 >>> 4) & 15];
                                cArr8[i8 + 5] = cArr3[c7 & 15];
                            } else {
                                i8--;
                                c5 = '\b';
                                c3 = '\n';
                                c4 = '\f';
                            }
                            i6 += 5;
                            i8--;
                            c5 = '\b';
                            c3 = '\n';
                            c4 = '\f';
                        }
                    }
                }
                int i14 = i8 + 1;
                System.arraycopy(cArr4, i14, cArr4, i8 + 2, (i6 - i8) - 1);
                char[] cArr9 = this.l;
                cArr9[i8] = '\\';
                cArr9[i14] = cArr2[c7];
                i6++;
                i8--;
                c5 = '\b';
                c3 = '\n';
                c4 = '\f';
            }
            if (c2 == 0) {
                this.l[this.m - 1] = '\"';
                return;
            }
            char[] cArr10 = this.l;
            int i15 = this.m;
            cArr10[i15 - 2] = '\"';
            cArr10[i15 - 1] = c2;
            return;
        }
        if (z) {
            int i16 = i3;
            int i17 = i5;
            int i18 = 0;
            char c8 = 0;
            int i19 = -1;
            int i20 = -1;
            while (true) {
                bArr = f13662c;
                if (i17 >= i6) {
                    break;
                }
                char c9 = this.l[i17];
                if (c9 == 8232) {
                    i18++;
                    i16 += 4;
                    if (i19 == i8) {
                        i19 = i17;
                        i20 = i19;
                        c8 = c9;
                        i17++;
                        i8 = -1;
                    }
                } else {
                    if (c9 >= ']') {
                        if (c9 >= 127 && c9 <= 160) {
                            if (i19 == i8) {
                                i19 = i17;
                            }
                            i18++;
                            i16 += 4;
                        }
                    } else if (c9 != ' ') {
                        if (c9 != '/' || (gar.WriteSlashAsSpecial.mask & this.k) == 0) {
                            char c10 = c9 > '#' ? '\\' : '\\';
                            if (c9 > 31) {
                                if (c9 != c10) {
                                }
                            }
                        }
                        i18++;
                        if (c9 < bArr.length && bArr[c9] == 4) {
                            i16 += 4;
                        }
                        if (i19 == -1) {
                            i19 = i17;
                            i20 = i19;
                        } else {
                            i20 = i17;
                        }
                        c8 = c9;
                        i17++;
                        i8 = -1;
                    }
                    i17++;
                    i8 = -1;
                }
                i20 = i17;
                c8 = c9;
                i17++;
                i8 = -1;
            }
            if (i18 > 0) {
                int i21 = i16 + i18;
                if (i21 > this.l.length) {
                    u(i21);
                }
                this.m = i21;
                if (i18 == 1) {
                    if (c8 == 8232) {
                        int i22 = i20 + 1;
                        char[] cArr11 = this.l;
                        System.arraycopy(cArr11, i22, cArr11, i20 + 6, (i6 - i20) - 1);
                        char[] cArr12 = this.l;
                        cArr12[i20] = '\\';
                        cArr12[i22] = 'u';
                        cArr12[i20 + 2] = '2';
                        cArr12[i20 + 3] = '0';
                        cArr12[i20 + 4] = '2';
                        cArr12[i20 + 5] = '8';
                    } else if (c8 >= bArr.length || bArr[c8] != 4) {
                        int i23 = i20 + 1;
                        char[] cArr13 = this.l;
                        System.arraycopy(cArr13, i23, cArr13, i20 + 2, (i6 - i20) - 1);
                        char[] cArr14 = this.l;
                        cArr14[i20] = '\\';
                        cArr14[i23] = cArr2[c8];
                    } else {
                        int i24 = i20 + 1;
                        char[] cArr15 = this.l;
                        System.arraycopy(cArr15, i24, cArr15, i20 + 6, (i6 - i20) - 1);
                        char[] cArr16 = this.l;
                        cArr16[i20] = '\\';
                        cArr16[i24] = 'u';
                        cArr16[i20 + 2] = cArr3[(c8 >>> '\f') & 15];
                        cArr16[i20 + 3] = cArr3[(c8 >>> '\b') & 15];
                        cArr16[i20 + 4] = cArr3[(c8 >>> 4) & 15];
                        cArr16[i20 + 5] = cArr3[c8 & 15];
                    }
                } else if (i18 > 1) {
                    for (int i25 = i19 - i5; i25 < str.length(); i25++) {
                        char charAt = str.charAt(i25);
                        if ((charAt >= bArr.length || bArr[charAt] == 0) && (charAt != '/' || (gar.WriteSlashAsSpecial.mask & this.k) == 0)) {
                            if (charAt == 8232) {
                                char[] cArr17 = this.l;
                                cArr17[i19] = '\\';
                                cArr17[i19 + 1] = 'u';
                                cArr17[i19 + 2] = cArr3[(charAt >>> '\f') & 15];
                                cArr17[i19 + 3] = cArr3[(charAt >>> '\b') & 15];
                                int i26 = i19 + 5;
                                cArr17[i19 + 4] = cArr3[(charAt >>> 4) & 15];
                                i19 += 6;
                                cArr17[i26] = cArr3[charAt & 15];
                            } else {
                                this.l[i19] = charAt;
                                i19++;
                            }
                        }
                        char[] cArr18 = this.l;
                        int i27 = i19 + 1;
                        cArr18[i19] = '\\';
                        if (bArr[charAt] == 4) {
                            cArr18[i27] = 'u';
                            cArr18[i19 + 2] = cArr3[(charAt >>> '\f') & 15];
                            cArr18[i19 + 3] = cArr3[(charAt >>> '\b') & 15];
                            int i28 = i19 + 5;
                            cArr18[i19 + 4] = cArr3[(charAt >>> 4) & 15];
                            i19 += 6;
                            cArr18[i28] = cArr3[charAt & 15];
                        } else {
                            i19 += 2;
                            cArr18[i27] = cArr2[charAt];
                        }
                    }
                }
            }
        }
        if (c2 == 0) {
            this.l[this.m - 1] = '\"';
            return;
        }
        char[] cArr19 = this.l;
        int i29 = this.m;
        cArr19[i29 - 2] = '\"';
        cArr19[i29 - 1] = c2;
    }

    public final void w(long j2) {
        if (j2 == Long.MIN_VALUE) {
            write("-9223372036854775808");
            return;
        }
        long j3 = j2 < 0 ? -j2 : j2;
        int i2 = 1;
        long j4 = 10;
        while (true) {
            if (i2 >= 19) {
                i2 = 0;
                break;
            } else {
                if (j3 < j4) {
                    break;
                }
                j4 *= 10;
                i2++;
            }
        }
        int i3 = i2 != 0 ? i2 : 19;
        if (j2 < 0) {
            i3++;
        }
        int i4 = this.m + i3;
        if (i4 > this.l.length) {
            u(i4);
        }
        n(j2, i4, this.l);
        this.m = i4;
    }

    @Override // java.io.Writer
    public final void write(int i2) {
        int i3 = this.m + 1;
        if (i3 > this.l.length) {
            u(i3);
        }
        this.l[this.m] = (char) i2;
        this.m = i3;
    }

    @Override // java.io.Writer
    public final void write(String str) {
        if (str == null) {
            o();
        } else {
            write(str, 0, str.length());
        }
    }

    @Override // java.io.Writer
    public final void write(String str, int i2, int i3) {
        int i4 = this.m + i3;
        if (i4 > this.l.length) {
            u(i4);
        }
        str.getChars(i2, i3 + i2, this.l, this.m);
        this.m = i4;
    }

    @Override // java.io.Writer
    public final void write(char[] cArr, int i2, int i3) {
        int i4;
        if (i2 < 0 || i2 > cArr.length || i3 < 0 || (i4 = i2 + i3) > cArr.length || i4 < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i3 == 0) {
            return;
        }
        int i5 = this.m + i3;
        if (i5 > this.l.length) {
            u(i5);
        }
        System.arraycopy(cArr, i2, this.l, this.m, i3);
        this.m = i5;
    }
}
