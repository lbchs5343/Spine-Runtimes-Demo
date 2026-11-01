package com.bytedance.sdk.component.ox.d.dq.ia;

import com.bytedance.sdk.component.ox.d.dq.mn.s;
import com.bytedance.sdk.component.ox.d.dq.ox;
import com.bytedance.sdk.component.ox.dq.ig;
import com.bytedance.sdk.component.ox.dq.o;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class dq {
    private byte[] ia;
    private byte[] mn;
    private static final byte[] dq = {42};

    /* renamed from: d, reason: collision with root package name */
    private static final String[] f2061d = new String[0];
    private static final String[] ox = {"*"};
    private static final dq p = new dq();
    private final AtomicBoolean s = new AtomicBoolean(false);
    private final CountDownLatch iw = new CountDownLatch(1);

    private void d() {
        boolean z = false;
        while (true) {
            try {
                try {
                    ox();
                    break;
                } catch (InterruptedIOException unused) {
                    z = true;
                } catch (IOException e2) {
                    s.d().dq(5, "Failed to read public suffix list", e2);
                    if (!z) {
                        return;
                    }
                }
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (!z) {
            return;
        }
        Thread.currentThread().interrupt();
    }

    public static dq dq() {
        return p;
    }

    private static String dq(byte[] bArr, byte[][] bArr2, int i) {
        int i2;
        boolean z;
        int i3;
        int i4;
        int length = bArr.length;
        int i5 = 0;
        while (i5 < length) {
            int i6 = (i5 + length) / 2;
            while (i6 >= 0 && bArr[i6] != 10) {
                i6--;
            }
            int i7 = i6 + 1;
            int i8 = 1;
            while (true) {
                i2 = i7 + i8;
                if (bArr[i2] == 10) {
                    break;
                }
                i8++;
            }
            int i9 = i2 - i7;
            int i10 = i;
            boolean z2 = false;
            int i11 = 0;
            int i12 = 0;
            while (true) {
                if (z2) {
                    i3 = 46;
                    z = false;
                } else {
                    z = z2;
                    i3 = bArr2[i10][i11] & 255;
                }
                i4 = i3 - (bArr[i7 + i12] & 255);
                if (i4 != 0) {
                    break;
                }
                i12++;
                i11++;
                if (i12 == i9) {
                    break;
                }
                if (bArr2[i10].length != i11) {
                    z2 = z;
                } else {
                    if (i10 == bArr2.length - 1) {
                        break;
                    }
                    i10++;
                    z2 = true;
                    i11 = -1;
                }
            }
            if (i4 >= 0) {
                if (i4 <= 0) {
                    int i13 = i9 - i12;
                    int length2 = bArr2[i10].length - i11;
                    while (true) {
                        i10++;
                        if (i10 >= bArr2.length) {
                            break;
                        }
                        length2 += bArr2[i10].length;
                    }
                    if (length2 >= i13) {
                        if (length2 <= i13) {
                            return new String(bArr, i7, i9, ox.s);
                        }
                    }
                }
                i5 = i2 + 1;
            }
            length = i6;
        }
        return null;
    }

    private String[] dq(String[] strArr) {
        String str;
        String str2;
        String str3;
        int i = 0;
        if (this.s.get() || !this.s.compareAndSet(false, true)) {
            try {
                this.iw.await();
            } catch (InterruptedException unused) {
            }
        } else {
            d();
        }
        synchronized (this) {
            if (this.mn == null) {
                throw new IllegalStateException("Unable to load publicsuffixes.gz resource from the classpath.");
            }
        }
        int length = strArr.length;
        byte[][] bArr = new byte[length][];
        for (int i2 = 0; i2 < strArr.length; i2++) {
            bArr[i2] = strArr[i2].getBytes(ox.s);
        }
        int i3 = 0;
        while (true) {
            str = null;
            if (i3 >= length) {
                str2 = null;
                break;
            }
            str2 = dq(this.mn, bArr, i3);
            if (str2 != null) {
                break;
            }
            i3++;
        }
        if (length > 1) {
            byte[][] bArr2 = (byte[][]) bArr.clone();
            for (int i4 = 0; i4 < bArr2.length - 1; i4++) {
                bArr2[i4] = dq;
                str3 = dq(this.mn, bArr2, i4);
                if (str3 != null) {
                    break;
                }
            }
        }
        str3 = null;
        if (str3 != null) {
            while (true) {
                if (i >= length - 1) {
                    break;
                }
                String dq2 = dq(this.ia, bArr, i);
                if (dq2 != null) {
                    str = dq2;
                    break;
                }
                i++;
            }
        }
        if (str != null) {
            return "!".concat(str).split("\\.");
        }
        if (str2 == null && str3 == null) {
            return ox;
        }
        String[] split = str2 != null ? str2.split("\\.") : f2061d;
        String[] split2 = str3 != null ? str3.split("\\.") : f2061d;
        return split.length > split2.length ? split : split2;
    }

    private void ox() throws IOException {
        InputStream resourceAsStream = dq.class.getResourceAsStream("publicsuffixes.gz");
        if (resourceAsStream == null) {
            return;
        }
        com.bytedance.sdk.component.ox.dq.s dq2 = ig.dq(new o(ig.dq(resourceAsStream)));
        try {
            byte[] bArr = new byte[dq2.o()];
            dq2.dq(bArr);
            byte[] bArr2 = new byte[dq2.o()];
            dq2.dq(bArr2);
            synchronized (this) {
                this.mn = bArr;
                this.ia = bArr2;
            }
            this.iw.countDown();
        } finally {
            ox.dq(dq2);
        }
    }

    public String dq(String str) {
        int length;
        int length2;
        if (str == null) {
            throw new NullPointerException("domain == null");
        }
        String[] split = IDN.toUnicode(str).split("\\.");
        String[] dq2 = dq(split);
        if (split.length == dq2.length && dq2[0].charAt(0) != '!') {
            return null;
        }
        if (dq2[0].charAt(0) == '!') {
            length = split.length;
            length2 = dq2.length;
        } else {
            length = split.length;
            length2 = dq2.length + 1;
        }
        StringBuilder sb = new StringBuilder();
        String[] split2 = str.split("\\.");
        for (int i = length - length2; i < split2.length; i++) {
            sb.append(split2[i]);
            sb.append('.');
        }
        sb.deleteCharAt(sb.length() - 1);
        return sb.toString();
    }
}
