package g;

import java.nio.channels.WritableByteChannel;

/* loaded from: classes3.dex */
public interface cbs extends evq, WritableByteChannel {
    cbs d(int i, byte[] bArr);

    @Override // g.evq, java.io.Flushable
    void flush();

    cbs g(gei geiVar);

    clq h();

    cbs j(String str);

    cbs k(long j);

    cbs l(long j);

    cbs write(byte[] bArr);

    cbs writeByte(int i);

    cbs writeInt(int i);

    cbs writeShort(int i);
}
