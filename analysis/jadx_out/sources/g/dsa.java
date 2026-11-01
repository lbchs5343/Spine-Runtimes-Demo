package g;

import java.net.InetAddress;

/* loaded from: classes3.dex */
public class dsa extends bke {
    @Override // g.bke
    public final void a(fwg fwgVar, Object obj) {
        InetAddress inetAddress = (InetAddress) obj;
        fwgVar.s(inetAddress == null ? null : inetAddress.getHostAddress());
    }
}
