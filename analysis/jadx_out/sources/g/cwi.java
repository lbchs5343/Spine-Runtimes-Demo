package g;

import android.animation.Animator;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowId;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class cwi implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public fqk f13628a;

    /* renamed from: b, reason: collision with root package name */
    public ViewGroup f13629b;

    /* JADX WARN: Removed duplicated region for block: B:116:0x01ef A[EDGE_INSN: B:116:0x01ef->B:117:0x01ef BREAK  A[LOOP:1: B:17:0x0087->B:29:0x01e7], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0245  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008c  */
    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onPreDraw() {
        ArrayList arrayList;
        tl tlVar;
        tl tlVar2;
        int i;
        int[] iArr;
        int i2;
        int i3;
        int i4;
        glx glxVar;
        ViewGroup viewGroup;
        fuz fuzVar;
        View view;
        View view2;
        ViewGroup viewGroup2;
        fqk fqkVar = this.f13628a;
        ViewGroup viewGroup3 = this.f13629b;
        viewGroup3.getViewTreeObserver().removeOnPreDrawListener(this);
        viewGroup3.removeOnAttachStateChangeListener(this);
        ArrayList arrayList2 = atq.f10823c;
        ViewGroup viewGroup4 = this.f13629b;
        int i5 = 1;
        if (!arrayList2.remove(viewGroup4)) {
            return true;
        }
        tl e2 = atq.e();
        ArrayList arrayList3 = (ArrayList) e2.get(viewGroup4);
        if (arrayList3 == null) {
            arrayList3 = new ArrayList();
            e2.put(viewGroup4, arrayList3);
        } else if (arrayList3.size() > 0) {
            arrayList = new ArrayList(arrayList3);
            arrayList3.add(fqkVar);
            fqkVar.bi(new bhn(this, e2));
            fqkVar.bh(viewGroup4, false);
            if (arrayList != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((fqk) it.next()).l(viewGroup4);
                }
            }
            fqkVar.ao = new ArrayList();
            fqkVar.an = new ArrayList();
            dpa dpaVar = fqkVar.ai;
            dpa dpaVar2 = fqkVar.af;
            tlVar = new tl((tl) dpaVar.f14569g);
            tlVar2 = new tl((tl) dpaVar2.f14569g);
            i = 0;
            while (true) {
                iArr = fqkVar.al;
                if (i < iArr.length) {
                    break;
                }
                int i6 = iArr[i];
                if (i6 == i5) {
                    viewGroup = viewGroup4;
                    for (int i7 = tlVar.f11294g - 1; i7 >= 0; i7--) {
                        View view3 = (View) tlVar.n(i7);
                        if (view3 != null && fqkVar.bn(view3) && (fuzVar = (fuz) tlVar2.remove(view3)) != null && fqkVar.bn(fuzVar.f17461b)) {
                            fqkVar.ao.add((fuz) tlVar.r(i7));
                            fqkVar.an.add(fuzVar);
                        }
                    }
                } else if (i6 == 2) {
                    viewGroup = viewGroup4;
                    tl tlVar3 = (tl) dpaVar.f14565c;
                    tl tlVar4 = (tl) dpaVar2.f14565c;
                    int i8 = tlVar3.f11294g;
                    for (int i9 = 0; i9 < i8; i9++) {
                        View view4 = (View) tlVar3.o(i9);
                        if (view4 != null && fqkVar.bn(view4) && (view = (View) tlVar4.get(tlVar3.n(i9))) != null && fqkVar.bn(view)) {
                            fuz fuzVar2 = (fuz) tlVar.get(view4);
                            fuz fuzVar3 = (fuz) tlVar2.get(view);
                            if (fuzVar2 != null && fuzVar3 != null) {
                                fqkVar.ao.add(fuzVar2);
                                fqkVar.an.add(fuzVar3);
                                tlVar.remove(view4);
                                tlVar2.remove(view);
                            }
                        }
                    }
                } else if (i6 != 3) {
                    if (i6 == 4) {
                        asv asvVar = (asv) dpaVar.f14567e;
                        asv asvVar2 = (asv) dpaVar2.f14567e;
                        int f2 = asvVar.f();
                        int i10 = 0;
                        while (i10 < f2) {
                            View view5 = (View) asvVar.j(i10);
                            if (view5 == null || !fqkVar.bn(view5)) {
                                viewGroup2 = viewGroup4;
                            } else {
                                viewGroup2 = viewGroup4;
                                View view6 = (View) asvVar2.i(asvVar.k(i10));
                                if (view6 != null && fqkVar.bn(view6)) {
                                    fuz fuzVar4 = (fuz) tlVar.get(view5);
                                    fuz fuzVar5 = (fuz) tlVar2.get(view6);
                                    if (fuzVar4 != null && fuzVar5 != null) {
                                        fqkVar.ao.add(fuzVar4);
                                        fqkVar.an.add(fuzVar5);
                                        tlVar.remove(view5);
                                        tlVar2.remove(view6);
                                    }
                                    i10++;
                                    viewGroup4 = viewGroup2;
                                }
                            }
                            i10++;
                            viewGroup4 = viewGroup2;
                        }
                    }
                    viewGroup = viewGroup4;
                } else {
                    viewGroup = viewGroup4;
                    SparseArray sparseArray = (SparseArray) dpaVar.f14566d;
                    SparseArray sparseArray2 = (SparseArray) dpaVar2.f14566d;
                    int size = sparseArray.size();
                    for (int i11 = 0; i11 < size; i11++) {
                        View view7 = (View) sparseArray.valueAt(i11);
                        if (view7 != null && fqkVar.bn(view7) && (view2 = (View) sparseArray2.get(sparseArray.keyAt(i11))) != null && fqkVar.bn(view2)) {
                            fuz fuzVar6 = (fuz) tlVar.get(view7);
                            fuz fuzVar7 = (fuz) tlVar2.get(view2);
                            if (fuzVar6 != null && fuzVar7 != null) {
                                fqkVar.ao.add(fuzVar6);
                                fqkVar.an.add(fuzVar7);
                                tlVar.remove(view7);
                                tlVar2.remove(view2);
                            }
                        }
                    }
                }
                i++;
                viewGroup4 = viewGroup;
                i5 = 1;
            }
            ViewGroup viewGroup5 = viewGroup4;
            for (i2 = 0; i2 < tlVar.f11294g; i2++) {
                fuz fuzVar8 = (fuz) tlVar.o(i2);
                if (fqkVar.bn(fuzVar8.f17461b)) {
                    fqkVar.ao.add(fuzVar8);
                    fqkVar.an.add(null);
                }
            }
            for (i3 = 0; i3 < tlVar2.f11294g; i3++) {
                fuz fuzVar9 = (fuz) tlVar2.o(i3);
                if (fqkVar.bn(fuzVar9.f17461b)) {
                    fqkVar.an.add(fuzVar9);
                    fqkVar.ao.add(null);
                }
            }
            tl be = fqk.be();
            int i12 = be.f11294g;
            WindowId windowId = viewGroup5.getWindowId();
            for (i4 = i12 - 1; i4 >= 0; i4--) {
                Animator animator = (Animator) be.n(i4);
                if (animator != null && (glxVar = (glx) be.get(animator)) != null) {
                    fqk fqkVar2 = glxVar.f18377b;
                    View view8 = glxVar.f18378c;
                    if (view8 != null && windowId.equals(glxVar.f18376a)) {
                        fuz fuzVar10 = glxVar.f18381f;
                        fuz bj = fqkVar.bj(view8, true);
                        fuz bp = fqkVar.bp(view8, true);
                        if (bj == null && bp == null) {
                            bp = (fuz) ((tl) fqkVar.af.f14569g).get(view8);
                        }
                        if ((bj != null || bp != null) && fqkVar2.z(fuzVar10, bp)) {
                            fqkVar2.bk().getClass();
                            if (animator.isRunning() || animator.isStarted()) {
                                animator.cancel();
                            } else {
                                be.remove(animator);
                            }
                        }
                    }
                }
            }
            fqkVar.r(viewGroup5, fqkVar.ai, fqkVar.af, fqkVar.ao, fqkVar.an);
            fqkVar.x();
            return true;
        }
        arrayList = null;
        arrayList3.add(fqkVar);
        fqkVar.bi(new bhn(this, e2));
        fqkVar.bh(viewGroup4, false);
        if (arrayList != null) {
        }
        fqkVar.ao = new ArrayList();
        fqkVar.an = new ArrayList();
        dpa dpaVar3 = fqkVar.ai;
        dpa dpaVar22 = fqkVar.af;
        tlVar = new tl((tl) dpaVar3.f14569g);
        tlVar2 = new tl((tl) dpaVar22.f14569g);
        i = 0;
        while (true) {
            iArr = fqkVar.al;
            if (i < iArr.length) {
            }
            i++;
            viewGroup4 = viewGroup;
            i5 = 1;
        }
        ViewGroup viewGroup52 = viewGroup4;
        while (i2 < tlVar.f11294g) {
        }
        while (i3 < tlVar2.f11294g) {
        }
        tl be2 = fqk.be();
        int i122 = be2.f11294g;
        WindowId windowId2 = viewGroup52.getWindowId();
        while (i4 >= 0) {
        }
        fqkVar.r(viewGroup52, fqkVar.ai, fqkVar.af, fqkVar.ao, fqkVar.an);
        fqkVar.x();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        ViewGroup viewGroup = this.f13629b;
        viewGroup.getViewTreeObserver().removeOnPreDrawListener(this);
        viewGroup.removeOnAttachStateChangeListener(this);
        ArrayList arrayList = atq.f10823c;
        ViewGroup viewGroup2 = this.f13629b;
        arrayList.remove(viewGroup2);
        ArrayList arrayList2 = (ArrayList) atq.e().get(viewGroup2);
        if (arrayList2 != null && arrayList2.size() > 0) {
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                ((fqk) it.next()).l(viewGroup2);
            }
        }
        this.f13628a.bl(true);
    }
}
