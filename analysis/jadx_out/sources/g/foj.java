package g;

import java.util.function.IntConsumer;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class foj {

    /* renamed from: a, reason: collision with root package name */
    public static final foj f17138a = new foj(new ur());

    /* renamed from: b, reason: collision with root package name */
    public final csu f17139b;

    public foj(ur urVar) {
        urVar.getClass();
        this.f17139b = urVar.ae;
    }

    public static boolean c(String str) {
        return (str == null || str.isEmpty()) ? false : true;
    }

    public static void d(String str, IntConsumer intConsumer) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            int codePointAt = str.codePointAt(i);
            intConsumer.accept(codePointAt);
            i += Character.charCount(codePointAt);
        }
    }

    public static String e(char c2) {
        if (c2 <= 31) {
            return awf.ac(c2, "\\");
        }
        if (c2 == '\"') {
            return "&quot;";
        }
        if (c2 == '<') {
            return "&lt;";
        }
        if (c2 == '>') {
            return "&gt;";
        }
        if (c2 == '\\') {
            return "\\\\";
        }
        if (c2 == '&') {
            return "&amp;";
        }
        if (c2 != '\'') {
            return null;
        }
        return "&apos;";
    }

    public static String f(char c2, boolean z) {
        if (c2 == '\'') {
            return "'\\''";
        }
        String j = j(c2);
        if (j != null) {
            return "'" + j + '\'';
        }
        Pattern pattern = cbd.f12584a;
        if (' ' > c2 || c2 > '~') {
            String num = Integer.toString(c2);
            return z ? tn.x("(char) ", num) : num;
        }
        return "'" + c2 + '\'';
    }

    public static String g(double d2) {
        if (Double.isNaN(d2)) {
            return "Double.NaN";
        }
        if (d2 == Double.NEGATIVE_INFINITY) {
            return "Double.NEGATIVE_INFINITY";
        }
        if (d2 == Double.POSITIVE_INFINITY) {
            return "Double.POSITIVE_INFINITY";
        }
        if (d2 == Double.MIN_VALUE) {
            return "Double.MIN_VALUE";
        }
        if (d2 == Double.MAX_VALUE) {
            return "Double.MAX_VALUE";
        }
        if (d2 == Double.MIN_NORMAL) {
            return "Double.MIN_NORMAL";
        }
        return Double.toString(d2) + 'd';
    }

    public static void h(StringBuilder sb, char c2) {
        String str;
        switch (c2) {
            case '\b':
                str = "\\b";
                break;
            case '\t':
                str = "\\t";
                break;
            case '\n':
                str = "\\n";
                break;
            case 11:
            default:
                str = null;
                break;
            case '\f':
                str = "\\f";
                break;
            case '\r':
                str = "\\r";
                break;
        }
        if (str == null) {
            str = e(c2);
        }
        if (str != null) {
            sb.append(str);
        } else {
            sb.append(c2);
        }
    }

    public static String i(float f2) {
        if (Float.isNaN(f2)) {
            return "Float.NaN";
        }
        if (f2 == Float.NEGATIVE_INFINITY) {
            return "Float.NEGATIVE_INFINITY";
        }
        if (f2 == Float.POSITIVE_INFINITY) {
            return "Float.POSITIVE_INFINITY";
        }
        if (f2 == Float.MIN_VALUE) {
            return "Float.MIN_VALUE";
        }
        if (f2 == Float.MAX_VALUE) {
            return "Float.MAX_VALUE";
        }
        if (f2 == Float.MIN_NORMAL) {
            return "Float.MIN_NORMAL";
        }
        return Float.toString(f2) + 'f';
    }

    public static String j(int i) {
        if (i == 12) {
            return "\\f";
        }
        if (i == 13) {
            return "\\r";
        }
        if (i == 34) {
            return "\\\"";
        }
        if (i == 39) {
            return "'";
        }
        if (i == 92) {
            return "\\\\";
        }
        switch (i) {
            case 8:
                return "\\b";
            case 9:
                return "\\t";
            case 10:
                return "\\n";
            default:
                return null;
        }
    }

    public static String k(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt != ' ' && charAt != '$') {
                if (charAt != '*') {
                    if (charAt != ',') {
                        if (charAt == '[') {
                            sb.append('A');
                        } else if (charAt != ']') {
                            if (charAt != '.' && charAt != '/' && charAt != ';' && charAt != '<') {
                                if (charAt != '>' && charAt != '?') {
                                    sb.append(charAt);
                                }
                            }
                        }
                    }
                }
            }
            sb.append('_');
        }
        return sb.toString();
    }

    public static boolean l(String str) {
        return str == null || str.isEmpty();
    }

    public static String m(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            String e2 = e(charAt);
            if (e2 != null) {
                sb.append(e2);
            } else {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    public final String n(int i, boolean z, long j) {
        String l;
        String str;
        csu csuVar = this.f17139b;
        csuVar.getClass();
        if (csuVar == csu.HEXADECIMAL) {
            String hexString = Long.toHexString(j);
            if (j < 0) {
                int length = hexString.length();
                l = "0x" + hexString.substring(length - (i * 2), length);
                z = true;
            } else {
                l = tn.x("0x", hexString);
            }
        } else {
            l = Long.toString(j);
        }
        if (i == 8 && (j == Long.MIN_VALUE || Math.abs(j) >= 2147483647L)) {
            z = true;
        }
        if (!z) {
            return l;
        }
        if (i == 8) {
            return l + 'L';
        }
        StringBuilder sb = new StringBuilder();
        if (i == 1) {
            str = "(byte) ";
        } else if (i == 2) {
            str = "(short) ";
        } else if (i == 4) {
            str = "(int) ";
        } else {
            if (i != 8) {
                throw new gck(awf.ac(i, "Unexpected number type length: "));
            }
            str = "(long) ";
        }
        return awf.ad(sb, str, l);
    }

    public final String o(String str) {
        if (str.length() == 0) {
            return "\"\"";
        }
        StringBuilder sb = new StringBuilder();
        sb.append('\"');
        d(str, new cen(this, sb));
        sb.append('\"');
        return sb.toString();
    }

    public final String p(long j, boolean z) {
        if (this.f17139b == csu.AUTO) {
            if (j == Long.MAX_VALUE) {
                return "Long.MAX_VALUE";
            }
            if (j == Long.MIN_VALUE) {
                return "Long.MIN_VALUE";
            }
        }
        return n(8, z, j);
    }
}
