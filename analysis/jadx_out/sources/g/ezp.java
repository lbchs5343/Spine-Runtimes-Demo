package g;

import android.content.Context;
import g.fxe;

/* loaded from: classes.dex */
public final class ezp implements hdb {
    @Override // g.hdb
    public final boolean _bz(Context context, ert ertVar) {
        fxe.e m = atf.g(context).m();
        if (m == null || !m.isShowNewSecond) {
            cro.ad(context);
            return true;
        }
        eyt.ay(context, cro.t(context, false, new gtf(context, 2)));
        return true;
    }
}
