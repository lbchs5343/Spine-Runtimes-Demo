package g;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import cn.trinea.android.developertools.R;
import g.fxe;

/* loaded from: classes.dex */
public final class fpi implements hdb {
    @Override // g.hdb
    public final boolean _bz(Context context, ert ertVar) {
        fxe.a j = atf.g(context).j();
        if (j == null || TextUtils.isEmpty(j.userResearchUrl)) {
            return false;
        }
        dov.d((Activity) context, j.userResearchUrl, TextUtils.isEmpty(j.userResearchTitle) ? context.getString(R.string.about_research) : j.userResearchTitle, "", context.getString(R.string.op_share_attach), null);
        return true;
    }
}
