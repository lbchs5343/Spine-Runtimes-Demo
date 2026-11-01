package androidx.fragment.app;

import android.view.View;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.ac;
import g.dad;
import g.dkk;
import g.emr;
import g.gdn;
import g.gtz;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final x f170a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f171b;

    /* renamed from: c, reason: collision with root package name */
    public final HashSet f172c;

    /* renamed from: d, reason: collision with root package name */
    public gdn f173d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f174e;

    /* renamed from: f, reason: collision with root package name */
    public dkk f175f;

    /* renamed from: g, reason: collision with root package name */
    public final Fragment f176g;
    public boolean h;

    public a(gdn gdnVar, dkk dkkVar, x xVar, ac acVar) {
        Fragment fragment = xVar.f220e;
        this.f171b = new ArrayList();
        this.f172c = new HashSet();
        this.f174e = false;
        this.h = false;
        this.f173d = gdnVar;
        this.f175f = dkkVar;
        this.f176g = fragment;
        acVar.d(new emr(16, this));
        this.f170a = xVar;
    }

    public final void i() {
        dkk dkkVar = this.f175f;
        dkk dkkVar2 = dkk.ADDING;
        x xVar = this.f170a;
        if (dkkVar != dkkVar2) {
            if (dkkVar == dkk.REMOVING) {
                Fragment fragment = xVar.f220e;
                View requireView = fragment.requireView();
                if (v.ao(2)) {
                    Objects.toString(requireView.findFocus());
                    requireView.toString();
                    fragment.toString();
                }
                requireView.clearFocus();
                return;
            }
            return;
        }
        Fragment fragment2 = xVar.f220e;
        View findFocus = fragment2.mView.findFocus();
        if (findFocus != null) {
            fragment2.setFocusedView(findFocus);
            if (v.ao(2)) {
                findFocus.toString();
                fragment2.toString();
            }
        }
        View requireView2 = this.f176g.requireView();
        if (requireView2.getParent() == null) {
            xVar.k();
            requireView2.setAlpha(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        }
        if (requireView2.getAlpha() == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && requireView2.getVisibility() == 0) {
            requireView2.setVisibility(4);
        }
        requireView2.setAlpha(fragment2.getPostOnViewCreatedAlpha());
    }

    public final void j() {
        HashSet hashSet = this.f172c;
        if (this.f174e) {
            return;
        }
        this.f174e = true;
        if (hashSet.isEmpty()) {
            k();
            return;
        }
        Iterator it = new ArrayList(hashSet).iterator();
        while (it.hasNext()) {
            ac acVar = (ac) it.next();
            synchronized (acVar) {
                try {
                    if (!acVar.f9954a) {
                        acVar.f9954a = true;
                        acVar.f9956c = true;
                        dad dadVar = acVar.f9955b;
                        if (dadVar != null) {
                            try {
                                dadVar.onCancel();
                            } catch (Throwable th) {
                                synchronized (acVar) {
                                    acVar.f9956c = false;
                                    acVar.notifyAll();
                                    throw th;
                                }
                            }
                        }
                        synchronized (acVar) {
                            acVar.f9956c = false;
                            acVar.notifyAll();
                        }
                    }
                } finally {
                }
            }
        }
    }

    public final void k() {
        if (!this.h) {
            if (v.ao(2)) {
                toString();
            }
            this.h = true;
            Iterator it = this.f171b.iterator();
            while (it.hasNext()) {
                ((Runnable) it.next()).run();
            }
        }
        this.f170a.n();
    }

    public final void l(gdn gdnVar, dkk dkkVar) {
        int i = gtz.f18747b[dkkVar.ordinal()];
        Fragment fragment = this.f176g;
        if (i == 1) {
            if (this.f173d == gdn.REMOVED) {
                if (v.ao(2)) {
                    Objects.toString(fragment);
                    Objects.toString(this.f175f);
                }
                this.f173d = gdn.VISIBLE;
                this.f175f = dkk.ADDING;
                return;
            }
            return;
        }
        if (i == 2) {
            if (v.ao(2)) {
                Objects.toString(fragment);
                Objects.toString(this.f173d);
                Objects.toString(this.f175f);
            }
            this.f173d = gdn.REMOVED;
            this.f175f = dkk.REMOVING;
            return;
        }
        if (i == 3 && this.f173d != gdn.REMOVED) {
            if (v.ao(2)) {
                Objects.toString(fragment);
                Objects.toString(this.f173d);
                Objects.toString(gdnVar);
            }
            this.f173d = gdnVar;
        }
    }

    public final String toString() {
        return "Operation {" + Integer.toHexString(System.identityHashCode(this)) + "} {mFinalState = " + this.f173d + "} {mLifecycleImpact = " + this.f175f + "} {mFragment = " + this.f176g + "}";
    }
}
