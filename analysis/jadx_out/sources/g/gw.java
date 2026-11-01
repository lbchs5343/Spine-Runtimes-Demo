package g;

import javax.net.ssl.SSLSocket;
import org.conscrypt.Conscrypt;

/* loaded from: classes3.dex */
public final class gw implements gyi {
    @Override // g.gyi
    public final boolean a(SSLSocket sSLSocket) {
        return lg.f19587a && Conscrypt.isConscrypt(sSLSocket);
    }

    @Override // g.gyi
    public final est b(SSLSocket sSLSocket) {
        return new dji();
    }
}
