package g;

import java.util.UUID;

/* loaded from: classes3.dex */
public class cik extends bke {
    @Override // g.bke
    public final void a(fwg fwgVar, Object obj) {
        UUID uuid = (UUID) obj;
        fwgVar.s(uuid == null ? null : uuid.toString());
    }
}
