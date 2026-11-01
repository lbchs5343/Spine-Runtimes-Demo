package g;

import android.content.Context;
import android.view.MenuItem;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class fwf implements fcd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MenuItem f17507a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c.b.b f17508b;

    public fwf(c.b.b bVar, MenuItem menuItem) {
        this.f17508b = bVar;
        this.f17507a = menuItem;
    }

    @Override // g.fcd
    public final void h(String str) {
        int i = c.b.b.f378d;
        this.f17508b.ac(this.f17507a);
    }

    @Override // g.fcd
    public final void onDenied(String str) {
        Context context;
        context = this.f17508b.context;
        gm.e(context, R.string.content_disabled_request_permission2);
    }
}
