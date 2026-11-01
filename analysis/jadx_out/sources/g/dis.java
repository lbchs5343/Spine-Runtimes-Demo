package g;

import android.view.ViewGroup;
import android.widget.TextView;

/* loaded from: classes.dex */
public final class dis extends csm {
    public Class h;
    public b.a.b i;
    public int j;
    public boolean k;
    public aoi l;

    @Override // g.csm
    public final void c(bcq bcqVar, auj aujVar) {
        ViewGroup viewGroup = bcqVar.al;
        TextView textView = bcqVar.am;
        viewGroup.setOnClickListener(new anh(this, 0, aujVar));
        bcqVar.al.setOnLongClickListener(new esb());
        bcqVar.ak.setImageDrawable(aujVar.l(this.f13438e, true));
        bcqVar.an.setText(aujVar.j);
        if (this.f13439f) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
            textView.setText(aujVar.h);
        }
    }
}
