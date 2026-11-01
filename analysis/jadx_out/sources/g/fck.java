package g;

import android.view.MenuItem;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public final class fck {

    /* renamed from: a, reason: collision with root package name */
    public final Runnable f16565a;

    /* renamed from: b, reason: collision with root package name */
    public final CopyOnWriteArrayList f16566b = new CopyOnWriteArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f16567c = new HashMap();

    public fck(Runnable runnable) {
        this.f16565a = runnable;
    }

    public final boolean d(MenuItem menuItem) {
        Iterator it = this.f16566b.iterator();
        while (it.hasNext()) {
            if (((bjn) ((arz) it.next())).f11707a.av(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public final void e(arz arzVar) {
        this.f16566b.remove(arzVar);
        cbb cbbVar = (cbb) this.f16567c.remove(arzVar);
        if (cbbVar != null) {
            cbbVar.f12575a.n(cbbVar.f12576b);
            cbbVar.f12576b = null;
        }
        this.f16565a.run();
    }
}
