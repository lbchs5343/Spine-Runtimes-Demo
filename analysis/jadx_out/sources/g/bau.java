package g;

import android.widget.ImageView;
import android.widget.TextView;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class bau extends csm {
    @Override // g.csm
    public final void c(bcq bcqVar, auj aujVar) {
        bff.p(bcqVar, "appViewHolder");
        TextView textView = bcqVar.am;
        bff.p(aujVar, "appInfo");
        bcqVar.al.setOnClickListener(new aww(this, 2, aujVar));
        ImageView imageView = bcqVar.ak;
        efx efxVar = this.f13438e;
        imageView.setImageDrawable(aujVar.l(efxVar, true));
        bcqVar.an.setText(aujVar.j);
        if (this.f13439f) {
            textView.setVisibility(8);
            return;
        }
        textView.setVisibility(0);
        String string = efxVar.getString(R.string.no_important_permissions);
        bff.e(string, "getString(...)");
        textView.setText(string);
    }
}
