package com.bytedance.sdk.component.ox.dq;

import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public interface s extends gh, ReadableByteChannel {
    long dq(byte b2) throws IOException;

    String dq(Charset charset) throws IOException;

    void dq(long j) throws IOException;

    void dq(byte[] bArr) throws IOException;

    boolean dq(long j, iw iwVar) throws IOException;

    String f() throws IOException;

    byte[] fw() throws IOException;

    byte ia() throws IOException;

    void ia(long j) throws IOException;

    int ig() throws IOException;

    InputStream iw();

    short kk() throws IOException;

    byte[] mn(long j) throws IOException;

    long mp() throws IOException;

    short no() throws IOException;

    int o() throws IOException;

    iw ox(long j) throws IOException;

    @Deprecated
    ox ox();

    String s(long j) throws IOException;

    boolean s() throws IOException;
}
