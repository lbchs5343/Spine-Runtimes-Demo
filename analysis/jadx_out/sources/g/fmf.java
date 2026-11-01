package g;

import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.nio.channels.ClosedChannelException;
import javax.net.ssl.SSLException;

/* loaded from: classes.dex */
public final class fmf implements gao {
    @Override // g.gao
    public final void dq(Object obj) {
        Throwable th = (Throwable) obj;
        cqw cqwVar = ebx.f15269c;
        if ((th instanceof SocketException) || (th instanceof ClosedChannelException) || (th instanceof InterruptedIOException) || (th instanceof ProtocolException) || (th instanceof SSLException) || (th instanceof UnknownHostException) || (th instanceof UnknownServiceException)) {
            hbp.c("Unable to load composition.", th);
        } else {
            hbp.c("Unable to parse composition:", th);
        }
    }
}
