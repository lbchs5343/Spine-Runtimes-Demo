package g;

import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class wj {

    /* renamed from: a, reason: collision with root package name */
    public gig f20213a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f20214b;

    /* renamed from: f, reason: collision with root package name */
    public Interpolator f20218f;

    /* renamed from: e, reason: collision with root package name */
    public long f20217e = -1;

    /* renamed from: d, reason: collision with root package name */
    public final ezf f20216d = new ezf(this);

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f20215c = new ArrayList();

    public final void g() {
        if (this.f20214b) {
            Iterator it = this.f20215c.iterator();
            while (it.hasNext()) {
                ((elx) it.next()).e();
            }
            this.f20214b = false;
        }
    }

    public final void h() {
        View view;
        if (this.f20214b) {
            return;
        }
        Iterator it = this.f20215c.iterator();
        while (it.hasNext()) {
            elx elxVar = (elx) it.next();
            long j = this.f20217e;
            if (j >= 0) {
                elxVar.f(j);
            }
            Interpolator interpolator = this.f20218f;
            if (interpolator != null && (view = (View) elxVar.f15782a.get()) != null) {
                view.animate().setInterpolator(interpolator);
            }
            if (this.f20213a != null) {
                elxVar.b(this.f20216d);
            }
            View view2 = (View) elxVar.f15782a.get();
            if (view2 != null) {
                view2.animate().start();
            }
        }
        this.f20214b = true;
    }
}
