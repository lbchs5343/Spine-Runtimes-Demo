package com.bytedance.sdk.component.ox.d.dq.s;

import java.io.IOException;

/* loaded from: classes.dex */
public final class jy extends IOException {
    public final d dq;

    public jy(d dVar) {
        super("stream was reset: ".concat(String.valueOf(dVar)));
        this.dq = dVar;
    }
}
