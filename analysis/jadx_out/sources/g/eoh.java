package g;

import android.text.TextUtils;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class eoh extends czu {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f15891c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f15892d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f15893e;

    public /* synthetic */ eoh(Object obj, int i, Object obj2) {
        this.f15893e = i;
        this.f15892d = obj;
        this.f15891c = obj2;
    }

    @Override // g.czu
    public final void b() {
        RecyclerView recyclerView;
        androidx.recyclerview.widget.m adapter;
        int adapterPositionInRecyclerView;
        switch (this.f15893e) {
            case 0:
                androidx.recyclerview.widget.p pVar = (androidx.recyclerview.widget.p) this.f15891c;
                int findRelativeAdapterPositionIn = (pVar.j == null || (recyclerView = pVar.m) == null || (adapter = recyclerView.getAdapter()) == null || (adapterPositionInRecyclerView = pVar.m.getAdapterPositionInRecyclerView(pVar)) == -1) ? -1 : adapter.findRelativeAdapterPositionIn(pVar.j, pVar, adapterPositionInRecyclerView);
                if (findRelativeAdapterPositionIn != -1) {
                    ((ect) this.f15892d).i.s(pVar, findRelativeAdapterPositionIn);
                    break;
                }
                break;
            default:
                cwh cwhVar = (cwh) this.f15892d;
                dgk dgkVar = (dgk) this.f15891c;
                if (!TextUtils.isEmpty(dgkVar.getCopyText())) {
                    fso.ae(cwhVar.al, "", dgkVar.getCopyText(), false);
                }
                if (!TextUtils.isEmpty(dgkVar.getToast())) {
                    gm.d(cwhVar.al, dgkVar.getToast(), 1);
                }
                if (1 == dgkVar.getPathType()) {
                    ctx ctxVar = cwhVar.al;
                    if (awf.n(ctxVar)) {
                        dov.d(ctxVar, dgkVar.getPath(), "", "", "", null);
                        acw.s(cwhVar.al, ffi.e(dgkVar), System.currentTimeMillis());
                        break;
                    }
                }
                fgj e2 = fgj.e();
                ctx ctxVar2 = cwhVar.al;
                e2.h(ctxVar2, ffi.f(ctxVar2, dgkVar), true);
                acw.s(cwhVar.al, ffi.e(dgkVar), System.currentTimeMillis());
        }
    }
}
