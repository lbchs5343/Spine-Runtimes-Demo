package g;

import java.net.URL;

/* loaded from: classes3.dex */
public class fbv extends bke {
    @Override // g.bke
    public final void a(fwg fwgVar, Object obj) {
        URL url = (URL) obj;
        fwgVar.s(url == null ? null : url.toExternalForm());
    }
}
