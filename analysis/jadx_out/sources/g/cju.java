package g;

import android.view.View;
import java.util.List;

/* loaded from: classes.dex */
public final class cju {

    /* renamed from: a, reason: collision with root package name */
    public int f13000a;

    /* renamed from: b, reason: collision with root package name */
    public List f13001b;

    /* renamed from: c, reason: collision with root package name */
    public int f13002c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f13003d;

    /* renamed from: e, reason: collision with root package name */
    public int f13004e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f13005f;

    /* renamed from: g, reason: collision with root package name */
    public int f13006g;
    public int h;
    public int i;
    public int j;
    public int k;
    public int l;

    public final void m(View view) {
        int ag;
        int size = this.f13001b.size();
        View view2 = null;
        int i = he.UNDEFINED_ITEM_ID;
        for (int i2 = 0; i2 < size; i2++) {
            View view3 = ((androidx.recyclerview.widget.p) this.f13001b.get(i2)).n;
            yx yxVar = (yx) view3.getLayoutParams();
            if (view3 != view && !yxVar.f20371b.u() && (ag = (yxVar.f20371b.ag() - this.f13002c) * this.f13004e) >= 0 && ag < i) {
                view2 = view3;
                if (ag == 0) {
                    break;
                } else {
                    i = ag;
                }
            }
        }
        if (view2 == null) {
            this.f13002c = -1;
        } else {
            this.f13002c = ((yx) view2.getLayoutParams()).f20371b.ag();
        }
    }

    public final View n(androidx.recyclerview.widget.f fVar) {
        List list = this.f13001b;
        if (list == null) {
            View n = fVar.n(this.f13002c);
            this.f13002c += this.f13004e;
            return n;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            View view = ((androidx.recyclerview.widget.p) this.f13001b.get(i)).n;
            yx yxVar = (yx) view.getLayoutParams();
            if (!yxVar.f20371b.u() && this.f13002c == yxVar.f20371b.ag()) {
                m(view);
                return view;
            }
        }
        return null;
    }
}
