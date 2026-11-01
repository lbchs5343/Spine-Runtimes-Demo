package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public final class ctv extends afo {

    /* renamed from: a, reason: collision with root package name */
    public static final Logger f13495a = Logger.getLogger(ctv.class.getName());

    /* renamed from: b, reason: collision with root package name */
    public static final boolean f13496b = euh.f16173b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f13497c;

    /* renamed from: d, reason: collision with root package name */
    public final int f13498d;

    /* renamed from: e, reason: collision with root package name */
    public int f13499e;

    /* renamed from: f, reason: collision with root package name */
    public dnb f13500f;

    public ctv(byte[] bArr, int i) {
        int length = bArr.length;
        if (((length - i) | i) < 0) {
            Locale locale = Locale.US;
            throw new IllegalArgumentException(tn.t(length, i, "Array range is invalid. Buffer.length=", ", offset=0, length="));
        }
        this.f13497c = bArr;
        this.f13499e = 0;
        this.f13498d = i;
    }

    public static int g(String str) {
        int length;
        try {
            length = bib.e(str);
        } catch (gol unused) {
            length = str.getBytes(cua.f13515a).length;
        }
        return i(length) + length;
    }

    public static int h(long j) {
        return (640 - (Long.numberOfLeadingZeros(j) * 9)) >>> 6;
    }

    public static int i(int i) {
        return (352 - (Integer.numberOfLeadingZeros(i) * 9)) >>> 6;
    }

    public final void j(int i) {
        int i2 = this.f13499e;
        try {
            byte[] bArr = this.f13497c;
            bArr[i2] = (byte) i;
            bArr[i2 + 1] = (byte) (i >> 8);
            bArr[i2 + 2] = (byte) (i >> 16);
            bArr[i2 + 3] = (byte) (i >> 24);
            this.f13499e = i2 + 4;
        } catch (IndexOutOfBoundsException e2) {
            throw new gng(i2, this.f13498d, 4, e2);
        }
    }

    public final void k(int i) {
        if (i >= 0) {
            s(i);
        } else {
            r(i);
        }
    }

    public final void l(int i, long j) {
        s(i << 3);
        r(j);
    }

    public final void m(int i, int i2) {
        s((i << 3) | i2);
    }

    public final void n(int i, int i2) {
        s((i << 3) | 5);
        j(i2);
    }

    public final void o(int i, String str) {
        s((i << 3) | 2);
        int i2 = this.f13499e;
        try {
            int i3 = i(str.length() * 3);
            int i4 = i(str.length());
            int i5 = this.f13498d;
            byte[] bArr = this.f13497c;
            if (i4 != i3) {
                s(bib.e(str));
                int i6 = this.f13499e;
                this.f13499e = bib.d(str, bArr, i6, i5 - i6);
            } else {
                int i7 = i2 + i4;
                this.f13499e = i7;
                int d2 = bib.d(str, bArr, i7, i5 - i7);
                this.f13499e = i2;
                s((d2 - i2) - i4);
                this.f13499e = d2;
            }
        } catch (gol e2) {
            this.f13499e = i2;
            f13495a.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) e2);
            byte[] bytes = str.getBytes(cua.f13515a);
            try {
                int length = bytes.length;
                s(length);
                w(length, bytes);
            } catch (IndexOutOfBoundsException e3) {
                throw new gng(e3);
            }
        } catch (IndexOutOfBoundsException e4) {
            throw new gng(e4);
        }
    }

    public final void p(int i, int i2) {
        s(i << 3);
        k(i2);
    }

    public final void q(long j) {
        int i = this.f13499e;
        try {
            byte[] bArr = this.f13497c;
            bArr[i] = (byte) j;
            bArr[i + 1] = (byte) (j >> 8);
            bArr[i + 2] = (byte) (j >> 16);
            bArr[i + 3] = (byte) (j >> 24);
            bArr[i + 4] = (byte) (j >> 32);
            bArr[i + 5] = (byte) (j >> 40);
            bArr[i + 6] = (byte) (j >> 48);
            bArr[i + 7] = (byte) (j >> 56);
            this.f13499e = i + 8;
        } catch (IndexOutOfBoundsException e2) {
            throw new gng(i, this.f13498d, 8, e2);
        }
    }

    public final void r(long j) {
        int i;
        int i2 = this.f13499e;
        boolean z = f13496b;
        int i3 = this.f13498d;
        byte[] bArr = this.f13497c;
        if (!z || i3 - i2 < 10) {
            long j2 = j;
            while ((j2 & (-128)) != 0) {
                i = i2 + 1;
                try {
                    bArr[i2] = (byte) (((int) j2) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                    j2 >>>= 7;
                    i2 = i;
                } catch (IndexOutOfBoundsException e2) {
                    throw new gng(i, i3, 1, e2);
                }
            }
            i = i2 + 1;
            bArr[i2] = (byte) j2;
        } else {
            long j3 = j;
            while ((j3 & (-128)) != 0) {
                euh.f16177f.a(bArr, euh.f16175d + i2, (byte) (((int) j3) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME));
                j3 >>>= 7;
                i2++;
            }
            i = i2 + 1;
            euh.f16177f.a(bArr, euh.f16175d + i2, (byte) j3);
        }
        this.f13499e = i;
    }

    public final void s(int i) {
        int i2;
        int i3 = this.f13499e;
        while (true) {
            int i4 = i & (-128);
            byte[] bArr = this.f13497c;
            if (i4 == 0) {
                i2 = i3 + 1;
                bArr[i3] = (byte) i;
                this.f13499e = i2;
                return;
            } else {
                i2 = i3 + 1;
                try {
                    bArr[i3] = (byte) (i | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                    i >>>= 7;
                    i3 = i2;
                } catch (IndexOutOfBoundsException e2) {
                    throw new gng(i2, this.f13498d, 1, e2);
                }
            }
            throw new gng(i2, this.f13498d, 1, e2);
        }
    }

    public final void t(int i, aki akiVar) {
        s((i << 3) | 2);
        s(akiVar.g());
        gto gtoVar = (gto) akiVar;
        w(gtoVar.g(), gtoVar.zza);
    }

    public final void u(int i, int i2) {
        s(i << 3);
        s(i2);
    }

    public final void v(int i, long j) {
        s((i << 3) | 1);
        q(j);
    }

    public final void w(int i, byte[] bArr) {
        try {
            System.arraycopy(bArr, 0, this.f13497c, this.f13499e, i);
            this.f13499e += i;
        } catch (IndexOutOfBoundsException e2) {
            throw new gng(this.f13499e, this.f13498d, i, e2);
        }
    }
}
