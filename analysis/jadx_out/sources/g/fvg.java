package g;

import java.io.IOException;

/* loaded from: classes3.dex */
public final class fvg extends RuntimeException {
    private final IOException firstConnectException;
    private IOException lastConnectException;

    public fvg(IOException iOException) {
        super(iOException);
        this.firstConnectException = iOException;
        this.lastConnectException = iOException;
    }

    public final void a(IOException iOException) {
        cux.ag(this.firstConnectException, iOException);
        this.lastConnectException = iOException;
    }

    public final IOException b() {
        return this.firstConnectException;
    }

    public final IOException c() {
        return this.lastConnectException;
    }
}
