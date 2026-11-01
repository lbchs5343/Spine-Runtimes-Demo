package com.bytedance.sdk.component.ox.d.dq.kk;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import javax.security.auth.x500.X500Principal;

/* loaded from: classes.dex */
final class p {

    /* renamed from: d, reason: collision with root package name */
    private final int f2062d;
    private final String dq;
    private int iw;
    private char[] mn;
    private int ox;
    private int p;
    private int s;

    public p(X500Principal x500Principal) {
        String name = x500Principal.getName("RFC2253");
        this.dq = name;
        this.f2062d = name.length();
    }

    private String d() {
        int i = this.ox + 1;
        this.ox = i;
        this.p = i;
        this.s = i;
        while (true) {
            int i2 = this.ox;
            if (i2 == this.f2062d) {
                throw new IllegalStateException("Unexpected end of DN: " + this.dq);
            }
            char[] cArr = this.mn;
            char c2 = cArr[i2];
            if (c2 == '\"') {
                this.ox = i2 + 1;
                while (true) {
                    int i3 = this.ox;
                    if (i3 >= this.f2062d || this.mn[i3] != ' ') {
                        break;
                    }
                    this.ox = i3 + 1;
                }
                char[] cArr2 = this.mn;
                int i4 = this.p;
                return new String(cArr2, i4, this.s - i4);
            }
            if (c2 == '\\') {
                cArr[this.s] = s();
            } else {
                cArr[this.s] = c2;
            }
            this.ox++;
            this.s++;
        }
    }

