package g;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import cn.trinea.android.developertools.R;
import g.fxe;

/* loaded from: classes.dex */
public final class cny implements hdb {
    @Override // g.hdb
    public final boolean _bz(Context context, ert ertVar) {
        String str;
        String str2;
        fxe.e m = atf.g(context).m();
        if (m != null) {
            str = m.adUrl;
            str2 = m.adTitle;
        } else {
            str = null;
            str2 = null;
        }
        if (TextUtils.isEmpty(str)) {
            str = "https://p.codekk.com/";
        }
        String str3 = str;
        if (TextUtils.isEmpty(str2)) {
            str2 = context.getString(R.string.tool_other_financial);
        }
        dov.d((Activity) context, str3, str2, "", context.getString(R.string.op_share_attach), null);
        return true;
    }
}
