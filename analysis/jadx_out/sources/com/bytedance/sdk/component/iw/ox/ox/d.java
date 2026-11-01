package com.bytedance.sdk.component.iw.ox.ox;

import java.io.Closeable;

/* loaded from: classes.dex */
public class d {
    public static void dq(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused) {
            }
        }
    }
}
