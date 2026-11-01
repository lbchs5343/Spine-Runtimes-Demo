package com.bytedance.sdk.component.ox.dq;

import java.io.IOException;
import java.nio.channels.WritableByteChannel;

/* loaded from: classes.dex */
public interface p extends cd, WritableByteChannel {
    p d(iw iwVar) throws IOException;

    p d(String str) throws IOException;

    @Override // com.bytedance.sdk.component.ox.dq.cd, java.io.Flushable
    void flush() throws IOException;

    p i() throws IOException;

    p ia(int i) throws IOException;

    p ig(long j) throws IOException;

    p kk(int i) throws IOException;

    p mn(int i) throws IOException;

    p no(long j) throws IOException;

    ox ox();

    p ox(byte[] bArr) throws IOException;

    p ox(byte[] bArr, int i, int i2) throws IOException;
}
