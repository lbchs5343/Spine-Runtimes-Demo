package g;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import cn.trinea.android.developertools.R;
import g.fxe;

/* loaded from: classes.dex */
public final class faz implements hdb {
    @Override // g.hdb
    public final boolean _bz(Context context, ert ertVar) {
        String str;
        String str2;
        fxe.e m = atf.g(context).m();
        if (m != null) {
            str2 = m.jobsUrl;
            str = m.jobsTitle;
        } else {
            str = null;
            str2 = null;
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = "https://j.codekk.com/";
        }
        if (TextUtils.isEmpty(str)) {
            str = context.getString(R.string.tool_other_job);
        }
        dov.b((Activity) context, null, dov.c(str2, str, "", context.getString(R.string.op_share_attach), bys.f12466a));
        return true;
    }
}
