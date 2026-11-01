package androidx.recyclerview.widget;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.awd;
import g.rx;

/* loaded from: classes.dex */
public final class a implements awd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f259a;

    public /* synthetic */ a(RecyclerView recyclerView) {
        this.f259a = recyclerView;
    }

    @Override // g.awd
    public float b() {
        float f2;
        RecyclerView recyclerView = this.f259a;
        if (recyclerView.mLayout.cd()) {
            f2 = recyclerView.mScaledVerticalScrollFactor;
        } else {
            if (!recyclerView.mLayout.ca()) {
                return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            }
            f2 = recyclerView.mScaledHorizontalScrollFactor;
        }
        return -f2;
    }

    @Override // g.awd
    public boolean c(float f2) {
        int i;
        int i2;
        RecyclerView recyclerView = this.f259a;
        if (recyclerView.mLayout.cd()) {
            i2 = (int) f2;
            i = 0;
        } else {
            i = recyclerView.mLayout.ca() ? (int) f2 : 0;
            i2 = 0;
        }
        if (i == 0 && i2 == 0) {
            return false;
        }
        recyclerView.stopScroll();
        return recyclerView.flingNoThresholdCheck(i, i2);
    }

    public void d(rx rxVar) {
        int i = rxVar.f19935b;
        RecyclerView recyclerView = this.f259a;
        if (i == 1) {
            recyclerView.mLayout.bb(rxVar.f19936c, rxVar.f19934a);
            return;
        }
        if (i == 2) {
            recyclerView.mLayout.y(rxVar.f19936c, rxVar.f19934a);
        } else if (i == 4) {
            recyclerView.mLayout.u(rxVar.f19936c, rxVar.f19934a);
        } else {
            if (i != 8) {
                return;
            }
            recyclerView.mLayout.ag(rxVar.f19936c, rxVar.f19934a);
        }
    }

    @Override // g.awd
    public void e() {
        this.f259a.stopScroll();
    }
}
