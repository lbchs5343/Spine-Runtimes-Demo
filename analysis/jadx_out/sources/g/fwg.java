package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import j$.util.Objects;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class fwg implements Closeable, Flushable {

    /* renamed from: b, reason: collision with root package name */
    public static final String[] f17510b;

    /* renamed from: d, reason: collision with root package name */
    public ant f17512d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f17513e;

    /* renamed from: f, reason: collision with root package name */
    public String f17514f;

    /* renamed from: g, reason: collision with root package name */
    public int f17515g;
    public boolean h;
    public btd i;
    public String j;
    public final Writer k;
    public boolean l;
    public int[] m;
    public String n;

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f17509a = Pattern.compile("-?(?:0|[1-9][0-9]*)(?:\\.[0-9]+)?(?:[eE][-+]?[0-9]+)?");

    /* renamed from: c, reason: collision with root package name */
    public static final String[] f17511c = new String[TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME];

    static {
        for (int i = 0; i <= 31; i++) {
            f17511c[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = f17511c;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        f17510b = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public fwg(Writer writer) {
        int[] iArr = new int[32];
        this.m = iArr;
        this.f17515g = 0;
        if (iArr.length == 0) {
            this.m = Arrays.copyOf(iArr, 0);
        }
        int[] iArr2 = this.m;
        int i = this.f17515g;
        this.f17515g = i + 1;
        iArr2[i] = 6;
        this.f17512d = ant.LEGACY_STRICT;
        this.h = true;
        Objects.requireNonNull(writer, "out == null");
        this.k = writer;
        v(btd.f12174a);
    }

    public final void aa() {
        int x = x();
        if (x == 1) {
            this.m[this.f17515g - 1] = 2;
            ab();
            return;
        }
        Writer writer = this.k;
        if (x == 2) {
            writer.append((CharSequence) this.n);
            ab();
        } else {
            if (x == 4) {
                writer.append((CharSequence) this.j);
                this.m[this.f17515g - 1] = 5;
                return;
            }
            if (x != 6) {
                if (x != 7) {
                    throw new IllegalStateException("Nesting problem.");
                }
                if (this.f17512d != ant.LENIENT) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
            }
            this.m[this.f17515g - 1] = 7;
        }
    }

    public final void ab() {
        if (this.f17513e) {
            return;
        }
        String str = this.i.f12176c;
        Writer writer = this.k;
        writer.write(str);
        int i = this.f17515g;
        for (int i2 = 1; i2 < i; i2++) {
            writer.write(this.i.f12177d);
        }
    }

    public void ac(long j) {
        ad();
        aa();
        this.k.write(Long.toString(j));
    }

    public final void ad() {
        if (this.f17514f != null) {
            int x = x();
            if (x == 5) {
                this.k.write(this.n);
            } else if (x != 3) {
                throw new IllegalStateException("Nesting problem.");
            }
            ab();
            this.m[this.f17515g - 1] = 4;
            u(this.f17514f);
            this.f17514f = null;
        }
    }

    public void ae() {
        ad();
        aa();
        int i = this.f17515g;
        int[] iArr = this.m;
        if (i == iArr.length) {
            this.m = Arrays.copyOf(iArr, i * 2);
        }
        int[] iArr2 = this.m;
        int i2 = this.f17515g;
        this.f17515g = i2 + 1;
        iArr2[i2] = 1;
        this.k.write(91);
    }

    public fwg af() {
        if (this.f17514f != null) {
            if (!this.h) {
                this.f17514f = null;
                return this;
            }
            ad();
        }
        aa();
        this.k.write("null");
        return this;
    }

    public void ag() {
        q(3, 5, '}');
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.k.close();
        int i = this.f17515g;
        if (i > 1 || (i == 1 && this.m[i - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.f17515g = 0;
    }

    @Override // java.io.Flushable
    public void flush() {
        if (this.f17515g == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.k.flush();
    }

    public void o(String str) {
        Objects.requireNonNull(str, "name == null");
        if (this.f17514f != null) {
            throw new IllegalStateException("Already wrote a name, expecting a value.");
        }
        int x = x();
        if (x != 3 && x != 5) {
            throw new IllegalStateException("Please begin an object before writing a name.");
        }
        this.f17514f = str;
    }

    public void p() {
        ad();
        aa();
        int i = this.f17515g;
        int[] iArr = this.m;
        if (i == iArr.length) {
            this.m = Arrays.copyOf(iArr, i * 2);
        }
        int[] iArr2 = this.m;
        int i2 = this.f17515g;
        this.f17515g = i2 + 1;
        iArr2[i2] = 3;
        this.k.write(123);
    }

    public final void q(int i, int i2, char c2) {
        int x = x();
        if (x != i2 && x != i) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.f17514f != null) {
            throw new IllegalStateException("Dangling name: " + this.f17514f);
        }
        this.f17515g--;
        if (x == i2) {
            ab();
        }
        this.k.write(c2);
    }

    public final void r(ant antVar) {
        Objects.requireNonNull(antVar);
        this.f17512d = antVar;
    }

    public void s(String str) {
        if (str == null) {
            af();
            return;
        }
        ad();
        aa();
        u(str);
    }

    public void t(double d2) {
        ad();
        if (this.f17512d == ant.LENIENT || !(Double.isNaN(d2) || Double.isInfinite(d2))) {
            aa();
            this.k.append((CharSequence) Double.toString(d2));
        } else {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + d2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void u(String str) {
        int i;
        String str2;
        String[] strArr = this.l ? f17510b : f17511c;
        Writer writer = this.k;
        writer.write(34);
        int length = str.length();
        int i2 = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt < 128) {
                str2 = strArr[charAt];
                i = str2 == null ? i + 1 : 0;
                if (i2 < i) {
                    writer.write(str, i2, i - i2);
                }
                writer.write(str2);
                i2 = i + 1;
            } else {
                if (charAt == 8232) {
                    str2 = "\\u2028";
                } else if (charAt == 8233) {
                    str2 = "\\u2029";
                }
                if (i2 < i) {
                }
                writer.write(str2);
                i2 = i + 1;
            }
        }
        if (i2 < length) {
            writer.write(str, i2, length - i2);
        }
        writer.write(34);
    }

    public final void v(btd btdVar) {
        Objects.requireNonNull(btdVar);
        this.i = btdVar;
        this.n = ",";
        if (btdVar.f12178e) {
            this.j = ": ";
            if (btdVar.f12176c.isEmpty()) {
                this.n = ", ";
            }
        } else {
            this.j = ":";
        }
        this.f17513e = this.i.f12176c.isEmpty() && this.i.f12177d.isEmpty();
    }

    public void w() {
        q(1, 2, ']');
    }

    public final int x() {
        int i = this.f17515g;
        if (i != 0) {
            return this.m[i - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    public void y(boolean z) {
        ad();
        aa();
        this.k.write(z ? "true" : "false");
    }

    public void z(Number number) {
        if (number == null) {
            af();
            return;
        }
        ad();
        String obj = number.toString();
        if (!obj.equals("-Infinity") && !obj.equals("Infinity") && !obj.equals("NaN")) {
            Class<?> cls = number.getClass();
            if (cls != Integer.class && cls != Long.class && cls != Double.class && cls != Float.class && cls != Byte.class && cls != Short.class && cls != BigDecimal.class && cls != BigInteger.class && cls != AtomicInteger.class && cls != AtomicLong.class && !f17509a.matcher(obj).matches()) {
                throw new IllegalArgumentException("String created by " + cls + " is not a valid JSON number: " + obj);
            }
        } else if (this.f17512d != ant.LENIENT) {
            throw new IllegalArgumentException("Numeric values must be finite, but was ".concat(obj));
        }
        aa();
        this.k.append((CharSequence) obj);
    }
}
