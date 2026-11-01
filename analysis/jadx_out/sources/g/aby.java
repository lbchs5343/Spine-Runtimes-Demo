package g;

/* loaded from: classes3.dex */
public abstract class aby {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f9950a;

    /* renamed from: b, reason: collision with root package name */
    public static final gei f9951b;

    /* renamed from: c, reason: collision with root package name */
    public static final String[] f9952c;

    /* renamed from: d, reason: collision with root package name */
    public static final String[] f9953d;

    static {
        gei geiVar = gei.n;
        f9951b = dwm.ac("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
        f9952c = new String[]{"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};
        f9953d = new String[64];
        String[] strArr = new String[256];
        for (int i = 0; i < 256; i++) {
            String binaryString = Integer.toBinaryString(i);
            bff.e(binaryString, "toBinaryString(it)");
            String replace = erq.h("%8s", binaryString).replace(' ', '0');
            bff.e(replace, "replace(...)");
            strArr[i] = replace;
        }
        f9950a = strArr;
        String[] strArr2 = f9953d;
        strArr2[0] = "";
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        int i2 = iArr[0];
        strArr2[i2 | 8] = awf.ad(new StringBuilder(), strArr2[i2], "|PADDED");
        strArr2[4] = "END_HEADERS";
        strArr2[32] = "PRIORITY";
        strArr2[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        for (int i3 = 0; i3 < 3; i3++) {
            int i4 = iArr2[i3];
            int i5 = iArr[0];
            String[] strArr3 = f9953d;
            int i6 = i5 | i4;
            strArr3[i6] = strArr3[i5] + '|' + strArr3[i4];
            StringBuilder sb = new StringBuilder();
            sb.append(strArr3[i5]);
            sb.append('|');
            strArr3[i6 | 8] = awf.ad(sb, strArr3[i4], "|PADDED");
        }
        int length = f9953d.length;
        for (int i7 = 0; i7 < length; i7++) {
            String[] strArr4 = f9953d;
            if (strArr4[i7] == null) {
                strArr4[i7] = f9950a[i7];
            }
        }
    }

    public static String e(int i, int i2, int i3, int i4, boolean z) {
        String str;
        String str2;
        String[] strArr = f9952c;
        String h = i3 < strArr.length ? strArr[i3] : erq.h("0x%02x", Integer.valueOf(i3));
        if (i4 == 0) {
            str = "";
        } else {
            String[] strArr2 = f9950a;
            if (i3 != 2 && i3 != 3) {
                if (i3 == 4 || i3 == 6) {
                    str = i4 == 1 ? "ACK" : strArr2[i4];
                } else if (i3 != 7 && i3 != 8) {
                    String[] strArr3 = f9953d;
                    if (i4 < strArr3.length) {
                        str2 = strArr3[i4];
                        bff.d(str2);
                    } else {
                        str2 = strArr2[i4];
                    }
                    str = (i3 != 5 || (i4 & 4) == 0) ? (i3 != 0 || (i4 & 32) == 0) ? str2 : dmc.cb(str2, "PRIORITY", "COMPRESSED") : dmc.cb(str2, "HEADERS", "PUSH_PROMISE");
                }
            }
            str = strArr2[i4];
        }
        return erq.h("%s 0x%08x %5d %-13s %s", z ? "<<" : ">>", Integer.valueOf(i), Integer.valueOf(i2), h, str);
    }
}
