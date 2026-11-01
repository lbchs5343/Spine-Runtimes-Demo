package g;

import java.net.URI;

/* loaded from: classes3.dex */
public class bed extends bke {
    @Override // g.bke
    public final void a(fwg fwgVar, Object obj) {
        URI uri = (URI) obj;
        fwgVar.s(uri == null ? null : uri.toASCIIString());
    }
}
