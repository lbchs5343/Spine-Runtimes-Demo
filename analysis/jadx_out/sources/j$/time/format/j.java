package j$.time.format;

import j$.util.Objects;

/* loaded from: classes2.dex */
public final class j implements f {

    /* renamed from: d, reason: collision with root package name */
    public static final String[] f20539d = {"+HH", "+HHmm", "+HH:mm", "+HHMM", "+HH:MM", "+HHMMss", "+HH:MM:ss", "+HHMMSS", "+HH:MM:SS", "+HHmmss", "+HH:mm:ss", "+H", "+Hmm", "+H:mm", "+HMM", "+H:MM", "+HMMss", "+H:MM:ss", "+HMMSS", "+H:MM:SS", "+Hmmss", "+H:mm:ss"};

    /* renamed from: e, reason: collision with root package name */
    public static final j f20540e = new j("+HH:MM:ss", "Z");

    /* renamed from: a, reason: collision with root package name */
    public final String f20541a;

    /* renamed from: b, reason: collision with root package name */
    public final int f20542b;

    /* renamed from: c, reason: collision with root package name */
    public final int f20543c;

    static {
        new j("+HH:MM:ss", "0");
    }

    public j(String str, String str2) {
        Objects.requireNonNull(str, "pattern");
        Objects.requireNonNull(str2, "noOffsetText");
        for (int i = 0; i < 22; i++) {
            if (f20539d[i].equals(str)) {
                this.f20542b = i;
                this.f20543c = i % 11;
                this.f20541a = str2;
                return;
            }
        }
        throw new IllegalArgumentException("Invalid zone offset pattern: ".concat(str));
    }

    public static void a(boolean z, int i, StringBuilder sb) {
        sb.append(z ? ":" : "");
        sb.append((char) ((i / 10) + 48));
        sb.append((char) ((i % 10) + 48));
    }

    @Override // j$.time.format.f
    public final boolean i(p pVar, StringBuilder sb) {
        Long a2 = pVar.a(j$.time.temporal.a.OFFSET_SECONDS);
        boolean z = false;
        if (a2 == null) {
            return false;
        }
        long longValue = a2.longValue();
        int i = (int) longValue;
        if (longValue != i) {
            throw new ArithmeticException();
        }
        String str = this.f20541a;
        if (i == 0) {
            sb.append(str);
            return true;
        }
        int abs = Math.abs((i / 3600) % 100);
        int abs2 = Math.abs((i / 60) % 60);
        int abs3 = Math.abs(i % 60);
        int length = sb.length();
        sb.append(i < 0 ? "-" : "+");
        if (this.f20542b >= 11 && abs < 10) {
            sb.append((char) (abs + 48));
        } else {
            a(false, abs, sb);
        }
        int i2 = this.f20543c;
        if ((i2 >= 3 && i2 <= 8) || ((i2 >= 9 && abs3 > 0) || (i2 >= 1 && abs2 > 0))) {
            a(i2 > 0 && i2 % 2 == 0, abs2, sb);
            abs += abs2;
            if (i2 == 7 || i2 == 8 || (i2 >= 5 && abs3 > 0)) {
                if (i2 > 0 && i2 % 2 == 0) {
                    z = true;
                }
                a(z, abs3, sb);
                abs += abs3;
            }
        }
        if (abs == 0) {
            sb.setLength(length);
            sb.append(str);
        }
        return true;
    }

    public final String toString() {
        String replace = this.f20541a.replace("'", "''");
        return "Offset(" + f20539d[this.f20542b] + ",'" + replace + "')";
    }
}
