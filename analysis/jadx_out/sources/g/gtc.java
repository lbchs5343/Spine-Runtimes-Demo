package g;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.fxe;

/* loaded from: classes.dex */
public final class gtc implements hdb {
    @Override // g.hdb
    public final boolean _bz(Context context, ert ertVar) {
        fxe.a j = atf.g(context).j();
        if (j == null || TextUtils.isEmpty(j.md5Url)) {
            return false;
        }
        Bundle c2 = dov.c(j.md5Url, context.getString(R.string.tool_common_md5), "", context.getString(R.string.op_share_attach), bys.f12466a);
        c2.putBoolean(abn.EXTRA_IS_SUBTITLE_SHOW_FULL_URL, true);
        dov.b((Activity) context, null, c2);
        cro.af(context, "md5_new", false);
        ert ae = acr.ae(context, TTDownloadField.TT_MD5);
        if (ae != null) {
            ae.f16054c = false;
            fzn.l(context).q(new Intent("cn.trinea.android.lib.ACTION_TOOL_UPDATE"));
        }
        return true;
    }
}
