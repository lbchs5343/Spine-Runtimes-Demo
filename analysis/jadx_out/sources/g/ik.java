package g;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class ik implements ekf {

    /* renamed from: c, reason: collision with root package name */
    public c.a.a f19431c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f19432d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f19433e;

    @Override // g.ekf
    public final androidx.recyclerview.widget.p a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        bff.p(layoutInflater, "layoutInflater");
        View inflate = layoutInflater.inflate(R.layout.group_window_viewer, viewGroup, false);
        bff.e(inflate, "inflate(...)");
        return new fhc(inflate);
    }

    @Override // g.ekf
    public final void b(androidx.recyclerview.widget.p pVar, cng cngVar) {
        fhc fhcVar = (fhc) pVar;
        c.a.a aVar = this.f19431c;
        boolean z = this.f19432d;
        boolean z2 = this.f19433e;
        gzr gzrVar = (gzr) cngVar;
        TextView textView = fhcVar.ak;
        ImageView imageView = fhcVar.al;
        if (z) {
            imageView.setVisibility(0);
            imageView.setImageDrawable(gzrVar.f19064a);
            imageView.setOnClickListener(new aww(aVar, 4, gzrVar));
        } else {
            imageView.setVisibility(8);
        }
        if (z2) {
            textView.setVisibility(0);
            textView.setText(gzrVar.f19065b);
        } else {
            textView.setVisibility(8);
        }
        fhcVar.am.setText(gzrVar.f19066c);
    }
}
