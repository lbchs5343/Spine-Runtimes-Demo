package j$.util;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class StringJoiner {

    /* renamed from: a, reason: collision with root package name */
    public final String f20699a;

    /* renamed from: b, reason: collision with root package name */
    public final String f20700b;

    /* renamed from: c, reason: collision with root package name */
    public final String f20701c;

    /* renamed from: d, reason: collision with root package name */
    public String[] f20702d;

    /* renamed from: e, reason: collision with root package name */
    public int f20703e;

    /* renamed from: f, reason: collision with root package name */
    public int f20704f;

    public StringJoiner(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        Objects.requireNonNull(charSequence2, "The prefix must not be null");
        Objects.requireNonNull(charSequence, "The delimiter must not be null");
        Objects.requireNonNull(charSequence3, "The suffix must not be null");
        this.f20699a = charSequence2.toString();
        this.f20700b = charSequence.toString();
        this.f20701c = charSequence3.toString();
    }

    public static int b(String str, char[] cArr, int i) {
        int length = str.length();
        str.getChars(0, length, cArr, i);
        return length;
    }

    public final void a() {
        String[] strArr;
        if (this.f20703e > 1) {
            char[] cArr = new char[this.f20704f];
            int b2 = b(this.f20702d[0], cArr, 0);
            int i = 1;
            do {
                int b3 = b(this.f20700b, cArr, b2) + b2;
                b2 = b(this.f20702d[i], cArr, b3) + b3;
                strArr = this.f20702d;
                strArr[i] = null;
                i++;
            } while (i < this.f20703e);
            this.f20703e = 1;
            strArr[0] = new String(cArr);
        }
    }

    public StringJoiner add(CharSequence charSequence) {
        String valueOf = String.valueOf(charSequence);
        String[] strArr = this.f20702d;
        if (strArr == null) {
            this.f20702d = new String[8];
        } else {
            int i = this.f20703e;
            if (i == strArr.length) {
                this.f20702d = (String[]) Arrays.copyOf(strArr, i * 2);
            }
            this.f20704f = this.f20700b.length() + this.f20704f;
        }
        this.f20704f = valueOf.length() + this.f20704f;
        String[] strArr2 = this.f20702d;
        int i2 = this.f20703e;
        this.f20703e = i2 + 1;
        strArr2[i2] = valueOf;
        return this;
    }

    public String toString() {
        String[] strArr = this.f20702d;
        int i = this.f20703e;
        String str = this.f20699a;
        int length = str.length();
        String str2 = this.f20701c;
        int length2 = str2.length() + length;
        if (length2 == 0) {
            a();
            return i == 0 ? "" : strArr[0];
        }
        char[] cArr = new char[this.f20704f + length2];
        int b2 = b(str, cArr, 0);
        if (i > 0) {
            int b3 = b(strArr[0], cArr, b2) + b2;
            for (int i2 = 1; i2 < i; i2++) {
                int b4 = b(this.f20700b, cArr, b3) + b3;
                b3 = b(strArr[i2], cArr, b4) + b4;
            }
            b2 = b3;
        }
        b(str2, cArr, b2);
        return new String(cArr);
    }
}
