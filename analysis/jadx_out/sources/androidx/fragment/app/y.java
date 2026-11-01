package androidx.fragment.app;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import cn.trinea.android.developertools.R;
import g.ac;
import g.anv;
import g.aqe;
import g.azx;
import g.bfp;
import g.bmx;
import g.bni;
import g.bpz;
import g.byd;
import g.cd;
import g.cef;
import g.dkk;
import g.dpa;
import g.ebs;
import g.evw;
import g.fdy;
import g.foa;
import g.fwj;
import g.gdn;
import g.gdq;
import g.gfh;
import g.goi;
import g.gpu;
import g.gtb;
import g.hbv;
import g.hep;
import g.tl;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class y {

    /* renamed from: c, reason: collision with root package name */
    public final ViewGroup f223c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f224d = new ArrayList();

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f225e = new ArrayList();

    /* renamed from: a, reason: collision with root package name */
    public boolean f221a = false;

    /* renamed from: b, reason: collision with root package name */
    public boolean f222b = false;

    public y(ViewGroup viewGroup) {
        this.f223c = viewGroup;
    }

    public static y f(ViewGroup viewGroup, v vVar) {
        return j(viewGroup, vVar.ch());
    }

    public static void g(tl tlVar, Collection collection) {
        Iterator it = ((bni) tlVar.entrySet()).iterator();
        while (true) {
            evw evwVar = (evw) it;
            if (!evwVar.hasNext()) {
                return;
            }
            evwVar.next();
            View view = (View) evwVar.getValue();
            WeakHashMap weakHashMap = goi.f18490c;
            if (!collection.contains(cd.g(view))) {
                evwVar.remove();
            }
        }
    }

    public static void h(tl tlVar, View view) {
        WeakHashMap weakHashMap = goi.f18490c;
        String g2 = cd.g(view);
        if (g2 != null) {
            tlVar.put(g2, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt.getVisibility() == 0) {
                    h(tlVar, childAt);
                }
            }
        }
    }

    public static void i(View view, ArrayList arrayList) {
        if (!(view instanceof ViewGroup)) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(view);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int i = gdq.f17940a;
        if (viewGroup.isTransitionGroup()) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(viewGroup);
            return;
        }
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt.getVisibility() == 0) {
                i(childAt, arrayList);
            }
        }
    }

    public static y j(ViewGroup viewGroup, gpu gpuVar) {
        Object tag = viewGroup.getTag(R.id.special_effects_controller_view_tag);
        if (tag instanceof y) {
            return (y) tag;
        }
        gpuVar.getClass();
        y yVar = new y(viewGroup);
        viewGroup.setTag(R.id.special_effects_controller_view_tag, yVar);
        return yVar;
    }

    public final void k() {
        if (this.f222b) {
            return;
        }
        ViewGroup viewGroup = this.f223c;
        WeakHashMap weakHashMap = goi.f18490c;
        if (!viewGroup.isAttachedToWindow()) {
            q();
            this.f221a = false;
            return;
        }
        synchronized (this.f224d) {
            try {
                if (!this.f224d.isEmpty()) {
                    ArrayList arrayList = new ArrayList(this.f225e);
                    this.f225e.clear();
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        a aVar = (a) it.next();
                        if (v.ao(2)) {
                            Objects.toString(aVar);
                        }
                        aVar.j();
                        if (!aVar.h) {
                            this.f225e.add(aVar);
                        }
                    }
                    l();
                    ArrayList arrayList2 = new ArrayList(this.f224d);
                    this.f224d.clear();
                    this.f225e.addAll(arrayList2);
                    Iterator it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        ((a) it2.next()).i();
                    }
                    p(arrayList2, this.f221a);
                    this.f221a = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void l() {
        Iterator it = this.f224d.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (aVar.f175f == dkk.ADDING) {
                aVar.l(gdn.b(aVar.f176g.requireView().getVisibility()), dkk.NONE);
            }
        }
    }

    public final a m(Fragment fragment) {
        Iterator it = this.f224d.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (aVar.f176g.equals(fragment) && !aVar.f174e) {
                return aVar;
            }
        }
        return null;
    }

    public final void n(gdn gdnVar, dkk dkkVar, x xVar) {
        synchronized (this.f224d) {
            try {
                ac acVar = new ac();
                a m = m(xVar.f220e);
                if (m != null) {
                    m.l(gdnVar, dkkVar);
                    return;
                }
                a aVar = new a(gdnVar, dkkVar, xVar, acVar);
                this.f224d.add(aVar);
                aVar.f171b.add(new g(this, aVar));
                aVar.f171b.add(new gfh(24, this, aVar, false));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void o() {
        synchronized (this.f224d) {
            try {
                l();
                this.f222b = false;
                int size = this.f224d.size() - 1;
                while (true) {
                    if (size < 0) {
                        break;
                    }
                    a aVar = (a) this.f224d.get(size);
                    gdn c2 = gdn.c(aVar.f176g.mView);
                    gdn gdnVar = aVar.f173d;
                    gdn gdnVar2 = gdn.VISIBLE;
                    if (gdnVar == gdnVar2 && c2 != gdnVar2) {
                        this.f222b = aVar.f176g.isPostponed();
                        break;
                    }
                    size--;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:140:0x069e  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0720 A[LOOP:7: B:168:0x071a->B:170:0x0720, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0739  */
    /* JADX WARN: Removed duplicated region for block: B:176:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0600  */
    /* JADX WARN: Type inference failed for: r8v7, types: [g.bcp] */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void p(ArrayList arrayList, boolean z) {
        HashMap hashMap;
        ArrayList arrayList2;
        a aVar;
        a aVar2;
        ?? r8;
        a aVar3;
        int i;
        a aVar4;
        Object obj;
        Object obj2;
        ArrayList arrayList3;
        View view;
        View view2;
        HashMap hashMap2;
        View view3;
        ArrayList arrayList4;
        View view4;
        ArrayList arrayList5;
        boolean z2;
        View view5;
        Iterator it;
        Iterator it2;
        Iterator it3;
        Iterator it4 = arrayList.iterator();
        a aVar5 = null;
        a aVar6 = null;
        while (it4.hasNext()) {
            a aVar7 = (a) it4.next();
            gdn c2 = gdn.c(aVar7.f176g.mView);
            int i2 = foa.f17122a[aVar7.f173d.ordinal()];
            if (i2 == 1 || i2 == 2 || i2 == 3) {
                if (c2 == gdn.VISIBLE && aVar5 == null) {
                    aVar5 = aVar7;
                }
            } else if (i2 == 4 && c2 != gdn.VISIBLE) {
                aVar6 = aVar7;
            }
        }
        if (v.ao(2)) {
            Objects.toString(aVar5);
            Objects.toString(aVar6);
        }
        ArrayList arrayList6 = new ArrayList();
        ArrayList arrayList7 = new ArrayList();
        ArrayList arrayList8 = new ArrayList(arrayList);
        Fragment fragment = ((a) arrayList.get(arrayList.size() - 1)).f176g;
        Iterator it5 = arrayList.iterator();
        while (it5.hasNext()) {
            hep hepVar = ((a) it5.next()).f176g.mAnimationInfo;
            hep hepVar2 = fragment.mAnimationInfo;
            hepVar.n = hepVar2.n;
            hepVar.q = hepVar2.q;
            hepVar.f19351e = hepVar2.f19351e;
            hepVar.f19353g = hepVar2.f19353g;
        }
        Iterator it6 = arrayList.iterator();
        while (true) {
            boolean z3 = false;
            if (!it6.hasNext()) {
                break;
            }
            a aVar8 = (a) it6.next();
            ac acVar = new ac();
            aVar8.i();
            HashSet hashSet = aVar8.f172c;
            hashSet.add(acVar);
            i iVar = new i(aVar8, acVar);
            iVar.f188a = false;
            iVar.f190c = z;
            arrayList6.add(iVar);
            ac acVar2 = new ac();
            aVar8.i();
            hashSet.add(acVar2);
            if (z) {
                if (aVar8 != aVar5) {
                    arrayList7.add(new fwj(aVar8, acVar2, z, z3));
                    aVar8.f171b.add(new g(this, arrayList8, aVar8));
                }
                z3 = true;
                arrayList7.add(new fwj(aVar8, acVar2, z, z3));
                aVar8.f171b.add(new g(this, arrayList8, aVar8));
            } else {
                if (aVar8 != aVar6) {
                    arrayList7.add(new fwj(aVar8, acVar2, z, z3));
                    aVar8.f171b.add(new g(this, arrayList8, aVar8));
                }
                z3 = true;
                arrayList7.add(new fwj(aVar8, acVar2, z, z3));
                aVar8.f171b.add(new g(this, arrayList8, aVar8));
            }
        }
        HashMap hashMap3 = new HashMap();
        Iterator it7 = arrayList7.iterator();
        ebs ebsVar = null;
        while (it7.hasNext()) {
            fwj fwjVar = (fwj) it7.next();
            boolean h = fwjVar.h();
            Fragment fragment2 = fwjVar.f201e.f176g;
            Object obj3 = fwjVar.f17518c;
            if (!h) {
                ebs d2 = fwjVar.d(obj3);
                Object obj4 = fwjVar.f17517b;
                ebs d3 = fwjVar.d(obj4);
                ArrayList arrayList9 = arrayList6;
                if (d2 != null && d3 != null && d2 != d3) {
                    throw new IllegalArgumentException("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + fragment2 + " returned Transition " + obj3 + " which uses a different Transition  type than its shared element transition " + obj4);
                }
                if (d2 == null) {
                    d2 = d3;
                }
                if (ebsVar == null) {
                    ebsVar = d2;
                } else if (d2 != null && ebsVar != d2) {
                    throw new IllegalArgumentException("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + fragment2 + " returned Transition " + obj3 + " which uses a different Transition  type than other Fragments.");
                }
                arrayList6 = arrayList9;
            }
        }
        ArrayList arrayList10 = arrayList6;
        ViewGroup viewGroup = this.f223c;
        if (ebsVar == null) {
            Iterator it8 = arrayList7.iterator();
            while (it8.hasNext()) {
                fwj fwjVar2 = (fwj) it8.next();
                hashMap3.put(fwjVar2.f201e, Boolean.FALSE);
                fwjVar2.g();
            }
            hashMap = hashMap3;
            aVar = aVar6;
            arrayList2 = arrayList8;
        } else {
            View view6 = new View(viewGroup.getContext());
            Rect rect = new Rect();
            ArrayList arrayList11 = new ArrayList();
            ArrayList arrayList12 = new ArrayList();
            tl tlVar = new tl(0);
            Iterator it9 = arrayList7.iterator();
            View view7 = null;
            Object obj5 = null;
            boolean z4 = false;
            while (it9.hasNext()) {
                Iterator it10 = it9;
                Object obj6 = ((fwj) it9.next()).f17517b;
                if (obj6 == null || aVar5 == null) {
                    ArrayList arrayList13 = arrayList12;
                    hashMap2 = hashMap3;
                    view3 = view6;
                    arrayList4 = arrayList13;
                    view4 = view7;
                    arrayList5 = arrayList8;
                    z2 = z4;
                } else {
                    z2 = z4;
                    Fragment fragment3 = aVar5.f176g;
                    if (aVar6 != null) {
                        Fragment fragment4 = aVar6.f176g;
                        Object q = ebsVar.q(ebsVar.h(obj6));
                        View view8 = view7;
                        ArrayList<String> sharedElementSourceNames = fragment4.getSharedElementSourceNames();
                        arrayList5 = arrayList8;
                        ArrayList<String> sharedElementSourceNames2 = fragment3.getSharedElementSourceNames();
                        HashMap hashMap4 = hashMap3;
                        ArrayList<String> sharedElementTargetNames = fragment3.getSharedElementTargetNames();
                        View view9 = view6;
                        Rect rect2 = rect;
                        int i3 = 0;
                        while (i3 < sharedElementTargetNames.size()) {
                            int indexOf = sharedElementSourceNames.indexOf(sharedElementTargetNames.get(i3));
                            ArrayList<String> arrayList14 = sharedElementTargetNames;
                            if (indexOf != -1) {
                                sharedElementSourceNames.set(indexOf, sharedElementSourceNames2.get(i3));
                            }
                            i3++;
                            sharedElementTargetNames = arrayList14;
                        }
                        ArrayList<String> sharedElementTargetNames2 = fragment4.getSharedElementTargetNames();
                        if (z) {
                            fragment3.getEnterTransitionCallback();
                            fragment4.getExitTransitionCallback();
                        } else {
                            fragment3.getExitTransitionCallback();
                            fragment4.getEnterTransitionCallback();
                        }
                        int i4 = 0;
                        for (int size = sharedElementSourceNames.size(); i4 < size; size = size) {
                            tlVar.put(sharedElementSourceNames.get(i4), sharedElementTargetNames2.get(i4));
                            i4++;
                        }
                        if (v.ao(2)) {
                            Iterator<String> it11 = sharedElementTargetNames2.iterator();
                            while (it11.hasNext()) {
                                it11.next();
                            }
                            Iterator<String> it12 = sharedElementSourceNames.iterator();
                            while (it12.hasNext()) {
                                it12.next();
                            }
                        }
                        tl tlVar2 = new tl(0);
                        h(tlVar2, fragment3.mView);
                        tlVar2.e(sharedElementSourceNames);
                        tlVar.e(tlVar2.keySet());
                        tl tlVar3 = new tl(0);
                        h(tlVar3, fragment4.mView);
                        tlVar3.e(sharedElementTargetNames2);
                        tlVar3.e(tlVar.values());
                        aqe aqeVar = hbv.f19202a;
                        int i5 = tlVar.f11294g - 1;
                        while (i5 >= 0) {
                            Fragment fragment5 = fragment4;
                            if (!tlVar3.containsKey((String) tlVar.o(i5))) {
                                tlVar.r(i5);
                            }
                            i5--;
                            fragment4 = fragment5;
                        }
                        Fragment fragment6 = fragment4;
                        g(tlVar2, tlVar.keySet());
                        g(tlVar3, tlVar.values());
                        if (tlVar.isEmpty()) {
                            arrayList11.clear();
                            arrayList12.clear();
                            arrayList4 = arrayList12;
                            z4 = z2;
                            view7 = view8;
                            hashMap2 = hashMap4;
                            view3 = view9;
                            rect = rect2;
                            obj5 = null;
                        } else {
                            if (z) {
                                fragment3.getEnterTransitionCallback();
                            } else {
                                fragment6.getEnterTransitionCallback();
                            }
                            azx.d(viewGroup, new cef(aVar6, aVar5, z, tlVar3));
                            arrayList11.addAll(tlVar2.values());
                            if (sharedElementSourceNames.isEmpty()) {
                                view7 = view8;
                            } else {
                                view7 = (View) tlVar2.get(sharedElementSourceNames.get(0));
                                ebsVar.j(view7, q);
                            }
                            arrayList12.addAll(tlVar3.values());
                            if (sharedElementTargetNames2.isEmpty() || (view5 = (View) tlVar3.get(sharedElementTargetNames2.get(0))) == null) {
                                rect = rect2;
                                z4 = z2;
                            } else {
                                rect = rect2;
                                azx.d(viewGroup, new gfh(ebsVar, view5, rect));
                                z4 = true;
                            }
                            view3 = view9;
                            ebsVar.i(q, view3, arrayList11);
                            ArrayList arrayList15 = arrayList12;
                            ebsVar.e(q, null, null, q, arrayList15);
                            arrayList4 = arrayList15;
                            Boolean bool = Boolean.TRUE;
                            hashMap2 = hashMap4;
                            hashMap2.put(aVar5, bool);
                            hashMap2.put(aVar6, bool);
                            obj5 = q;
                        }
                        ArrayList arrayList16 = arrayList4;
                        view6 = view3;
                        hashMap3 = hashMap2;
                        arrayList12 = arrayList16;
                        it9 = it10;
                        arrayList8 = arrayList5;
                    } else {
                        ArrayList arrayList17 = arrayList12;
                        hashMap2 = hashMap3;
                        view3 = view6;
                        arrayList4 = arrayList17;
                        view4 = view7;
                        arrayList5 = arrayList8;
                    }
                }
                z4 = z2;
                view7 = view4;
                ArrayList arrayList162 = arrayList4;
                view6 = view3;
                hashMap3 = hashMap2;
                arrayList12 = arrayList162;
                it9 = it10;
                arrayList8 = arrayList5;
            }
            ArrayList arrayList18 = arrayList12;
            hashMap = hashMap3;
            View view10 = view6;
            View view11 = view7;
            arrayList2 = arrayList8;
            boolean z5 = z4;
            ArrayList arrayList19 = new ArrayList();
            Iterator it13 = arrayList7.iterator();
            Object obj7 = null;
            Object obj8 = null;
            while (it13.hasNext()) {
                fwj fwjVar3 = (fwj) it13.next();
                boolean h2 = fwjVar3.h();
                Iterator it14 = it13;
                a aVar9 = fwjVar3.f201e;
                if (h2) {
                    hashMap.put(aVar9, Boolean.FALSE);
                    fwjVar3.g();
                    it13 = it14;
                    tlVar = tlVar;
                } else {
                    tl tlVar4 = tlVar;
                    Object h3 = ebsVar.h(fwjVar3.f17518c);
                    boolean z6 = obj5 != null && (aVar9 == aVar5 || aVar9 == aVar6);
                    if (h3 == null) {
                        if (!z6) {
                            hashMap.put(aVar9, Boolean.FALSE);
                            fwjVar3.g();
                        }
                        view = view10;
                        aVar4 = aVar6;
                        obj = obj5;
                        view2 = view11;
                    } else {
                        aVar4 = aVar6;
                        ArrayList arrayList20 = new ArrayList();
                        obj = obj5;
                        Fragment fragment7 = aVar9.f176g;
                        Object obj9 = obj8;
                        i(fragment7.mView, arrayList20);
                        if (z6) {
                            if (aVar9 == aVar5) {
                                arrayList20.removeAll(arrayList11);
                            } else {
                                arrayList20.removeAll(arrayList18);
                            }
                        }
                        if (arrayList20.isEmpty()) {
                            ebsVar.g(view10, h3);
                            arrayList3 = arrayList20;
                            obj2 = h3;
                            view = view10;
                        } else {
                            ebsVar.l(h3, arrayList20);
                            ebsVar.e(h3, h3, arrayList20, null, null);
                            obj2 = h3;
                            arrayList3 = arrayList20;
                            view = view10;
                            if (aVar9.f173d == gdn.GONE) {
                                arrayList2.remove(aVar9);
                                ArrayList arrayList21 = new ArrayList(arrayList3);
                                arrayList21.remove(fragment7.mView);
                                ebsVar.b(obj2, fragment7.mView, arrayList21);
                                azx.d(viewGroup, new byd(5, arrayList3));
                            }
                        }
                        if (aVar9.f173d == gdn.VISIBLE) {
                            arrayList19.addAll(arrayList3);
                            if (z5) {
                                ebsVar.d(obj2, rect);
                            }
                            view2 = view11;
                        } else {
                            view2 = view11;
                            ebsVar.j(view2, obj2);
                        }
                        hashMap.put(aVar9, Boolean.TRUE);
                        if (fwjVar3.f17516a) {
                            obj7 = ebsVar.m(obj7, obj2);
                            obj8 = obj9;
                        } else {
                            obj8 = ebsVar.m(obj9, obj2);
                        }
                    }
                    it13 = it14;
                    view11 = view2;
                    view10 = view;
                    tlVar = tlVar4;
                    aVar6 = aVar4;
                    obj5 = obj;
                }
            }
            a aVar10 = aVar6;
            tl tlVar5 = tlVar;
            Object k = ebsVar.k(obj7, obj8, obj5);
            if (k == null) {
                aVar = aVar10;
            } else {
                Iterator it15 = arrayList7.iterator();
                while (it15.hasNext()) {
                    fwj fwjVar4 = (fwj) it15.next();
                    boolean h4 = fwjVar4.h();
                    a aVar11 = fwjVar4.f201e;
                    if (!h4) {
                        Object obj10 = fwjVar4.f17518c;
                        a aVar12 = aVar10;
                        boolean z7 = obj5 != null && (aVar11 == aVar5 || aVar11 == aVar12);
                        if (obj10 != null || z7) {
                            WeakHashMap weakHashMap = goi.f18490c;
                            if (viewGroup.isLaidOut()) {
                                ebsVar.c(k, fwjVar4.f202f, new gfh(fwjVar4, 14, aVar11));
                            } else {
                                if (v.ao(2)) {
                                    Objects.toString(viewGroup);
                                    Objects.toString(aVar11);
                                }
                                fwjVar4.g();
                            }
                        }
                        aVar10 = aVar12;
                    }
                }
                aVar = aVar10;
                WeakHashMap weakHashMap2 = goi.f18490c;
                if (viewGroup.isLaidOut()) {
                    hbv.c(4, arrayList19);
                    ArrayList arrayList22 = new ArrayList();
                    int size2 = arrayList18.size();
                    for (int i6 = 0; i6 < size2; i6++) {
                        View view12 = (View) arrayList18.get(i6);
                        WeakHashMap weakHashMap3 = goi.f18490c;
                        arrayList22.add(cd.g(view12));
                        cd.d(view12, null);
                    }
                    if (v.ao(2)) {
                        Iterator it16 = arrayList11.iterator();
                        while (it16.hasNext()) {
                            View view13 = (View) it16.next();
                            Objects.toString(view13);
                            cd.g(view13);
                        }
                        Iterator it17 = arrayList18.iterator();
                        while (it17.hasNext()) {
                            View view14 = (View) it17.next();
                            Objects.toString(view14);
                            cd.g(view14);
                        }
                    }
                    ebsVar.p(viewGroup, k);
                    int size3 = arrayList18.size();
                    ArrayList arrayList23 = new ArrayList();
                    int i7 = 0;
                    while (i7 < size3) {
                        View view15 = (View) arrayList11.get(i7);
                        WeakHashMap weakHashMap4 = goi.f18490c;
                        String g2 = cd.g(view15);
                        arrayList23.add(g2);
                        if (g2 == null) {
                            i = size3;
                            aVar3 = aVar5;
                            r8 = tlVar5;
                        } else {
                            cd.d(view15, null);
                            r8 = tlVar5;
                            String str = (String) r8.get(g2);
                            aVar3 = aVar5;
                            int i8 = 0;
                            while (true) {
                                i = size3;
                                if (i8 >= size3) {
                                    break;
                                }
                                if (str.equals(arrayList22.get(i8))) {
                                    cd.d((View) arrayList18.get(i8), g2);
                                    break;
                                } else {
                                    i8++;
                                    size3 = i;
                                }
                            }
                        }
                        i7++;
                        tlVar5 = r8;
                        size3 = i;
                        aVar5 = aVar3;
                    }
                    aVar2 = aVar5;
                    azx.d(viewGroup, new anv(size3, arrayList18, arrayList22, arrayList11, arrayList23));
                    hbv.c(0, arrayList19);
                    ebsVar.n(obj5, arrayList11, arrayList18);
                    boolean containsValue = hashMap.containsValue(Boolean.TRUE);
                    Context context = viewGroup.getContext();
                    ArrayList arrayList24 = new ArrayList();
                    it = arrayList10.iterator();
                    boolean z8 = false;
                    while (it.hasNext()) {
                        i iVar2 = (i) it.next();
                        if (iVar2.h()) {
                            iVar2.g();
                        } else {
                            gtb d4 = iVar2.d(context);
                            if (d4 == null) {
                                iVar2.g();
                            } else {
                                Animator animator = (Animator) d4.f18712b;
                                if (animator == null) {
                                    arrayList24.add(iVar2);
                                } else {
                                    a aVar13 = iVar2.f201e;
                                    Fragment fragment8 = aVar13.f176g;
                                    if (Boolean.TRUE.equals(hashMap.get(aVar13))) {
                                        if (v.ao(2)) {
                                            Objects.toString(fragment8);
                                        }
                                        iVar2.g();
                                    } else {
                                        boolean z9 = aVar13.f173d == gdn.GONE;
                                        ArrayList arrayList25 = arrayList2;
                                        if (z9) {
                                            arrayList25.remove(aVar13);
                                        }
                                        View view16 = fragment8.mView;
                                        viewGroup.startViewTransition(view16);
                                        ViewGroup viewGroup2 = viewGroup;
                                        animator.addListener(new bpz(viewGroup2, view16, z9, aVar13, iVar2));
                                        animator.setTarget(view16);
                                        animator.start();
                                        if (v.ao(2)) {
                                            aVar13.toString();
                                        }
                                        iVar2.f202f.d(new fdy(animator, 8, aVar13));
                                        arrayList2 = arrayList25;
                                        viewGroup = viewGroup2;
                                        z8 = true;
                                    }
                                }
                            }
                        }
                    }
                    ViewGroup viewGroup3 = viewGroup;
                    ArrayList arrayList26 = arrayList2;
                    it2 = arrayList24.iterator();
                    while (it2.hasNext()) {
                        i iVar3 = (i) it2.next();
                        a aVar14 = iVar3.f201e;
                        Fragment fragment9 = aVar14.f176g;
                        if (containsValue) {
                            if (v.ao(2)) {
                                Objects.toString(fragment9);
                            }
                            iVar3.g();
                        } else if (z8) {
                            if (v.ao(2)) {
                                Objects.toString(fragment9);
                            }
                            iVar3.g();
                        } else {
                            View view17 = fragment9.mView;
                            gtb d5 = iVar3.d(context);
                            d5.getClass();
                            Animation animation = (Animation) d5.f18714d;
                            animation.getClass();
                            if (aVar14.f173d != gdn.REMOVED) {
                                view17.startAnimation(animation);
                                iVar3.g();
                            } else {
                                viewGroup3.startViewTransition(view17);
                                bmx bmxVar = new bmx(animation, viewGroup3, view17);
                                bmxVar.setAnimationListener(new bfp(aVar14, viewGroup3, view17, iVar3));
                                view17.startAnimation(bmxVar);
                                if (v.ao(2)) {
                                    aVar14.toString();
                                }
                            }
                            iVar3.f202f.d(new dpa(view17, viewGroup3, iVar3, aVar14, 2));
                        }
                    }
                    it3 = arrayList26.iterator();
                    while (it3.hasNext()) {
                        a aVar15 = (a) it3.next();
                        aVar15.f173d.d(aVar15.f176g.mView);
                    }
                    arrayList26.clear();
                    if (v.ao(2)) {
                        return;
                    }
                    Objects.toString(aVar2);
                    Objects.toString(aVar);
                    return;
                }
            }
        }
        aVar2 = aVar5;
        boolean containsValue2 = hashMap.containsValue(Boolean.TRUE);
        Context context2 = viewGroup.getContext();
        ArrayList arrayList242 = new ArrayList();
        it = arrayList10.iterator();
        boolean z82 = false;
        while (it.hasNext()) {
        }
        ViewGroup viewGroup32 = viewGroup;
        ArrayList arrayList262 = arrayList2;
        it2 = arrayList242.iterator();
        while (it2.hasNext()) {
        }
        it3 = arrayList262.iterator();
        while (it3.hasNext()) {
        }
        arrayList262.clear();
        if (v.ao(2)) {
        }
    }

    public final void q() {
        ViewGroup viewGroup = this.f223c;
        WeakHashMap weakHashMap = goi.f18490c;
        boolean isAttachedToWindow = viewGroup.isAttachedToWindow();
        synchronized (this.f224d) {
            try {
                l();
                Iterator it = this.f224d.iterator();
                while (it.hasNext()) {
                    ((a) it.next()).i();
                }
                Iterator it2 = new ArrayList(this.f225e).iterator();
                while (it2.hasNext()) {
                    a aVar = (a) it2.next();
                    if (v.ao(2)) {
                        if (!isAttachedToWindow) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("Container ");
                            sb.append(this.f223c);
                            sb.append(" is not attached to window. ");
                        }
                        Objects.toString(aVar);
                    }
                    aVar.j();
                }
                Iterator it3 = new ArrayList(this.f224d).iterator();
                while (it3.hasNext()) {
                    a aVar2 = (a) it3.next();
                    if (v.ao(2)) {
                        if (!isAttachedToWindow) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("Container ");
                            sb2.append(this.f223c);
                            sb2.append(" is not attached to window. ");
                        }
                        Objects.toString(aVar2);
                    }
                    aVar2.j();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
