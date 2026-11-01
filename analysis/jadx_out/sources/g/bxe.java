package g;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class bxe implements ekf {

    /* renamed from: c, reason: collision with root package name */
    public boolean f12371c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f12372d;

    @Override // g.ekf
    public final androidx.recyclerview.widget.p a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        bff.p(layoutInflater, "layoutInflater");
        View inflate = layoutInflater.inflate(R.layout.item_window_viewer, viewGroup, false);
        bff.e(inflate, "inflate(...)");
        return new aam(inflate);
    }

    @Override // g.ekf
    public final void b(androidx.recyclerview.widget.p pVar, cng cngVar) {
        aam aamVar = (aam) pVar;
        boolean z = this.f12371c;
        boolean z2 = this.f12372d;
        vc vcVar = (vc) cngVar;
        TextView textView = aamVar.al;
        String str = vcVar.f20143c;
        textView.setText(str);
        aamVar.ak.setText(vcVar.f20142b);
        TextView textView2 = aamVar.am;
        textView2.setText(dlb.d(vcVar.f20141a, dlb.f14354a));
        if (!z2 || TextUtils.isEmpty(str)) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
        }
        if (z) {
            textView2.setVisibility(0);
        } else {
            textView2.setVisibility(8);
        }
    }
}
