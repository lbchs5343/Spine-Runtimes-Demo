package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewPropertyAnimator;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.cmp;
import g.dgn;
import g.dto;
import g.gbk;
import g.goi;
import g.gub;
import g.guh;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class s implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f319a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f320b;

    public /* synthetic */ s(RecyclerView recyclerView, int i) {
        this.f319a = i;
        this.f320b = recyclerView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        int i = this.f319a;
        RecyclerView recyclerView = this.f320b;
        switch (i) {
            case 0:
                if (recyclerView.mFirstLayoutComplete && !recyclerView.isLayoutRequested()) {
                    if (!recyclerView.mIsAttached) {
                        recyclerView.requestLayout();
                        break;
                    } else if (!recyclerView.mLayoutSuppressed) {
                        recyclerView.consumePendingUpdateOperations();
                        break;
                    } else {
                        recyclerView.mLayoutWasDefered = true;
                        break;
                    }
                }
                break;
            default:
                dgn dgnVar = recyclerView.mItemAnimator;
                if (dgnVar != null) {
                    guh guhVar = (guh) dgnVar;
                    long j = guhVar.f14139a;
                    ArrayList arrayList = guhVar.n;
                    boolean isEmpty = arrayList.isEmpty();
                    ArrayList arrayList2 = guhVar.v;
                    boolean isEmpty2 = arrayList2.isEmpty();
                    ArrayList arrayList3 = guhVar.o;
                    boolean isEmpty3 = arrayList3.isEmpty();
                    ArrayList arrayList4 = guhVar.u;
                    boolean isEmpty4 = arrayList4.isEmpty();
                    if (!isEmpty || !isEmpty2 || !isEmpty4 || !isEmpty3) {
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            p pVar = (p) it.next();
                            View view = pVar.n;
                            ViewPropertyAnimator animate = view.animate();
                            guhVar.w.add(pVar);
                            animate.setDuration(j).alpha(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT).setListener(new gub(guhVar, pVar, animate, view)).start();
                            arrayList = arrayList;
                            isEmpty = isEmpty;
                        }
                        boolean z2 = isEmpty;
                        arrayList.clear();
                        if (!isEmpty2) {
                            ArrayList arrayList5 = new ArrayList();
                            arrayList5.addAll(arrayList2);
                            guhVar.t.add(arrayList5);
                            arrayList2.clear();
                            cmp cmpVar = new cmp(guhVar, arrayList5, 0);
                            if (z2) {
                                cmpVar.run();
                            } else {
                                View view2 = ((dto) arrayList5.get(0)).f14787c.n;
                                WeakHashMap weakHashMap = goi.f18490c;
                                view2.postOnAnimationDelayed(cmpVar, j);
                            }
                        }
                        if (!isEmpty3) {
                            ArrayList arrayList6 = new ArrayList();
                            arrayList6.addAll(arrayList3);
                            guhVar.q.add(arrayList6);
                            arrayList3.clear();
                            cmp cmpVar2 = new cmp(guhVar, arrayList6, 1);
                            if (z2) {
                                cmpVar2.run();
                            } else {
                                View view3 = ((gbk) arrayList6.get(0)).f17865c.n;
                                WeakHashMap weakHashMap2 = goi.f18490c;
                                view3.postOnAnimationDelayed(cmpVar2, j);
                            }
                        }
                        if (!isEmpty4) {
                            ArrayList arrayList7 = new ArrayList();
                            arrayList7.addAll(arrayList4);
                            guhVar.r.add(arrayList7);
                            arrayList4.clear();
                            cmp cmpVar3 = new cmp(guhVar, arrayList7, 2);
                            if (!z2 || !isEmpty2 || !isEmpty3) {
                                if (z2) {
                                    j = 0;
                                }
                                long max = Math.max(!isEmpty2 ? guhVar.f14140b : 0L, isEmpty3 ? 0L : guhVar.f14142d) + j;
                                z = false;
                                View view4 = ((p) arrayList7.get(0)).n;
                                WeakHashMap weakHashMap3 = goi.f18490c;
                                view4.postOnAnimationDelayed(cmpVar3, max);
                                recyclerView.mPostedAnimatorRunner = z;
                                break;
                            } else {
                                cmpVar3.run();
                            }
                        }
                    }
                }
                z = false;
                recyclerView.mPostedAnimatorRunner = z;
        }
    }
}
