package g;

import android.view.LayoutInflater;
import androidx.activity.ComponentActivity;

/* loaded from: classes.dex */
public final class gyh implements buv {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ub f19000a;

    public gyh(ub ubVar) {
        this.f19000a = ubVar;
    }

    @Override // g.buv
    public final void b(ComponentActivity componentActivity) {
        ub ubVar = this.f19000a;
        dkn delegate = ubVar.getDelegate();
        dre dreVar = (dre) delegate;
        LayoutInflater from = LayoutInflater.from(dreVar.aw);
        if (from.getFactory() == null) {
            from.setFactory2(dreVar);
        } else {
            from.getFactory2();
        }
        ubVar.getSavedStateRegistry().h("androidx:appcompat");
        delegate.w();
    }
}
