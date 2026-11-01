package com.bytedance.sdk.component.ox.dq;

import java.io.Closeable;
import java.io.IOException;

/* loaded from: classes.dex */
public interface gh extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    long dq(ox oxVar, long j) throws IOException;

    r dq();
}
