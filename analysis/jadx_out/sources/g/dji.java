package g;

import java.util.List;
import javax.net.ssl.SSLSocket;
import org.conscrypt.Conscrypt;

/* loaded from: classes3.dex */
public final class dji implements est {

    /* renamed from: a, reason: collision with root package name */
    public static final gw f14275a = new gw();

    @Override // g.est
    public final void c(SSLSocket sSLSocket, String str, List list) {
        bff.p(list, "protocols");
        if (e(sSLSocket)) {
            Conscrypt.setUseSessionTickets(sSLSocket, true);
            bop bopVar = bop.h;
            Conscrypt.setApplicationProtocols(sSLSocket, (String[]) cfg.n(list).toArray(new String[0]));
        }
    }

    @Override // g.est
    public final boolean e(SSLSocket sSLSocket) {
        return Conscrypt.isConscrypt(sSLSocket);
    }

    @Override // g.est
    public final boolean f() {
        boolean z = lg.f19587a;
        return lg.f19587a;
    }

    @Override // g.est
    public final String g(SSLSocket sSLSocket) {
        if (e(sSLSocket)) {
            return Conscrypt.getApplicationProtocol(sSLSocket);
        }
        return null;
    }
}
