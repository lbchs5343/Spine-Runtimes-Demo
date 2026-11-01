package com.ss.android.socialbase.appdownloader.iw.dq;

import g.awf;
import java.io.IOException;

/* loaded from: classes.dex */
public class iw {

    /* renamed from: d, reason: collision with root package name */
    private int[] f9285d;
    private int[] dq;

    private iw() {
    }

    private static final int dq(int[] iArr, int i) {
        int i2 = iArr[i / 4];
        return (i % 4) / 2 == 0 ? i2 & 65535 : i2 >>> 16;
    }

    public static iw dq(p pVar) throws IOException {
        d.dq(pVar, 1835009);
        int d2 = pVar.d();
        int d3 = pVar.d();
        int d4 = pVar.d();
        pVar.d();
        int d5 = pVar.d();
        int d6 = pVar.d();
        iw iwVar = new iw();
        iwVar.dq = pVar.d(d3);
        if (d4 != 0) {
            pVar.d(d4);
        }
        int i = (d6 == 0 ? d2 : d6) - d5;
        if (i % 4 != 0) {
            throw new IOException(awf.b(i, "String data size is not multiple of 4 (", ")."));
        }
        iwVar.f9285d = pVar.d(i / 4);
        if (d6 == 0) {
            return iwVar;
        }
        int i2 = d2 - d6;
        if (i2 % 4 != 0) {
            throw new IOException(awf.b(i2, "Style data size is not multiple of 4 (", ")."));
        }
        pVar.d(i2 / 4);
        return iwVar;
    }

    public String dq(int i) {
        int[] iArr;
        if (i < 0 || (iArr = this.dq) == null || i >= iArr.length) {
            return null;
        }
        int i2 = iArr[i];
        int dq = dq(this.f9285d, i2);
        StringBuilder sb = new StringBuilder(dq);
        while (dq != 0) {
            i2 += 2;
            sb.append((char) dq(this.f9285d, i2));
            dq--;
        }
        return sb.toString();
    }
}
