package g;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;

/* loaded from: classes3.dex */
public final class gfm extends boo {
    public final Socket v;

    public gfm(Socket socket) {
        this.v = socket;
    }

    @Override // g.boo
    public final void c() {
        Socket socket = this.v;
        try {
            socket.close();
        } catch (AssertionError e2) {
            if (!baf.ah(e2)) {
                throw e2;
            }
            aro.f10725a.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e2);
        } catch (Exception e3) {
            aro.f10725a.log(Level.WARNING, "Failed to close timed out socket " + socket, (Throwable) e3);
        }
    }

    public final IOException w(IOException iOException) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }
}
