package g;

import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;

/* loaded from: classes3.dex */
public interface dsy extends cpv, ReadableByteChannel {
    String ad(Charset charset);

    long ah(clq clqVar);

    String ai();

    InputStream m();

    long q();

    byte readByte();

    int readInt();

    short readShort();

    String s(long j);

    void skip(long j);

    gei t(long j);

    void v(long j);

    int w(hck hckVar);
}
