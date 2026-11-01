package com.bytedance.sdk.component.ox.d.dq.s;

import g.awf;
import java.io.IOException;

/* loaded from: classes.dex */
public final class s {
    static final com.bytedance.sdk.component.ox.dq.iw dq = com.bytedance.sdk.component.ox.dq.iw.dq("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
    private static final String[] p = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

    /* renamed from: d, reason: collision with root package name */
    static final String[] f2105d = new String[64];
    static final String[] ox = new String[256];

    static {
        int i = 0;
        int i2 = 0;
        while (true) {
            String[] strArr = ox;
            if (i2 >= strArr.length) {
                break;
            }
            strArr[i2] = com.bytedance.sdk.component.ox.d.dq.ox.dq("%8s", Integer.toBinaryString(i2)).replace(' ', '0');
            i2++;
        }
        String[] strArr2 = f2105d;
        strArr2[0] = "";
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        for (int i3 = 0; i3 <= 0; i3++) {
            int i4 = iArr[i3];
            String[] strArr3 = f2105d;
            strArr3[i4 | 8] = awf.ad(new StringBuilder(), strArr3[i4], "|PADDED");
        }
        String[] strArr4 = f2105d;
        strArr4[4] = "END_HEADERS";
        strArr4[32] = "PRIORITY";
        strArr4[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        for (int i5 = 0; i5 < 3; i5++) {
            int i6 = iArr2[i5];
            for (int i7 = 0; i7 <= 0; i7++) {
                int i8 = iArr[i7];
                String[] strArr5 = f2105d;
                int i9 = i8 | i6;
                strArr5[i9] = strArr5[i8] + '|' + strArr5[i6];
                StringBuilder sb = new StringBuilder();
                sb.append(strArr5[i8]);
                sb.append('|');
                strArr5[i9 | 8] = awf.ad(sb, strArr5[i6], "|PADDED");
            }
        }
        while (true) {
            String[] strArr6 = f2105d;
            if (i >= strArr6.length) {
                return;
            }
            if (strArr6[i] == null) {
                strArr6[i] = ox[i];
            }
            i++;
        }
    }

    private s() {
    }

    public static IOException d(String str, Object... objArr) throws IOException {
        throw new IOException(com.bytedance.sdk.component.ox.d.dq.ox.dq(str, objArr));
    }

    public static IllegalArgumentException dq(String str, Object... objArr) {
        throw new IllegalArgumentException(com.bytedance.sdk.component.ox.d.dq.ox.dq(str, objArr));
    }

    public static String dq(byte b2, byte b3) {
        if (b3 == 0) {
            return "";
        }
        if (b2 != 2 && b2 != 3) {
            if (b2 == 4 || b2 == 6) {
                return b3 == 1 ? "ACK" : ox[b3];
            }
            if (b2 != 7 && b2 != 8) {
                String[] strArr = f2105d;
                String str = b3 < strArr.length ? strArr[b3] : ox[b3];
                return (b2 != 5 || (b3 & 4) == 0) ? (b2 != 0 || (b3 & 32) == 0) ? str : str.replace("PRIORITY", "COMPRESSED") : str.replace("HEADERS", "PUSH_PROMISE");
            }
        }
        return ox[b3];
    }

    public static String dq(boolean z, int i, int i2, byte b2, byte b3) {
        String[] strArr = p;
        return com.bytedance.sdk.component.ox.d.dq.ox.dq("%s 0x%08x %5d %-13s %s", z ? "<<" : ">>", Integer.valueOf(i), Integer.valueOf(i2), b2 < strArr.length ? strArr[b2] : com.bytedance.sdk.component.ox.d.dq.ox.dq("0x%02x", Byte.valueOf(b2)), dq(b2, b3));
    }
}
