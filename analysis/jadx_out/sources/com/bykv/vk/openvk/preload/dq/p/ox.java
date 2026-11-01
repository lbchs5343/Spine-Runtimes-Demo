package com.bykv.vk.openvk.preload.dq.p;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.util.Arrays;

/* loaded from: classes.dex */
public class ox implements Closeable, Flushable {

    /* renamed from: d, reason: collision with root package name */
    private static final String[] f636d;
    private static final String[] dq = new String[TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME];
    private final Writer iw;
    private String kk;
    private String no;
    private String o;
    public boolean ox;
    public boolean p;
    public boolean s;
    private int[] mn = new int[32];
    private int ia = 0;

    static {
        for (int i = 0; i <= 31; i++) {
            dq[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = dq;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        f636d = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public ox(Writer writer) {
        dq(6);
        this.o = ":";
        this.s = true;
        if (writer == null) {
            throw new NullPointerException("out == null");
        }
        this.iw = writer;
    }

    private void d(int i) {
        this.mn[this.ia - 1] = i;
    }

    private ox dq(int i, char c2) throws IOException {
        o();
        dq(i);
        this.iw.write(c2);
        return this;
    }

    private ox dq(int i, int i2, char c2) throws IOException {
        int iw = iw();
        if (iw != i2 && iw != i) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.no != null) {
            throw new IllegalStateException("Dangling name: " + this.no);
        }
        this.ia--;
        if (iw == i2) {
            ia();
        }
        this.iw.write(c2);
        return this;
    }

    private void dq(int i) {
        int i2 = this.ia;
        int[] iArr = this.mn;
        if (i2 == iArr.length) {
            this.mn = Arrays.copyOf(iArr, i2 * 2);
        }
        int[] iArr2 = this.mn;
        int i3 = this.ia;
        this.ia = i3 + 1;
        iArr2[i3] = i;
    }

    private void ia() throws IOException {
        if (this.kk == null) {
            return;
        }
        this.iw.write(10);
        int i = this.ia;
        for (int i2 = 1; i2 < i; i2++) {
            this.iw.write(this.kk);
        }
    }

    private int iw() {
        int i = this.ia;
        if (i != 0) {
            return this.mn[i - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    private void kk() throws IOException {
        int iw = iw();
        if (iw == 5) {
            this.iw.write(44);
        } else if (iw != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        ia();
        d(4);
    }

    private void mn() throws IOException {
        if (this.no != null) {
            kk();
            p(this.no);
            this.no = null;
        }
    }

    private void o() throws IOException {
        int iw = iw();
        if (iw == 1) {
            d(2);
            ia();
            return;
        }
        if (iw == 2) {
            this.iw.append(',');
            ia();
        } else {
            if (iw == 4) {
                this.iw.append((CharSequence) this.o);
                d(5);
                return;
            }
            if (iw != 6) {
                if (iw != 7) {
                    throw new IllegalStateException("Nesting problem.");
                }
                if (!this.ox) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
            }
            d(7);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void p(String str) throws IOException {
        int i;
        String str2;
        String[] strArr = this.p ? f636d : dq;
        this.iw.write(34);
        int length = str.length();
        int i2 = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt < 128) {
                str2 = strArr[charAt];
                i = str2 == null ? i + 1 : 0;
                if (i2 < i) {
                    this.iw.write(str, i2, i - i2);
                }
                this.iw.write(str2);
                i2 = i + 1;
            } else {
                if (charAt == 8232) {
                    str2 = "\\u2028";
                } else if (charAt == 8233) {
                    str2 = "\\u2029";
                }
                if (i2 < i) {
                }
                this.iw.write(str2);
                i2 = i + 1;
            }
        }
        if (i2 < length) {
            this.iw.write(str, i2, length - i2);
        }
        this.iw.write(34);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.iw.close();
        int i = this.ia;
        if (i > 1 || (i == 1 && this.mn[i - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.ia = 0;
    }

    public ox d() throws IOException {
        return dq(1, 2, ']');
    }

    public ox d(String str) throws IOException {
        if (str == null) {
            return s();
        }
        mn();
        o();
        p(str);
        return this;
    }

    public ox dq() throws IOException {
        mn();
        return dq(1, '[');
    }

    public ox dq(long j) throws IOException {
        mn();
        o();
        this.iw.write(Long.toString(j));
        return this;
    }

    public ox dq(Boolean bool) throws IOException {
        if (bool == null) {
            return s();
        }
        mn();
        o();
        this.iw.write(bool.booleanValue() ? "true" : "false");
        return this;
    }

    public ox dq(Number number) throws IOException {
        if (number == null) {
            return s();
        }
        mn();
        String obj = number.toString();
        if (!this.ox && (obj.equals("-Infinity") || obj.equals("Infinity") || obj.equals("NaN"))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was ".concat(String.valueOf(number)));
        }
        o();
        this.iw.append((CharSequence) obj);
        return this;
    }

    public ox dq(String str) throws IOException {
        if (str == null) {
            throw new NullPointerException("name == null");
        }
        if (this.no != null) {
            throw new IllegalStateException();
        }
        if (this.ia == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.no = str;
        return this;
    }

    public ox dq(boolean z) throws IOException {
        mn();
        o();
        this.iw.write(z ? "true" : "false");
        return this;
    }

    public void flush() throws IOException {
        if (this.ia == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.iw.flush();
    }

    public ox ox() throws IOException {
        mn();
        return dq(3, '{');
    }

    public final void ox(String str) {
        if (str.length() == 0) {
            this.kk = null;
            this.o = ":";
        } else {
            this.kk = str;
            this.o = ": ";
        }
    }

    public ox p() throws IOException {
        return dq(3, 5, '}');
    }

    public ox s() throws IOException {
        if (this.no != null) {
            if (!this.s) {
                this.no = null;
                return this;
            }
            mn();
        }
        o();
        this.iw.write("null");
        return this;
    }
}
