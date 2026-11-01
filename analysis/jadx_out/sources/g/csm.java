package g;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import cn.trinea.android.developertools.R;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public abstract class csm implements ekf {

    /* renamed from: d, reason: collision with root package name */
    public static final ExecutorService f13437d = Executors.newFixedThreadPool(3);

    /* renamed from: e, reason: collision with root package name */
    public final efx f13438e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f13439f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f13440g = true;

    public csm(efx efxVar, boolean z) {
        this.f13438e = efxVar;
        this.f13439f = z;
    }

    @Override // g.ekf
    public final androidx.recyclerview.widget.p a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return new bcq(layoutInflater.inflate(this.f13439f ? R.layout.item_app_vertical : R.layout.item_app_horizontal, viewGroup, false));
    }

    @Override // g.ekf
    public final void b(androidx.recyclerview.widget.p pVar, cng cngVar) {
        c((bcq) pVar, (auj) cngVar);
    }

    public abstract void c(bcq bcqVar, auj aujVar);
}
