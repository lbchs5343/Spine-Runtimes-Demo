package g;

import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final /* synthetic */ class hbl {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ bus f19178a;

    public /* synthetic */ hbl(bus busVar) {
        this.f19178a = busVar;
    }

    public final void b(boolean z) {
        bus busVar = this.f19178a;
        busVar.h = false;
        if (busVar.o) {
            if (z) {
                busVar.y();
                return;
            }
            boolean r = busVar.l.r();
            busVar.i = r;
            if (r) {
                gm.e(busVar.n, R.string.shizuku_permission_denied);
            }
            busVar.w();
        }
    }
}
