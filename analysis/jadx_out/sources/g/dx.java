package g;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class dx extends ciz {
    @Override // g.ciz, g.ekf
    public final androidx.recyclerview.widget.p a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        androidx.recyclerview.widget.p a2 = super.a(layoutInflater, viewGroup);
        View view = a2.n;
        view.findViewById(R.id.key).setVisibility(8);
        TextView textView = (TextView) view.findViewById(R.id.value);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) textView.getLayoutParams();
        marginLayoutParams.setMarginStart(0);
        textView.setLayoutParams(marginLayoutParams);
        return a2;
    }

    @Override // g.ciz, g.ekf
    public final void b(androidx.recyclerview.widget.p pVar, cng cngVar) {
        super.b(pVar, new th((String) null, ((ce) cngVar).f12721a));
        View view = pVar.n;
        view.setClickable(false);
        view.setLongClickable(false);
        view.setFocusable(false);
    }
}
