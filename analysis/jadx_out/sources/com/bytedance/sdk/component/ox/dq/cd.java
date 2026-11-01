package com.bytedance.sdk.component.ox.dq;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;

/* loaded from: classes.dex */
public interface cd extends Closeable, Flushable {
    void a_(ox oxVar, long j) throws IOException;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    r dq();

    void flush() throws IOException;
}
