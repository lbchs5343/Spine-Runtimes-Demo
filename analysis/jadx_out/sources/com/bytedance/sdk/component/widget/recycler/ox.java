package com.bytedance.sdk.component.widget.recycler;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import com.bytedance.sdk.component.widget.recycler.RecyclerView;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.awf;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class ox extends no {
    private static TimeInterpolator kk;
    private ArrayList<RecyclerView.k> o = new ArrayList<>();
    private ArrayList<RecyclerView.k> no = new ArrayList<>();
    private ArrayList<d> ig = new ArrayList<>();
    private ArrayList<dq> mp = new ArrayList<>();
    ArrayList<ArrayList<RecyclerView.k>> dq = new ArrayList<>();

    /* renamed from: d, reason: collision with root package name */
    ArrayList<ArrayList<d>> f2279d = new ArrayList<>();
    ArrayList<ArrayList<dq>> ox = new ArrayList<>();
    ArrayList<RecyclerView.k> p = new ArrayList<>();
    ArrayList<RecyclerView.k> s = new ArrayList<>();
    ArrayList<RecyclerView.k> iw = new ArrayList<>();
    ArrayList<RecyclerView.k> mn = new ArrayList<>();

    public static class d {

        /* renamed from: d, reason: collision with root package name */
        public int f2288d;
        public RecyclerView.k dq;
        public int ox;
        public int p;
        public int s;

        public d(RecyclerView.k kVar, int i, int i2, int i3, int i4) {
            this.dq = kVar;
            this.f2288d = i;
            this.ox = i2;
            this.p = i3;
            this.s = i4;
        }
    }

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        public RecyclerView.k f2289d;
        public RecyclerView.k dq;
        public int iw;
        public int ox;
        public int p;
        public int s;

        private dq(RecyclerView.k kVar, RecyclerView.k kVar2) {
            this.dq = kVar;
            this.f2289d = kVar2;
        }

        public dq(RecyclerView.k kVar, RecyclerView.k kVar2, int i, int i2, int i3, int i4) {
            this(kVar, kVar2);
            this.ox = i;
            this.p = i2;
            this.s = i3;
            this.iw = i4;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("ChangeInfo{oldHolder=");
            sb.append(this.dq);
            sb.append(", newHolder=");
            sb.append(this.f2289d);
            sb.append(", fromX=");
            sb.append(this.ox);
            sb.append(", fromY=");
            sb.append(this.p);
            sb.append(", toX=");
            sb.append(this.s);
            sb.append(", toY=");
            return awf.s(sb, this.iw, '}');
        }
    }

    private void d(dq dqVar) {
        RecyclerView.k kVar = dqVar.dq;
        if (kVar != null) {
            dq(dqVar, kVar);
        }
        RecyclerView.k kVar2 = dqVar.f2289d;
        if (kVar2 != null) {
            dq(dqVar, kVar2);
        }
    }

    private void dq(List<dq> list, RecyclerView.k kVar) {
        for (int size = list.size() - 1; size >= 0; size--) {
            dq dqVar = list.get(size);
            if (dq(dqVar, kVar) && dqVar.dq == null && dqVar.f2289d == null) {
                list.remove(dqVar);
            }
        }
    }

    private boolean dq(dq dqVar, RecyclerView.k kVar) {
        boolean z = false;
        if (dqVar.f2289d == kVar) {
            dqVar.f2289d = null;
        } else {
            if (dqVar.dq != kVar) {
                return false;
            }
            dqVar.dq = null;
            z = true;
        }
        kVar.p.setAlpha(1.0f);
        kVar.p.setTranslationX(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        kVar.p.setTranslationY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        dq(kVar, z);
        return true;
    }

    private void ig(RecyclerView.k kVar) {
        if (kk == null) {
            kk = new ValueAnimator().getInterpolator();
        }
        kVar.p.animate().setInterpolator(kk);
        p(kVar);
    }

    private void no(final RecyclerView.k kVar) {
        final View view = kVar.p;
        final ViewPropertyAnimator animate = view.animate();
        this.iw.add(kVar);
        animate.setDuration(mn()).alpha(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT).setListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.component.widget.recycler.ox.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                animate.setListener(null);
                view.setAlpha(1.0f);
                ox.this.ia(kVar);
                ox.this.iw.remove(kVar);
                ox.this.ox();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        }).start();
    }

    public void d(final RecyclerView.k kVar, int i, int i2, int i3, int i4) {
        final View view = kVar.p;
        final int i5 = i3 - i;
        final int i6 = i4 - i2;
        if (i5 != 0) {
            view.animate().translationX(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        }
        if (i6 != 0) {
            view.animate().translationY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        }
        final ViewPropertyAnimator animate = view.animate();
        this.s.add(kVar);
        animate.setDuration(s()).setListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.component.widget.recycler.ox.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (i5 != 0) {
                    view.setTranslationX(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                }
                if (i6 != 0) {
                    view.setTranslationY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                animate.setListener(null);
                ox.this.kk(kVar);
                ox.this.s.remove(kVar);
                ox.this.ox();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        }).start();
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.iw
    public boolean d() {
        return (this.no.isEmpty() && this.mp.isEmpty() && this.ig.isEmpty() && this.o.isEmpty() && this.s.isEmpty() && this.iw.isEmpty() && this.p.isEmpty() && this.mn.isEmpty() && this.f2279d.isEmpty() && this.dq.isEmpty() && this.ox.isEmpty()) ? false : true;
    }

    @Override // com.bytedance.sdk.component.widget.recycler.no
    public boolean d(RecyclerView.k kVar) {
        ig(kVar);
        kVar.p.setAlpha(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        this.no.add(kVar);
        return true;
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.iw
    public void dq() {
        boolean isEmpty = this.o.isEmpty();
        boolean isEmpty2 = this.ig.isEmpty();
        boolean isEmpty3 = this.mp.isEmpty();
        boolean isEmpty4 = this.no.isEmpty();
        if (isEmpty && isEmpty2 && isEmpty4 && isEmpty3) {
            return;
        }
        Iterator<RecyclerView.k> it = this.o.iterator();
        while (it.hasNext()) {
            no(it.next());
        }
        this.o.clear();
        if (!isEmpty2) {
            final ArrayList<d> arrayList = new ArrayList<>();
            arrayList.addAll(this.ig);
            this.f2279d.add(arrayList);
            this.ig.clear();
            Runnable runnable = new Runnable() { // from class: com.bytedance.sdk.component.widget.recycler.ox.1
                @Override // java.lang.Runnable
                public void run() {
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        d dVar = (d) it2.next();
                        ox.this.d(dVar.dq, dVar.f2288d, dVar.ox, dVar.p, dVar.s);
                    }
                    arrayList.clear();
                    ox.this.f2279d.remove(arrayList);
                }
            };
            if (isEmpty) {
                runnable.run();
            } else {
                com.bytedance.sdk.component.widget.recycler.dq.ox.mn.dq(arrayList.get(0).dq.p, runnable, mn());
            }
        }
        if (!isEmpty3) {
            final ArrayList<dq> arrayList2 = new ArrayList<>();
            arrayList2.addAll(this.mp);
            this.ox.add(arrayList2);
            this.mp.clear();
            Runnable runnable2 = new Runnable() { // from class: com.bytedance.sdk.component.widget.recycler.ox.2
                @Override // java.lang.Runnable
                public void run() {
                    Iterator it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        ox.this.dq((dq) it2.next());
                    }
                    arrayList2.clear();
                    ox.this.ox.remove(arrayList2);
                }
            };
            if (isEmpty) {
                runnable2.run();
            } else {
                com.bytedance.sdk.component.widget.recycler.dq.ox.mn.dq(arrayList2.get(0).dq.p, runnable2, mn());
            }
        }
        if (isEmpty4) {
            return;
        }
        final ArrayList<RecyclerView.k> arrayList3 = new ArrayList<>();
        arrayList3.addAll(this.no);
        this.dq.add(arrayList3);
        this.no.clear();
        Runnable runnable3 = new Runnable() { // from class: com.bytedance.sdk.component.widget.recycler.ox.3
            @Override // java.lang.Runnable
            public void run() {
                Iterator it2 = arrayList3.iterator();
                while (it2.hasNext()) {
                    ox.this.ox((RecyclerView.k) it2.next());
                }
                arrayList3.clear();
                ox.this.dq.remove(arrayList3);
            }
        };
        if (isEmpty && isEmpty2 && isEmpty3) {
            runnable3.run();
        } else {
            com.bytedance.sdk.component.widget.recycler.dq.ox.mn.dq(arrayList3.get(0).p, runnable3, Math.max(!isEmpty2 ? s() : 0L, isEmpty3 ? 0L : ia()) + (!isEmpty ? mn() : 0L));
        }
    }

    public void dq(final dq dqVar) {
        RecyclerView.k kVar = dqVar.dq;
        final View view = kVar == null ? null : kVar.p;
        RecyclerView.k kVar2 = dqVar.f2289d;
        final View view2 = kVar2 != null ? kVar2.p : null;
        if (view != null) {
            final ViewPropertyAnimator duration = view.animate().setDuration(ia());
            this.mn.add(dqVar.dq);
            duration.translationX(dqVar.s - dqVar.ox);
            duration.translationY(dqVar.iw - dqVar.p);
            duration.alpha(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT).setListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.component.widget.recycler.ox.7
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    duration.setListener(null);
                    view.setAlpha(1.0f);
                    view.setTranslationX(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                    view.setTranslationY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                    ox.this.dq(dqVar.dq, true);
                    ox.this.mn.remove(dqVar.dq);
                    ox.this.ox();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                }
            }).start();
        }
        if (view2 != null) {
            final ViewPropertyAnimator animate = view2.animate();
            this.mn.add(dqVar.f2289d);
            animate.translationX(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT).translationY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT).setDuration(ia()).alpha(1.0f).setListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.component.widget.recycler.ox.8
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    animate.setListener(null);
                    view2.setAlpha(1.0f);
                    view2.setTranslationX(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                    view2.setTranslationY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                    ox.this.dq(dqVar.f2289d, false);
                    ox.this.mn.remove(dqVar.f2289d);
                    ox.this.ox();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                }
            }).start();
        }
    }

    public void dq(List<RecyclerView.k> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            list.get(size).p.animate().cancel();
        }
    }

    @Override // com.bytedance.sdk.component.widget.recycler.no
    public boolean dq(RecyclerView.k kVar) {
        ig(kVar);
        this.o.add(kVar);
        return true;
    }

    @Override // com.bytedance.sdk.component.widget.recycler.no
    public boolean dq(RecyclerView.k kVar, int i, int i2, int i3, int i4) {
        View view = kVar.p;
        int translationX = i + ((int) view.getTranslationX());
        int translationY = i2 + ((int) kVar.p.getTranslationY());
        ig(kVar);
        int i5 = i3 - translationX;
        int i6 = i4 - translationY;
        if (i5 == 0 && i6 == 0) {
            kk(kVar);
            return false;
        }
        if (i5 != 0) {
            view.setTranslationX(-i5);
        }
        if (i6 != 0) {
            view.setTranslationY(-i6);
        }
        this.ig.add(new d(kVar, translationX, translationY, i3, i4));
        return true;
    }

    @Override // com.bytedance.sdk.component.widget.recycler.no
    public boolean dq(RecyclerView.k kVar, RecyclerView.k kVar2, int i, int i2, int i3, int i4) {
        if (kVar == kVar2) {
            return dq(kVar, i, i2, i3, i4);
        }
        float translationX = kVar.p.getTranslationX();
        float translationY = kVar.p.getTranslationY();
        float alpha = kVar.p.getAlpha();
        ig(kVar);
        int i5 = (int) ((i3 - i) - translationX);
        int i6 = (int) ((i4 - i2) - translationY);
        kVar.p.setTranslationX(translationX);
        kVar.p.setTranslationY(translationY);
        kVar.p.setAlpha(alpha);
        if (kVar2 != null) {
            ig(kVar2);
            kVar2.p.setTranslationX(-i5);
            kVar2.p.setTranslationY(-i6);
            kVar2.p.setAlpha(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        }
        this.mp.add(new dq(kVar, kVar2, i, i2, i3, i4));
        return true;
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.iw
    public boolean dq(RecyclerView.k kVar, List<Object> list) {
        return !list.isEmpty() || super.dq(kVar, list);
    }

    public void ox() {
        if (d()) {
            return;
        }
        kk();
    }

    public void ox(final RecyclerView.k kVar) {
        final View view = kVar.p;
        final ViewPropertyAnimator animate = view.animate();
        this.p.add(kVar);
        animate.alpha(1.0f).setDuration(iw()).setListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.component.widget.recycler.ox.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                view.setAlpha(1.0f);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                animate.setListener(null);
                ox.this.o(kVar);
                ox.this.p.remove(kVar);
                ox.this.ox();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        }).start();
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.iw
    public void p() {
        int size = this.ig.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            d dVar = this.ig.get(size);
            View view = dVar.dq.p;
            view.setTranslationY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            view.setTranslationX(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            kk(dVar.dq);
            this.ig.remove(size);
        }
        for (int size2 = this.o.size() - 1; size2 >= 0; size2--) {
            ia(this.o.get(size2));
            this.o.remove(size2);
        }
        int size3 = this.no.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            RecyclerView.k kVar = this.no.get(size3);
            kVar.p.setAlpha(1.0f);
            o(kVar);
            this.no.remove(size3);
        }
        for (int size4 = this.mp.size() - 1; size4 >= 0; size4--) {
            d(this.mp.get(size4));
        }
        this.mp.clear();
        if (d()) {
            for (int size5 = this.f2279d.size() - 1; size5 >= 0; size5--) {
                ArrayList<d> arrayList = this.f2279d.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    d dVar2 = arrayList.get(size6);
                    View view2 = dVar2.dq.p;
                    view2.setTranslationY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                    view2.setTranslationX(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                    kk(dVar2.dq);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.f2279d.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.dq.size() - 1; size7 >= 0; size7--) {
                ArrayList<RecyclerView.k> arrayList2 = this.dq.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    RecyclerView.k kVar2 = arrayList2.get(size8);
                    kVar2.p.setAlpha(1.0f);
                    o(kVar2);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.dq.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.ox.size() - 1; size9 >= 0; size9--) {
                ArrayList<dq> arrayList3 = this.ox.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    d(arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.ox.remove(arrayList3);
                    }
                }
            }
            dq(this.iw);
            dq(this.s);
            dq(this.p);
            dq(this.mn);
            kk();
        }
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.iw
    public void p(RecyclerView.k kVar) {
        View view = kVar.p;
        view.animate().cancel();
        int size = this.ig.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (this.ig.get(size).dq == kVar) {
                view.setTranslationY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                view.setTranslationX(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                kk(kVar);
                this.ig.remove(size);
            }
        }
        dq(this.mp, kVar);
        if (this.o.remove(kVar)) {
            view.setAlpha(1.0f);
            ia(kVar);
        }
        if (this.no.remove(kVar)) {
            view.setAlpha(1.0f);
            o(kVar);
        }
        for (int size2 = this.ox.size() - 1; size2 >= 0; size2--) {
            ArrayList<dq> arrayList = this.ox.get(size2);
            dq(arrayList, kVar);
            if (arrayList.isEmpty()) {
                this.ox.remove(size2);
            }
        }
        for (int size3 = this.f2279d.size() - 1; size3 >= 0; size3--) {
            ArrayList<d> arrayList2 = this.f2279d.get(size3);
            int size4 = arrayList2.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                }
                if (arrayList2.get(size4).dq == kVar) {
                    view.setTranslationY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                    view.setTranslationX(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                    kk(kVar);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.f2279d.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        for (int size5 = this.dq.size() - 1; size5 >= 0; size5--) {
            ArrayList<RecyclerView.k> arrayList3 = this.dq.get(size5);
            if (arrayList3.remove(kVar)) {
                view.setAlpha(1.0f);
                o(kVar);
                if (arrayList3.isEmpty()) {
                    this.dq.remove(size5);
                }
            }
        }
        this.iw.remove(kVar);
        this.p.remove(kVar);
        this.mn.remove(kVar);
        this.s.remove(kVar);
        ox();
    }
}
