package com.bytedance.sdk.component.ox.dq;

import g.awf;
import g.tn;
import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

/* loaded from: classes.dex */
public class iw implements Serializable, Comparable<iw> {
    final byte[] ox;
    transient int p;
    transient String s;
    static final char[] dq = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: d, reason: collision with root package name */
    public static final iw f2156d = dq(new byte[0]);

    public iw(byte[] bArr) {
        this.ox = bArr;
    }

    public static iw d(String str) {
        if (str == null) {
            throw new IllegalArgumentException("hex == null");
        }
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException("Unexpected hex string: ".concat(str));
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) ((dq(str.charAt(i2)) << 4) + dq(str.charAt(i2 + 1)));
        }
        return dq(bArr);
    }

    private static int dq(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        if (c2 >= 'a' && c2 <= 'f') {
            return c2 - 'W';
        }
        if (c2 < 'A' || c2 > 'F') {
            throw new IllegalArgumentException("Unexpected hex digit: ".concat(String.valueOf(c2)));
        }
        return c2 - '7';
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

    public static iw dq(String str) {
        if (str == null) {
            throw new IllegalArgumentException("s == null");
        }
        iw iwVar = new iw(str.getBytes(i.dq));
        iwVar.s = str;
        return iwVar;
    }

    public static iw dq(byte... bArr) {
        if (bArr != null) {
            return new iw((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    private iw ox(String str) {
        try {
            return dq(MessageDigest.getInstance(str).digest(this.ox));
        } catch (NoSuchAlgorithmException e2) {
            throw new AssertionError(e2);
        }
    }

    @Override // java.lang.Comparable
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public int compareTo(iw iwVar) {
        int mn = mn();
        int mn2 = iwVar.mn();
        int min = Math.min(mn, mn2);
        for (int i = 0; i < min; i++) {
            int dq2 = dq(i) & 255;
            int dq3 = iwVar.dq(i) & 255;
            if (dq2 != dq3) {
                return dq2 < dq3 ? -1 : 1;
            }
        }
        if (mn == mn2) {
            return 0;
        }
        return mn < mn2 ? -1 : 1;
    }

    public String d() {
        return d.dq(this.ox);
    }

    public byte dq(int i) {
        return this.ox[i];
    }

    public iw dq(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("beginIndex < 0");
        }
        byte[] bArr = this.ox;
        if (i2 > bArr.length) {
            throw new IllegalArgumentException(awf.x(new StringBuilder("endIndex > length("), this.ox.length, ")"));
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
        return new iw(bArr2);
    }

    public String dq() {
        String str = this.s;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.ox, i.dq);
        this.s = str2;
        return str2;
    }

    public void dq(ox oxVar) {
        byte[] bArr = this.ox;
        oxVar.ox(bArr, 0, bArr.length);
    }

    public boolean dq(int i, iw iwVar, int i2, int i3) {
        return iwVar.dq(i2, this.ox, i, i3);
    }

    public boolean dq(int i, byte[] bArr, int i2, int i3) {
        if (i < 0) {
            return false;
        }
        byte[] bArr2 = this.ox;
        return i <= bArr2.length - i3 && i2 >= 0 && i2 <= bArr.length - i3 && i.dq(bArr2, i, bArr, i2, i3);
    }

    public final boolean dq(iw iwVar) {
        return dq(0, iwVar, 0, iwVar.mn());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof iw) {
            iw iwVar = (iw) obj;
            int mn = iwVar.mn();
            byte[] bArr = this.ox;
            if (mn == bArr.length && iwVar.dq(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i = this.p;
        if (i != 0) {
            return i;
        }
        int hashCode = Arrays.hashCode(this.ox);
        this.p = hashCode;
        return hashCode;
    }

    public byte[] ia() {
        return (byte[]) this.ox.clone();
    }

    public iw iw() {
        int i = 0;
        while (true) {
            byte[] bArr = this.ox;
            if (i >= bArr.length) {
                return this;
            }
            byte b2 = bArr[i];
            if (b2 >= 65 && b2 <= 90) {
                byte[] bArr2 = (byte[]) bArr.clone();
                bArr2[i] = (byte) (b2 + 32);
                for (int i2 = i + 1; i2 < bArr2.length; i2++) {
                    byte b3 = bArr2[i2];
                    if (b3 >= 65 && b3 <= 90) {
                        bArr2[i2] = (byte) (b3 + 32);
                    }
                }
                return new iw(bArr2);
            }
            i++;
        }
    }

    public int mn() {
        return this.ox.length;
    }

    public iw ox() {
        return ox("SHA-1");
    }

    public iw p() {
        return ox("SHA-256");
    }

    public String s() {
        byte[] bArr = this.ox;
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

    public String toString() {
        if (this.ox.length == 0) {
            return "[size=0]";
        }
        String dq2 = dq();
        int dq3 = dq(dq2, 64);
        if (dq3 != -1) {
            String replace = dq2.substring(0, dq3).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
            if (dq3 >= dq2.length()) {
                return tn.ad("[text=", replace, "]");
            }
            return "[size=" + this.ox.length + " text=" + replace + "…]";
        }
        if (this.ox.length <= 64) {
            return "[hex=" + s() + "]";
        }
        return "[size=" + this.ox.length + " hex=" + dq(0, 64).s() + "…]";
    }
}
