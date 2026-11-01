package com.ss.android.socialbase.appdownloader.iw.dq;

import java.io.IOException;

/* loaded from: classes.dex */
public class d {
    public static final void dq(p pVar, int i) throws IOException {
        int d2 = pVar.d();
        if (d2 == i) {
            return;
        }
        throw new IOException("Expected chunk of type 0x" + Integer.toHexString(i) + ", read 0x" + Integer.toHexString(d2) + ".");
    }
}
