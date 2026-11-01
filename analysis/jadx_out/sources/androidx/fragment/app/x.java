package androidx.fragment.app;

import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfigUserInfoForSegment;
import g.akj;
import g.awf;
import g.bwh;
import g.cjs;
import g.dek;
import g.dkk;
import g.dzc;
import g.fay;
import g.fni;
import g.gdn;
import g.goi;
import g.gyj;
import g.ut;
import g.vf;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class x {

    /* renamed from: a, reason: collision with root package name */
    public boolean f216a = false;

    /* renamed from: b, reason: collision with root package name */
    public int f217b = -1;

    /* renamed from: c, reason: collision with root package name */
    public final akj f218c;

    /* renamed from: d, reason: collision with root package name */
    public final e f219d;

    /* renamed from: e, reason: collision with root package name */
    public final Fragment f220e;

    public x(akj akjVar, e eVar, Fragment fragment) {
        this.f218c = akjVar;
        this.f219d = eVar;
        this.f220e = fragment;
    }

    public x(akj akjVar, e eVar, Fragment fragment, m mVar) {
        this.f218c = akjVar;
        this.f219d = eVar;
        this.f220e = fragment;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
        fragment.mBackStackNesting = 0;
        fragment.mInLayout = false;
        fragment.mAdded = false;
        Fragment fragment2 = fragment.mTarget;
        fragment.mTargetWho = fragment2 != null ? fragment2.mWho : null;
        fragment.mTarget = null;
        Bundle bundle = mVar.mSavedFragmentState;
        if (bundle != null) {
            fragment.mSavedFragmentState = bundle;
        } else {
            fragment.mSavedFragmentState = new Bundle();
        }
    }

    public x(akj akjVar, e eVar, ClassLoader classLoader, ut utVar, m mVar) {
        this.f218c = akjVar;
        this.f219d = eVar;
        Fragment instantiate = mVar.instantiate(utVar, classLoader);
        this.f220e = instantiate;
        if (v.ao(2)) {
            Objects.toString(instantiate);
        }
    }

    public final void f() {
        Fragment fragment = this.f220e;
        if (fragment.mFromLayout && fragment.mInLayout && !fragment.mPerformedCreateView) {
            if (v.ao(3)) {
                Objects.toString(fragment);
            }
            fragment.performCreateView(fragment.performGetLayoutInflater(fragment.mSavedFragmentState), null, fragment.mSavedFragmentState);
            View view = fragment.mView;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                fragment.mView.setTag(R.id.fragment_container_view_tag, fragment);
                if (fragment.mHidden) {
                    fragment.mView.setVisibility(8);
                }
                fragment.performViewCreated();
                this.f218c.x(false);
                fragment.mState = 2;
            }
        }
    }

    public final void g() {
        boolean ao = v.ao(3);
        Fragment fragment = this.f220e;
        if (ao) {
            Objects.toString(fragment);
        }
        View focusedView = fragment.getFocusedView();
        if (focusedView != null) {
            if (focusedView != fragment.mView) {
                for (ViewParent parent = focusedView.getParent(); parent != null; parent = parent.getParent()) {
                    if (parent != fragment.mView) {
                    }
                }
            }
            focusedView.requestFocus();
            if (v.ao(2)) {
                focusedView.toString();
                Objects.toString(fragment);
                Objects.toString(fragment.mView.findFocus());
            }
        }
        fragment.setFocusedView(null);
        fragment.performResume();
        this.f218c.ae(false);
        fragment.mSavedFragmentState = null;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
    }

    public final void h() {
        String str;
        Fragment fragment = this.f220e;
        if (fragment.mFromLayout) {
            return;
        }
        if (v.ao(3)) {
            Objects.toString(fragment);
        }
        LayoutInflater performGetLayoutInflater = fragment.performGetLayoutInflater(fragment.mSavedFragmentState);
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup == null) {
            int i = fragment.mContainerId;
            if (i == 0) {
                viewGroup = null;
            } else {
                if (i == -1) {
                    throw new IllegalArgumentException(awf.w("Cannot create fragment ", fragment, " for a container view with no id"));
                }
                viewGroup = (ViewGroup) fragment.mFragmentManager.o.c(i);
                if (viewGroup == null) {
                    if (!fragment.mRestored) {
                        try {
                            str = fragment.getResources().getResourceName(fragment.mContainerId);
                        } catch (Resources.NotFoundException unused) {
                            str = MediationConfigUserInfoForSegment.GENDER_UNKNOWN;
                        }
                        throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(fragment.mContainerId) + " (" + str + ") for fragment " + fragment);
                    }
                } else if (!(viewGroup instanceof FragmentContainerView)) {
                    vf vfVar = dek.f14057a;
                    dek.c(new fni(fragment, viewGroup));
                    dek.b(fragment).getClass();
                }
            }
        }
        fragment.mContainer = viewGroup;
        fragment.performCreateView(performGetLayoutInflater, viewGroup, fragment.mSavedFragmentState);
        View view = fragment.mView;
        if (view != null) {
            view.setSaveFromParentEnabled(false);
            fragment.mView.setTag(R.id.fragment_container_view_tag, fragment);
            if (viewGroup != null) {
                k();
            }
            if (fragment.mHidden) {
                fragment.mView.setVisibility(8);
            }
            View view2 = fragment.mView;
            WeakHashMap weakHashMap = goi.f18490c;
            if (view2.isAttachedToWindow()) {
                dzc.c(fragment.mView);
            } else {
                View view3 = fragment.mView;
                view3.addOnAttachStateChangeListener(new bwh(3, view3));
            }
            fragment.performViewCreated();
            this.f218c.x(false);
            int visibility = fragment.mView.getVisibility();
            fragment.setPostOnViewCreatedAlpha(fragment.mView.getAlpha());
            if (fragment.mContainer != null && visibility == 0) {
                View findFocus = fragment.mView.findFocus();
                if (findFocus != null) {
                    fragment.setFocusedView(findFocus);
                    if (v.ao(2)) {
                        findFocus.toString();
                        Objects.toString(fragment);
                    }
                }
                fragment.mView.setAlpha(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            }
        }
        fragment.mState = 2;
    }

    public final void i() {
        Fragment fragment = this.f220e;
        m mVar = new m(fragment);
        if (fragment.mState <= -1 || mVar.mSavedFragmentState != null) {
            mVar.mSavedFragmentState = fragment.mSavedFragmentState;
        } else {
            Bundle bundle = new Bundle();
            fragment.performSaveInstanceState(bundle);
            this.f218c.am(false);
            if (bundle.isEmpty()) {
                bundle = null;
            }
            if (fragment.mView != null) {
                m();
            }
            if (fragment.mSavedViewState != null) {
                if (bundle == null) {
                    bundle = new Bundle();
                }
                bundle.putSparseParcelableArray("android:view_state", fragment.mSavedViewState);
            }
            if (fragment.mSavedViewRegistryState != null) {
                if (bundle == null) {
                    bundle = new Bundle();
                }
                bundle.putBundle("android:view_registry_state", fragment.mSavedViewRegistryState);
            }
            if (!fragment.mUserVisibleHint) {
                if (bundle == null) {
                    bundle = new Bundle();
                }
                bundle.putBoolean("android:user_visible_hint", fragment.mUserVisibleHint);
            }
            mVar.mSavedFragmentState = bundle;
            if (fragment.mTargetWho != null) {
                if (bundle == null) {
                    mVar.mSavedFragmentState = new Bundle();
                }
                mVar.mSavedFragmentState.putString("android:target_state", fragment.mTargetWho);
                int i = fragment.mTargetRequestCode;
                if (i != 0) {
                    mVar.mSavedFragmentState.putInt("android:target_req_state", i);
                }
            }
        }
        this.f219d.j(fragment.mWho, mVar);
    }

    public final void j() {
        Fragment k;
        boolean ao = v.ao(3);
        Fragment fragment = this.f220e;
        if (ao) {
            Objects.toString(fragment);
        }
        boolean z = true;
        boolean z2 = fragment.mRemoving && !fragment.isInBackStack();
        e eVar = this.f219d;
        if (z2 && !fragment.mBeingSaved) {
            eVar.j(fragment.mWho, null);
        }
        if (!z2) {
            l lVar = eVar.f179a;
            if (!((lVar.f196c.containsKey(fragment.mWho) && lVar.f200g) ? lVar.f195b : true)) {
                String str = fragment.mTargetWho;
                if (str != null && (k = eVar.k(str)) != null && k.mRetainInstance) {
                    fragment.mTarget = k;
                }
                fragment.mState = 0;
                return;
            }
        }
        fay fayVar = fragment.mHost;
        if (fayVar instanceof gyj) {
            z = eVar.f179a.f195b;
        } else {
            u uVar = fayVar.h;
            if (awf.n(uVar)) {
                z = true ^ uVar.isChangingConfigurations();
            }
        }
        if ((z2 && !fragment.mBeingSaved) || z) {
            l lVar2 = eVar.f179a;
            lVar2.getClass();
            if (v.ao(3)) {
                Objects.toString(fragment);
            }
            lVar2.h(fragment.mWho);
        }
        fragment.performDestroy();
        this.f218c.m(false);
        Iterator it = eVar.f().iterator();
        while (it.hasNext()) {
            x xVar = (x) it.next();
            if (xVar != null) {
                Fragment fragment2 = xVar.f220e;
                if (fragment.mWho.equals(fragment2.mTargetWho)) {
                    fragment2.mTarget = fragment;
                    fragment2.mTargetWho = null;
                }
            }
        }
        String str2 = fragment.mTargetWho;
        if (str2 != null) {
            fragment.mTarget = eVar.k(str2);
        }
        eVar.e(this);
    }

    public final void k() {
        View view;
        View view2;
        ArrayList arrayList = this.f219d.f180b;
        Fragment fragment = this.f220e;
        ViewGroup viewGroup = fragment.mContainer;
        int i = -1;
        if (viewGroup != null) {
            int indexOf = arrayList.indexOf(fragment);
            int i2 = indexOf - 1;
            while (true) {
                if (i2 < 0) {
                    while (true) {
                        indexOf++;
                        if (indexOf >= arrayList.size()) {
                            break;
                        }
                        Fragment fragment2 = (Fragment) arrayList.get(indexOf);
                        if (fragment2.mContainer == viewGroup && (view = fragment2.mView) != null) {
                            i = viewGroup.indexOfChild(view);
                            break;
                        }
                    }
                } else {
                    Fragment fragment3 = (Fragment) arrayList.get(i2);
                    if (fragment3.mContainer == viewGroup && (view2 = fragment3.mView) != null) {
                        i = viewGroup.indexOfChild(view2) + 1;
                        break;
                    }
                    i2--;
                }
            }
        }
        fragment.mContainer.addView(fragment.mView, i);
    }

    public final void l() {
        View view;
        boolean ao = v.ao(3);
        Fragment fragment = this.f220e;
        if (ao) {
            Objects.toString(fragment);
        }
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null && (view = fragment.mView) != null) {
            viewGroup.removeView(view);
        }
        fragment.performDestroyView();
        this.f218c.y(false);
        fragment.mContainer = null;
        fragment.mView = null;
        fragment.mViewLifecycleOwner = null;
        fragment.mViewLifecycleOwnerLiveData.q(null);
        fragment.mInLayout = false;
    }

    public final void m() {
        Fragment fragment = this.f220e;
        if (fragment.mView == null) {
            return;
        }
        if (v.ao(2)) {
            Objects.toString(fragment);
            Objects.toString(fragment.mView);
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        fragment.mView.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            fragment.mSavedViewState = sparseArray;
        }
        Bundle bundle = new Bundle();
        fragment.mViewLifecycleOwner.f12695b.f(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        fragment.mSavedViewRegistryState = bundle;
    }

    public final void n() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        boolean z = this.f216a;
        Fragment fragment = this.f220e;
        if (z) {
            if (v.ao(2)) {
                Objects.toString(fragment);
                return;
            }
            return;
        }
        try {
            this.f216a = true;
            boolean z2 = false;
            while (true) {
                int q = q();
                int i = fragment.mState;
                e eVar = this.f219d;
                if (q == i) {
                    if (!z2 && i == -1 && fragment.mRemoving && !fragment.isInBackStack() && !fragment.mBeingSaved) {
                        if (v.ao(3)) {
                            Objects.toString(fragment);
                        }
                        l lVar = eVar.f179a;
                        lVar.getClass();
                        if (v.ao(3)) {
                            Objects.toString(fragment);
                        }
                        lVar.h(fragment.mWho);
                        eVar.e(this);
                        if (v.ao(3)) {
                            Objects.toString(fragment);
                        }
                        fragment.initState();
                    }
                    if (fragment.mHiddenChanged) {
                        if (fragment.mView != null && (viewGroup = fragment.mContainer) != null) {
                            y f2 = y.f(viewGroup, fragment.getParentFragmentManager());
                            if (fragment.mHidden) {
                                if (v.ao(2)) {
                                    f2.getClass();
                                    Objects.toString(fragment);
                                }
                                f2.n(gdn.GONE, dkk.NONE, this);
                            } else {
                                if (v.ao(2)) {
                                    f2.getClass();
                                    Objects.toString(fragment);
                                }
                                f2.n(gdn.VISIBLE, dkk.NONE, this);
                            }
                        }
                        v vVar = fragment.mFragmentManager;
                        if (vVar != null && fragment.mAdded && v.an(fragment)) {
                            vVar.p = true;
                        }
                        fragment.mHiddenChanged = false;
                        fragment.onHiddenChanged(fragment.mHidden);
                        fragment.mChildFragmentManager.ba();
                    }
                    this.f216a = false;
                    return;
                }
                akj akjVar = this.f218c;
                if (q <= i) {
                    switch (i - 1) {
                        case -1:
                            r();
                            break;
                        case 0:
                            if (fragment.mBeingSaved) {
                                if (((m) eVar.f182d.get(fragment.mWho)) == null) {
                                    i();
                                }
                            }
                            j();
                            break;
                        case 1:
                            l();
                            fragment.mState = 1;
                            break;
                        case 2:
                            fragment.mInLayout = false;
                            fragment.mState = 2;
                            break;
                        case 3:
                            if (v.ao(3)) {
                                Objects.toString(fragment);
                            }
                            if (fragment.mBeingSaved) {
                                i();
                            } else if (fragment.mView != null && fragment.mSavedViewState == null) {
                                m();
                            }
                            if (fragment.mView != null && (viewGroup2 = fragment.mContainer) != null) {
                                y f3 = y.f(viewGroup2, fragment.getParentFragmentManager());
                                if (v.ao(2)) {
                                    f3.getClass();
                                    Objects.toString(fragment);
                                }
                                f3.n(gdn.REMOVED, dkk.REMOVING, this);
                            }
                            fragment.mState = 3;
                            break;
                        case 4:
                            if (v.ao(3)) {
                                Objects.toString(fragment);
                            }
                            fragment.performStop();
                            akjVar.u(false);
                            break;
                        case 5:
                            fragment.mState = 5;
                            break;
                        case 6:
                            if (v.ao(3)) {
                                Objects.toString(fragment);
                            }
                            fragment.performPause();
                            akjVar.aa(false);
                            break;
                    }
                } else {
                    switch (i + 1) {
                        case 0:
                            o();
                            break;
                        case 1:
                            if (v.ao(3)) {
                                Objects.toString(fragment);
                            }
                            if (!fragment.mIsCreated) {
                                akjVar.z(false);
                                fragment.performCreate(fragment.mSavedFragmentState);
                                akjVar.ad(false);
                                break;
                            } else {
                                fragment.restoreChildFragmentState(fragment.mSavedFragmentState);
                                fragment.mState = 1;
                                break;
                            }
                        case 2:
                            f();
                            h();
                            break;
                        case 3:
                            if (v.ao(3)) {
                                Objects.toString(fragment);
                            }
                            fragment.performActivityCreated(fragment.mSavedFragmentState);
                            akjVar.al(false);
                            break;
                        case 4:
                            if (fragment.mView != null && (viewGroup3 = fragment.mContainer) != null) {
                                y f4 = y.f(viewGroup3, fragment.getParentFragmentManager());
                                gdn b2 = gdn.b(fragment.mView.getVisibility());
                                if (v.ao(2)) {
                                    f4.getClass();
                                    Objects.toString(fragment);
                                }
                                f4.n(b2, dkk.ADDING, this);
                            }
                            fragment.mState = 4;
                            break;
                        case 5:
                            if (v.ao(3)) {
                                Objects.toString(fragment);
                            }
                            fragment.performStart();
                            akjVar.ag(false);
                            break;
                        case 6:
                            fragment.mState = 6;
                            break;
                        case 7:
                            g();
                            break;
                    }
                }
                z2 = true;
            }
        } catch (Throwable th) {
            this.f216a = false;
            throw th;
        }
    }

    public final void o() {
        boolean ao = v.ao(3);
        Fragment fragment = this.f220e;
        if (ao) {
            Objects.toString(fragment);
        }
        Fragment fragment2 = fragment.mTarget;
        x xVar = null;
        e eVar = this.f219d;
        if (fragment2 != null) {
            x xVar2 = (x) eVar.f181c.get(fragment2.mWho);
            if (xVar2 == null) {
                throw new IllegalStateException("Fragment " + fragment + " declared target fragment " + fragment.mTarget + " that does not belong to this FragmentManager!");
            }
            fragment.mTargetWho = fragment.mTarget.mWho;
            fragment.mTarget = null;
            xVar = xVar2;
        } else {
            String str = fragment.mTargetWho;
            if (str != null && (xVar = (x) eVar.f181c.get(str)) == null) {
                StringBuilder sb = new StringBuilder("Fragment ");
                sb.append(fragment);
                sb.append(" declared target fragment ");
                throw new IllegalStateException(awf.ad(sb, fragment.mTargetWho, " that does not belong to this FragmentManager!"));
            }
        }
        if (xVar != null) {
            xVar.n();
        }
        v vVar = fragment.mFragmentManager;
        fragment.mHost = vVar.af;
        fragment.mParentFragment = vVar.t;
        akj akjVar = this.f218c;
        akjVar.n(false);
        fragment.performAttach();
        akjVar.ab(false);
    }

    public final void p(ClassLoader classLoader) {
        Fragment fragment = this.f220e;
        Bundle bundle = fragment.mSavedFragmentState;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        fragment.mSavedViewState = fragment.mSavedFragmentState.getSparseParcelableArray("android:view_state");
        fragment.mSavedViewRegistryState = fragment.mSavedFragmentState.getBundle("android:view_registry_state");
        fragment.mTargetWho = fragment.mSavedFragmentState.getString("android:target_state");
        if (fragment.mTargetWho != null) {
            fragment.mTargetRequestCode = fragment.mSavedFragmentState.getInt("android:target_req_state", 0);
        }
        Boolean bool = fragment.mSavedUserVisibleHint;
        if (bool != null) {
            fragment.mUserVisibleHint = bool.booleanValue();
            fragment.mSavedUserVisibleHint = null;
        } else {
            fragment.mUserVisibleHint = fragment.mSavedFragmentState.getBoolean("android:user_visible_hint", true);
        }
        if (fragment.mUserVisibleHint) {
            return;
        }
        fragment.mDeferStart = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v4, types: [g.dkk] */
    /* JADX WARN: Type inference failed for: r2v16, types: [g.dkk] */
    public final int q() {
        Fragment fragment = this.f220e;
        if (fragment.mFragmentManager == null) {
            return fragment.mState;
        }
        int i = this.f217b;
        int i2 = cjs.f12997a[fragment.mMaxState.ordinal()];
        if (i2 != 1) {
            i = i2 != 2 ? i2 != 3 ? i2 != 4 ? Math.min(i, -1) : Math.min(i, 0) : Math.min(i, 1) : Math.min(i, 5);
        }
        if (fragment.mFromLayout) {
            if (fragment.mInLayout) {
                i = Math.max(this.f217b, 2);
                View view = fragment.mView;
                if (view != null && view.getParent() == null) {
                    i = Math.min(i, 2);
                }
            } else {
                i = this.f217b < 4 ? Math.min(i, fragment.mState) : Math.min(i, 1);
            }
        }
        if (!fragment.mAdded) {
            i = Math.min(i, 1);
        }
        ViewGroup viewGroup = fragment.mContainer;
        a aVar = null;
        if (viewGroup != null) {
            y f2 = y.f(viewGroup, fragment.getParentFragmentManager());
            f2.getClass();
            a m = f2.m(fragment);
            a aVar2 = m != null ? m.f175f : null;
            Iterator it = f2.f225e.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                a aVar3 = (a) it.next();
                if (aVar3.f176g.equals(fragment) && !aVar3.f174e) {
                    aVar = aVar3;
                    break;
                }
            }
            aVar = (aVar == null || !(aVar2 == null || aVar2 == dkk.NONE)) ? aVar2 : aVar.f175f;
        }
        if (aVar == dkk.ADDING) {
            i = Math.min(i, 6);
        } else if (aVar == dkk.REMOVING) {
            i = Math.max(i, 3);
        } else if (fragment.mRemoving) {
            i = fragment.isInBackStack() ? Math.min(i, 1) : Math.min(i, -1);
        }
        if (fragment.mDeferStart && fragment.mState < 5) {
            i = Math.min(i, 4);
        }
        if (v.ao(2)) {
            Objects.toString(fragment);
        }
        return i;
    }

    public final void r() {
        boolean ao = v.ao(3);
        Fragment fragment = this.f220e;
        if (ao) {
            Objects.toString(fragment);
        }
        fragment.performDetach();
        this.f218c.s(false);
        fragment.mState = -1;
        fragment.mHost = null;
        fragment.mParentFragment = null;
        fragment.mFragmentManager = null;
        if (!fragment.mRemoving || fragment.isInBackStack()) {
            l lVar = this.f219d.f179a;
            if (!((lVar.f196c.containsKey(fragment.mWho) && lVar.f200g) ? lVar.f195b : true)) {
                return;
            }
        }
        if (v.ao(3)) {
            Objects.toString(fragment);
        }
        fragment.initState();
    }
}
