package ms.bz.bd.c.Pgl;

import java.io.File;
import ms.bz.bd.c.Pgl.pblb;

/* loaded from: classes.dex */
final class pble extends pblb.pgla {
    @Override // ms.bz.bd.c.Pgl.pblb.pgla
    public final Object a(Object obj, String str) {
        File file = new File(com.bytedance.sdk.openadsdk.api.plugin.d.dq(pgla.f21199a.f21200b), (String) pblk.a(16777217, 0, 0L, "1dd8b6", new byte[]{110, 107, 4, 72, 92, 53, 51}));
        if (!file.exists()) {
            file.mkdirs();
        }
        return file.getAbsolutePath();
    }
}