    private int dq(int i) {
        int i2;
        int i3;
        int i4 = i + 1;
        if (i4 >= this.f2062d) {
            throw new IllegalStateException("Malformed DN: " + this.dq);
        }
        char[] cArr = this.mn;
        char c2 = cArr[i];
        if (c2 >= '0' && c2 <= '9') {
            i2 = c2 - '0';
        } else if (c2 >= 'a' && c2 <= 'f') {
            i2 = c2 - 'W';
        } else {
            if (c2 < 'A' || c2 > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.dq);
            }
            i2 = c2 - '7';
        }
        char c3 = cArr[i4];
        if (c3 >= '0' && c3 <= '9') {
            i3 = c3 - '0';
        } else if (c3 >= 'a' && c3 <= 'f') {
            i3 = c3 - 'W';
        } else {
            if (c3 < 'A' || c3 > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.dq);
            }
            i3 = c3 - '7';
        }
        return (i2 << 4) + i3;
    }

    private String dq() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        char c2;
        int i6;
        int i7;
        char c3;
        char c4;
        while (true) {
            i = this.ox;
            i2 = this.f2062d;
            if (i >= i2 || this.mn[i] != ' ') {
                break;
            }
            this.ox = i + 1;
        }
        if (i == i2) {
            return null;
        }
        this.p = i;
        this.ox = i + 1;
        while (true) {
            i3 = this.ox;
            i4 = this.f2062d;
            if (i3 >= i4 || (c4 = this.mn[i3]) == '=' || c4 == ' ') {
                break;
            }
            this.ox = i3 + 1;
        }
        if (i3 >= i4) {
            throw new IllegalStateException("Unexpected end of DN: " + this.dq);
        }
        this.s = i3;
        if (this.mn[i3] == ' ') {
            while (true) {
                i6 = this.ox;
                i7 = this.f2062d;
                if (i6 >= i7 || (c3 = this.mn[i6]) == '=' || c3 != ' ') {
                    break;
                }
                this.ox = i6 + 1;
            }
            if (this.mn[i6] != '=' || i6 == i7) {
                throw new IllegalStateException("Unexpected end of DN: " + this.dq);
            }
        }
        do {
            i5 = this.ox + 1;
            this.ox = i5;
            if (i5 >= this.f2062d) {
                break;
            }
        } while (this.mn[i5] == ' ');
        int i8 = this.s;
        int i9 = this.p;
        if (i8 - i9 > 4) {
            char[] cArr = this.mn;
            if (cArr[i9 + 3] == '.' && (((c2 = cArr[i9]) == 'O' || c2 == 'o') && ((cArr[i9 + 1] == 'I' || cArr[i9 + 1] == 'i') && (cArr[i9 + 2] == 'D' || cArr[i9 + 2] == 'd')))) {
                this.p = i9 + 4;
            }
        }
        char[] cArr2 = this.mn;
        int i10 = this.p;
        return new String(cArr2, i10, i8 - i10);
    }

    private char iw() {
        int i;
        int i2;
        int dq = dq(this.ox);
        this.ox++;
        if (dq < 128) {
            return (char) dq;
        }
        if (dq < 192 || dq > 247) {
            return '?';
        }
        if (dq <= 223) {
            i = dq & 31;
            i2 = 1;
        } else if (dq <= 239) {
            i = dq & 15;
            i2 = 2;
        } else {
            i = dq & 7;
            i2 = 3;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = this.ox;
            int i5 = i4 + 1;
            this.ox = i5;
            if (i5 == this.f2062d || this.mn[i5] != '\\') {
                return '?';
            }
            int i6 = i4 + 2;
            this.ox = i6;
            int dq2 = dq(i6);
            this.ox++;
            if ((dq2 & MediaPlayer.MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT) != 128) {
                return '?';
            }
            i = (i << 6) + (dq2 & 63);
        }
        return (char) i;
    }

    private String ox() {
        int i;
        char[] cArr;
        char c2;
        int i2 = this.ox;
        if (i2 + 4 >= this.f2062d) {
            throw new IllegalStateException("Unexpected end of DN: " + this.dq);
        }
        this.p = i2;
        this.ox = i2 + 1;
        while (true) {
            i = this.ox;
            if (i == this.f2062d || (c2 = (cArr = this.mn)[i]) == '+' || c2 == ',' || c2 == ';') {
                break;
            }
            if (c2 == ' ') {
                this.s = i;
                this.ox = i + 1;
                while (true) {
                    int i3 = this.ox;
                    if (i3 >= this.f2062d || this.mn[i3] != ' ') {
                        break;
                    }
                    this.ox = i3 + 1;
                }
            } else {
                if (c2 >= 'A' && c2 <= 'F') {
                    cArr[i] = (char) (c2 + ' ');
                }
                this.ox = i + 1;
            }
        }
        this.s = i;
        int i4 = this.s;
        int i5 = this.p;
        int i6 = i4 - i5;
        if (i6 < 5 || (i6 & 1) == 0) {
            throw new IllegalStateException("Unexpected end of DN: " + this.dq);
        }
        int i7 = i6 / 2;
        byte[] bArr = new byte[i7];
        int i8 = i5 + 1;
        for (int i9 = 0; i9 < i7; i9++) {
            bArr[i9] = (byte) dq(i8);
            i8 += 2;
        }
        return new String(this.mn, this.p, i6);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x009b, code lost:
    
        return new java.lang.String(r1, r2, r8.iw - r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String p() {
        char[] cArr;
        int i;
        int i2;
        char c2;
        int i3 = this.ox;
        this.p = i3;
        this.s = i3;
        while (true) {
            int i4 = this.ox;
            if (i4 >= this.f2062d) {
                char[] cArr2 = this.mn;
                int i5 = this.p;
                return new String(cArr2, i5, this.s - i5);
            }
            cArr = this.mn;
            char c3 = cArr[i4];
            if (c3 == ' ') {
                int i6 = this.s;
                this.iw = i6;
                this.ox = i4 + 1;
                this.s = i6 + 1;
                cArr[i6] = ' ';
                while (true) {
                    i = this.ox;
                    i2 = this.f2062d;
                    if (i >= i2) {
                        break;
                    }
                    char[] cArr3 = this.mn;
                    if (cArr3[i] != ' ') {
                        break;
                    }
                    int i7 = this.s;
                    this.s = i7 + 1;
                    cArr3[i7] = ' ';
                    this.ox = i + 1;
                }
                if (i == i2 || (c2 = this.mn[i]) == ',' || c2 == '+' || c2 == ';') {
                    break;
                }
            } else {
                if (c3 == ';') {
                    break;
                }
                if (c3 == '\\') {
                    int i8 = this.s;
                    this.s = i8 + 1;
                    cArr[i8] = s();
                    this.ox++;
                } else {
                    if (c3 == '+' || c3 == ',') {
                        break;
                    }
                    int i9 = this.s;
                    this.s = i9 + 1;
                    cArr[i9] = c3;
                    this.ox = i4 + 1;
                }
            }
        }
        int i10 = this.p;
        return new String(cArr, i10, this.s - i10);
    }

    private char s() {
        int i = this.ox + 1;
        this.ox = i;
        if (i == this.f2062d) {
            throw new IllegalStateException("Unexpected end of DN: " + this.dq);
        }
        char c2 = this.mn[i];
        if (c2 == ' ' || c2 == '%' || c2 == '\\' || c2 == '_' || c2 == '\"' || c2 == '#') {
            return c2;
        }
        switch (c2) {
            case '*':
            case '+':
            case ',':
                return c2;
            default:
                switch (c2) {
                    case ';':
                    case '<':
                    case '=':
                    case '>':
                        return c2;
                    default:
                        return iw();
                }
        }
    }

    public String dq(String str) {
        this.ox = 0;
        this.p = 0;
        this.s = 0;
        this.iw = 0;
        this.mn = this.dq.toCharArray();
        String dq = dq();
        if (dq == null) {
            return null;
        }
        do {
            int i = this.ox;
            if (i == this.f2062d) {
                return null;
            }
            char c2 = this.mn[i];
            String p = c2 != '\"' ? c2 != '#' ? (c2 == '+' || c2 == ',' || c2 == ';') ? "" : p() : ox() : d();
            if (str.equalsIgnoreCase(dq)) {
                return p;
            }
            int i2 = this.ox;
            if (i2 >= this.f2062d) {
                return null;
            }
            char c3 = this.mn[i2];
            if (c3 != ',' && c3 != ';' && c3 != '+') {
                throw new IllegalStateException("Malformed DN: " + this.dq);
            }
            this.ox = i2 + 1;
            dq = dq();
        } while (dq != null);
        throw new IllegalStateException("Malformed DN: " + this.dq);
    }
}
