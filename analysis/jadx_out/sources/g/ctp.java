package g;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import com.bytedance.sdk.component.widget.recycler.RecyclerView;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class ctp extends RecyclerView.q {

    /* renamed from: c, reason: collision with root package name */
    public boolean f13479c;

    /* renamed from: d, reason: collision with root package name */
    public cit f13480d;

    /* renamed from: e, reason: collision with root package name */
    public int f13481e;

    public static boolean f(View view) {
        if (view == null || !view.getLocalVisibleRect(new Rect()) || view.getVisibility() != 0) {
            return false;
        }
        Rect rect = new Rect();
        return ((!view.getLocalVisibleRect(rect) || view.getMeasuredHeight() <= 0) ? -1 : (rect.height() * 100) / view.getMeasuredHeight()) >= 50;
    }

    public abstract void b(int i, View view);

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.q
    public final void dq(RecyclerView recyclerView, int i) {
        gco gcoVar;
        gqj gqjVar;
        View ox;
        super.dq(recyclerView, i);
        com.bytedance.sdk.component.widget.recycler.s sVar = (com.bytedance.sdk.component.widget.recycler.s) recyclerView.getLayoutManager();
        if (i == 0) {
            int ig = sVar.ig();
            if (!f(sVar.d(ig))) {
                ig--;
            }
            int max = Math.max(0, Math.max(ig, this.f13481e));
            for (int min = Math.min(this.f13481e, ig); min <= max; min++) {
                b(min, sVar.d(min));
            }
            this.f13481e = ig;
            int op = sVar.op();
            cit citVar = this.f13480d;
            citVar.getClass();
            gqj gqjVar2 = null;
            com.bytedance.sdk.component.widget.recycler.s sVar2 = recyclerView.getLayoutManager() instanceof com.bytedance.sdk.component.widget.recycler.s ? (com.bytedance.sdk.component.widget.recycler.s) recyclerView.getLayoutManager() : null;
            if (sVar2 != null) {
                int ig2 = sVar2.ig();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (int o = sVar2.o(); o <= ig2; o++) {
                    Object p = recyclerView.p(o);
                    if ((p instanceof gqj) && (ox = (gqjVar = (gqj) p).ox()) != null && cit.b(ox)) {
                        linkedHashMap.put(Integer.valueOf(o), gqjVar);
                    }
                }
                int i2 = he.UNDEFINED_ITEM_ID;
                for (Map.Entry entry : linkedHashMap.entrySet()) {
                    View ox2 = ((gqj) entry.getValue()).ox();
                    Context context = ox2.getContext();
                    Object obj = dxo.f15026a;
                    int[] iArr = new int[2];
                    ox2.getLocationOnScreen(iArr);
                    int abs = Math.abs(((ox2.getHeight() / 2) + iArr[1]) - ((int) (context.getResources().getDisplayMetrics().heightPixels / 2.3d)));
                    if (abs < i2) {
                        gqjVar2 = (gqj) entry.getValue();
                        ((Integer) entry.getKey()).getClass();
                        i2 = abs;
                    }
                }
                gqj gqjVar3 = citVar.f12949a;
                if (gqjVar3 != gqjVar2) {
                    if (gqjVar3 != null) {
                        gqjVar3.dq();
                    }
                    citVar.f12949a = gqjVar2;
                }
                gqj gqjVar4 = citVar.f12949a;
                if (gqjVar4 != null) {
                    gqjVar4.d();
                }
            }
            if (((ig == op - 1 && this.f13479c) || op == 1) && (gcoVar = ((vt) this).f20191a.f15583g) != null) {
                gcoVar.dq();
            }
        }
        gco gcoVar2 = ((vt) this).f20191a.f15583g;
        if (gcoVar2 != null) {
            gcoVar2.dq(recyclerView, i);
        }
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.q
    public final void dq(RecyclerView recyclerView, int i, int i2) {
        super.dq(recyclerView, i, i2);
        if (i2 == 0) {
            com.bytedance.sdk.component.widget.recycler.s sVar = (com.bytedance.sdk.component.widget.recycler.s) recyclerView.getLayoutManager();
            this.f13481e = sVar.o();
            int ig = sVar.ig();
            if (!f(sVar.d(ig))) {
                ig--;
            }
            int max = Math.max(0, Math.max(ig, this.f13481e));
            for (int i3 = this.f13481e; i3 <= max; i3++) {
                b(i3, sVar.d(i3));
            }
        }
        this.f13479c = i2 > 0;
        cit citVar = this.f13480d;
        gqj gqjVar = citVar.f12949a;
        if (gqjVar != null && gqjVar.ox() != null && !cit.b(citVar.f12949a.ox())) {
            citVar.f12949a.dq();
        }
        gco gcoVar = ((vt) this).f20191a.f15583g;
        if (gcoVar != null) {
            gcoVar.dq(i, i2);
        }
    }
}
