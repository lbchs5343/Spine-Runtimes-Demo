package g;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import cn.trinea.android.developertools.R;
import g.fxe;

/* loaded from: classes.dex */
public final class fcs implements hdb {
    @Override // g.hdb
    public final boolean _bz(Context context, ert ertVar) {
        fxe.a j = atf.g(context).j();
        if (j == null || TextUtils.isEmpty(j.faqUrl)) {
            return false;
        }
        dov.b((Activity) context, null, dov.c(j.faqUrl, TextUtils.isEmpty(j.faqTitle) ? context.getString(R.string.about_faq) : j.faqTitle, "", context.getString(R.string.op_share_attach), bys.f12466a));
        return true;
    }
}
