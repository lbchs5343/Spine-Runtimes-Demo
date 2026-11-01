package g;

import java.util.List;
import javax.net.ssl.SSLSocket;
import org.bouncycastle.jsse.BCSSLParameters;
import org.bouncycastle.jsse.BCSSLSocket;

/* loaded from: classes3.dex */
public final class aua implements est {

    /* renamed from: a, reason: collision with root package name */
    public static final dua f10848a = new dua();

    @Override // g.est
    public final void c(SSLSocket sSLSocket, String str, List list) {
        bff.p(list, "protocols");
        if (e(sSLSocket)) {
            BCSSLSocket bCSSLSocket = (BCSSLSocket) sSLSocket;
            BCSSLParameters parameters = bCSSLSocket.getParameters();
            bop bopVar = bop.h;
            parameters.setApplicationProtocols((String[]) cfg.n(list).toArray(new String[0]));
            bCSSLSocket.setParameters(parameters);
        }
    }

    @Override // g.est
    public final boolean e(SSLSocket sSLSocket) {
        return false;
    }

    @Override // g.est
    public final boolean f() {
        boolean z = dtg.f14764a;
        return dtg.f14764a;
    }

    @Override // g.est
    public final String g(SSLSocket sSLSocket) {
        String applicationProtocol = ((BCSSLSocket) sSLSocket).getApplicationProtocol();
        if (applicationProtocol == null ? true : applicationProtocol.equals("")) {
            return null;
        }
        return applicationProtocol;
    }
}
