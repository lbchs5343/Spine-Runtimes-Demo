package ms.bz.bd.c.Pgl;

import android.text.TextUtils;
import com.volcengine.mobsecBiz.metasec.listener.PglITokenObserver;
import java.util.Iterator;
import ms.bz.bd.c.Pgl.pblb;

/* loaded from: classes.dex */
final class c0 extends pblb.pgla {
    @Override // ms.bz.bd.c.Pgl.pblb.pgla
    public final Object a(Object obj, String str) {
        boolean z = n0.f21174a;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        pblk.a(16777217, 0, 0L, "5c855f", new byte[]{43, 111, 121, 68, 26, 126, 36, 86, 79, 108, 42, 104, 88, 73, 74, 101, 57, 73, 108, 107, 100, 44, 6, 12, 74});
        Iterator it = n0.f21176c.iterator();
        while (it.hasNext()) {
            ((PglITokenObserver) it.next()).onTokenLoaded(str);
        }
        return null;
    }
}
