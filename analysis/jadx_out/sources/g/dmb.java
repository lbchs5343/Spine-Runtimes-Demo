package g;

import android.os.Build;
import android.os.Bundle;
import android.text.Html;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import g.fxe;
import java.util.HashMap;

/* loaded from: classes.dex */
public class dmb extends cyz {
    @Override // g.cyz
    public final boolean am() {
        String str;
        fxe p = atf.g(this.k).p();
        String str2 = null;
        fxe.f fVar = p == null ? null : p.codekk;
        if (fVar != null) {
            str2 = fVar.opUrl;
            str = fVar.opTitle;
        } else {
            str = null;
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = "https://p.codekk.com";
        }
        String str3 = str2;
        if (TextUtils.isEmpty(str)) {
            str = this.k.getString(R.string.op_title);
        }
        return dov.d(getActivity(), str3, str, "", this.k.getString(R.string.op_share_attach), this.k.getString(R.string.app_name_ua));
    }

    @Override // g.cyz, g.bvl, android.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        TextView textView = (TextView) view.findViewById(R.id.desc);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        textView.setText(Html.fromHtml(getString(R.string.about_app_desc)));
        fxe p = atf.g(this.k).p();
        fxe.f fVar = p == null ? null : p.codekk;
        String str = fVar != null ? fVar.opUrl : null;
        if (TextUtils.isEmpty(str)) {
            str = "https://p.codekk.com";
        }
        TextView textView2 = this.f13787ab;
        String aq = eyt.aq(eyt.aq(str, "https://"), "http://");
        if (!TextUtils.isEmpty(aq) && !TextUtils.isEmpty("/") && aq.lastIndexOf("/") == aq.length() - 1) {
            aq = aq.substring(0, aq.length() - 1);
        }
        textView2.setText(Html.fromHtml(getString(R.string.about_author_desc, str, aq)));
        HashMap hashMap = fnp.f17095b;
        if ("htc".equalsIgnoreCase(Build.MANUFACTURER)) {
            this.f13791g.setVisibility(8);
        }
    }
}
