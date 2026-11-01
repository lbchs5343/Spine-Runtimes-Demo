package g;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class dcv extends dmc {
    public static final boolean bf(CharSequence charSequence, int i, CharSequence charSequence2, int i2, int i3, boolean z) {
        bff.p(charSequence, "<this>");
        bff.p(charSequence2, "other");
        if (i2 < 0 || i < 0 || i > charSequence.length() - i3 || i2 > charSequence2.length() - i3) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (!egh.o(charSequence.charAt(i + i4), charSequence2.charAt(i2 + i4), z)) {
                return false;
            }
        }
        return true;
    }

    public static boolean bg(CharSequence charSequence, char c2) {
        bff.p(charSequence, "<this>");
        return bh(charSequence, c2, 0, 2) >= 0;
    }

    public static int bh(CharSequence charSequence, char c2, int i, int i2) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        bff.p(charSequence, "<this>");
        return !(charSequence instanceof String) ? bi(charSequence, new char[]{c2}, i, false) : ((String) charSequence).indexOf(c2, i);
    }

    public static final int bi(CharSequence charSequence, char[] cArr, int i, boolean z) {
        bff.p(charSequence, "<this>");
        if (!z && cArr.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(fuv.a(cArr), i);
        }
        if (i < 0) {
            i = 0;
        }
        int bl = bl(charSequence);
        if (i > bl) {
            return -1;
        }
        while (true) {
            char charAt = charSequence.charAt(i);
            for (char c2 : cArr) {
                if (egh.o(c2, charAt, z)) {
                    return i;
                }
            }
            if (i == bl) {
                return -1;
            }
            i++;
        }
    }

    public static final List bj(CharSequence charSequence, String str) {
        int br = br(charSequence, str, 0, false);
        if (br == -1) {
            return cro.r(charSequence.toString());
        }
        ArrayList arrayList = new ArrayList(10);
        int i = 0;
        do {
            arrayList.add(charSequence.subSequence(i, br).toString());
            i = str.length() + br;
            br = br(charSequence, str, i, false);
        } while (br != -1);
        arrayList.add(charSequence.subSequence(i, charSequence.length()).toString());
        return arrayList;
    }

    public static CharSequence bk(String str) {
        bff.p(str, "<this>");
        int length = str.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean bh = egh.bh(str.charAt(!z ? i : length));
            if (z) {
                if (!bh) {
                    break;
                }
                length--;
            } else if (bh) {
                i++;
            } else {
                z = true;
            }
        }
        return str.subSequence(i, length + 1);
    }

    public static final int bl(CharSequence charSequence) {
        bff.p(charSequence, "<this>");
        return charSequence.length() - 1;
    }

    public static /* synthetic */ int bm(CharSequence charSequence, String str, int i, int i2) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return br(charSequence, str, i, false);
    }

    public static String bn(String str) {
        int bs = bs(str, 0, 6, '.');
        if (bs == -1) {
            return str;
        }
        String substring = str.substring(bs + 1, str.length());
        bff.e(substring, "substring(...)");
        return substring;
    }

    public static boolean bo(String str) {
        bff.p(str, "<this>");
        for (int i = 0; i < str.length(); i++) {
            if (!egh.bh(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static String bp(String str, String str2) {
        if (!dmc.bw(str, str2, false)) {
            return str;
        }
        String substring = str.substring(str2.length());
        bff.e(substring, "substring(...)");
        return substring;
    }

    public static boolean bq(CharSequence charSequence, String str) {
        bff.p(charSequence, "<this>");
        return bm(charSequence, str, 0, 2) >= 0;
    }

    public static final int br(CharSequence charSequence, String str, int i, boolean z) {
        bff.p(charSequence, "<this>");
        bff.p(str, "string");
        if (!z && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(str, i);
        }
        int length = charSequence.length();
        if (i < 0) {
            i = 0;
        }
        int length2 = charSequence.length();
        if (length > length2) {
            length = length2;
        }
        gex gexVar = new gex(i, length, 1);
        boolean z2 = charSequence instanceof String;
        int i2 = gexVar.f17255a;
        int i3 = gexVar.f17257c;
        int i4 = gexVar.f17256b;
        if (!z2 || !(str instanceof String)) {
            boolean z3 = z;
            if ((i2 <= 0 || i4 > i3) && (i2 >= 0 || i3 > i4)) {
                return -1;
            }
            while (true) {
                CharSequence charSequence2 = charSequence;
                boolean z4 = z3;
                z3 = z4;
                if (bf(str, 0, charSequence2, i4, str.length(), z4)) {
                    return i4;
                }
                if (i4 == i3) {
                    return -1;
                }
                i4 += i2;
                charSequence = charSequence2;
            }
        } else {
            if ((i2 <= 0 || i4 > i3) && (i2 >= 0 || i3 > i4)) {
                return -1;
            }
            int i5 = i4;
            while (true) {
                String str2 = str;
                boolean z5 = z;
                if (dmc.ca(0, i5, str.length(), str2, (String) charSequence, z5)) {
                    return i5;
                }
                if (i5 == i3) {
                    return -1;
                }
                i5 += i2;
                str = str2;
                z = z5;
            }
        }
    }

    public static int bs(String str, int i, int i2, char c2) {
        if ((i2 & 2) != 0) {
            i = bl(str);
        }
        return str.lastIndexOf(c2, i);
    }

    public static List bt(String str, char[] cArr) {
        bff.p(str, "<this>");
        if (cArr.length == 1) {
            return bj(str, String.valueOf(cArr[0]));
        }
        fgr fgrVar = new fgr(new jl(str, new cnl(0, cArr)));
        ArrayList arrayList = new ArrayList(bkk.a(fgrVar));
        Iterator it = fgrVar.iterator();
        while (true) {
            fdz fdzVar = (fdz) it;
            if (!fdzVar.hasNext()) {
                return arrayList;
            }
            gex gexVar = (gex) fdzVar.next();
            bff.p(gexVar, "range");
            arrayList.add(str.subSequence(gexVar.f17256b, gexVar.f17257c + 1).toString());
        }
    }

    public static String bu(int i, String str) {
        bff.p(str, "<this>");
        if (i < 0) {
            throw new IllegalArgumentException(awf.b(i, "Requested character count ", " is less than zero.").toString());
        }
        int length = str.length();
        if (i > length) {
            i = length;
        }
        String substring = str.substring(0, i);
        bff.e(substring, "substring(...)");
        return substring;
    }

    public static String bv(String str, String str2) {
        bff.p(str2, "delimiter");
        int bm = bm(str, str2, 0, 6);
        if (bm == -1) {
            return str;
        }
        String substring = str.substring(str2.length() + bm, str.length());
        bff.e(substring, "substring(...)");
        return substring;
    }
}
