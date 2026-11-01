package com.bytedance.sdk.component.widget.recycler;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.pangle.ZeusPluginEventCallback;
import com.bytedance.sdk.component.widget.recycler.d;
import com.bytedance.sdk.component.widget.recycler.dq;
import com.bytedance.sdk.component.widget.recycler.mp;
import com.bytedance.sdk.component.widget.recycler.p;
import com.bytedance.sdk.component.widget.recycler.q;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.awf;
import g.he;
import g.tn;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class RecyclerView extends ViewGroup implements com.bytedance.sdk.component.widget.recycler.dq.ox.ox {

    /* renamed from: d, reason: collision with root package name */
    static final boolean f2240d;
    static final boolean dq;
    static final Interpolator er;
    private static final boolean nh;
    private static final Class<?>[] ob;
    static final boolean ox;
    static final boolean p;
    private static final boolean vf;

    /* renamed from: a, reason: collision with root package name */
    private final q.d f2241a;

    /* renamed from: b, reason: collision with root package name */
    private q f2242b;
    private p bf;
    final r bl;
    private EdgeEffect bu;
    private com.bytedance.sdk.component.widget.recycler.dq.ox.p bx;
    private mp by;

    /* renamed from: c, reason: collision with root package name */
    final int[] f2243c;
    private final int cc;
    boolean cd;
    final List<k> ce;
    private s cv;
    private EdgeEffect dc;
    private List<no> ds;

    /* renamed from: e, reason: collision with root package name */
    iw f2244e;

    /* renamed from: f, reason: collision with root package name */
    final ArrayList<ia> f2245f;
    private EdgeEffect fd;
    boolean fw;
    boolean gh;
    private final ArrayList<mp> gx;
    com.bytedance.sdk.component.widget.recycler.p h;
    private int ha;
    private boolean hf;
    boolean i;
    final com.bytedance.sdk.component.widget.recycler.q ia;
    final RectF ig;
    private int ij;
    private int io;
    boolean ir;
    com.bytedance.sdk.component.widget.recycler.dq iw;
    p.dq ji;
    private float jo;
    private EdgeEffect jw;
    fw jy;
    boolean k;
    boolean kk;
    final le kx;
    private final cd l;
    boolean le;
    private int m;
    private final int mc;
    com.bytedance.sdk.component.widget.recycler.d mn;
    dq mp;
    boolean n;
    final Rect no;
    private final int[] nt;
    private Runnable ny;
    final Runnable o;
    boolean op;
    private int pa;
    kk q;
    boolean r;
    final f s;
    private final Rect t;
    private List<q> tl;
    private final int[] tv;
    final int[] u;
    private int uh;
    private final AccessibilityManager v;
    private int vw;
    private ig wi;
    boolean wp;
    private int ws;
    private final int[] x;
    private VelocityTracker xi;
    private iw.dq xj;
    private int xv;
    private boolean xz;
    private float yo;
    private int yy;
    private int z;
    private static final int[] wn = {R.attr.nestedScrollingEnabled};
    private static final int[] j = {R.attr.clipToPadding};

    public class cd extends ox {
        public cd() {
        }

        public void d() {
            if (RecyclerView.ox) {
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.cd && recyclerView.fw) {
                    com.bytedance.sdk.component.widget.recycler.dq.ox.mn.dq(recyclerView, recyclerView.o);
                    return;
                }
            }
            RecyclerView recyclerView2 = RecyclerView.this;
            recyclerView2.le = true;
            recyclerView2.requestLayout();
        }

        @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.ox
        public void dq() {
            RecyclerView.this.dq((String) null);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.bl.iw = true;
            recyclerView.ox(true);
            if (RecyclerView.this.iw.p()) {
                return;
            }
            RecyclerView.this.requestLayout();
        }

        @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.ox
        public void dq(int i, int i2, Object obj) {
            RecyclerView.this.dq((String) null);
            if (RecyclerView.this.iw.dq(i, i2, obj)) {
                d();
            }
        }
    }

    public static class d extends Observable<ox> {
        public void dq() {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((ox) ((Observable) this).mObservers.get(size)).dq();
            }
        }

        public void dq(int i, int i2) {
            dq(i, i2, null);
        }

        public void dq(int i, int i2, Object obj) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((ox) ((Observable) this).mObservers.get(size)).dq(i, i2, obj);
            }
        }
    }

    public static abstract class dq<VH extends k> {
        private final d dq = new d();

        /* renamed from: d, reason: collision with root package name */
        private boolean f2246d = false;

        public long d(int i) {
            return -1L;
        }

        public final VH d(ViewGroup viewGroup, int i) {
            try {
                com.bytedance.sdk.component.widget.recycler.dq.dq.dq.dq("RV CreateView");
                VH dq = dq(viewGroup, i);
                if (dq.p.getParent() != null) {
                    throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
                }
                dq.kk = i;
                return dq;
            } finally {
                com.bytedance.sdk.component.widget.recycler.dq.dq.dq.dq();
            }
        }

        public final void d(VH vh, int i) {
            vh.iw = i;
            if (d()) {
                vh.ia = d(i);
            }
            vh.dq(1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CURRENT_DOWNLOAD_INDEX);
            com.bytedance.sdk.component.widget.recycler.dq.dq.dq.dq("RV OnBindView");
            dq(vh, i, vh.e());
            vh.wp();
            ViewGroup.LayoutParams layoutParams = vh.p.getLayoutParams();
            if (layoutParams instanceof o) {
                ((o) layoutParams).ox = true;
            }
            com.bytedance.sdk.component.widget.recycler.dq.dq.dq.dq();
        }

        public void d(ox oxVar) {
            this.dq.unregisterObserver(oxVar);
        }

        public final boolean d() {
            return this.f2246d;
        }

        public boolean d(VH vh) {
            return false;
        }

        public abstract int dq();

        public int dq(int i) {
            return 0;
        }

        public abstract VH dq(ViewGroup viewGroup, int i);

        public final void dq(int i, int i2) {
            this.dq.dq(i, i2);
        }

        public final void dq(int i, Object obj) {
            this.dq.dq(i, 1, obj);
        }

        public void dq(VH vh) {
        }

        public abstract void dq(VH vh, int i);

        public void dq(VH vh, int i, List<Object> list) {
            dq((dq<VH>) vh, i);
        }

        public void dq(ox oxVar) {
            this.dq.registerObserver(oxVar);
        }

        public final void ox() {
            this.dq.dq();
        }
    }

    public final class f {

        /* renamed from: d, reason: collision with root package name */
        ArrayList<k> f2247d;
        final ArrayList<k> dq;
        private int ia;
        private i kk;
        private final List<k> mn;
        final ArrayList<k> ox;
        int p;
        jy s;

        public f() {
            ArrayList<k> arrayList = new ArrayList<>();
            this.dq = arrayList;
            this.f2247d = null;
            this.ox = new ArrayList<>();
            this.mn = Collections.unmodifiableList(arrayList);
            this.ia = 2;
            this.p = 2;
        }

        private void dq(ViewGroup viewGroup, boolean z) {
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (childAt instanceof ViewGroup) {
                    dq((ViewGroup) childAt, true);
                }
            }
            if (z) {
                if (viewGroup.getVisibility() == 4) {
                    viewGroup.setVisibility(0);
                    viewGroup.setVisibility(4);
                } else {
                    int visibility = viewGroup.getVisibility();
                    viewGroup.setVisibility(4);
                    viewGroup.setVisibility(visibility);
                }
            }
        }

        private boolean dq(k kVar, int i, int i2, long j) {
            kVar.gh = RecyclerView.this;
            int ig = kVar.ig();
            long nanoTime = RecyclerView.this.getNanoTime();
            if (j != Long.MAX_VALUE && !this.s.d(ig, nanoTime, j)) {
                return false;
            }
            RecyclerView.this.mp.d((dq) kVar, i);
            this.s.d(kVar.ig(), RecyclerView.this.getNanoTime() - nanoTime);
            if (!RecyclerView.this.bl.dq()) {
                return true;
            }
            kVar.o = i2;
            return true;
        }

        private void s(k kVar) {
            View view = kVar.p;
            if (view instanceof ViewGroup) {
                dq((ViewGroup) view, false);
            }
        }

        public View d(int i) {
            return dq(i, false);
        }

        public k d(int i, boolean z) {
            View ox;
            int size = this.dq.size();
            for (int i2 = 0; i2 < size; i2++) {
                k kVar = this.dq.get(i2);
                if (!kVar.jy() && kVar.ia() == i && !kVar.cd() && (RecyclerView.this.bl.mn || !kVar.i())) {
                    kVar.d(32);
                    return kVar;
                }
            }
            if (z || (ox = RecyclerView.this.mn.ox(i)) == null) {
                int size2 = this.ox.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    k kVar2 = this.ox.get(i3);
                    if (!kVar2.cd() && kVar2.ia() == i) {
                        if (!z) {
                            this.ox.remove(i3);
                        }
                        return kVar2;
                    }
                }
                return null;
            }
            k s = RecyclerView.s(ox);
            RecyclerView.this.mn.s(ox);
            int d2 = RecyclerView.this.mn.d(ox);
            if (d2 == -1) {
                StringBuilder sb = new StringBuilder("layout index should not be -1 after unhiding a view:");
                sb.append(s);
                throw new IllegalStateException(tn.d(RecyclerView.this, sb));
            }
            RecyclerView.this.mn.s(d2);
            ox(ox);
            s.d(8224);
            return s;
        }

        public void d() {
            kk kkVar = RecyclerView.this.q;
            this.p = this.ia + (kkVar != null ? kkVar.f2257f : 0);
            for (int size = this.ox.size() - 1; size >= 0 && this.ox.size() > this.p; size--) {
                ox(size);
            }
        }

        public void d(int i, int i2) {
            int size = this.ox.size();
            for (int i3 = 0; i3 < size; i3++) {
                k kVar = this.ox.get(i3);
                if (kVar != null && kVar.iw >= i) {
                    kVar.dq(i2, true);
                }
            }
        }

        public void d(View view) {
            k s = RecyclerView.s(view);
            s.f2255f = null;
            s.fw = false;
            s.f();
            d(s);
        }

        public void d(k kVar) {
            boolean z;
            boolean z2 = true;
            if (kVar.mp() || kVar.p.getParent() != null) {
                StringBuilder sb = new StringBuilder("Scrapped or attached views may not be recycled. isScrap:");
                sb.append(kVar.mp());
                sb.append(" isAttached:");
                sb.append(kVar.p.getParent() != null);
                throw new IllegalArgumentException(tn.d(RecyclerView.this, sb));
            }
            if (kVar.le()) {
                StringBuilder sb2 = new StringBuilder("Tmp detached view should be removed from RecyclerView before it can be recycled: ");
                sb2.append(kVar);
                throw new IllegalArgumentException(tn.d(RecyclerView.this, sb2));
            }
            if (kVar.mn()) {
                throw new IllegalArgumentException(tn.d(RecyclerView.this, new StringBuilder("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.")));
            }
            boolean bl = kVar.bl();
            dq dqVar = RecyclerView.this.mp;
            if ((dqVar != null && bl && dqVar.d((dq) kVar)) || kVar.h()) {
                if (this.p <= 0 || kVar.dq(526)) {
                    z = false;
                } else {
                    int size = this.ox.size();
                    if (size >= this.p && size > 0) {
                        ox(0);
                        size--;
                    }
                    if (RecyclerView.p && size > 0 && !RecyclerView.this.ji.dq(kVar.iw)) {
                        int i = size - 1;
                        while (i >= 0) {
                            if (!RecyclerView.this.ji.dq(this.ox.get(i).iw)) {
                                break;
                            } else {
                                i--;
                            }
                        }
                        size = i + 1;
                    }
                    this.ox.add(size, kVar);
                    z = true;
                }
                if (!z) {
                    dq(kVar, true);
                    r1 = z;
                    RecyclerView.this.ia.mn(kVar);
                    if (r1 && !z2 && bl) {
                        kVar.gh = null;
                        return;
                    }
                    return;
                }
                r1 = z;
            }
            z2 = false;
            RecyclerView.this.ia.mn(kVar);
            if (r1) {
            }
        }

        public View dq(int i, boolean z) {
            return dq(i, z, Long.MAX_VALUE).p;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0037  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x005c  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x005f  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x0174  */
        /* JADX WARN: Removed duplicated region for block: B:87:0x01cb  */
        /* JADX WARN: Removed duplicated region for block: B:90:0x01f5 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:94:0x01d9  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public k dq(int i, boolean z, long j) {
            k kVar;
            boolean z2;
            k kVar2;
            boolean z3;
            boolean dq;
            ViewGroup.LayoutParams layoutParams;
            o oVar;
            RecyclerView o;
            i iVar;
            View dq2;
            if (i < 0 || i >= RecyclerView.this.bl.p()) {
                StringBuilder z4 = awf.z(i, i, "Invalid item position ", "(", "). Item count:");
                z4.append(RecyclerView.this.bl.p());
                throw new IndexOutOfBoundsException(tn.d(RecyclerView.this, z4));
            }
            if (RecyclerView.this.bl.dq()) {
                kVar = s(i);
                if (kVar != null) {
                    z2 = true;
                    if (kVar == null && (kVar = d(i, z)) != null) {
                        if (dq(kVar)) {
                            if (!z) {
                                kVar.d(4);
                                if (kVar.mp()) {
                                    RecyclerView.this.removeDetachedView(kVar.p, false);
                                    kVar.q();
                                } else if (kVar.jy()) {
                                    kVar.f();
                                }
                                d(kVar);
                            }
                            kVar = null;
                        } else {
                            z2 = true;
                        }
                    }
                    if (kVar == null) {
                        int d2 = RecyclerView.this.iw.d(i);
                        if (d2 < 0 || d2 >= RecyclerView.this.mp.dq()) {
                            StringBuilder z5 = awf.z(i, d2, "Inconsistency detected. Invalid item position ", "(offset:", ").state:");
                            z5.append(RecyclerView.this.bl.p());
                            throw new IndexOutOfBoundsException(tn.d(RecyclerView.this, z5));
                        }
                        int dq3 = RecyclerView.this.mp.dq(d2);
                        if (RecyclerView.this.mp.d() && (kVar = dq(RecyclerView.this.mp.d(d2), dq3, z)) != null) {
                            kVar.iw = d2;
                            z2 = true;
                        }
                        if (kVar == null && (iVar = this.kk) != null && (dq2 = iVar.dq(this, i, dq3)) != null) {
                            kVar = RecyclerView.this.d(dq2);
                            if (kVar == null) {
                                throw new IllegalArgumentException(tn.d(RecyclerView.this, new StringBuilder("getViewForPositionAndType returned a view which does not have a ViewHolder")));
                            }
                            if (kVar.mn()) {
                                throw new IllegalArgumentException(tn.d(RecyclerView.this, new StringBuilder("getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view.")));
                            }
                        }
                        if (kVar == null) {
                            k dq4 = mn().dq(dq3);
                            if (dq4 != null) {
                                dq4.kx();
                                if (RecyclerView.dq) {
                                    s(dq4);
                                }
                            }
                            kVar = dq4;
                        }
                        if (kVar == null) {
                            long nanoTime = RecyclerView.this.getNanoTime();
                            if (j != Long.MAX_VALUE && !this.s.dq(dq3, nanoTime, j)) {
                                return null;
                            }
                            RecyclerView recyclerView = RecyclerView.this;
                            kVar = recyclerView.mp.d(recyclerView, dq3);
                            if (RecyclerView.p && (o = RecyclerView.o(kVar.p)) != null) {
                                kVar.s = new WeakReference<>(o);
                            }
                            this.s.dq(dq3, RecyclerView.this.getNanoTime() - nanoTime);
                        }
                    }
                    kVar2 = kVar;
                    z3 = z2;
                    if (z3 && !RecyclerView.this.bl.dq() && kVar2.dq(8192)) {
                        kVar2.dq(0, 8192);
                        if (RecyclerView.this.bl.o) {
                            int s = iw.s(kVar2) | 4096;
                            RecyclerView recyclerView2 = RecyclerView.this;
                            RecyclerView.this.dq(kVar2, recyclerView2.f2244e.dq(recyclerView2.bl, kVar2, s, kVar2.e()));
                        }
                    }
                    if (!RecyclerView.this.bl.dq() && kVar2.r()) {
                        kVar2.o = i;
                    } else if (kVar2.r() || kVar2.gh() || kVar2.cd()) {
                        dq = dq(kVar2, RecyclerView.this.iw.d(i), i, j);
                        layoutParams = kVar2.p.getLayoutParams();
                        if (layoutParams == null) {
                            oVar = (o) RecyclerView.this.generateDefaultLayoutParams();
                            kVar2.p.setLayoutParams(oVar);
                        } else if (RecyclerView.this.checkLayoutParams(layoutParams)) {
                            oVar = (o) layoutParams;
                        } else {
                            oVar = (o) RecyclerView.this.generateLayoutParams(layoutParams);
                            kVar2.p.setLayoutParams(oVar);
                        }
                        oVar.dq = kVar2;
                        oVar.p = !z3 && dq;
                        return kVar2;
                    }
                    dq = false;
                    layoutParams = kVar2.p.getLayoutParams();
                    if (layoutParams == null) {
                    }
                    oVar.dq = kVar2;
                    oVar.p = !z3 && dq;
                    return kVar2;
                }
            } else {
                kVar = null;
            }
            z2 = false;
            if (kVar == null) {
                if (dq(kVar)) {
                }
            }
            if (kVar == null) {
            }
            kVar2 = kVar;
            z3 = z2;
            if (z3) {
                kVar2.dq(0, 8192);
                if (RecyclerView.this.bl.o) {
                }
            }
            if (!RecyclerView.this.bl.dq()) {
            }
            if (kVar2.r()) {
            }
            dq = dq(kVar2, RecyclerView.this.iw.d(i), i, j);
            layoutParams = kVar2.p.getLayoutParams();
            if (layoutParams == null) {
            }
            oVar.dq = kVar2;
            oVar.p = !z3 && dq;
            return kVar2;
        }

        public k dq(long j, int i, boolean z) {
            for (int size = this.dq.size() - 1; size >= 0; size--) {
                k kVar = this.dq.get(size);
                if (kVar.no() == j && !kVar.jy()) {
                    if (i == kVar.ig()) {
                        kVar.d(32);
                        if (kVar.i() && !RecyclerView.this.bl.dq()) {
                            kVar.dq(2, 14);
                        }
                        return kVar;
                    }
                    if (!z) {
                        this.dq.remove(size);
                        RecyclerView.this.removeDetachedView(kVar.p, false);
                        d(kVar.p);
                    }
                }
            }
            int size2 = this.ox.size();
            while (true) {
                size2--;
                if (size2 < 0) {
                    return null;
                }
                k kVar2 = this.ox.get(size2);
                if (kVar2.no() == j) {
                    if (i == kVar2.ig()) {
                        if (!z) {
                            this.ox.remove(size2);
                        }
                        return kVar2;
                    }
                    if (!z) {
                        ox(size2);
                        return null;
                    }
                }
            }
        }

        public void dq() {
            this.dq.clear();
            p();
        }

        public void dq(int i) {
            this.ia = i;
            d();
        }

        public void dq(int i, int i2) {
            int i3;
            int i4;
            int i5;
            int i6;
            if (i < i2) {
                i3 = -1;
                i5 = i;
                i4 = i2;
            } else {
                i3 = 1;
                i4 = i;
                i5 = i2;
            }
            int size = this.ox.size();
            for (int i7 = 0; i7 < size; i7++) {
                k kVar = this.ox.get(i7);
                if (kVar != null && (i6 = kVar.iw) >= i5 && i6 <= i4) {
                    if (i6 == i) {
                        kVar.dq(i2 - i, false);
                    } else {
                        kVar.dq(i3, false);
                    }
                }
            }
        }

        public void dq(int i, int i2, boolean z) {
            int i3 = i + i2;
            for (int size = this.ox.size() - 1; size >= 0; size--) {
                k kVar = this.ox.get(size);
                if (kVar != null) {
                    int i4 = kVar.iw;
                    if (i4 >= i3) {
                        kVar.dq(-i2, z);
                    } else if (i4 >= i) {
                        kVar.d(8);
                        ox(size);
                    }
                }
            }
        }

        public void dq(View view) {
            k s = RecyclerView.s(view);
            if (s.le()) {
                RecyclerView.this.removeDetachedView(view, false);
            }
            if (s.mp()) {
                s.q();
            } else if (s.jy()) {
                s.f();
            }
            d(s);
        }

        public void dq(dq dqVar, dq dqVar2, boolean z) {
            dq();
            mn().dq(dqVar, dqVar2, z);
        }

        public void dq(i iVar) {
            this.kk = iVar;
        }

        public void dq(jy jyVar) {
            jy jyVar2 = this.s;
            if (jyVar2 != null) {
                jyVar2.ox();
            }
            this.s = jyVar;
            if (jyVar == null || RecyclerView.this.getAdapter() == null) {
                return;
            }
            this.s.d();
        }

        public void dq(k kVar, boolean z) {
            RecyclerView.ox(kVar);
            if (kVar.dq(16384)) {
                kVar.dq(0, 16384);
            }
            if (z) {
                p(kVar);
            }
            kVar.gh = null;
            mn().dq(kVar);
        }

        public boolean dq(k kVar) {
            if (kVar.i()) {
                return RecyclerView.this.bl.dq();
            }
            int i = kVar.iw;
            if (i < 0 || i >= RecyclerView.this.mp.dq()) {
                StringBuilder sb = new StringBuilder("Inconsistency detected. Invalid view holder adapter position");
                sb.append(kVar);
                throw new IndexOutOfBoundsException(tn.d(RecyclerView.this, sb));
            }
            if (RecyclerView.this.bl.dq() || RecyclerView.this.mp.dq(kVar.iw) == kVar.ig()) {
                return !RecyclerView.this.mp.d() || kVar.no() == RecyclerView.this.mp.d(kVar.iw);
            }
            return false;
        }

        public void ia() {
            int size = this.ox.size();
            for (int i = 0; i < size; i++) {
                k kVar = this.ox.get(i);
                if (kVar != null) {
                    kVar.d(6);
                    kVar.dq((Object) null);
                }
            }
            dq dqVar = RecyclerView.this.mp;
            if (dqVar == null || !dqVar.d()) {
                p();
            }
        }

        public void iw() {
            this.dq.clear();
            ArrayList<k> arrayList = this.f2247d;
            if (arrayList != null) {
                arrayList.clear();
            }
        }

        public void kk() {
            int size = this.ox.size();
            for (int i = 0; i < size; i++) {
                this.ox.get(i).s();
            }
            int size2 = this.dq.size();
            for (int i2 = 0; i2 < size2; i2++) {
                this.dq.get(i2).s();
            }
            ArrayList<k> arrayList = this.f2247d;
            if (arrayList != null) {
                int size3 = arrayList.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    this.f2247d.get(i3).s();
                }
            }
        }

        public jy mn() {
            if (this.s == null) {
                this.s = new jy();
            }
            return this.s;
        }

        public void o() {
            int size = this.ox.size();
            for (int i = 0; i < size; i++) {
                o oVar = (o) this.ox.get(i).p.getLayoutParams();
                if (oVar != null) {
                    oVar.ox = true;
                }
            }
        }

        public List<k> ox() {
            return this.mn;
        }

        public void ox(int i) {
            dq(this.ox.get(i), true);
            this.ox.remove(i);
        }

        public void ox(int i, int i2) {
            int i3;
            int i4 = i2 + i;
            for (int size = this.ox.size() - 1; size >= 0; size--) {
                k kVar = this.ox.get(size);
                if (kVar != null && (i3 = kVar.iw) >= i && i3 < i4) {
                    kVar.d(2);
                    ox(size);
                }
            }
        }

        public void ox(View view) {
            k s = RecyclerView.s(view);
            if (!s.dq(12) && s.n() && !RecyclerView.this.d(s)) {
                if (this.f2247d == null) {
                    this.f2247d = new ArrayList<>();
                }
                s.dq(this, true);
                this.f2247d.add(s);
                return;
            }
            if (s.cd() && !s.i() && !RecyclerView.this.mp.d()) {
                throw new IllegalArgumentException(tn.d(RecyclerView.this, new StringBuilder("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.")));
            }
            s.dq(this, false);
            this.dq.add(s);
        }

        public void ox(k kVar) {
            if (kVar.fw) {
                this.f2247d.remove(kVar);
            } else {
                this.dq.remove(kVar);
            }
            kVar.f2255f = null;
            kVar.fw = false;
            kVar.f();
        }

        public View p(int i) {
            return this.dq.get(i).p;
        }

        public void p() {
            for (int size = this.ox.size() - 1; size >= 0; size--) {
                ox(size);
            }
            this.ox.clear();
            if (RecyclerView.p) {
                RecyclerView.this.ji.dq();
            }
        }

        public void p(k kVar) {
            dq dqVar = RecyclerView.this.mp;
            if (dqVar != null) {
                dqVar.dq((dq) kVar);
            }
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.bl != null) {
                recyclerView.ia.mn(kVar);
            }
        }

        public int s() {
            return this.dq.size();
        }

        public k s(int i) {
            int size;
            int d2;
            ArrayList<k> arrayList = this.f2247d;
            if (arrayList == null || (size = arrayList.size()) == 0) {
                return null;
            }
            for (int i2 = 0; i2 < size; i2++) {
                k kVar = this.f2247d.get(i2);
                if (!kVar.jy() && kVar.ia() == i) {
                    kVar.d(32);
                    return kVar;
                }
            }
            if (!RecyclerView.this.mp.d() || (d2 = RecyclerView.this.iw.d(i)) <= 0 || d2 >= RecyclerView.this.mp.dq()) {
                return null;
            }
            long d3 = RecyclerView.this.mp.d(d2);
            for (int i3 = 0; i3 < size; i3++) {
                k kVar2 = this.f2247d.get(i3);
                if (!kVar2.jy() && kVar2.no() == d3) {
                    kVar2.d(32);
                    return kVar2;
                }
            }
            return null;
        }
    }

    public interface fw {
    }

    public static abstract class gh {

        /* renamed from: d, reason: collision with root package name */
        private RecyclerView f2248d;
        private boolean ia;
        private View iw;
        private kk ox;
        private boolean p;
        private boolean s;
        private int dq = -1;
        private final dq mn = new dq(0, 0);

        public interface d {
            PointF ox(int i);
        }

        public static class dq {

            /* renamed from: d, reason: collision with root package name */
            private int f2249d;
            private int dq;
            private boolean iw;
            private int mn;
            private int ox;
            private int p;
            private Interpolator s;

            public dq(int i, int i2) {
                this(i, i2, Integer.MIN_VALUE, null);
            }

            public dq(int i, int i2, int i3, Interpolator interpolator) {
                this.p = -1;
                this.iw = false;
                this.mn = 0;
                this.dq = i;
                this.f2249d = i2;
                this.ox = i3;
                this.s = interpolator;
            }

            private void d() {
                if (this.s != null && this.ox <= 0) {
                    throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                }
                if (this.ox <= 0) {
                    throw new IllegalStateException("Scroll duration must be a positive number");
                }
            }

            public void dq(int i) {
                this.p = i;
            }

            public void dq(RecyclerView recyclerView) {
                int i = this.p;
                if (i >= 0) {
                    this.p = -1;
                    recyclerView.d(i);
                    this.iw = false;
                    return;
                }
                if (!this.iw) {
                    this.mn = 0;
                    return;
                }
                d();
                Interpolator interpolator = this.s;
                if (interpolator == null) {
                    int i2 = this.ox;
                    if (i2 == Integer.MIN_VALUE) {
                        recyclerView.kx.d(this.dq, this.f2249d);
                    } else {
                        recyclerView.kx.dq(this.dq, this.f2249d, i2);
                    }
                } else {
                    recyclerView.kx.dq(this.dq, this.f2249d, this.ox, interpolator);
                }
                int i3 = this.mn + 1;
                this.mn = i3;
                if (i3 > 10) {
                    Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                }
                this.iw = false;
            }

            public boolean dq() {
                return this.p >= 0;
            }

            public void update(int i, int i2, int i3, Interpolator interpolator) {
                this.dq = i;
                this.f2249d = i2;
                this.ox = i3;
                this.s = interpolator;
                this.iw = true;
            }
        }

        public void d(View view) {
            if (dq(view) == ia()) {
                this.iw = view;
            }
        }

        public int dq(View view) {
            return this.f2248d.ia(view);
        }

        public abstract void dq();

        public void dq(int i, int i2) {
            PointF p;
            RecyclerView recyclerView = this.f2248d;
            if (!this.s || this.dq == -1 || recyclerView == null) {
                s();
            }
            if (this.p && this.iw == null && this.ox != null && (p = p(this.dq)) != null) {
                float f2 = p.x;
                if (f2 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || p.y != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    recyclerView.dq((int) Math.signum(f2), (int) Math.signum(p.y), (int[]) null);
                }
            }
            this.p = false;
            View view = this.iw;
            if (view != null) {
                if (dq(view) == this.dq) {
                    dq(this.iw, recyclerView.bl, this.mn);
                    this.mn.dq(recyclerView);
                    s();
                } else {
                    Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                    this.iw = null;
                }
            }
            if (this.s) {
                dq(i, i2, recyclerView.bl, this.mn);
                boolean dq2 = this.mn.dq();
                this.mn.dq(recyclerView);
                if (dq2) {
                    if (!this.s) {
                        s();
                    } else {
                        this.p = true;
                        recyclerView.kx.dq();
                    }
                }
            }
        }

        public abstract void dq(int i, int i2, r rVar, dq dqVar);

        public void dq(PointF pointF) {
            float f2 = pointF.x;
            float f3 = pointF.y;
            float sqrt = (float) Math.sqrt((f3 * f3) + (f2 * f2));
            pointF.x /= sqrt;
            pointF.y /= sqrt;
        }

        public abstract void dq(View view, r rVar, dq dqVar);

        public void dq(RecyclerView recyclerView, kk kkVar) {
            this.f2248d = recyclerView;
            this.ox = kkVar;
            int i = this.dq;
            if (i == -1) {
                throw new IllegalArgumentException("Invalid target position");
            }
            recyclerView.bl.dq = i;
            this.s = true;
            this.p = true;
            this.iw = s(ia());
            this.f2248d.kx.dq();
            this.ia = true;
        }

        public int ia() {
            return this.dq;
        }

        public boolean iw() {
            return this.p;
        }

        public int kk() {
            return this.f2248d.q.i();
        }

        public boolean mn() {
            return this.s;
        }

        public void ox(int i) {
            this.dq = i;
        }

        public PointF p(int i) {
            Object p = p();
            if (p instanceof d) {
                return ((d) p).ox(i);
            }
            return null;
        }

        public kk p() {
            return this.ox;
        }

        public View s(int i) {
            return this.f2248d.q.d(i);
        }

        public final void s() {
            if (this.s) {
                this.s = false;
                dq();
                this.f2248d.bl.dq = -1;
                this.iw = null;
                this.dq = -1;
                this.p = false;
                this.ox.d(this);
                this.ox = null;
                this.f2248d = null;
            }
        }
    }

    public static abstract class i {
        public abstract View dq(f fVar, int i, int i2);
    }

    public static abstract class ia {
        @Deprecated
        public void dq(Rect rect, int i, RecyclerView recyclerView) {
            rect.set(0, 0, 0, 0);
        }

        public void dq(Rect rect, View view, RecyclerView recyclerView, r rVar) {
            dq(rect, ((o) view.getLayoutParams()).p(), recyclerView);
        }
    }

    public static abstract class ig {
        public abstract boolean dq(int i, int i2);
    }

    public static abstract class iw {
        private dq dq = null;

        /* renamed from: d, reason: collision with root package name */
        private ArrayList<Object> f2250d = new ArrayList<>();
        private long ox = 120;
        private long p = 120;
        private long s = 250;
        private long iw = 250;

        public static class d {

            /* renamed from: d, reason: collision with root package name */
            public int f2251d;
            public int dq;
            public int ox;
            public int p;

            public d dq(k kVar) {
                return dq(kVar, 0);
            }

            public d dq(k kVar, int i) {
                View view = kVar.p;
                this.dq = view.getLeft();
                this.f2251d = view.getTop();
                this.ox = view.getRight();
                this.p = view.getBottom();
                return this;
            }
        }

        public interface dq {
            void dq(k kVar);
        }

        public static int s(k kVar) {
            int i = kVar.mp;
            int i2 = i & 14;
            if (kVar.cd()) {
                return 4;
            }
            if ((i & 4) == 0) {
                int o = kVar.o();
                int kk = kVar.kk();
                if (o != -1 && kk != -1 && o != kk) {
                    return i2 | 2048;
                }
            }
            return i2;
        }

        public abstract boolean d();

        public abstract boolean d(k kVar, d dVar, d dVar2);

        public d dq(r rVar, k kVar) {
            return o().dq(kVar);
        }

        public d dq(r rVar, k kVar, int i, List<Object> list) {
            return o().dq(kVar);
        }

        public abstract void dq();

        public void dq(long j) {
            this.iw = j;
        }

        public void dq(dq dqVar) {
            this.dq = dqVar;
        }

        public abstract boolean dq(k kVar, d dVar, d dVar2);

        public abstract boolean dq(k kVar, k kVar2, d dVar, d dVar2);

        public boolean dq(k kVar, List<Object> list) {
            return mn(kVar);
        }

        public long ia() {
            return this.iw;
        }

        public long iw() {
            return this.ox;
        }

        public final void iw(k kVar) {
            dq dqVar = this.dq;
            if (dqVar != null) {
                dqVar.dq(kVar);
            }
        }

        public final void kk() {
            int size = this.f2250d.size();
            for (int i = 0; i < size; i++) {
                this.f2250d.get(i);
            }
            this.f2250d.clear();
        }

        public long mn() {
            return this.p;
        }

        public boolean mn(k kVar) {
            return true;
        }

        public d o() {
            return new d();
        }

        public abstract boolean ox(k kVar, d dVar, d dVar2);

        public abstract void p();

        public abstract void p(k kVar);

        public long s() {
            return this.s;
        }
    }

    public static class jy {
        SparseArray<dq> dq = new SparseArray<>();

        /* renamed from: d, reason: collision with root package name */
        private int f2252d = 0;

        public static class dq {
            final ArrayList<k> dq = new ArrayList<>();

            /* renamed from: d, reason: collision with root package name */
            int f2253d = 5;
            long ox = 0;
            long p = 0;
        }

        private dq d(int i) {
            dq dqVar = this.dq.get(i);
            if (dqVar != null) {
                return dqVar;
            }
            dq dqVar2 = new dq();
            this.dq.put(i, dqVar2);
            return dqVar2;
        }

        public void d() {
            this.f2252d++;
        }

        public void d(int i, long j) {
            dq d2 = d(i);
            d2.p = dq(d2.p, j);
        }

        public boolean d(int i, long j, long j2) {
            long j3 = d(i).p;
            return j3 == 0 || j + j3 < j2;
        }

        public long dq(long j, long j2) {
            if (j == 0) {
                return j2;
            }
            return (j2 / 4) + ((j / 4) * 3);
        }

        public k dq(int i) {
            dq dqVar = this.dq.get(i);
            if (dqVar == null || dqVar.dq.isEmpty()) {
                return null;
            }
            return dqVar.dq.remove(r2.size() - 1);
        }

        public void dq() {
            for (int i = 0; i < this.dq.size(); i++) {
                this.dq.valueAt(i).dq.clear();
            }
        }

        public void dq(int i, long j) {
            dq d2 = d(i);
            d2.ox = dq(d2.ox, j);
        }

        public void dq(dq dqVar, dq dqVar2, boolean z) {
            if (dqVar != null) {
                ox();
            }
            if (!z && this.f2252d == 0) {
                dq();
            }
            if (dqVar2 != null) {
                d();
            }
        }

        public void dq(k kVar) {
            int ig = kVar.ig();
            ArrayList<k> arrayList = d(ig).dq;
            if (this.dq.get(ig).f2253d > arrayList.size()) {
                kVar.kx();
                arrayList.add(kVar);
            }
        }

        public boolean dq(int i, long j, long j2) {
            long j3 = d(i).ox;
            return j3 == 0 || j + j3 < j2;
        }

        public void ox() {
            this.f2252d--;
        }
    }

    public static abstract class k {
        private static final List<Object> dq = Collections.EMPTY_LIST;
        RecyclerView gh;
        int mp;
        public final View p;
        WeakReference<RecyclerView> s;
        int iw = -1;
        int mn = -1;
        long ia = -1;
        int kk = -1;
        int o = -1;
        k no = null;
        k ig = null;
        List<Object> q = null;
        List<Object> jy = null;

        /* renamed from: d, reason: collision with root package name */
        private int f2254d = 0;

        /* renamed from: f, reason: collision with root package name */
        f f2255f = null;
        boolean fw = false;
        private int ox = 0;
        int cd = -1;

        public k(View view) {
            if (view == null) {
                throw new IllegalArgumentException("itemView may not be null");
            }
            this.p = view;
        }

        private void dq() {
            if (this.q == null) {
                ArrayList arrayList = new ArrayList();
                this.q = arrayList;
                this.jy = Collections.unmodifiableList(arrayList);
            }
        }

        public boolean bl() {
            return (this.mp & 16) == 0 && com.bytedance.sdk.component.widget.recycler.dq.ox.mn.iw(this.p);
        }

        public boolean cd() {
            return (this.mp & 4) != 0;
        }

        public void d(int i) {
            this.mp = i | this.mp;
        }

        public void d(RecyclerView recyclerView) {
            recyclerView.dq(this, this.ox);
            this.ox = 0;
        }

        public void dq(int i, int i2) {
            this.mp = (i & i2) | (this.mp & (~i2));
        }

        public void dq(int i, int i2, boolean z) {
            d(8);
            dq(i2, z);
            this.iw = i;
        }

        public void dq(int i, boolean z) {
            if (this.mn == -1) {
                this.mn = this.iw;
            }
            if (this.o == -1) {
                this.o = this.iw;
            }
            if (z) {
                this.o += i;
            }
            this.iw += i;
            if (this.p.getLayoutParams() != null) {
                ((o) this.p.getLayoutParams()).ox = true;
            }
        }

        public void dq(f fVar, boolean z) {
            this.f2255f = fVar;
            this.fw = z;
        }

        public void dq(RecyclerView recyclerView) {
            int i = this.cd;
            if (i != -1) {
                this.ox = i;
            } else {
                this.ox = com.bytedance.sdk.component.widget.recycler.dq.ox.mn.d(this.p);
            }
            recyclerView.dq(this, 4);
        }

        public void dq(Object obj) {
            if (obj == null) {
                d(1024);
            } else if ((1024 & this.mp) == 0) {
                dq();
                this.q.add(obj);
            }
        }

        public final void dq(boolean z) {
            int i = this.f2254d;
            int i2 = z ? i - 1 : i + 1;
            this.f2254d = i2;
            if (i2 < 0) {
                this.f2254d = 0;
                Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
                return;
            }
            if (!z && i2 == 1) {
                this.mp |= 16;
            } else if (z && i2 == 0) {
                this.mp &= -17;
            }
        }

        public boolean dq(int i) {
            return (i & this.mp) != 0;
        }

        public List<Object> e() {
            if ((this.mp & 1024) != 0) {
                return dq;
            }
            List<Object> list = this.q;
            return (list == null || list.size() == 0) ? dq : this.jy;
        }

        public void f() {
            this.mp &= -33;
        }

        public void fw() {
            this.mp &= -257;
        }

        public boolean gh() {
            return (this.mp & 2) != 0;
        }

        public final boolean h() {
            return (this.mp & 16) == 0 && !com.bytedance.sdk.component.widget.recycler.dq.ox.mn.iw(this.p);
        }

        public boolean i() {
            return (this.mp & 8) != 0;
        }

        public final int ia() {
            int i = this.o;
            return i == -1 ? this.iw : i;
        }

        public final int ig() {
            return this.kk;
        }

        public void iw() {
            if (this.mn == -1) {
                this.mn = this.iw;
            }
        }

        public boolean ji() {
            return (this.mp & 16) != 0;
        }

        public boolean jy() {
            return (this.mp & 32) != 0;
        }

        public boolean k() {
            return (this.mp & 512) != 0 || cd();
        }

        public final int kk() {
            RecyclerView recyclerView = this.gh;
            if (recyclerView == null) {
                return -1;
            }
            return recyclerView.p(this);
        }

        public void kx() {
            this.mp = 0;
            this.iw = -1;
            this.mn = -1;
            this.ia = -1L;
            this.o = -1;
            this.f2254d = 0;
            this.no = null;
            this.ig = null;
            wp();
            this.ox = 0;
            this.cd = -1;
            RecyclerView.ox(this);
        }

        public boolean le() {
            return (this.mp & 256) != 0;
        }

        public boolean mn() {
            return (this.mp & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0;
        }

        public boolean mp() {
            return this.f2255f != null;
        }

        public boolean n() {
            return (this.mp & 2) != 0;
        }

        public final long no() {
            return this.ia;
        }

        public final int o() {
            return this.mn;
        }

        public void q() {
            this.f2255f.ox(this);
        }

        public boolean r() {
            return (this.mp & 1) != 0;
        }

        public void s() {
            this.mn = -1;
            this.o = -1;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("ViewHolder{" + Integer.toHexString(hashCode()) + " position=" + this.iw + " id=" + this.ia + ", oldPos=" + this.mn + ", pLpos:" + this.o);
            if (mp()) {
                sb.append(" scrap ");
                sb.append(this.fw ? "[changeScrap]" : "[attachedScrap]");
            }
            if (cd()) {
                sb.append(" invalid");
            }
            if (!r()) {
                sb.append(" unbound");
            }
            if (gh()) {
                sb.append(" update");
            }
            if (i()) {
                sb.append(" removed");
            }
            if (mn()) {
                sb.append(" ignored");
            }
            if (le()) {
                sb.append(" tmpDetached");
            }
            if (!h()) {
                sb.append(" not recyclable(" + this.f2254d + ")");
            }
            if (k()) {
                sb.append(" undefined adapter position");
            }
            if (this.p.getParent() == null) {
                sb.append(" no parent");
            }
            sb.append("}");
            return sb.toString();
        }

        public void wp() {
            List<Object> list = this.q;
            if (list != null) {
                list.clear();
            }
            this.mp &= -1025;
        }
    }

    public static abstract class kk {
        private int cd;

        /* renamed from: d, reason: collision with root package name */
        private final mp.d f2256d;
        private final mp.d dq;

        /* renamed from: f, reason: collision with root package name */
        int f2257f;
        boolean fw;
        com.bytedance.sdk.component.widget.recycler.d ia;
        gh ig;
        private int iw;
        boolean jy;
        RecyclerView kk;
        private int mn;
        boolean mp;
        com.bytedance.sdk.component.widget.recycler.mp no;
        com.bytedance.sdk.component.widget.recycler.mp o;
        private boolean ox;
        private boolean p;
        boolean q;
        private int s;

        public interface dq {
            void d(int i, int i2);
        }

        public kk() {
            mp.d dVar = new mp.d() { // from class: com.bytedance.sdk.component.widget.recycler.RecyclerView.kk.1
                @Override // com.bytedance.sdk.component.widget.recycler.mp.d
                public int d() {
                    return kk.this.wp() - kk.this.ji();
                }

                @Override // com.bytedance.sdk.component.widget.recycler.mp.d
                public int d(View view) {
                    return kk.this.kk(view) + ((ViewGroup.MarginLayoutParams) ((o) view.getLayoutParams())).rightMargin;
                }

                @Override // com.bytedance.sdk.component.widget.recycler.mp.d
                public int dq() {
                    return kk.this.kx();
                }

                @Override // com.bytedance.sdk.component.widget.recycler.mp.d
                public int dq(View view) {
                    return kk.this.mn(view) - ((ViewGroup.MarginLayoutParams) ((o) view.getLayoutParams())).leftMargin;
                }

                @Override // com.bytedance.sdk.component.widget.recycler.mp.d
                public View dq(int i) {
                    return kk.this.ia(i);
                }
            };
            this.dq = dVar;
            mp.d dVar2 = new mp.d() { // from class: com.bytedance.sdk.component.widget.recycler.RecyclerView.kk.2
                @Override // com.bytedance.sdk.component.widget.recycler.mp.d
                public int d() {
                    return kk.this.e() - kk.this.bl();
                }

                @Override // com.bytedance.sdk.component.widget.recycler.mp.d
                public int d(View view) {
                    return kk.this.o(view) + ((ViewGroup.MarginLayoutParams) ((o) view.getLayoutParams())).bottomMargin;
                }

                @Override // com.bytedance.sdk.component.widget.recycler.mp.d
                public int dq() {
                    return kk.this.h();
                }

                @Override // com.bytedance.sdk.component.widget.recycler.mp.d
                public int dq(View view) {
                    return kk.this.ia(view) - ((ViewGroup.MarginLayoutParams) ((o) view.getLayoutParams())).topMargin;
                }

                @Override // com.bytedance.sdk.component.widget.recycler.mp.d
                public View dq(int i) {
                    return kk.this.ia(i);
                }
            };
            this.f2256d = dVar2;
            this.o = new com.bytedance.sdk.component.widget.recycler.mp(dVar);
            this.no = new com.bytedance.sdk.component.widget.recycler.mp(dVar2);
            this.mp = false;
            this.q = false;
            this.jy = false;
            this.ox = true;
            this.p = true;
        }

        private static boolean d(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            if (i3 > 0 && i != i3) {
                return false;
            }
            if (mode == Integer.MIN_VALUE) {
                return size >= i;
            }
            if (mode != 0) {
                return mode == 1073741824 && size == i;
            }
            return true;
        }

        private int[] d(RecyclerView recyclerView, View view, Rect rect, boolean z) {
            int kx = kx();
            int h = h();
            int wp = wp() - ji();
            int e2 = e() - bl();
            int left = (view.getLeft() + rect.left) - view.getScrollX();
            int top = (view.getTop() + rect.top) - view.getScrollY();
            int width = rect.width() + left;
            int height = rect.height() + top;
            int i = left - kx;
            int min = Math.min(0, i);
            int i2 = top - h;
            int min2 = Math.min(0, i2);
            int i3 = width - wp;
            int max = Math.max(0, i3);
            int max2 = Math.max(0, height - e2);
            if (gh() != 1) {
                if (min == 0) {
                    min = Math.min(i, max);
                }
                max = min;
            } else if (max == 0) {
                max = Math.max(min, i3);
            }
            if (min2 == 0) {
                min2 = Math.min(i2, max2);
            }
            return new int[]{max, min2};
        }

        public static int dq(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            return mode != Integer.MIN_VALUE ? mode != 1073741824 ? Math.max(i2, i3) : size : Math.min(size, Math.max(i2, i3));
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0017, code lost:
        
            if (r5 == 1073741824) goto L13;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public static int dq(int i, int i2, int i3, int i4, boolean z) {
            int max = Math.max(0, i - i3);
            if (z) {
                if (i4 < 0) {
                    if (i4 == -1) {
                        if (i2 != Integer.MIN_VALUE) {
                        }
                        i4 = max;
                    }
                    i2 = 0;
                    i4 = 0;
                }
                i2 = C.ENCODING_PCM_32BIT;
            } else {
                if (i4 < 0) {
                    if (i4 != -1) {
                        if (i4 == -2) {
                            i2 = (i2 == Integer.MIN_VALUE || i2 == 1073741824) ? Integer.MIN_VALUE : 0;
                        }
                        i2 = 0;
                        i4 = 0;
                    }
                    i4 = max;
                }
                i2 = C.ENCODING_PCM_32BIT;
            }
            return View.MeasureSpec.makeMeasureSpec(i4, i2);
        }

        private void dq(int i, View view) {
            this.ia.s(i);
        }

        private void dq(View view, int i, boolean z) {
            k s = RecyclerView.s(view);
            if (z || s.i()) {
                this.kk.ia.s(s);
            } else {
                this.kk.ia.iw(s);
            }
            o oVar = (o) view.getLayoutParams();
            if (s.jy() || s.mp()) {
                if (s.mp()) {
                    s.q();
                } else {
                    s.f();
                }
                this.ia.dq(view, i, view.getLayoutParams(), false);
            } else if (view.getParent() == this.kk) {
                int d2 = this.ia.d(view);
                if (i == -1) {
                    i = this.ia.d();
                }
                if (d2 == -1) {
                    StringBuilder sb = new StringBuilder("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:");
                    sb.append(this.kk.indexOfChild(view));
                    throw new IllegalStateException(tn.d(this.kk, sb));
                }
                if (d2 != i) {
                    this.kk.q.p(d2, i);
                }
            } else {
                this.ia.dq(view, i, false);
                oVar.ox = true;
                gh ghVar = this.ig;
                if (ghVar != null && ghVar.mn()) {
                    this.ig.d(view);
                }
            }
            if (oVar.p) {
                s.p.invalidate();
                oVar.p = false;
            }
        }

        private void dq(f fVar, int i, View view) {
            k s = RecyclerView.s(view);
            if (s.mn()) {
                return;
            }
            if (s.cd() && !s.i() && !this.kk.mp.d()) {
                iw(i);
                fVar.d(s);
            } else {
                mn(i);
                fVar.ox(view);
                this.kk.ia.ia(s);
            }
        }

        private boolean dq(RecyclerView recyclerView, int i, int i2) {
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild == null) {
                return false;
            }
            int kx = kx();
            int h = h();
            int wp = wp() - ji();
            int e2 = e() - bl();
            Rect rect = this.kk.no;
            dq(focusedChild, rect);
            return rect.left - i < wp && rect.right - i > kx && rect.top - i2 < e2 && rect.bottom - i2 > h;
        }

        public int bl() {
            RecyclerView recyclerView = this.kk;
            if (recyclerView != null) {
                return recyclerView.getPaddingBottom();
            }
            return 0;
        }

        public void c() {
            gh ghVar = this.ig;
            if (ghVar != null) {
                ghVar.s();
            }
        }

        public boolean cd() {
            gh ghVar = this.ig;
            return ghVar != null && ghVar.mn();
        }

        public boolean ce() {
            int i = i();
            for (int i2 = 0; i2 < i; i2++) {
                ViewGroup.LayoutParams layoutParams = ia(i2).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
            return false;
        }

        public int d(int i, f fVar, r rVar) {
            return 0;
        }

        public View d(int i) {
            int i2 = i();
            for (int i3 = 0; i3 < i2; i3++) {
                View ia = ia(i3);
                k s = RecyclerView.s(ia);
                if (s != null && s.ia() == i && !s.mn() && (this.kk.bl.dq() || !s.i())) {
                    return ia;
                }
            }
            return null;
        }

        public abstract o d();

        public void d(int i, int i2) {
            this.mn = View.MeasureSpec.getSize(i);
            int mode = View.MeasureSpec.getMode(i);
            this.s = mode;
            if (mode == 0 && !RecyclerView.f2240d) {
                this.mn = 0;
            }
            this.cd = View.MeasureSpec.getSize(i2);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.iw = mode2;
            if (mode2 != 0 || RecyclerView.f2240d) {
                return;
            }
            this.cd = 0;
        }

        public void d(View view) {
            d(view, -1);
        }

        public void d(View view, int i) {
            dq(view, i, false);
        }

        public void d(f fVar) {
            int s = fVar.s();
            for (int i = s - 1; i >= 0; i--) {
                View p = fVar.p(i);
                k s2 = RecyclerView.s(p);
                if (!s2.mn()) {
                    s2.dq(false);
                    if (s2.le()) {
                        this.kk.removeDetachedView(p, false);
                    }
                    iw iwVar = this.kk.f2244e;
                    if (iwVar != null) {
                        iwVar.p(s2);
                    }
                    s2.dq(true);
                    fVar.d(p);
                }
            }
            fVar.iw();
            if (s > 0) {
                this.kk.invalidate();
            }
        }

        public void d(gh ghVar) {
            if (this.ig == ghVar) {
                this.ig = null;
            }
        }

        public void d(r rVar) {
        }

        public void d(RecyclerView recyclerView) {
            this.q = true;
            ox(recyclerView);
        }

        public void d(RecyclerView recyclerView, f fVar) {
            this.q = false;
            dq(recyclerView, fVar);
        }

        public final void d(boolean z) {
            if (z != this.p) {
                this.p = z;
                this.f2257f = 0;
                RecyclerView recyclerView = this.kk;
                if (recyclerView != null) {
                    recyclerView.s.d();
                }
            }
        }

        public int dq(int i, f fVar, r rVar) {
            return 0;
        }

        public View dq(View view, int i, f fVar, r rVar) {
            return null;
        }

        public o dq(Context context, AttributeSet attributeSet) {
            return new o(context, attributeSet);
        }

        public o dq(ViewGroup.LayoutParams layoutParams) {
            return layoutParams instanceof o ? new o((o) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new o((ViewGroup.MarginLayoutParams) layoutParams) : new o(layoutParams);
        }

        public void dq(int i, int i2, r rVar, dq dqVar) {
        }

        public void dq(int i, f fVar) {
            View ia = ia(i);
            iw(i);
            fVar.dq(ia);
        }

        public void dq(int i, dq dqVar) {
        }

        public void dq(Rect rect, int i, int i2) {
            s(dq(i, ji() + kx() + rect.width(), ir()), dq(i2, bl() + h() + rect.height(), u()));
        }

        public void dq(View view) {
            dq(view, -1);
        }

        public void dq(View view, int i) {
            dq(view, i, true);
        }

        public void dq(View view, int i, int i2) {
            o oVar = (o) view.getLayoutParams();
            Rect kk = this.kk.kk(view);
            int i3 = kk.left + kk.right + i;
            int i4 = kk.top + kk.bottom + i2;
            int dq2 = dq(wp(), le(), ji() + kx() + ((ViewGroup.MarginLayoutParams) oVar).leftMargin + ((ViewGroup.MarginLayoutParams) oVar).rightMargin + i3, ((ViewGroup.MarginLayoutParams) oVar).width, ox());
            int dq3 = dq(e(), k(), bl() + h() + ((ViewGroup.MarginLayoutParams) oVar).topMargin + ((ViewGroup.MarginLayoutParams) oVar).bottomMargin + i4, ((ViewGroup.MarginLayoutParams) oVar).height, p());
            if (dq(view, dq2, dq3, oVar)) {
                view.measure(dq2, dq3);
            }
        }

        public void dq(View view, int i, int i2, int i3, int i4) {
            o oVar = (o) view.getLayoutParams();
            Rect rect = oVar.f2259d;
            view.layout(i + rect.left + ((ViewGroup.MarginLayoutParams) oVar).leftMargin, i2 + rect.top + ((ViewGroup.MarginLayoutParams) oVar).topMargin, (i3 - rect.right) - ((ViewGroup.MarginLayoutParams) oVar).rightMargin, (i4 - rect.bottom) - ((ViewGroup.MarginLayoutParams) oVar).bottomMargin);
        }

        public void dq(View view, int i, o oVar) {
            k s = RecyclerView.s(view);
            if (s.i()) {
                this.kk.ia.s(s);
            } else {
                this.kk.ia.iw(s);
            }
            this.ia.dq(view, i, oVar, s.i());
        }

        public void dq(View view, Rect rect) {
            RecyclerView.dq(view, rect);
        }

        public void dq(View view, f fVar) {
            ox(view);
            fVar.dq(view);
        }

        public void dq(View view, boolean z, Rect rect) {
            Matrix matrix;
            if (z) {
                Rect rect2 = ((o) view.getLayoutParams()).f2259d;
                rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            } else {
                rect.set(0, 0, view.getWidth(), view.getHeight());
            }
            if (this.kk != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
                RectF rectF = this.kk.ig;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        public void dq(f fVar) {
            for (int i = i() - 1; i >= 0; i--) {
                dq(fVar, i, ia(i));
            }
        }

        public void dq(f fVar, r rVar) {
            Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
        }

        public void dq(f fVar, r rVar, int i, int i2) {
            this.kk.s(i, i2);
        }

        public void dq(gh ghVar) {
            gh ghVar2 = this.ig;
            if (ghVar2 != null && ghVar != ghVar2 && ghVar2.mn()) {
                this.ig.s();
            }
            this.ig = ghVar;
            ghVar.dq(this.kk, this);
        }

        public void dq(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.kk = null;
                this.ia = null;
                this.mn = 0;
                this.cd = 0;
            } else {
                this.kk = recyclerView;
                this.ia = recyclerView.mn;
                this.mn = recyclerView.getWidth();
                this.cd = recyclerView.getHeight();
            }
            this.s = C.ENCODING_PCM_32BIT;
            this.iw = C.ENCODING_PCM_32BIT;
        }

        public void dq(RecyclerView recyclerView, f fVar) {
        }

        public void dq(RecyclerView recyclerView, r rVar, int i) {
            Log.e("RecyclerView", "You must override smoothScrollToPosition to support smooth scrolling");
        }

        public void dq(String str) {
            RecyclerView recyclerView = this.kk;
            if (recyclerView != null) {
                recyclerView.dq(str);
            }
        }

        public boolean dq() {
            return this.jy;
        }

        public boolean dq(View view, int i, int i2, o oVar) {
            return (!view.isLayoutRequested() && this.ox && d(view.getWidth(), i, ((ViewGroup.MarginLayoutParams) oVar).width) && d(view.getHeight(), i2, ((ViewGroup.MarginLayoutParams) oVar).height)) ? false : true;
        }

        public boolean dq(o oVar) {
            return oVar != null;
        }

        public boolean dq(RecyclerView recyclerView, View view, Rect rect, boolean z) {
            return dq(recyclerView, view, rect, z, false);
        }

        public boolean dq(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
            int[] d2 = d(recyclerView, view, rect, z);
            int i = d2[0];
            int i2 = d2[1];
            if ((z2 && !dq(recyclerView, i, i2)) || (i == 0 && i2 == 0)) {
                return false;
            }
            if (z) {
                recyclerView.scrollBy(i, i2);
            } else {
                recyclerView.dq(i, i2);
            }
            return true;
        }

        @Deprecated
        public boolean dq(RecyclerView recyclerView, View view, View view2) {
            return cd() || recyclerView.q();
        }

        public boolean dq(RecyclerView recyclerView, r rVar, View view, View view2) {
            return dq(recyclerView, view, view2);
        }

        public boolean dq(RecyclerView recyclerView, ArrayList<View> arrayList, int i, int i2) {
            return false;
        }

        public int e() {
            return this.cd;
        }

        public final boolean f() {
            return this.p;
        }

        public boolean fw() {
            RecyclerView recyclerView = this.kk;
            return recyclerView != null && recyclerView.kk;
        }

        public int gh() {
            return com.bytedance.sdk.component.widget.recycler.dq.ox.mn.dq(this.kk);
        }

        public int h() {
            RecyclerView recyclerView = this.kk;
            if (recyclerView != null) {
                return recyclerView.getPaddingTop();
            }
            return 0;
        }

        public int i() {
            com.bytedance.sdk.component.widget.recycler.d dVar = this.ia;
            if (dVar != null) {
                return dVar.d();
            }
            return 0;
        }

        public int ia(View view) {
            return view.getTop() - no(view);
        }

        public int ia(r rVar) {
            return 0;
        }

        public View ia(int i) {
            com.bytedance.sdk.component.widget.recycler.d dVar = this.ia;
            if (dVar != null) {
                return dVar.d(i);
            }
            return null;
        }

        public int ig(View view) {
            return ((o) view.getLayoutParams()).f2259d.bottom;
        }

        public int ir() {
            return com.bytedance.sdk.component.widget.recycler.dq.ox.mn.p(this.kk);
        }

        public int iw(View view) {
            Rect rect = ((o) view.getLayoutParams()).f2259d;
            return view.getMeasuredHeight() + rect.top + rect.bottom;
        }

        public int iw(r rVar) {
            return 0;
        }

        public void iw(int i) {
            if (ia(i) != null) {
                this.ia.dq(i);
            }
        }

        public int ji() {
            RecyclerView recyclerView = this.kk;
            if (recyclerView != null) {
                return recyclerView.getPaddingRight();
            }
            return 0;
        }

        public void jy() {
            RecyclerView recyclerView = this.kk;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }

        public int k() {
            return this.iw;
        }

        public int kk(View view) {
            return q(view) + view.getRight();
        }

        public void kk(int i) {
            RecyclerView recyclerView = this.kk;
            if (recyclerView != null) {
                recyclerView.mn(i);
            }
        }

        public boolean kk() {
            return false;
        }

        public int kx() {
            RecyclerView recyclerView = this.kk;
            if (recyclerView != null) {
                return recyclerView.getPaddingLeft();
            }
            return 0;
        }

        public int le() {
            return this.s;
        }

        public int mn(View view) {
            return view.getLeft() - mp(view);
        }

        public int mn(r rVar) {
            return 0;
        }

        public void mn(int i) {
            dq(i, ia(i));
        }

        public int mp(View view) {
            return ((o) view.getLayoutParams()).f2259d.left;
        }

        public View n() {
            View focusedChild;
            RecyclerView recyclerView = this.kk;
            if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.ia.ox(focusedChild)) {
                return null;
            }
            return focusedChild;
        }

        public int no(View view) {
            return ((o) view.getLayoutParams()).f2259d.top;
        }

        public void no(int i) {
        }

        public int o(View view) {
            return ig(view) + view.getBottom();
        }

        public void o(int i) {
            RecyclerView recyclerView = this.kk;
            if (recyclerView != null) {
                recyclerView.iw(i);
            }
        }

        public int op() {
            RecyclerView recyclerView = this.kk;
            dq adapter = recyclerView != null ? recyclerView.getAdapter() : null;
            if (adapter != null) {
                return adapter.dq();
            }
            return 0;
        }

        public int ox(r rVar) {
            return 0;
        }

        public void ox(int i, int i2) {
            int i3 = i();
            if (i3 == 0) {
                this.kk.s(i, i2);
                return;
            }
            int i4 = Integer.MIN_VALUE;
            int i5 = Integer.MIN_VALUE;
            int i6 = he.UNDEFINED_ITEM_ID;
            int i7 = he.UNDEFINED_ITEM_ID;
            for (int i8 = 0; i8 < i3; i8++) {
                View ia = ia(i8);
                Rect rect = this.kk.no;
                dq(ia, rect);
                int i9 = rect.left;
                if (i9 < i6) {
                    i6 = i9;
                }
                int i10 = rect.right;
                if (i10 > i4) {
                    i4 = i10;
                }
                int i11 = rect.top;
                if (i11 < i7) {
                    i7 = i11;
                }
                int i12 = rect.bottom;
                if (i12 > i5) {
                    i5 = i12;
                }
            }
            this.kk.no.set(i6, i7, i4, i5);
            dq(this.kk.no, i, i2);
        }

        public void ox(View view) {
            this.ia.dq(view);
        }

        public void ox(View view, int i) {
            dq(view, i, (o) view.getLayoutParams());
        }

        public void ox(f fVar) {
            for (int i = i() - 1; i >= 0; i--) {
                if (!RecyclerView.s(ia(i)).mn()) {
                    dq(i, fVar);
                }
            }
        }

        public void ox(RecyclerView recyclerView) {
        }

        public boolean ox() {
            return false;
        }

        public int p(View view) {
            return ((o) view.getLayoutParams()).p();
        }

        public int p(r rVar) {
            return 0;
        }

        public View p(View view, int i) {
            return null;
        }

        public void p(int i) {
        }

        public void p(int i, int i2) {
            View ia = ia(i);
            if (ia != null) {
                mn(i);
                ox(ia, i2);
            } else {
                throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i + this.kk.toString());
            }
        }

        public void p(RecyclerView recyclerView) {
            d(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), C.ENCODING_PCM_32BIT));
        }

        public boolean p() {
            return false;
        }

        public int q(View view) {
            return ((o) view.getLayoutParams()).f2259d.right;
        }

        public boolean q() {
            return false;
        }

        public int r() {
            return -1;
        }

        public int s(View view) {
            Rect rect = ((o) view.getLayoutParams()).f2259d;
            return view.getMeasuredWidth() + rect.left + rect.right;
        }

        public int s(r rVar) {
            return 0;
        }

        public void s(int i, int i2) {
            this.kk.setMeasuredDimension(i, i2);
        }

        public int u() {
            return com.bytedance.sdk.component.widget.recycler.dq.ox.mn.s(this.kk);
        }

        public int wp() {
            return this.mn;
        }
    }

    public class le implements Runnable {

        /* renamed from: d, reason: collision with root package name */
        Interpolator f2258d;
        OverScroller dq;
        private boolean iw;
        private boolean mn;
        private int p;
        private int s;

        public le() {
            Interpolator interpolator = RecyclerView.er;
            this.f2258d = interpolator;
            this.iw = false;
            this.mn = false;
            this.dq = new OverScroller(RecyclerView.this.getContext(), interpolator);
        }

        private int d(int i, int i2, int i3, int i4) {
            int i5;
            int abs = Math.abs(i);
            int abs2 = Math.abs(i2);
            boolean z = abs > abs2;
            int sqrt = (int) Math.sqrt((i4 * i4) + (i3 * i3));
            int sqrt2 = (int) Math.sqrt((i2 * i2) + (i * i));
            RecyclerView recyclerView = RecyclerView.this;
            int width = z ? recyclerView.getWidth() : recyclerView.getHeight();
            int i6 = width / 2;
            float f2 = width;
            float f3 = i6;
            float dq = (dq(Math.min(1.0f, (sqrt2 * 1.0f) / f2)) * f3) + f3;
            if (sqrt > 0) {
                i5 = Math.round(Math.abs(dq / sqrt) * 1000.0f) * 4;
            } else {
                if (!z) {
                    abs = abs2;
                }
                i5 = (int) (((abs / f2) + 1.0f) * 300.0f);
            }
            return Math.min(i5, ZeusPluginEventCallback.EVENT_START_LOAD);
        }

        private float dq(float f2) {
            return (float) Math.sin((f2 - 0.5f) * 0.47123894f);
        }

        private void ox() {
            this.mn = false;
            this.iw = true;
        }

        private void p() {
            this.iw = false;
            if (this.mn) {
                dq();
            }
        }

        public void d() {
            RecyclerView.this.removeCallbacks(this);
            this.dq.abortAnimation();
        }

        public void d(int i, int i2) {
            dq(i, i2, 0, 0);
        }

        public void dq() {
            if (this.iw) {
                this.mn = true;
            } else {
                RecyclerView.this.removeCallbacks(this);
                com.bytedance.sdk.component.widget.recycler.dq.ox.mn.dq(RecyclerView.this, this);
            }
        }

        public void dq(int i, int i2) {
            RecyclerView.this.setScrollState(2);
            this.s = 0;
            this.p = 0;
            this.dq.fling(0, 0, i, i2, Integer.MIN_VALUE, he.UNDEFINED_ITEM_ID, Integer.MIN_VALUE, he.UNDEFINED_ITEM_ID);
            dq();
        }

        public void dq(int i, int i2, int i3) {
            dq(i, i2, i3, RecyclerView.er);
        }

        public void dq(int i, int i2, int i3, int i4) {
            dq(i, i2, d(i, i2, i3, i4));
        }

        public void dq(int i, int i2, int i3, Interpolator interpolator) {
            if (this.f2258d != interpolator) {
                this.f2258d = interpolator;
                this.dq = new OverScroller(RecyclerView.this.getContext(), interpolator);
            }
            RecyclerView.this.setScrollState(2);
            this.s = 0;
            this.p = 0;
            this.dq.startScroll(0, 0, i, i2, i3);
            if (Build.VERSION.SDK_INT < 23) {
                this.dq.computeScrollOffset();
            }
            dq();
        }

        public void dq(int i, int i2, Interpolator interpolator) {
            int d2 = d(i, i2, 0, 0);
            if (interpolator == null) {
                interpolator = RecyclerView.er;
            }
            dq(i, i2, d2, interpolator);
        }

        /* JADX WARN: Code restructure failed: missing block: B:56:0x00ec, code lost:
        
            if (r14 > 0) goto L51;
         */
        /* JADX WARN: Removed duplicated region for block: B:42:0x00e8  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x00f8  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x00ff A[ADDED_TO_REGION] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            int i;
            int i2;
            int i3;
            int i4;
            int i5;
            if (RecyclerView.this.q == null) {
                d();
                return;
            }
            ox();
            RecyclerView.this.p();
            OverScroller overScroller = this.dq;
            gh ghVar = RecyclerView.this.q.ig;
            if (overScroller.computeScrollOffset()) {
                int[] iArr = RecyclerView.this.u;
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                int i6 = currX - this.p;
                int i7 = currY - this.s;
                this.p = currX;
                this.s = currY;
                if (RecyclerView.this.dq(i6, i7, iArr, null, 1)) {
                    i6 -= iArr[0];
                    i7 -= iArr[1];
                }
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.mp != null) {
                    recyclerView.dq(i6, i7, recyclerView.f2243c);
                    int[] iArr2 = RecyclerView.this.f2243c;
                    int i8 = iArr2[0];
                    int i9 = iArr2[1];
                    int i10 = i6 - i8;
                    int i11 = i7 - i9;
                    if (ghVar != null && !ghVar.iw() && ghVar.mn()) {
                        int p = RecyclerView.this.bl.p();
                        if (p == 0) {
                            ghVar.s();
                        } else {
                            if (ghVar.ia() >= p) {
                                ghVar.ox(p - 1);
                            }
                            ghVar.dq(i6 - i10, i7 - i11);
                        }
                    }
                    i2 = i9;
                    i = i8;
                    i3 = i10;
                    i4 = i11;
                } else {
                    i = 0;
                    i2 = 0;
                    i3 = 0;
                    i4 = 0;
                }
                if (!RecyclerView.this.f2245f.isEmpty()) {
                    RecyclerView.this.invalidate();
                }
                if (RecyclerView.this.getOverScrollMode() != 2) {
                    RecyclerView.this.ox(i6, i7);
                }
                int i12 = i;
                int i13 = i2;
                int i14 = i3;
                int i15 = i4;
                if (!RecyclerView.this.dq(i, i2, i3, i4, (int[]) null, 1) && (i14 != 0 || i15 != 0)) {
                    int currVelocity = (int) overScroller.getCurrVelocity();
                    if (i14 != currX) {
                        if (i14 < 0) {
                            i5 = -currVelocity;
                        } else if (i14 > 0) {
                            i5 = currVelocity;
                        }
                        if (i15 != currY) {
                            if (i15 < 0) {
                                currVelocity = -currVelocity;
                            }
                            if (RecyclerView.this.getOverScrollMode() != 2) {
                                RecyclerView.this.p(i5, currVelocity);
                            }
                            if ((i5 == 0 || i14 == currX || overScroller.getFinalX() == 0) && (currVelocity != 0 || i15 == currY || overScroller.getFinalY() == 0)) {
                                overScroller.abortAnimation();
                            }
                        }
                        currVelocity = 0;
                        if (RecyclerView.this.getOverScrollMode() != 2) {
                        }
                        if (i5 == 0) {
                        }
                        overScroller.abortAnimation();
                    }
                    i5 = 0;
                    if (i15 != currY) {
                    }
                    currVelocity = 0;
                    if (RecyclerView.this.getOverScrollMode() != 2) {
                    }
                    if (i5 == 0) {
                    }
                    overScroller.abortAnimation();
                }
                if (i12 != 0 || i13 != 0) {
                    RecyclerView.this.ia(i12, i13);
                }
                if (!RecyclerView.this.awakenScrollBars()) {
                    RecyclerView.this.invalidate();
                }
                boolean z = (i6 == 0 && i7 == 0) || (i6 != 0 && RecyclerView.this.q.ox() && i12 == i6) || (i7 != 0 && RecyclerView.this.q.p() && i13 == i7);
                if (overScroller.isFinished() || !(z || RecyclerView.this.o(1))) {
                    RecyclerView.this.setScrollState(0);
                    if (RecyclerView.p) {
                        RecyclerView.this.ji.dq();
                    }
                    RecyclerView.this.kk(1);
                } else {
                    dq();
                    RecyclerView recyclerView2 = RecyclerView.this;
                    com.bytedance.sdk.component.widget.recycler.p pVar = recyclerView2.h;
                    if (pVar != null) {
                        pVar.dq(recyclerView2, i6, i7);
                    }
                }
            }
            if (ghVar != null) {
                if (ghVar.iw()) {
                    ghVar.dq(0, 0);
                }
                if (!this.mn) {
                    ghVar.s();
                }
            }
            p();
        }
    }

    public class mn implements iw.dq {
        public mn() {
        }

        @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.iw.dq
        public void dq(k kVar) {
            kVar.dq(true);
            if (kVar.no != null && kVar.ig == null) {
                kVar.no = null;
            }
            kVar.ig = null;
            if (kVar.ji() || RecyclerView.this.dq(kVar.p) || !kVar.le()) {
                return;
            }
            RecyclerView.this.removeDetachedView(kVar.p, false);
        }
    }

    public interface mp {
        boolean dq(RecyclerView recyclerView, MotionEvent motionEvent);
    }

    public interface no {
        void d(View view);

        void dq(View view);
    }

    public static class o extends ViewGroup.MarginLayoutParams {

        /* renamed from: d, reason: collision with root package name */
        final Rect f2259d;
        k dq;
        boolean ox;
        boolean p;

        public o(int i, int i2) {
            super(i, i2);
            this.f2259d = new Rect();
            this.ox = true;
            this.p = false;
        }

        public o(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f2259d = new Rect();
            this.ox = true;
            this.p = false;
        }

        public o(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f2259d = new Rect();
            this.ox = true;
            this.p = false;
        }

        public o(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f2259d = new Rect();
            this.ox = true;
            this.p = false;
        }

        public o(o oVar) {
            super((ViewGroup.MarginLayoutParams) oVar);
            this.f2259d = new Rect();
            this.ox = true;
            this.p = false;
        }

        public boolean d() {
            return this.dq.i();
        }

        public boolean dq() {
            return this.dq.cd();
        }

        public boolean ox() {
            return this.dq.n();
        }

        public int p() {
            return this.dq.ia();
        }
    }

    public static abstract class ox {
        public void dq() {
        }

        public void dq(int i, int i2, Object obj) {
        }
    }

    public interface p {
        int dq(int i, int i2);
    }

    public static abstract class q {
        public void dq(RecyclerView recyclerView, int i) {
        }

        public void dq(RecyclerView recyclerView, int i, int i2) {
        }
    }

    public static class r {

        /* renamed from: f, reason: collision with root package name */
        int f2261f;
        private SparseArray<Object> fw;
        int ig;
        int jy;
        long mp;
        int q;
        int dq = -1;

        /* renamed from: d, reason: collision with root package name */
        int f2260d = 0;
        int ox = 0;
        int p = 1;
        int s = 0;
        boolean iw = false;
        boolean mn = false;
        boolean ia = false;
        boolean kk = false;
        boolean o = false;
        boolean no = false;

        public boolean d() {
            return this.no;
        }

        public void dq(int i) {
            if ((this.p & i) != 0) {
                return;
            }
            throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i) + " but it is " + Integer.toBinaryString(this.p));
        }

        public void dq(dq dqVar) {
            this.p = 1;
            this.s = dqVar.dq();
            this.mn = false;
            this.ia = false;
            this.kk = false;
        }

        public boolean dq() {
            return this.mn;
        }

        public boolean ox() {
            return this.dq != -1;
        }

        public int p() {
            return this.mn ? this.f2260d - this.ox : this.s;
        }

        public String toString() {
            return "State{mTargetPosition=" + this.dq + ", mData=" + this.fw + ", mItemCount=" + this.s + ", mIsMeasuring=" + this.kk + ", mPreviousLayoutItemCount=" + this.f2260d + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.ox + ", mStructureChanged=" + this.iw + ", mInPreLayout=" + this.mn + ", mRunSimpleAnimations=" + this.o + ", mRunPredictiveAnimations=" + this.no + '}';
        }
    }

    public static class s {
        public EdgeEffect dq(RecyclerView recyclerView, int i) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        dq = false;
        f2240d = i2 >= 23;
        ox = true;
        p = true;
        nh = false;
        vf = false;
        Class<?> cls = Integer.TYPE;
        ob = new Class[]{Context.class, AttributeSet.class, cls, cls};
        er = new Interpolator() { // from class: com.bytedance.sdk.component.widget.recycler.RecyclerView.6
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f2) {
                float f3 = f2 - 1.0f;
                return (f3 * f3 * f3 * f3 * f3) + 1.0f;
            }
        };
    }

    public RecyclerView(Context context) {
        this(context, null);
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RecyclerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.l = new cd();
        this.s = new f();
        this.ia = new com.bytedance.sdk.component.widget.recycler.q();
        this.o = new Runnable() { // from class: com.bytedance.sdk.component.widget.recycler.RecyclerView.1
            @Override // java.lang.Runnable
            public void run() {
                RecyclerView recyclerView = RecyclerView.this;
                if (!recyclerView.gh || recyclerView.isLayoutRequested()) {
                    return;
                }
                RecyclerView recyclerView2 = RecyclerView.this;
                if (!recyclerView2.fw) {
                    recyclerView2.requestLayout();
                } else if (recyclerView2.i) {
                    recyclerView2.r = true;
                } else {
                    recyclerView2.p();
                }
            }
        };
        this.no = new Rect();
        this.t = new Rect();
        this.ig = new RectF();
        this.f2245f = new ArrayList<>();
        this.gx = new ArrayList<>();
        this.uh = 0;
        this.k = false;
        this.wp = false;
        this.vw = 0;
        this.ha = 0;
        this.cv = new s();
        this.f2244e = new com.bytedance.sdk.component.widget.recycler.ox();
        this.ws = 0;
        this.ij = -1;
        this.jo = Float.MIN_VALUE;
        this.yo = Float.MIN_VALUE;
        this.hf = true;
        this.kx = new le();
        this.ji = p ? new p.dq() : null;
        this.bl = new r();
        this.n = false;
        this.op = false;
        this.xj = new mn();
        this.ir = false;
        this.x = new int[2];
        this.nt = new int[2];
        this.u = new int[2];
        this.tv = new int[2];
        this.f2243c = new int[2];
        this.ce = new ArrayList();
        this.ny = new Runnable() { // from class: com.bytedance.sdk.component.widget.recycler.RecyclerView.2
            @Override // java.lang.Runnable
            public void run() {
                iw iwVar = RecyclerView.this.f2244e;
                if (iwVar != null) {
                    iwVar.dq();
                }
                RecyclerView.this.ir = false;
            }
        };
        this.f2241a = new q.d() { // from class: com.bytedance.sdk.component.widget.recycler.RecyclerView.3
            @Override // com.bytedance.sdk.component.widget.recycler.q.d
            public void d(k kVar, iw.d dVar, iw.d dVar2) {
                RecyclerView.this.dq(kVar, dVar, dVar2);
            }

            @Override // com.bytedance.sdk.component.widget.recycler.q.d
            public void dq(k kVar) {
                RecyclerView recyclerView = RecyclerView.this;
                recyclerView.q.dq(kVar.p, recyclerView.s);
            }

            @Override // com.bytedance.sdk.component.widget.recycler.q.d
            public void dq(k kVar, iw.d dVar, iw.d dVar2) {
                RecyclerView.this.s.ox(kVar);
                RecyclerView.this.d(kVar, dVar, dVar2);
            }

            @Override // com.bytedance.sdk.component.widget.recycler.q.d
            public void ox(k kVar, iw.d dVar, iw.d dVar2) {
                kVar.dq(false);
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.k) {
                    if (recyclerView.f2244e.dq(kVar, kVar, dVar, dVar2)) {
                        RecyclerView.this.jy();
                    }
                } else if (recyclerView.f2244e.ox(kVar, dVar, dVar2)) {
                    RecyclerView.this.jy();
                }
            }
        };
        if (attributeSet != null) {
            try {
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j, i2, 0);
                this.kk = obtainStyledAttributes.getBoolean(0, true);
                obtainStyledAttributes.recycle();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } else {
            this.kk = true;
        }
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.xv = viewConfiguration.getScaledTouchSlop();
        this.jo = com.bytedance.sdk.component.widget.recycler.dq.ox.mn.dq(viewConfiguration, context);
        this.yo = com.bytedance.sdk.component.widget.recycler.dq.ox.mn.d(viewConfiguration, context);
        this.cc = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mc = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.f2244e.dq(this.xj);
        d();
        e();
        wp();
        if (com.bytedance.sdk.component.widget.recycler.dq.ox.mn.d(this) == 0) {
            com.bytedance.sdk.component.widget.recycler.dq.ox.mn.dq(this, 1);
        }
        this.v = (AccessibilityManager) getContext().getSystemService("accessibility");
        try {
            if (attributeSet != null) {
                setDescendantFocusability(262144);
            } else {
                setDescendantFocusability(262144);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        setNestedScrollingEnabled(true);
    }

    private void bl() {
        VelocityTracker velocityTracker = this.xi;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        kk(0);
        ji();
    }

    private void c() {
        View focusedChild = (this.hf && hasFocus() && this.mp != null) ? getFocusedChild() : null;
        k p2 = focusedChild != null ? p(focusedChild) : null;
        if (p2 == null) {
            ce();
            return;
        }
        this.bl.mp = this.mp.d() ? p2.no() : -1L;
        this.bl.ig = this.k ? -1 : p2.i() ? p2.mn : p2.kk();
        this.bl.q = mp(p2.p);
    }

    private void ce() {
        r rVar = this.bl;
        rVar.mp = -1L;
        rVar.ig = -1;
        rVar.q = -1;
    }

    private boolean d(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (this.by != null) {
            if (action != 0) {
                if (action == 3 || action == 1) {
                    this.by = null;
                }
                return true;
            }
            this.by = null;
        }
        if (action != 0) {
            int size = this.gx.size();
            for (int i2 = 0; i2 < size; i2++) {
                mp mpVar = this.gx.get(i2);
                if (mpVar.dq(this, motionEvent)) {
                    this.by = mpVar;
                    return true;
                }
            }
        }
        return false;
    }

    public static <T> T dq(T t) {
        t.getClass();
        return t;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void dq(float f2, float f3, float f4, float f5) {
        boolean z;
        boolean z2 = true;
        if (f3 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            mn();
            com.bytedance.sdk.component.widget.recycler.dq.ox.dq.dq(this.dc, (-f3) / getWidth(), 1.0f - (f4 / getHeight()));
        } else {
            if (f3 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                z = false;
                if (f5 >= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    kk();
                    com.bytedance.sdk.component.widget.recycler.dq.ox.dq.dq(this.jw, (-f5) / getHeight(), f2 / getWidth());
                } else if (f5 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    o();
                    com.bytedance.sdk.component.widget.recycler.dq.ox.dq.dq(this.bu, f5 / getHeight(), 1.0f - (f2 / getWidth()));
                } else {
                    z2 = z;
                }
                if (z2 && f3 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && f5 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    return;
                }
                com.bytedance.sdk.component.widget.recycler.dq.ox.mn.ox(this);
            }
            ia();
            com.bytedance.sdk.component.widget.recycler.dq.ox.dq.dq(this.fd, f3 / getWidth(), f4 / getHeight());
        }
        z = true;
        if (f5 >= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
        }
        if (z2) {
        }
        com.bytedance.sdk.component.widget.recycler.dq.ox.mn.ox(this);
    }

    private void dq(long j2, k kVar, k kVar2) {
        int d2 = this.mn.d();
        for (int i2 = 0; i2 < d2; i2++) {
            k s2 = s(this.mn.d(i2));
            if (s2 != kVar && dq(s2) == j2) {
                dq dqVar = this.mp;
                if (dqVar == null || !dqVar.d()) {
                    StringBuilder sb = new StringBuilder("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:");
                    sb.append(s2);
                    sb.append(" \n View Holder 2:");
                    sb.append(kVar);
                    throw new IllegalStateException(tn.d(this, sb));
                }
                StringBuilder sb2 = new StringBuilder("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:");
                sb2.append(s2);
                sb2.append(" \n View Holder 2:");
                sb2.append(kVar);
                throw new IllegalStateException(tn.d(this, sb2));
            }
        }
        Log.e("RecyclerView", "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + kVar2 + " cannot be found but it is necessary for " + kVar + dq());
    }

    public static void dq(View view, Rect rect) {
        o oVar = (o) view.getLayoutParams();
        Rect rect2 = oVar.f2259d;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) oVar).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) oVar).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) oVar).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) oVar).bottomMargin);
    }

    private void dq(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        this.no.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof o) {
            o oVar = (o) layoutParams;
            if (!oVar.ox) {
                Rect rect = oVar.f2259d;
                Rect rect2 = this.no;
                rect2.left -= rect.left;
                rect2.right += rect.right;
                rect2.top -= rect.top;
                rect2.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.no);
            offsetRectIntoDescendantCoords(view, this.no);
        }
        this.q.dq(this, view, this.no, !this.gh, view2 == null);
    }

    private void dq(dq dqVar, boolean z, boolean z2) {
        dq dqVar2 = this.mp;
        if (dqVar2 != null) {
            dqVar2.d(this.l);
        }
        if (!z || z2) {
            ox();
        }
        this.iw.dq();
        dq dqVar3 = this.mp;
        this.mp = dqVar;
        if (dqVar != null) {
            dqVar.dq(this.l);
        }
        this.s.dq(dqVar3, this.mp, z);
        this.bl.iw = true;
    }

    private void dq(k kVar, k kVar2, iw.d dVar, iw.d dVar2, boolean z, boolean z2) {
        kVar.dq(false);
        if (z) {
            s(kVar);
        }
        if (kVar != kVar2) {
            if (z2) {
                s(kVar2);
            }
            kVar.no = kVar2;
            s(kVar);
            this.s.ox(kVar);
            kVar2.dq(false);
            kVar2.ig = kVar;
        }
        if (this.f2244e.dq(kVar, kVar2, dVar, dVar2)) {
            jy();
        }
    }

    private void dq(int[] iArr) {
        int d2 = this.mn.d();
        if (d2 == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i2 = he.UNDEFINED_ITEM_ID;
        int i3 = Integer.MIN_VALUE;
        for (int i4 = 0; i4 < d2; i4++) {
            k s2 = s(this.mn.d(i4));
            if (!s2.mn()) {
                int ia2 = s2.ia();
                if (ia2 < i2) {
                    i2 = ia2;
                }
                if (ia2 > i3) {
                    i3 = ia2;
                }
            }
        }
        iArr[0] = i2;
        iArr[1] = i3;
    }

    private boolean dq(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 3 || action == 0) {
            this.by = null;
        }
        int size = this.gx.size();
        for (int i2 = 0; i2 < size; i2++) {
            mp mpVar = this.gx.get(i2);
            if (mpVar.dq(this, motionEvent) && action != 3) {
                this.by = mpVar;
                return true;
            }
        }
        return false;
    }

    private boolean dq(View view, View view2, int i2) {
        int i3;
        if (view2 == null || view2 == this || ox(view2) == null) {
            return false;
        }
        if (view == null || ox(view) == null) {
            return true;
        }
        this.no.set(0, 0, view.getWidth(), view.getHeight());
        this.t.set(0, 0, view2.getWidth(), view2.getHeight());
        offsetDescendantRectToMyCoords(view, this.no);
        offsetDescendantRectToMyCoords(view2, this.t);
        char c2 = 65535;
        int i4 = this.q.gh() == 1 ? -1 : 1;
        Rect rect = this.no;
        int i5 = rect.left;
        Rect rect2 = this.t;
        int i6 = rect2.left;
        if ((i5 < i6 || rect.right <= i6) && rect.right < rect2.right) {
            i3 = 1;
        } else {
            int i7 = rect.right;
            int i8 = rect2.right;
            i3 = ((i7 > i8 || i5 >= i8) && i5 > i6) ? -1 : 0;
        }
        int i9 = rect.top;
        int i10 = rect2.top;
        if ((i9 < i10 || rect.bottom <= i10) && rect.bottom < rect2.bottom) {
            c2 = 1;
        } else {
            int i11 = rect.bottom;
            int i12 = rect2.bottom;
            if ((i11 <= i12 && i9 < i12) || i9 <= i10) {
                c2 = 0;
            }
        }
        if (i2 == 1) {
            return c2 < 0 || (c2 == 0 && i3 * i4 <= 0);
        }
        if (i2 == 2) {
            return c2 > 0 || (c2 == 0 && i3 * i4 >= 0);
        }
        if (i2 == 17) {
            return i3 < 0;
        }
        if (i2 == 33) {
            return c2 < 0;
        }
        if (i2 == 66) {
            return i3 > 0;
        }
        if (i2 == 130) {
            return c2 > 0;
        }
        StringBuilder sb = new StringBuilder("Invalid direction: ");
        sb.append(i2);
        throw new IllegalArgumentException(tn.d(this, sb));
    }

    private void e() {
        this.mn = new com.bytedance.sdk.component.widget.recycler.d(new d.InterfaceC0131d() { // from class: com.bytedance.sdk.component.widget.recycler.RecyclerView.4
            @Override // com.bytedance.sdk.component.widget.recycler.d.InterfaceC0131d
            public View d(int i2) {
                return RecyclerView.this.getChildAt(i2);
            }

            @Override // com.bytedance.sdk.component.widget.recycler.d.InterfaceC0131d
            public k d(View view) {
                return RecyclerView.s(view);
            }

            @Override // com.bytedance.sdk.component.widget.recycler.d.InterfaceC0131d
            public void d() {
                int dq2 = dq();
                for (int i2 = 0; i2 < dq2; i2++) {
                    View d2 = d(i2);
                    RecyclerView.this.no(d2);
                    d2.clearAnimation();
                }
                RecyclerView.this.removeAllViews();
            }

            @Override // com.bytedance.sdk.component.widget.recycler.d.InterfaceC0131d
            public int dq() {
                return RecyclerView.this.getChildCount();
            }

            @Override // com.bytedance.sdk.component.widget.recycler.d.InterfaceC0131d
            public int dq(View view) {
                return RecyclerView.this.indexOfChild(view);
            }

            @Override // com.bytedance.sdk.component.widget.recycler.d.InterfaceC0131d
            public void dq(int i2) {
                View childAt = RecyclerView.this.getChildAt(i2);
                if (childAt != null) {
                    RecyclerView.this.no(childAt);
                    childAt.clearAnimation();
                }
                RecyclerView.this.removeViewAt(i2);
            }

            @Override // com.bytedance.sdk.component.widget.recycler.d.InterfaceC0131d
            public void dq(View view, int i2) {
                RecyclerView.this.addView(view, i2);
                RecyclerView.this.ig(view);
            }

            @Override // com.bytedance.sdk.component.widget.recycler.d.InterfaceC0131d
            public void dq(View view, int i2, ViewGroup.LayoutParams layoutParams) {
                k s2 = RecyclerView.s(view);
                if (s2 != null) {
                    if (!s2.le() && !s2.mn()) {
                        StringBuilder sb = new StringBuilder("Called attach on a child which is not detached: ");
                        sb.append(s2);
                        throw new IllegalArgumentException(tn.d(RecyclerView.this, sb));
                    }
                    s2.fw();
                }
                RecyclerView.this.attachViewToParent(view, i2, layoutParams);
            }

            @Override // com.bytedance.sdk.component.widget.recycler.d.InterfaceC0131d
            public void ox(int i2) {
                k s2;
                View d2 = d(i2);
                if (d2 != null && (s2 = RecyclerView.s(d2)) != null) {
                    if (s2.le() && !s2.mn()) {
                        StringBuilder sb = new StringBuilder("called detach on an already detached child ");
                        sb.append(s2);
                        throw new IllegalArgumentException(tn.d(RecyclerView.this, sb));
                    }
                    s2.d(256);
                }
                RecyclerView.this.detachViewFromParent(i2);
            }

            @Override // com.bytedance.sdk.component.widget.recycler.d.InterfaceC0131d
            public void ox(View view) {
                k s2 = RecyclerView.s(view);
                if (s2 != null) {
                    s2.dq(RecyclerView.this);
                }
            }

            @Override // com.bytedance.sdk.component.widget.recycler.d.InterfaceC0131d
            public void p(View view) {
                k s2 = RecyclerView.s(view);
                if (s2 != null) {
                    s2.d(RecyclerView.this);
                }
            }
        });
    }

    private View er() {
        k s2;
        r rVar = this.bl;
        int i2 = rVar.ig;
        if (i2 == -1) {
            i2 = 0;
        }
        int p2 = rVar.p();
        for (int i3 = i2; i3 < p2; i3++) {
            k s3 = s(i3);
            if (s3 == null) {
                break;
            }
            if (s3.p.hasFocusable()) {
                return s3.p;
            }
        }
        int min = Math.min(p2, i2);
        do {
            min--;
            if (min < 0 || (s2 = s(min)) == null) {
                return null;
            }
        } while (!s2.p.hasFocusable());
        return s2.p;
    }

    private com.bytedance.sdk.component.widget.recycler.dq.ox.p getScrollingChildHelper() {
        if (this.bx == null) {
            this.bx = new com.bytedance.sdk.component.widget.recycler.dq.ox.p(this);
        }
        return this.bx;
    }

    private void h() {
        this.kx.d();
        kk kkVar = this.q;
        if (kkVar != null) {
            kkVar.c();
        }
    }

    private boolean ir() {
        return this.f2244e != null && this.q.q();
    }

    private void j() {
        this.bl.dq(1);
        dq(this.bl);
        this.bl.kk = false;
        s();
        this.ia.dq();
        ig();
        u();
        c();
        r rVar = this.bl;
        rVar.ia = rVar.o && this.op;
        this.op = false;
        this.n = false;
        rVar.mn = rVar.no;
        rVar.s = this.mp.dq();
        dq(this.x);
        if (this.bl.o) {
            int d2 = this.mn.d();
            for (int i2 = 0; i2 < d2; i2++) {
                k s2 = s(this.mn.d(i2));
                if (!s2.mn() && (!s2.cd() || this.mp.d())) {
                    this.ia.dq(s2, this.f2244e.dq(this.bl, s2, iw.s(s2), s2.e()));
                    if (this.bl.ia && s2.n() && !s2.i() && !s2.mn() && !s2.cd()) {
                        this.ia.dq(dq(s2), s2);
                    }
                }
            }
        }
        if (this.bl.no) {
            cd();
            r rVar2 = this.bl;
            boolean z = rVar2.iw;
            rVar2.iw = false;
            this.q.dq(this.s, rVar2);
            this.bl.iw = z;
            for (int i3 = 0; i3 < this.mn.d(); i3++) {
                k s3 = s(this.mn.d(i3));
                if (!s3.mn() && !this.ia.p(s3)) {
                    int s4 = iw.s(s3);
                    boolean dq2 = s3.dq(8192);
                    if (!dq2) {
                        s4 |= 4096;
                    }
                    iw.d dq3 = this.f2244e.dq(this.bl, s3, s4, s3.e());
                    if (dq2) {
                        dq(s3, dq3);
                    } else {
                        this.ia.d(s3, dq3);
                    }
                }
            }
            gh();
        } else {
            gh();
        }
        mp();
        dq(false);
        this.bl.p = 2;
    }

    private void ji() {
        boolean z;
        EdgeEffect edgeEffect = this.dc;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z = this.dc.isFinished();
        } else {
            z = false;
        }
        EdgeEffect edgeEffect2 = this.jw;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z |= this.jw.isFinished();
        }
        EdgeEffect edgeEffect3 = this.fd;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z |= this.fd.isFinished();
        }
        EdgeEffect edgeEffect4 = this.bu;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            z |= this.bu.isFinished();
        }
        if (z) {
            com.bytedance.sdk.component.widget.recycler.dq.ox.mn.ox(this);
        }
    }

    private boolean kx() {
        int d2 = this.mn.d();
        for (int i2 = 0; i2 < d2; i2++) {
            k s2 = s(this.mn.d(i2));
            if (s2 != null && !s2.mn() && s2.n()) {
                return true;
            }
        }
        return false;
    }

    private int mp(View view) {
        int id = view.getId();
        while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
            view = ((ViewGroup) view).getFocusedChild();
            if (view.getId() != -1) {
                id = view.getId();
            }
        }
        return id;
    }

    private void n() {
        bl();
        setScrollState(0);
    }

    private void nh() {
        s();
        ig();
        this.bl.dq(6);
        this.iw.s();
        this.bl.s = this.mp.dq();
        r rVar = this.bl;
        rVar.ox = 0;
        rVar.mn = false;
        this.q.dq(this.s, rVar);
        r rVar2 = this.bl;
        rVar2.iw = false;
        rVar2.o = rVar2.o && this.f2244e != null;
        rVar2.p = 4;
        mp();
        dq(false);
    }

    public static RecyclerView o(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            RecyclerView o2 = o(viewGroup.getChildAt(i2));
            if (o2 != null) {
                return o2;
            }
        }
        return null;
    }

    private boolean o(int i2, int i3) {
        dq(this.x);
        int[] iArr = this.x;
        return (iArr[0] == i2 && iArr[1] == i3) ? false : true;
    }

    private void op() {
        this.yy = 0;
    }

    private void ox(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.ij) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.ij = motionEvent.getPointerId(i2);
            int x = (int) (motionEvent.getX(i2) + 0.5f);
            this.io = x;
            this.z = x;
            int y = (int) (motionEvent.getY(i2) + 0.5f);
            this.m = y;
            this.pa = y;
        }
    }

    public static void ox(k kVar) {
        WeakReference<RecyclerView> weakReference = kVar.s;
        if (weakReference != null) {
            RecyclerView recyclerView = weakReference.get();
            while (recyclerView != null) {
                if (recyclerView == kVar.p) {
                    return;
                }
                Object parent = recyclerView.getParent();
                recyclerView = parent instanceof View ? (View) parent : null;
            }
            kVar.s = null;
        }
    }

    public static k s(View view) {
        if (view == null) {
            return null;
        }
        return ((o) view.getLayoutParams()).dq;
    }

    private void s(k kVar) {
        View view = kVar.p;
        boolean z = view.getParent() == this;
        this.s.ox(d(view));
        if (kVar.le()) {
            this.mn.dq(view, -1, view.getLayoutParams(), true);
        } else if (z) {
            this.mn.p(view);
        } else {
            this.mn.dq(view, true);
        }
    }

    private void u() {
        boolean z;
        if (this.k) {
            this.iw.dq();
        }
        if (ir()) {
            this.iw.d();
        } else {
            this.iw.s();
        }
        boolean z2 = this.n || this.op;
        this.bl.o = this.gh && this.f2244e != null && ((z = this.k) || z2 || this.q.mp) && (!z || this.mp.d());
        r rVar = this.bl;
        rVar.no = rVar.o && z2 && !this.k && ir();
    }

    private void vf() {
        RecyclerView recyclerView;
        this.bl.dq(4);
        s();
        ig();
        r rVar = this.bl;
        rVar.p = 1;
        if (rVar.o) {
            for (int d2 = this.mn.d() - 1; d2 >= 0; d2--) {
                k s2 = s(this.mn.d(d2));
                if (!s2.mn()) {
                    long dq2 = dq(s2);
                    iw.d dq3 = this.f2244e.dq(this.bl, s2);
                    k dq4 = this.ia.dq(dq2);
                    if (dq4 != null && !dq4.mn()) {
                        boolean dq5 = this.ia.dq(dq4);
                        boolean dq6 = this.ia.dq(s2);
                        if (!dq5 || dq4 != s2) {
                            iw.d d3 = this.ia.d(dq4);
                            this.ia.ox(s2, dq3);
                            iw.d ox2 = this.ia.ox(s2);
                            if (d3 == null) {
                                dq(dq2, s2, dq4);
                            } else {
                                dq(dq4, s2, d3, ox2, dq5, dq6);
                            }
                        }
                    }
                    this.ia.ox(s2, dq3);
                }
            }
            recyclerView = this;
            recyclerView.ia.dq(recyclerView.f2241a);
        } else {
            recyclerView = this;
        }
        recyclerView.q.d(recyclerView.s);
        r rVar2 = recyclerView.bl;
        rVar2.f2260d = rVar2.s;
        recyclerView.k = false;
        recyclerView.wp = false;
        rVar2.o = false;
        rVar2.no = false;
        recyclerView.q.mp = false;
        ArrayList<k> arrayList = recyclerView.s.f2247d;
        if (arrayList != null) {
            arrayList.clear();
        }
        kk kkVar = recyclerView.q;
        if (kkVar.fw) {
            kkVar.f2257f = 0;
            kkVar.fw = false;
            recyclerView.s.d();
        }
        recyclerView.q.d(recyclerView.bl);
        mp();
        dq(false);
        recyclerView.ia.dq();
        int[] iArr = recyclerView.x;
        if (o(iArr[0], iArr[1])) {
            ia(0, 0);
        }
        wn();
        ce();
    }

    private void wn() {
        View findViewById;
        if (!this.hf || this.mp == null || !hasFocus() || getDescendantFocusability() == 393216) {
            return;
        }
        if (getDescendantFocusability() == 131072 && isFocused()) {
            return;
        }
        if (!isFocused()) {
            View focusedChild = getFocusedChild();
            if (!vf || (focusedChild.getParent() != null && focusedChild.hasFocus())) {
                if (!this.mn.ox(focusedChild)) {
                    return;
                }
            } else if (this.mn.d() == 0) {
                requestFocus();
                return;
            }
        }
        View view = null;
        k dq2 = (this.bl.mp == -1 || !this.mp.d()) ? null : dq(this.bl.mp);
        if (dq2 != null && !this.mn.ox(dq2.p) && dq2.p.hasFocusable()) {
            view = dq2.p;
        } else if (this.mn.d() > 0) {
            view = er();
        }
        if (view != null) {
            int i2 = this.bl.q;
            if (i2 != -1 && (findViewById = view.findViewById(i2)) != null && findViewById.isFocusable()) {
                view = findViewById;
            }
            view.requestFocus();
        }
    }

    @SuppressLint({"InlinedApi"})
    private void wp() {
        if (com.bytedance.sdk.component.widget.recycler.dq.ox.mn.kk(this) == 0) {
            com.bytedance.sdk.component.widget.recycler.dq.ox.mn.d(this, 8);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        kk kkVar = this.q;
        if (kkVar == null || !kkVar.dq(this, arrayList, i2, i3)) {
            super.addFocusables(arrayList, i2, i3);
        }
    }

    public void cd() {
        int ox2 = this.mn.ox();
        for (int i2 = 0; i2 < ox2; i2++) {
            k s2 = s(this.mn.p(i2));
            if (!s2.mn()) {
                s2.iw();
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof o) && this.q.dq((o) layoutParams);
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        kk kkVar = this.q;
        if (kkVar != null && kkVar.ox()) {
            return this.q.s(this.bl);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        kk kkVar = this.q;
        if (kkVar != null && kkVar.ox()) {
            return this.q.ox(this.bl);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        kk kkVar = this.q;
        if (kkVar != null && kkVar.ox()) {
            return this.q.mn(this.bl);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        kk kkVar = this.q;
        if (kkVar != null && kkVar.p()) {
            return this.q.iw(this.bl);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        kk kkVar = this.q;
        if (kkVar != null && kkVar.p()) {
            return this.q.p(this.bl);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        kk kkVar = this.q;
        if (kkVar != null && kkVar.p()) {
            return this.q.ia(this.bl);
        }
        return 0;
    }

    public k d(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return s(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    public void d() {
        this.iw = new com.bytedance.sdk.component.widget.recycler.dq(new dq.InterfaceC0132dq() { // from class: com.bytedance.sdk.component.widget.recycler.RecyclerView.5
            @Override // com.bytedance.sdk.component.widget.recycler.dq.InterfaceC0132dq
            public void d(int i2, int i3) {
                RecyclerView.this.dq(i2, i3, false);
                RecyclerView.this.n = true;
            }

            @Override // com.bytedance.sdk.component.widget.recycler.dq.InterfaceC0132dq
            public k dq(int i2) {
                k dq2 = RecyclerView.this.dq(i2, true);
                if (dq2 == null || RecyclerView.this.mn.ox(dq2.p)) {
                    return null;
                }
                return dq2;
            }

            @Override // com.bytedance.sdk.component.widget.recycler.dq.InterfaceC0132dq
            public void dq(int i2, int i3) {
                RecyclerView.this.dq(i2, i3, true);
                RecyclerView recyclerView = RecyclerView.this;
                recyclerView.n = true;
                recyclerView.bl.ox += i3;
            }

            @Override // com.bytedance.sdk.component.widget.recycler.dq.InterfaceC0132dq
            public void dq(int i2, int i3, Object obj) {
                RecyclerView.this.dq(i2, i3, obj);
                RecyclerView.this.op = true;
            }

            @Override // com.bytedance.sdk.component.widget.recycler.dq.InterfaceC0132dq
            public void ox(int i2, int i3) {
                RecyclerView.this.mn(i2, i3);
                RecyclerView.this.n = true;
            }

            @Override // com.bytedance.sdk.component.widget.recycler.dq.InterfaceC0132dq
            public void p(int i2, int i3) {
                RecyclerView.this.iw(i2, i3);
                RecyclerView.this.n = true;
            }
        });
    }

    public void d(int i2) {
        kk kkVar = this.q;
        if (kkVar != null) {
            kkVar.p(i2);
            awakenScrollBars();
        }
    }

    public void d(k kVar, iw.d dVar, iw.d dVar2) {
        s(kVar);
        kVar.dq(false);
        if (this.f2244e.dq(kVar, dVar, dVar2)) {
            jy();
        }
    }

    public void d(q qVar) {
        List<q> list = this.tl;
        if (list != null) {
            list.remove(qVar);
        }
    }

    public void d(boolean z) {
        int i2 = this.vw - 1;
        this.vw = i2;
        if (i2 <= 0) {
            this.vw = 0;
            if (z) {
                op();
                k();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v6 */
    public boolean d(int i2, int i3) {
        kk kkVar = this.q;
        if (kkVar == null) {
            Log.e("RecyclerView", "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return false;
        }
        if (this.i) {
            return false;
        }
        int ox2 = kkVar.ox();
        boolean p2 = this.q.p();
        if (ox2 == 0 || Math.abs(i2) < this.cc) {
            i2 = 0;
        }
        if (!p2 || Math.abs(i3) < this.cc) {
            i3 = 0;
        }
        if (i2 == 0 && i3 == 0) {
            return false;
        }
        float f2 = i2;
        float f3 = i3;
        if (!dispatchNestedPreFling(f2, f3)) {
            boolean z = ox2 != 0 || p2;
            dispatchNestedFling(f2, f3, z);
            ig igVar = this.wi;
            if (igVar != null && igVar.dq(i2, i3)) {
                return true;
            }
            if (z) {
                if (p2) {
                    ox2 = (ox2 == true ? 1 : 0) | 2;
                }
                kk(ox2, 1);
                int i4 = this.mc;
                int max = Math.max(-i4, Math.min(i2, i4));
                int i5 = this.mc;
                this.kx.dq(max, Math.max(-i5, Math.min(i3, i5)));
                return true;
            }
        }
        return false;
    }

    public boolean d(k kVar) {
        iw iwVar = this.f2244e;
        return iwVar == null || iwVar.dq(kVar, kVar.e());
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f2, float f3, boolean z) {
        return getScrollingChildHelper().dq(f2, f3, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f2, float f3) {
        return getScrollingChildHelper().dq(f2, f3);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i2, int i3, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().dq(i2, i3, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr) {
        return getScrollingChildHelper().dq(i2, i3, i4, i5, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    public long dq(k kVar) {
        return this.mp.d() ? kVar.no() : kVar.iw;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0033 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public k dq(int i2, boolean z) {
        int ox2 = this.mn.ox();
        k kVar = null;
        for (int i3 = 0; i3 < ox2; i3++) {
            k s2 = s(this.mn.p(i3));
            if (s2 != null && !s2.i()) {
                if (z) {
                    if (s2.iw != i2) {
                        continue;
                    }
                    if (this.mn.ox(s2.p)) {
                        return s2;
                    }
                    kVar = s2;
                } else {
                    if (s2.ia() != i2) {
                        continue;
                    }
                    if (this.mn.ox(s2.p)) {
                    }
                }
            }
        }
        return kVar;
    }

    public k dq(long j2) {
        dq dqVar = this.mp;
        k kVar = null;
        if (dqVar != null && dqVar.d()) {
            int ox2 = this.mn.ox();
            for (int i2 = 0; i2 < ox2; i2++) {
                k s2 = s(this.mn.p(i2));
                if (s2 != null && !s2.i() && s2.no() == j2) {
                    if (!this.mn.ox(s2.p)) {
                        return s2;
                    }
                    kVar = s2;
                }
            }
        }
        return kVar;
    }

    public String dq() {
        return " " + super.toString() + ", adapter:" + this.mp + ", layout:" + this.q + ", context:" + getContext();
    }

    public void dq(int i2) {
        if (this.i) {
            return;
        }
        iw();
        kk kkVar = this.q;
        if (kkVar == null) {
            Log.e("RecyclerView", "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            kkVar.p(i2);
            awakenScrollBars();
        }
    }

    public void dq(int i2, int i3) {
        dq(i2, i3, (Interpolator) null);
    }

    public void dq(int i2, int i3, Interpolator interpolator) {
        kk kkVar = this.q;
        if (kkVar == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.i) {
            return;
        }
        if (!kkVar.ox()) {
            i2 = 0;
        }
        if (!this.q.p()) {
            i3 = 0;
        }
        if (i2 == 0 && i3 == 0) {
            return;
        }
        this.kx.dq(i2, i3, interpolator);
    }

    public void dq(int i2, int i3, Object obj) {
        int i4;
        int ox2 = this.mn.ox();
        int i5 = i2 + i3;
        for (int i6 = 0; i6 < ox2; i6++) {
            View p2 = this.mn.p(i6);
            k s2 = s(p2);
            if (s2 != null && !s2.mn() && (i4 = s2.iw) >= i2 && i4 < i5) {
                s2.d(2);
                s2.dq(obj);
                ((o) p2.getLayoutParams()).ox = true;
            }
        }
        this.s.ox(i2, i3);
    }

    public void dq(int i2, int i3, boolean z) {
        int i4 = i2 + i3;
        int ox2 = this.mn.ox();
        for (int i5 = 0; i5 < ox2; i5++) {
            k s2 = s(this.mn.p(i5));
            if (s2 != null && !s2.mn()) {
                int i6 = s2.iw;
                if (i6 >= i4) {
                    s2.dq(-i3, z);
                    this.bl.iw = true;
                } else if (i6 >= i2) {
                    s2.dq(i2 - 1, -i3, z);
                    this.bl.iw = true;
                }
            }
        }
        this.s.dq(i2, i3, z);
        requestLayout();
    }

    public void dq(int i2, int i3, int[] iArr) {
        s();
        ig();
        com.bytedance.sdk.component.widget.recycler.dq.dq.dq.dq("RV Scroll");
        dq(this.bl);
        int dq2 = i2 != 0 ? this.q.dq(i2, this.s, this.bl) : 0;
        int d2 = i3 != 0 ? this.q.d(i3, this.s, this.bl) : 0;
        com.bytedance.sdk.component.widget.recycler.dq.dq.dq.dq();
        le();
        mp();
        dq(false);
        if (iArr != null) {
            iArr[0] = dq2;
            iArr[1] = d2;
        }
    }

    public void dq(ia iaVar) {
        dq(iaVar, -1);
    }

    public void dq(ia iaVar, int i2) {
        kk kkVar = this.q;
        if (kkVar != null) {
            kkVar.dq("Cannot add item decoration during a scroll  or layout");
        }
        if (this.f2245f.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i2 < 0) {
            this.f2245f.add(iaVar);
        } else {
            this.f2245f.add(i2, iaVar);
        }
        fw();
        requestLayout();
    }

    public void dq(k kVar, iw.d dVar) {
        kVar.dq(0, 8192);
        if (this.bl.ia && kVar.n() && !kVar.i() && !kVar.mn()) {
            this.ia.dq(dq(kVar), kVar);
        }
        this.ia.dq(kVar, dVar);
    }

    public void dq(k kVar, iw.d dVar, iw.d dVar2) {
        kVar.dq(false);
        if (this.f2244e.d(kVar, dVar, dVar2)) {
            jy();
        }
    }

    public void dq(no noVar) {
        if (this.ds == null) {
            this.ds = new ArrayList();
        }
        this.ds.add(noVar);
    }

    public void dq(q qVar) {
        if (this.tl == null) {
            this.tl = new ArrayList();
        }
        this.tl.add(qVar);
    }

    public final void dq(r rVar) {
        if (getScrollState() != 2) {
            rVar.jy = 0;
            rVar.f2261f = 0;
        } else {
            OverScroller overScroller = this.kx.dq;
            rVar.jy = overScroller.getFinalX() - overScroller.getCurrX();
            rVar.f2261f = overScroller.getFinalY() - overScroller.getCurrY();
        }
    }

    public void dq(String str) {
        if (q()) {
            if (str != null) {
                throw new IllegalStateException(str);
            }
            throw new IllegalStateException(tn.d(this, new StringBuilder("Cannot call this method while RecyclerView is computing a layout or scrolling")));
        }
        if (this.ha > 0) {
            new IllegalStateException(tn.d(this, new StringBuilder()));
        }
    }

    public void dq(boolean z) {
        if (this.uh <= 0) {
            this.uh = 1;
        }
        if (!z && !this.i) {
            this.r = false;
        }
        if (this.uh == 1) {
            if (z && this.r && !this.i && this.q != null && this.mp != null) {
                f();
            }
            if (!this.i) {
                this.r = false;
            }
        }
        this.uh--;
    }

    public boolean dq(int i2, int i3, int i4, int i5, int[] iArr, int i6) {
        return getScrollingChildHelper().dq(i2, i3, i4, i5, iArr, i6);
    }

    public boolean dq(int i2, int i3, MotionEvent motionEvent) {
        int i4;
        int i5;
        int i6;
        int i7;
        p();
        if (this.mp != null) {
            dq(i2, i3, this.f2243c);
            int[] iArr = this.f2243c;
            int i8 = iArr[0];
            int i9 = iArr[1];
            i6 = i2 - i8;
            i7 = i3 - i9;
            i5 = i9;
            i4 = i8;
        } else {
            i4 = 0;
            i5 = 0;
            i6 = 0;
            i7 = 0;
        }
        if (!this.f2245f.isEmpty()) {
            invalidate();
        }
        if (dq(i4, i5, i6, i7, this.nt, 0)) {
            int i10 = this.io;
            int[] iArr2 = this.nt;
            int i11 = iArr2[0];
            this.io = i10 - i11;
            int i12 = this.m;
            int i13 = iArr2[1];
            this.m = i12 - i13;
            if (motionEvent != null) {
                motionEvent.offsetLocation(i11, i13);
            }
            int[] iArr3 = this.tv;
            int i14 = iArr3[0];
            int[] iArr4 = this.nt;
            iArr3[0] = i14 + iArr4[0];
            iArr3[1] = iArr3[1] + iArr4[1];
        } else if (getOverScrollMode() != 2) {
            if (motionEvent != null && !com.bytedance.sdk.component.widget.recycler.dq.ox.mn.dq(motionEvent, 8194)) {
                dq(motionEvent.getX(), i6, motionEvent.getY(), i7);
            }
            ox(i2, i3);
        }
        if (i4 != 0 || i5 != 0) {
            ia(i4, i5);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (i4 == 0 && i5 == 0) ? false : true;
    }

    public boolean dq(int i2, int i3, int[] iArr, int[] iArr2, int i4) {
        return getScrollingChildHelper().dq(i2, i3, iArr, iArr2, i4);
    }

    public boolean dq(View view) {
        s();
        boolean iw2 = this.mn.iw(view);
        if (iw2) {
            k s2 = s(view);
            this.s.ox(s2);
            this.s.d(s2);
        }
        dq(!iw2);
        return iw2;
    }

    public boolean dq(k kVar, int i2) {
        if (!q()) {
            com.bytedance.sdk.component.widget.recycler.dq.ox.mn.dq(kVar.p, i2);
            return true;
        }
        kVar.cd = i2;
        this.ce.add(kVar);
        return false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z;
        super.draw(canvas);
        int size = this.f2245f.size();
        boolean z2 = false;
        for (int i2 = 0; i2 < size; i2++) {
            this.f2245f.get(i2);
        }
        EdgeEffect edgeEffect = this.dc;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z = false;
        } else {
            int save = canvas.save();
            int paddingBottom = this.kk ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            EdgeEffect edgeEffect2 = this.dc;
            z = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(save);
        }
        EdgeEffect edgeEffect3 = this.jw;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int save2 = canvas.save();
            if (this.kk) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.jw;
            z |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(save2);
        }
        EdgeEffect edgeEffect5 = this.fd;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int save3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.kk ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(-paddingTop, -width);
            EdgeEffect edgeEffect6 = this.fd;
            z |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(save3);
        }
        EdgeEffect edgeEffect7 = this.bu;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int save4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.kk) {
                canvas.translate(getPaddingRight() + (-getWidth()), getPaddingBottom() + (-getHeight()));
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.bu;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z2 = true;
            }
            z |= z2;
            canvas.restoreToCount(save4);
        }
        if ((z || this.f2244e == null || this.f2245f.size() <= 0 || !this.f2244e.d()) ? z : true) {
            com.bytedance.sdk.component.widget.recycler.dq.ox.mn.ox(this);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j2) {
        return super.drawChild(canvas, view, j2);
    }

    public void f() {
        if (this.mp == null) {
            Log.e("RecyclerView", "No adapter attached; skipping layout");
            return;
        }
        if (this.q == null) {
            Log.e("RecyclerView", "No layout manager attached; skipping layout");
            return;
        }
        r rVar = this.bl;
        rVar.kk = false;
        if (rVar.p == 1) {
            j();
        } else if (!this.iw.iw() && this.q.wp() == getWidth() && this.q.e() == getHeight()) {
            this.q.p(this);
            vf();
        }
        this.q.p(this);
        nh();
        vf();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public View focusSearch(View view, int i2) {
        View view2;
        boolean z;
        View p2 = this.q.p(view, i2);
        if (p2 != null) {
            return p2;
        }
        boolean z2 = (this.mp == null || this.q == null || q() || this.i) ? false : true;
        FocusFinder focusFinder = FocusFinder.getInstance();
        if (z2 && (i2 == 2 || i2 == 1)) {
            if (this.q.p()) {
                int i3 = i2 == 2 ? 130 : 33;
                z = focusFinder.findNextFocus(this, view, i3) == null;
                if (nh) {
                    i2 = i3;
                }
            } else {
                z = false;
            }
            if (!z && this.q.ox()) {
                int i4 = (this.q.gh() == 1) ^ (i2 == 2) ? 66 : 17;
                boolean z3 = focusFinder.findNextFocus(this, view, i4) == null;
                if (nh) {
                    i2 = i4;
                }
                z = z3;
            }
            if (z) {
                p();
                if (ox(view) == null) {
                    return null;
                }
                s();
                this.q.dq(view, i2, this.s, this.bl);
                dq(false);
            }
            view2 = focusFinder.findNextFocus(this, view, i2);
        } else {
            View findNextFocus = focusFinder.findNextFocus(this, view, i2);
            if (findNextFocus == null && z2) {
                p();
                if (ox(view) == null) {
                    return null;
                }
                s();
                view2 = this.q.dq(view, i2, this.s, this.bl);
                dq(false);
            } else {
                view2 = findNextFocus;
            }
        }
        if (view2 == null || view2.hasFocusable()) {
            return dq(view, view2, i2) ? view2 : super.focusSearch(view, i2);
        }
        if (getFocusedChild() == null) {
            return super.focusSearch(view, i2);
        }
        dq(view2, (View) null);
        return view;
    }

    public void fw() {
        int ox2 = this.mn.ox();
        for (int i2 = 0; i2 < ox2; i2++) {
            ((o) this.mn.p(i2).getLayoutParams()).ox = true;
        }
        this.s.o();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        kk kkVar = this.q;
        if (kkVar != null) {
            return kkVar.d();
        }
        throw new IllegalStateException(tn.d(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        kk kkVar = this.q;
        if (kkVar != null) {
            return kkVar.dq(getContext(), attributeSet);
        }
        throw new IllegalStateException(tn.d(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        kk kkVar = this.q;
        if (kkVar != null) {
            return kkVar.dq(layoutParams);
        }
        throw new IllegalStateException(tn.d(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }

    public dq getAdapter() {
        return this.mp;
    }

    @Override // android.view.View
    public int getBaseline() {
        kk kkVar = this.q;
        return kkVar != null ? kkVar.r() : super.getBaseline();
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i2, int i3) {
        p pVar = this.bf;
        return pVar == null ? super.getChildDrawingOrder(i2, i3) : pVar.dq(i2, i3);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.kk;
    }

    public s getEdgeEffectFactory() {
        return this.cv;
    }

    public iw getItemAnimator() {
        return this.f2244e;
    }

    public int getItemDecorationCount() {
        return this.f2245f.size();
    }

    public kk getLayoutManager() {
        return this.q;
    }

    public int getMaxFlingVelocity() {
        return this.mc;
    }

    public int getMinFlingVelocity() {
        return this.cc;
    }

    public long getNanoTime() {
        if (p) {
            return System.nanoTime();
        }
        return 0L;
    }

    public ig getOnFlingListener() {
        return this.wi;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.hf;
    }

    public jy getRecycledViewPool() {
        return this.s.mn();
    }

    public int getScrollState() {
        return this.ws;
    }

    public void gh() {
        int ox2 = this.mn.ox();
        for (int i2 = 0; i2 < ox2; i2++) {
            k s2 = s(this.mn.p(i2));
            if (!s2.mn()) {
                s2.s();
            }
        }
        this.s.kk();
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().d();
    }

    public boolean i() {
        return !this.gh || this.k || this.iw.p();
    }

    public int ia(View view) {
        k s2 = s(view);
        if (s2 != null) {
            return s2.ia();
        }
        return -1;
    }

    public void ia() {
        if (this.fd == null) {
            EdgeEffect dq2 = this.cv.dq(this, 2);
            this.fd = dq2;
            if (this.kk) {
                dq2.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
            } else {
                dq2.setSize(getMeasuredHeight(), getMeasuredWidth());
            }
        }
    }

    public void ia(int i2) {
        kk kkVar = this.q;
        if (kkVar != null) {
            kkVar.no(i2);
        }
        q qVar = this.f2242b;
        if (qVar != null) {
            qVar.dq(this, i2);
        }
        List<q> list = this.tl;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.tl.get(size).dq(this, i2);
            }
        }
    }

    public void ia(int i2, int i3) {
        this.ha++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX, scrollY);
        q qVar = this.f2242b;
        if (qVar != null) {
            qVar.dq(this, i2, i3);
        }
        List<q> list = this.tl;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.tl.get(size).dq(this, i2, i3);
            }
        }
        this.ha--;
    }

    public void ig() {
        this.vw++;
    }

    public void ig(View view) {
        s(view);
        List<no> list = this.ds;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.ds.get(size).dq(view);
            }
        }
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.fw;
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().dq();
    }

    @Deprecated
    public int iw(View view) {
        return mn(view);
    }

    public void iw() {
        setScrollState(0);
        h();
    }

    public void iw(int i2) {
        int d2 = this.mn.d();
        for (int i3 = 0; i3 < d2; i3++) {
            this.mn.d(i3).offsetTopAndBottom(i2);
        }
    }

    public void iw(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int ox2 = this.mn.ox();
        if (i2 < i3) {
            i6 = -1;
            i5 = i2;
            i4 = i3;
        } else {
            i4 = i2;
            i5 = i3;
            i6 = 1;
        }
        for (int i8 = 0; i8 < ox2; i8++) {
            k s2 = s(this.mn.p(i8));
            if (s2 != null && (i7 = s2.iw) >= i5 && i7 <= i4) {
                if (i7 == i2) {
                    s2.dq(i3 - i2, false);
                } else {
                    s2.dq(i6, false);
                }
                this.bl.iw = true;
            }
        }
        this.s.dq(i2, i3);
        requestLayout();
    }

    public void jy() {
        if (this.ir || !this.fw) {
            return;
        }
        com.bytedance.sdk.component.widget.recycler.dq.ox.mn.dq(this, this.ny);
        this.ir = true;
    }

    public void k() {
        int i2;
        for (int size = this.ce.size() - 1; size >= 0; size--) {
            k kVar = this.ce.get(size);
            if (kVar.p.getParent() == this && !kVar.mn() && (i2 = kVar.cd) != -1) {
                com.bytedance.sdk.component.widget.recycler.dq.ox.mn.dq(kVar.p, i2);
                kVar.cd = -1;
            }
        }
        this.ce.clear();
    }

    public Rect kk(View view) {
        o oVar = (o) view.getLayoutParams();
        if (!oVar.ox) {
            return oVar.f2259d;
        }
        if (this.bl.dq() && (oVar.ox() || oVar.dq())) {
            return oVar.f2259d;
        }
        Rect rect = oVar.f2259d;
        rect.set(0, 0, 0, 0);
        int size = this.f2245f.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.no.set(0, 0, 0, 0);
            this.f2245f.get(i2).dq(this.no, view, this, this.bl);
            int i3 = rect.left;
            Rect rect2 = this.no;
            rect.left = i3 + rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        oVar.ox = false;
        return rect;
    }

    public void kk() {
        if (this.jw == null) {
            EdgeEffect dq2 = this.cv.dq(this, 1);
            this.jw = dq2;
            if (this.kk) {
                dq2.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
            } else {
                dq2.setSize(getMeasuredWidth(), getMeasuredHeight());
            }
        }
    }

    public void kk(int i2) {
        getScrollingChildHelper().ox(i2);
    }

    public boolean kk(int i2, int i3) {
        return getScrollingChildHelper().dq(i2, i3);
    }

    public void le() {
        k kVar;
        int d2 = this.mn.d();
        for (int i2 = 0; i2 < d2; i2++) {
            View d3 = this.mn.d(i2);
            k d4 = d(d3);
            if (d4 != null && (kVar = d4.ig) != null) {
                View view = kVar.p;
                int left = d3.getLeft();
                int top = d3.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
    }

    public int mn(View view) {
        k s2 = s(view);
        if (s2 != null) {
            return s2.kk();
        }
        return -1;
    }

    public void mn() {
        if (this.dc == null) {
            EdgeEffect dq2 = this.cv.dq(this, 0);
            this.dc = dq2;
            if (this.kk) {
                dq2.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
            } else {
                dq2.setSize(getMeasuredHeight(), getMeasuredWidth());
            }
        }
    }

    public void mn(int i2) {
        int d2 = this.mn.d();
        for (int i3 = 0; i3 < d2; i3++) {
            this.mn.d(i3).offsetLeftAndRight(i2);
        }
    }

    public void mn(int i2, int i3) {
        int ox2 = this.mn.ox();
        for (int i4 = 0; i4 < ox2; i4++) {
            k s2 = s(this.mn.p(i4));
            if (s2 != null && !s2.mn() && s2.iw >= i2) {
                s2.dq(i3, false);
                this.bl.iw = true;
            }
        }
        this.s.d(i2, i3);
        requestLayout();
    }

    public void mp() {
        d(true);
    }

    public void no() {
        this.bu = null;
        this.jw = null;
        this.fd = null;
        this.dc = null;
    }

    public void no(View view) {
        s(view);
        List<no> list = this.ds;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.ds.get(size).d(view);
            }
        }
    }

    public void o() {
        if (this.bu == null) {
            EdgeEffect dq2 = this.cv.dq(this, 3);
            this.bu = dq2;
            if (this.kk) {
                dq2.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
            } else {
                dq2.setSize(getMeasuredWidth(), getMeasuredHeight());
            }
        }
    }

    public boolean o(int i2) {
        return getScrollingChildHelper().dq(i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x004b, code lost:
    
        if (r1 >= 30.0f) goto L22;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onAttachedToWindow() {
        float f2;
        super.onAttachedToWindow();
        this.vw = 0;
        this.fw = true;
        this.gh = this.gh && !isLayoutRequested();
        kk kkVar = this.q;
        if (kkVar != null) {
            kkVar.d(this);
        }
        this.ir = false;
        if (p) {
            ThreadLocal<com.bytedance.sdk.component.widget.recycler.p> threadLocal = com.bytedance.sdk.component.widget.recycler.p.dq;
            com.bytedance.sdk.component.widget.recycler.p pVar = threadLocal.get();
            this.h = pVar;
            if (pVar == null) {
                this.h = new com.bytedance.sdk.component.widget.recycler.p();
                Display mn2 = com.bytedance.sdk.component.widget.recycler.dq.ox.mn.mn(this);
                if (!isInEditMode() && mn2 != null) {
                    f2 = mn2.getRefreshRate();
                }
                f2 = 60.0f;
                com.bytedance.sdk.component.widget.recycler.p pVar2 = this.h;
                pVar2.p = (long) (1.0E9f / f2);
                threadLocal.set(pVar2);
            }
            this.h.dq(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        com.bytedance.sdk.component.widget.recycler.p pVar;
        super.onDetachedFromWindow();
        iw iwVar = this.f2244e;
        if (iwVar != null) {
            iwVar.p();
        }
        iw();
        this.fw = false;
        kk kkVar = this.q;
        if (kkVar != null) {
            kkVar.d(this, this.s);
        }
        this.ce.clear();
        removeCallbacks(this.ny);
        this.ia.d();
        if (!p || (pVar = this.h) == null) {
            return;
        }
        pVar.d(this);
        this.h = null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.f2245f.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f2245f.get(i2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0067  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float f2;
        float axisValue;
        if (this.q != null && !this.i && motionEvent.getAction() == 8) {
            if ((motionEvent.getSource() & 2) != 0) {
                f2 = this.q.p() ? -motionEvent.getAxisValue(9) : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                if (this.q.ox()) {
                    axisValue = motionEvent.getAxisValue(10);
                    if (f2 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || axisValue != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        dq((int) (axisValue * this.jo), (int) (f2 * this.yo), motionEvent);
                    }
                }
                axisValue = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                if (f2 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                }
                dq((int) (axisValue * this.jo), (int) (f2 * this.yo), motionEvent);
            } else {
                if ((motionEvent.getSource() & 4194304) != 0) {
                    axisValue = motionEvent.getAxisValue(26);
                    if (this.q.p()) {
                        f2 = -axisValue;
                        axisValue = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                        if (f2 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        }
                        dq((int) (axisValue * this.jo), (int) (f2 * this.yo), motionEvent);
                    } else if (this.q.ox()) {
                        f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                        if (f2 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        }
                        dq((int) (axisValue * this.jo), (int) (f2 * this.yo), motionEvent);
                    }
                }
                f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                axisValue = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                if (f2 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                }
                dq((int) (axisValue * this.jo), (int) (f2 * this.yo), motionEvent);
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        if (this.i) {
            return false;
        }
        if (dq(motionEvent)) {
            n();
            return true;
        }
        kk kkVar = this.q;
        if (kkVar == null) {
            return false;
        }
        boolean ox2 = kkVar.ox();
        boolean p2 = this.q.p();
        if (this.xi == null) {
            this.xi = VelocityTracker.obtain();
        }
        this.xi.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.xz) {
                this.xz = false;
            }
            this.ij = motionEvent.getPointerId(0);
            int x = (int) (motionEvent.getX() + 0.5f);
            this.io = x;
            this.z = x;
            int y = (int) (motionEvent.getY() + 0.5f);
            this.m = y;
            this.pa = y;
            if (this.ws == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
            }
            int[] iArr = this.tv;
            iArr[1] = 0;
            iArr[0] = 0;
            int i2 = ox2;
            if (p2) {
                i2 = (ox2 ? 1 : 0) | 2;
            }
            kk(i2, 0);
        } else if (actionMasked == 1) {
            this.xi.clear();
            kk(0);
        } else if (actionMasked == 2) {
            int findPointerIndex = motionEvent.findPointerIndex(this.ij);
            if (findPointerIndex < 0) {
                Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.ij + " not found. Did any MotionEvents get skipped?");
                return false;
            }
            int x2 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
            int y2 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
            if (this.ws != 1) {
                int i3 = x2 - this.z;
                int i4 = y2 - this.pa;
                if (ox2 == 0 || Math.abs(i3) <= this.xv) {
                    z = false;
                } else {
                    this.io = x2;
                    z = true;
                }
                if (p2 && Math.abs(i4) > this.xv) {
                    this.m = y2;
                    z = true;
                }
                if (z) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            n();
        } else if (actionMasked == 5) {
            this.ij = motionEvent.getPointerId(actionIndex);
            int x3 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.io = x3;
            this.z = x3;
            int y3 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.m = y3;
            this.pa = y3;
        } else if (actionMasked == 6) {
            ox(motionEvent);
        }
        return this.ws == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        com.bytedance.sdk.component.widget.recycler.dq.dq.dq.dq("RV OnLayout");
        f();
        com.bytedance.sdk.component.widget.recycler.dq.dq.dq.dq();
        this.gh = true;
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        kk kkVar = this.q;
        if (kkVar == null) {
            s(i2, i3);
            return;
        }
        if (kkVar.dq()) {
            int mode = View.MeasureSpec.getMode(i2);
            int mode2 = View.MeasureSpec.getMode(i3);
            this.q.dq(this.s, this.bl, i2, i3);
            if ((mode == 1073741824 && mode2 == 1073741824) || this.mp == null) {
                return;
            }
            if (this.bl.p == 1) {
                j();
            }
            this.q.d(i2, i3);
            this.bl.kk = true;
            nh();
            this.q.ox(i2, i3);
            if (this.q.kk()) {
                this.q.d(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), C.ENCODING_PCM_32BIT));
                this.bl.kk = true;
                nh();
                this.q.ox(i2, i3);
                return;
            }
            return;
        }
        if (this.cd) {
            this.q.dq(this.s, this.bl, i2, i3);
            return;
        }
        if (this.le) {
            s();
            ig();
            u();
            mp();
            r rVar = this.bl;
            if (rVar.no) {
                rVar.mn = true;
            } else {
                this.iw.s();
                this.bl.mn = false;
            }
            this.le = false;
            dq(false);
        } else if (this.bl.no) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        dq dqVar = this.mp;
        if (dqVar != null) {
            this.bl.s = dqVar.dq();
        } else {
            this.bl.s = 0;
        }
        s();
        this.q.dq(this.s, this.bl, i2, i3);
        dq(false);
        this.bl.mn = false;
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i2, Rect rect) {
        if (q()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i2, rect);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 == i4 && i3 == i5) {
            return;
        }
        no();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0115  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        RecyclerView recyclerView;
        boolean z;
        if (this.i || this.xz) {
            return false;
        }
        if (d(motionEvent)) {
            n();
            return true;
        }
        kk kkVar = this.q;
        if (kkVar == null) {
            return false;
        }
        boolean ox2 = kkVar.ox();
        boolean p2 = this.q.p();
        if (this.xi == null) {
            this.xi = VelocityTracker.obtain();
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            int[] iArr = this.tv;
            iArr[1] = 0;
            iArr[0] = 0;
        }
        int[] iArr2 = this.tv;
        obtain.offsetLocation(iArr2[0], iArr2[1]);
        if (actionMasked == 0) {
            recyclerView = this;
            recyclerView.ij = motionEvent.getPointerId(0);
            int x = (int) (motionEvent.getX() + 0.5f);
            recyclerView.io = x;
            recyclerView.z = x;
            int y = (int) (motionEvent.getY() + 0.5f);
            recyclerView.m = y;
            recyclerView.pa = y;
            int i2 = ox2;
            if (p2) {
                i2 = (ox2 ? 1 : 0) | 2;
            }
            kk(i2, 0);
        } else {
            if (actionMasked == 1) {
                this.xi.addMovement(obtain);
                this.xi.computeCurrentVelocity(1000, this.mc);
                float f2 = ox2 != 0 ? -this.xi.getXVelocity(this.ij) : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                float f3 = p2 ? -this.xi.getYVelocity(this.ij) : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                if ((f2 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && f3 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) || !d((int) f2, (int) f3)) {
                    setScrollState(0);
                }
                bl();
                obtain.recycle();
                return true;
            }
            if (actionMasked != 2) {
                if (actionMasked == 3) {
                    n();
                } else if (actionMasked == 5) {
                    this.ij = motionEvent.getPointerId(actionIndex);
                    int x2 = (int) (motionEvent.getX(actionIndex) + 0.5f);
                    this.io = x2;
                    this.z = x2;
                    int y2 = (int) (motionEvent.getY(actionIndex) + 0.5f);
                    this.m = y2;
                    this.pa = y2;
                } else if (actionMasked == 6) {
                    ox(motionEvent);
                }
                recyclerView = this;
            } else {
                int findPointerIndex = motionEvent.findPointerIndex(this.ij);
                if (findPointerIndex < 0) {
                    Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.ij + " not found. Did any MotionEvents get skipped?");
                    return false;
                }
                int x3 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
                int y3 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
                int i3 = this.io - x3;
                int i4 = this.m - y3;
                recyclerView = this;
                if (dq(i3, i4, this.u, this.nt, 0)) {
                    int[] iArr3 = recyclerView.u;
                    i3 -= iArr3[0];
                    i4 -= iArr3[1];
                    int[] iArr4 = recyclerView.nt;
                    obtain.offsetLocation(iArr4[0], iArr4[1]);
                    int[] iArr5 = recyclerView.tv;
                    int i5 = iArr5[0];
                    int[] iArr6 = recyclerView.nt;
                    iArr5[0] = i5 + iArr6[0];
                    iArr5[1] = iArr5[1] + iArr6[1];
                }
                if (recyclerView.ws != 1) {
                    if (ox2 != 0) {
                        int abs = Math.abs(i3);
                        int i6 = recyclerView.xv;
                        if (abs > i6) {
                            i3 = i3 > 0 ? i3 - i6 : i3 + i6;
                            z = true;
                            if (p2) {
                                int abs2 = Math.abs(i4);
                                int i7 = recyclerView.xv;
                                if (abs2 > i7) {
                                    i4 = i4 > 0 ? i4 - i7 : i4 + i7;
                                    z = true;
                                }
                            }
                            if (z) {
                                setScrollState(1);
                            }
                        }
                    }
                    z = false;
                    if (p2) {
                    }
                    if (z) {
                    }
                }
                if (recyclerView.ws == 1) {
                    int[] iArr7 = recyclerView.nt;
                    recyclerView.io = x3 - iArr7[0];
                    recyclerView.m = y3 - iArr7[1];
                    if (dq(ox2 != 0 ? i3 : 0, p2 ? i4 : 0, obtain)) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                    }
                    com.bytedance.sdk.component.widget.recycler.p pVar = recyclerView.h;
                    if (pVar != null && (i3 != 0 || i4 != 0)) {
                        pVar.dq(this, i3, i4);
                    }
                }
            }
        }
        recyclerView.xi.addMovement(obtain);
        obtain.recycle();
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0012, code lost:
    
        return r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View ox(View view) {
        while (true) {
            Object parent = view.getParent();
            if (parent == null || parent == this || !(parent instanceof View)) {
                break;
            }
            view = (View) parent;
        }
        return null;
    }

    public void ox() {
        iw iwVar = this.f2244e;
        if (iwVar != null) {
            iwVar.p();
        }
        kk kkVar = this.q;
        if (kkVar != null) {
            kkVar.ox(this.s);
            this.q.d(this.s);
        }
        this.s.dq();
    }

    public void ox(int i2) {
        if (this.i) {
            return;
        }
        kk kkVar = this.q;
        if (kkVar == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            kkVar.dq(this, this.bl, i2);
        }
    }

    public void ox(int i2, int i3) {
        boolean z;
        EdgeEffect edgeEffect = this.dc;
        if (edgeEffect == null || edgeEffect.isFinished() || i2 <= 0) {
            z = false;
        } else {
            this.dc.onRelease();
            z = this.dc.isFinished();
        }
        EdgeEffect edgeEffect2 = this.fd;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i2 < 0) {
            this.fd.onRelease();
            z |= this.fd.isFinished();
        }
        EdgeEffect edgeEffect3 = this.jw;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i3 > 0) {
            this.jw.onRelease();
            z |= this.jw.isFinished();
        }
        EdgeEffect edgeEffect4 = this.bu;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i3 < 0) {
            this.bu.onRelease();
            z |= this.bu.isFinished();
        }
        if (z) {
            com.bytedance.sdk.component.widget.recycler.dq.ox.mn.ox(this);
        }
    }

    public void ox(boolean z) {
        this.wp = z | this.wp;
        this.k = true;
        r();
    }

    public int p(k kVar) {
        if (kVar.dq(524) || !kVar.r()) {
            return -1;
        }
        return this.iw.ox(kVar.iw);
    }

    public k p(int i2) {
        return dq(i2, false);
    }

    public k p(View view) {
        View ox2 = ox(view);
        if (ox2 == null) {
            return null;
        }
        return d(ox2);
    }

    public void p() {
        if (this.gh && !this.k) {
            if (!this.iw.p()) {
                return;
            }
            if (this.iw.dq(4) && !this.iw.dq(11)) {
                com.bytedance.sdk.component.widget.recycler.dq.dq.dq.dq("RV PartialInvalidate");
                s();
                ig();
                this.iw.d();
                if (!this.r) {
                    if (kx()) {
                        f();
                    } else {
                        this.iw.ox();
                    }
                }
                dq(true);
                mp();
                com.bytedance.sdk.component.widget.recycler.dq.dq.dq.dq();
                return;
            }
            if (!this.iw.p()) {
                return;
            }
        }
        com.bytedance.sdk.component.widget.recycler.dq.dq.dq.dq("RV FullInvalidate");
        f();
        com.bytedance.sdk.component.widget.recycler.dq.dq.dq.dq();
    }

    public void p(int i2, int i3) {
        if (i2 < 0) {
            mn();
            this.dc.onAbsorb(-i2);
        } else if (i2 > 0) {
            ia();
            this.fd.onAbsorb(i2);
        }
        if (i3 < 0) {
            kk();
            this.jw.onAbsorb(-i3);
        } else if (i3 > 0) {
            o();
            this.bu.onAbsorb(i3);
        }
        if (i2 == 0 && i3 == 0) {
            return;
        }
        com.bytedance.sdk.component.widget.recycler.dq.ox.mn.ox(this);
    }

    public boolean q() {
        return this.vw > 0;
    }

    public void r() {
        int ox2 = this.mn.ox();
        for (int i2 = 0; i2 < ox2; i2++) {
            k s2 = s(this.mn.p(i2));
            if (s2 != null && !s2.mn()) {
                s2.d(6);
            }
        }
        fw();
        this.s.ia();
    }

    @Override // android.view.ViewGroup
    public void removeDetachedView(View view, boolean z) {
        k s2 = s(view);
        if (s2 != null) {
            if (s2.le()) {
                s2.fw();
            } else if (!s2.mn()) {
                StringBuilder sb = new StringBuilder("Called removeDetachedView with a view which is not flagged as tmp detached.");
                sb.append(s2);
                throw new IllegalArgumentException(tn.d(this, sb));
            }
        }
        view.clearAnimation();
        no(view);
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.q.dq(this, this.bl, view, view2) && view2 != null) {
            dq(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return this.q.dq(this, view, rect, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        int size = this.gx.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.gx.get(i2);
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.uh != 0 || this.i) {
            this.r = true;
        } else {
            super.requestLayout();
        }
    }

    public k s(int i2) {
        k kVar = null;
        if (this.k) {
            return null;
        }
        int ox2 = this.mn.ox();
        for (int i3 = 0; i3 < ox2; i3++) {
            k s2 = s(this.mn.p(i3));
            if (s2 != null && !s2.i() && p(s2) == i2) {
                if (!this.mn.ox(s2.p)) {
                    return s2;
                }
                kVar = s2;
            }
        }
        return kVar;
    }

    public void s() {
        int i2 = this.uh + 1;
        this.uh = i2;
        if (i2 != 1 || this.i) {
            return;
        }
        this.r = false;
    }

    public void s(int i2, int i3) {
        setMeasuredDimension(kk.dq(i2, getPaddingRight() + getPaddingLeft(), com.bytedance.sdk.component.widget.recycler.dq.ox.mn.p(this)), kk.dq(i3, getPaddingBottom() + getPaddingTop(), com.bytedance.sdk.component.widget.recycler.dq.ox.mn.s(this)));
    }

    @Override // android.view.View
    public void scrollBy(int i2, int i3) {
        kk kkVar = this.q;
        if (kkVar == null) {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.i) {
            return;
        }
        boolean ox2 = kkVar.ox();
        boolean p2 = this.q.p();
        if (ox2 || p2) {
            if (!ox2) {
                i2 = 0;
            }
            if (!p2) {
                i3 = 0;
            }
            dq(i2, i3, (MotionEvent) null);
        }
    }

    public void setAdapter(dq dqVar) {
        setLayoutFrozen(false);
        dq(dqVar, false, true);
        ox(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(p pVar) {
        if (pVar != this.bf) {
            this.bf = pVar;
            setChildrenDrawingOrderEnabled(pVar != null);
        }
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z) {
        if (z != this.kk) {
            no();
        }
        this.kk = z;
        super.setClipToPadding(z);
        if (this.gh) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(s sVar) {
        dq(sVar);
        this.cv = sVar;
        no();
    }

    public void setHasFixedSize(boolean z) {
        this.cd = z;
    }

    public void setItemAnimator(iw iwVar) {
        iw iwVar2 = this.f2244e;
        if (iwVar2 != null) {
            iwVar2.p();
            this.f2244e.dq((iw.dq) null);
        }
        this.f2244e = iwVar;
        if (iwVar != null) {
            iwVar.dq(this.xj);
        }
    }

    public void setItemViewCacheSize(int i2) {
        this.s.dq(i2);
    }

    public void setLayoutFrozen(boolean z) {
        if (z != this.i) {
            dq("Do not setLayoutFrozen in layout or scroll");
            if (z) {
                long uptimeMillis = SystemClock.uptimeMillis();
                onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0));
                this.i = true;
                this.xz = true;
                iw();
                return;
            }
            this.i = false;
            if (this.r && this.q != null && this.mp != null) {
                requestLayout();
            }
            this.r = false;
        }
    }

    public void setLayoutManager(kk kkVar) {
        if (kkVar != this.q) {
            iw();
            if (this.q != null) {
                iw iwVar = this.f2244e;
                if (iwVar != null) {
                    iwVar.p();
                }
                this.q.ox(this.s);
                this.q.d(this.s);
                this.s.dq();
                if (this.fw) {
                    this.q.d(this, this.s);
                }
                this.q.dq((RecyclerView) null);
                this.q = null;
            } else {
                this.s.dq();
            }
            this.mn.dq();
            this.q = kkVar;
            if (kkVar != null) {
                if (kkVar.kk != null) {
                    StringBuilder sb = new StringBuilder("LayoutManager ");
                    sb.append(kkVar);
                    sb.append(" is already attached to a RecyclerView:");
                    throw new IllegalArgumentException(tn.d(kkVar.kk, sb));
                }
                kkVar.dq(this);
                if (this.fw) {
                    this.q.d(this);
                }
            }
            this.s.d();
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        getScrollingChildHelper().dq(z);
    }

    public void setOnFlingListener(ig igVar) {
        this.wi = igVar;
    }

    public void setPreserveFocusAfterLayout(boolean z) {
        this.hf = z;
    }

    public void setRecycledViewPool(jy jyVar) {
        this.s.dq(jyVar);
    }

    public void setRecyclerListener(fw fwVar) {
        this.jy = fwVar;
    }

    public void setScrollState(int i2) {
        if (i2 != this.ws) {
            this.ws = i2;
            if (i2 != 2) {
                h();
            }
            ia(i2);
        }
    }

    public void setViewCacheExtension(i iVar) {
        this.s.dq(iVar);
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i2) {
        return getScrollingChildHelper().d(i2);
    }

    @Override // android.view.View, com.bytedance.sdk.component.widget.recycler.dq.ox.d
    public void stopNestedScroll() {
        getScrollingChildHelper().ox();
    }
}
