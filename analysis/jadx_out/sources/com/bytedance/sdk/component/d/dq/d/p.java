package com.bytedance.sdk.component.d.dq.d;

import g.awf;
import g.tn;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Arrays;

/* loaded from: classes.dex */
public class p implements Serializable, Comparable<p> {
    transient String iw;
    final byte[] p;
    transient int s;
    static final char[] dq = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: d, reason: collision with root package name */
    public static final Charset f1834d = Charset.forName("UTF-8");
    public static final p ox = dq(new byte[0]);

    public p(byte[] bArr) {
        this.p = bArr;
    }

    public static int dq(String str, int i) {
        int length = str.length();
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            if (i3 == i) {
                return i2;
            }
            int codePointAt = str.codePointAt(i2);
            if ((Character.isISOControl(codePointAt) && codePointAt != 10 && codePointAt != 13) || codePointAt == 65533) {
                return -1;
            }
            i3++;
            i2 += Character.charCount(codePointAt);
        }
        return str.length();
    }

    public static p dq(String str) {
        if (str == null) {
            throw new IllegalArgumentException("s == null");
        }
        p pVar = new p(str.getBytes(o.dq));
        pVar.iw = str;
        return pVar;
    }

    public static p dq(byte... bArr) {
        if (bArr != null) {
            return new p((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    public String d() {
        byte[] bArr = this.p;
        char[] cArr = new char[bArr.length * 2];
        int i = 0;
        for (byte b2 : bArr) {
            int i2 = i + 1;
            char[] cArr2 = dq;
            cArr[i] = cArr2[(b2 >> 4) & 15];
            i += 2;
            cArr[i2] = cArr2[b2 & 15];
        }
        return new String(cArr);
    }

    public byte dq(int i) {
        return this.p[i];
    }

    @Override // java.lang.Comparable
    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
    public int compareTo(p pVar) {
        int ox2 = ox();
        int ox3 = pVar.ox();
        int min = Math.min(ox2, ox3);
        for (int i = 0; i < min; i++) {
            int dq2 = dq(i) & 255;
            int dq3 = pVar.dq(i) & 255;
            if (dq2 != dq3) {
                return dq2 < dq3 ? -1 : 1;
            }
        }
        if (ox2 == ox3) {
            return 0;
        }
        return ox2 < ox3 ? -1 : 1;
    }

    public p dq(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("beginIndex < 0");
        }
        byte[] bArr = this.p;
        if (i2 > bArr.length) {
            throw new IllegalArgumentException(awf.x(new StringBuilder("endIndex > length("), this.p.length, ")"));
        }
        int i3 = i2 - i;
        if (i3 < 0) {
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        if (i == 0 && i2 == bArr.length) {
            return this;
        }
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, i, bArr2, 0, i3);
        return new p(bArr2);
    }

    public String dq() {
        String str = this.iw;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.p, f1834d);
        this.iw = str2;
        return str2;
    }

    public boolean dq(int i, p pVar, int i2, int i3) {
        return pVar.dq(i2, this.p, i, i3);
    }

    public boolean dq(int i, byte[] bArr, int i2, int i3) {
        if (i < 0) {
            return false;
        }
        byte[] bArr2 = this.p;
        return i <= bArr2.length - i3 && i2 >= 0 && i2 <= bArr.length - i3 && o.dq(bArr2, i, bArr, i2, i3);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof p) {
            p pVar = (p) obj;
            int ox2 = pVar.ox();
            byte[] bArr = this.p;
            if (ox2 == bArr.length && pVar.dq(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i = this.s;
        if (i != 0) {
            return i;
        }
        int hashCode = Arrays.hashCode(this.p);
        this.s = hashCode;
        return hashCode;
    }

    public int ox() {
        return this.p.length;
    }

    public byte[] p() {
        return (byte[]) this.p.clone();
    }

    public String toString() {
        if (this.p.length == 0) {
            return "[size=0]";
        }
        String dq2 = dq();
        int dq3 = dq(dq2, 64);
        if (dq3 != -1) {
            String replace = dq2.substring(0, dq3).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
            if (dq3 >= dq2.length()) {
                return tn.ad("[text=", replace, "]");
            }
            return "[size=" + this.p.length + " text=" + replace + "…]";
        }
        if (this.p.length <= 64) {
            return "[hex=" + d() + "]";
        }
        return "[size=" + this.p.length + " hex=" + dq(0, 64).d() + "…]";
    }
}
