package g;

/* loaded from: classes.dex */
public abstract class dmc extends lz {
    public static boolean bw(String str, String str2, boolean z) {
        bff.p(str, "<this>");
        bff.p(str2, "prefix");
        return !z ? str.startsWith(str2) : ca(0, 0, str2.length(), str, str2, z);
    }

    public static boolean bx(String str, String str2) {
        return str == null ? str2 == null : str.equalsIgnoreCase(str2);
    }

    public static boolean by(String str, String str2) {
        bff.p(str, "<this>");
        bff.p(str2, "suffix");
        return str.endsWith(str2);
    }

    public static boolean bz(String str, int i, String str2, boolean z) {
        bff.p(str, "<this>");
        return !z ? str.startsWith(str2, i) : ca(i, 0, str2.length(), str, str2, z);
    }

    public static final boolean ca(int i, int i2, int i3, String str, String str2, boolean z) {
        bff.p(str, "<this>");
        bff.p(str2, "other");
        return !z ? str.regionMatches(i, str2, i2, i3) : str.regionMatches(z, i, str2, i2, i3);
    }

    public static String cb(String str, String str2, String str3) {
        bff.p(str, "<this>");
        int br = dcv.br(str, str2, 0, false);
        if (br < 0) {
            return str;
        }
        int length = str2.length();
        int i = length >= 1 ? length : 1;
        int length2 = str3.length() + (str.length() - length);
        if (length2 < 0) {
            throw new OutOfMemoryError();
        }
        StringBuilder sb = new StringBuilder(length2);
        int i2 = 0;
        do {
            sb.append((CharSequence) str, i2, br);
            sb.append(str3);
            i2 = br + length;
            if (br >= str.length()) {
                break;
            }
            br = dcv.br(str, str2, br + i, false);
        } while (br > 0);
        sb.append((CharSequence) str, i2, str.length());
        String sb2 = sb.toString();
        bff.e(sb2, "toString(...)");
        return sb2;
    }
}
