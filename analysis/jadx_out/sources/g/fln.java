package g;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import cn.trinea.android.developertools.R;
import g.fxe;

/* loaded from: classes.dex */
public final class fln implements hdb {
    @Override // g.hdb
    public final boolean _bz(Context context, ert ertVar) {
        fxe.a j = atf.g(context).j();
        if (j == null || TextUtils.isEmpty(j.manualUrl)) {
            return false;
        }
        dov.b((Activity) context, null, dov.c(j.manualUrl, TextUtils.isEmpty(j.manualTitle) ? context.getString(R.string.tool_other_features) : j.manualTitle, "", context.getString(R.string.op_share_attach), bys.f12466a));
        return true;
    }
}
