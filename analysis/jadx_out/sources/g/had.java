package g;

import androidx.recyclerview.widget.RecyclerView;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class had extends doi {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19108a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f19109b;

    public /* synthetic */ had(int i, Object obj) {
        this.f19108a = i;
        this.f19109b = obj;
    }

    @Override // g.doi
    public void onScrollStateChanged(RecyclerView recyclerView, int i) {
        switch (this.f19108a) {
            case 0:
                amy amyVar = (amy) this.f19109b;
                if (!acw.ae(amyVar.f10501e, "isAppInfoScrollTiped")) {
                    gm.c(amyVar.f10501e, R.string.app_info_scroll_tip);
                    break;
                }
                break;
        }
    }

    @Override // g.doi
    public void onScrolled(RecyclerView recyclerView, int i, int i2) {
        switch (this.f19108a) {
            case 1:
                eiu eiuVar = (eiu) this.f19109b;
                int computeHorizontalScrollOffset = recyclerView.computeHorizontalScrollOffset();
                int computeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
                int i3 = eiuVar.o;
                int computeVerticalScrollRange = eiuVar.t.computeVerticalScrollRange();
                int i4 = eiuVar.af;
                eiuVar.f15611ab = computeVerticalScrollRange - i4 > 0 && i4 >= i3;
                int computeHorizontalScrollRange = eiuVar.t.computeHorizontalScrollRange();
                int i5 = eiuVar.z;
                boolean z = computeHorizontalScrollRange - i5 > 0 && i5 >= i3;
                eiuVar.p = z;
                boolean z2 = eiuVar.f15611ab;
                if (!z2 && !z) {
                    if (eiuVar.q != 0) {
                        eiuVar.al(0);
                        break;
                    }
                } else {
                    if (z2) {
                        float f2 = i4;
                        eiuVar.m = (int) ((((f2 / 2.0f) + computeVerticalScrollOffset) * f2) / computeVerticalScrollRange);
                        eiuVar.f15614f = Math.min(i4, (i4 * i4) / computeVerticalScrollRange);
                    }
                    if (eiuVar.p) {
                        float f3 = computeHorizontalScrollOffset;
                        float f4 = i5;
                        eiuVar.h = (int) ((((f4 / 2.0f) + f3) * f4) / computeHorizontalScrollRange);
                        eiuVar.j = Math.min(i5, (i5 * i5) / computeHorizontalScrollRange);
                    }
                    int i6 = eiuVar.q;
                    if (i6 == 0 || i6 == 1) {
                        eiuVar.al(1);
                        break;
                    }
                }
                break;
        }
    }
}
