package g;

import java.io.Closeable;
import java.io.Flushable;

/* loaded from: classes3.dex */
public interface evq extends Closeable, Flushable {
    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    void close();

    dme e();

    void f(clq clqVar, long j);

    void flush();
}
