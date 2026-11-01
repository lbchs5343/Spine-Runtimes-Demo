package g;

import android.view.View;
import com.google.android.material.sidesheet.SideSheetBehavior;

/* loaded from: classes.dex */
public final /* synthetic */ class cdl implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f12691a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f12692b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f12693c;

    public /* synthetic */ cdl(Object obj, int i, int i2) {
        this.f12692b = i2;
        this.f12691a = obj;
        this.f12693c = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f12692b) {
            case 0:
                bew.r((he) this.f12691a, this.f12693c);
                break;
            case 1:
                ((dzm) this.f12691a).c(this.f12693c);
                break;
            case 2:
                ark arkVar = (ark) this.f12691a;
                arkVar.getClass();
                arkVar.t(this.f12693c == 0);
                arkVar.s();
                break;
            case 3:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f12691a;
                View view = (View) sideSheetBehavior.aa.get();
                if (view != null) {
                    sideSheetBehavior.am(view, this.f12693c, false);
                    break;
                }
                break;
            default:
                edx edxVar = (edx) this.f12691a;
                if (!edxVar.isFinishing() && !edxVar.isDestroyed()) {
                    int i = edxVar.s;
                    int i2 = this.f12693c;
                    if (i2 == i) {
                        he z = edxVar.getIntent().getBooleanExtra("layout_snapshot_prepared", false) ? ka.z(false, true) : null;
                        if (z == null) {
                            edxVar.u = true;
                            bew.p(edxVar.bc, new bf(edxVar, i2, 1));
                            break;
                        } else {
                            edxVar.u = false;
                            edxVar.aw(z);
                            break;
                        }
                    }
                }
                break;
        }
    }
}
