package g;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class has implements ekf {

    /* renamed from: c, reason: collision with root package name */
    public int f19145c = -1;

    @Override // g.ekf
    public final androidx.recyclerview.widget.p a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        int i = this.f19145c;
        if (i == -1) {
            i = R.layout.view_divider_gray;
        }
        return new bpq(layoutInflater.inflate(i, viewGroup, false));
    }

    @Override // g.ekf
    public final void b(androidx.recyclerview.widget.p pVar, cng cngVar) {
    }
}
