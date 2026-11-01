package androidx.fragment.app;

import android.animation.Animator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.afo;
import g.ajm;
import g.ajs;
import g.aly;
import g.apm;
import g.awf;
import g.bca;
import g.bez;
import g.bff;
import g.bfy;
import g.bin;
import g.bqe;
import g.byd;
import g.cdn;
import g.cem;
import g.cet;
import g.cfa;
import g.cyt;
import g.czn;
import g.dcq;
import g.dek;
import g.dmi;
import g.dqr;
import g.dtn;
import g.dwb;
import g.dyr;
import g.ecl;
import g.eeq;
import g.egk;
import g.ehj;
import g.eka;
import g.euu;
import g.evk;
import g.ewp;
import g.fay;
import g.fm;
import g.fob;
import g.fqv;
import g.gff;
import g.gob;
import g.gqe;
import g.gyj;
import g.hbu;
import g.hcr;
import g.hep;
import g.id;
import g.iz;
import g.ok;
import g.tn;
import g.ut;
import g.vf;
import g.wf;
import g.wg;
import g.xd;
import j$.util.Objects;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public abstract class Fragment implements ComponentCallbacks, View.OnCreateContextMenuListener, iz, gyj, hcr, gff {
    static final int ACTIVITY_CREATED = 4;
    static final int ATTACHED = 0;
    static final int AWAITING_ENTER_EFFECTS = 6;
    static final int AWAITING_EXIT_EFFECTS = 3;
    static final int CREATED = 1;
    static final int INITIALIZING = -1;
    static final int RESUMED = 7;
    static final int STARTED = 5;
    static final Object USE_DEFAULT_TRANSITION = new Object();
    static final int VIEW_CREATED = 2;
    boolean mAdded;
    hep mAnimationInfo;
    Bundle mArguments;
    int mBackStackNesting;
    boolean mBeingSaved;
    private boolean mCalled;
    ViewGroup mContainer;
    int mContainerId;
    private int mContentLayoutId;
    dqr mDefaultFactory;
    boolean mDeferStart;
    boolean mDetached;
    int mFragmentId;
    v mFragmentManager;
    boolean mFromLayout;
    boolean mHasMenu;
    boolean mHidden;
    boolean mHiddenChanged;
    fay mHost;
    boolean mInLayout;
    boolean mIsCreated;
    LayoutInflater mLayoutInflater;
    ajs mLifecycleRegistry;
    Fragment mParentFragment;
    boolean mPerformedCreateView;
    public String mPreviousWho;
    boolean mRemoving;
    boolean mRestored;
    boolean mRetainInstance;
    boolean mRetainInstanceChangedWhileDetached;
    Bundle mSavedFragmentState;
    dyr mSavedStateRegistryController;
    Boolean mSavedUserVisibleHint;
    Bundle mSavedViewRegistryState;
    SparseArray<Parcelable> mSavedViewState;
    String mTag;
    Fragment mTarget;
    int mTargetRequestCode;
    View mView;
    cdn mViewLifecycleOwner;
    int mState = -1;
    String mWho = UUID.randomUUID().toString();
    String mTargetWho = null;
    private Boolean mIsPrimaryNavigationFragment = null;
    v mChildFragmentManager = new dmi();
    boolean mMenuVisible = true;
    boolean mUserVisibleHint = true;
    Runnable mPostponedDurationRunnable = new ok(this, 0);
    fqv mMaxState = fqv.RESUMED;
    cet mViewLifecycleOwnerLiveData = new cet();
    private final AtomicInteger mNextLocalRequestCode = new AtomicInteger();
    private final ArrayList<apm> mOnPreAttachedListeners = new ArrayList<>();
    private final apm mSavedStateAttachListener = new r(this);

    public Fragment() {
        a();
    }

    @Deprecated
    public static Fragment instantiate(Context context, String str) {
        return instantiate(context, str, null);
    }

    @Deprecated
    public static Fragment instantiate(Context context, String str, Bundle bundle) {
        try {
            Fragment fragment = (Fragment) ut.c(context.getClassLoader(), str).getConstructor(null).newInstance(null);
            if (bundle == null) {
                return fragment;
            }
            bundle.setClassLoader(fragment.getClass().getClassLoader());
            fragment.setArguments(bundle);
            return fragment;
        } catch (IllegalAccessException e2) {
            throw new dwb(tn.ad("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e2);
        } catch (InstantiationException e3) {
            throw new dwb(tn.ad("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e3);
        } catch (NoSuchMethodException e4) {
            throw new dwb(tn.ad("Unable to instantiate fragment ", str, ": could not find Fragment constructor"), e4);
        } catch (InvocationTargetException e5) {
            throw new dwb(tn.ad("Unable to instantiate fragment ", str, ": calling Fragment constructor caused an exception"), e5);
        }
    }

    public final void a() {
        this.mLifecycleRegistry = new ajs(this);
        this.mSavedStateRegistryController = new dyr(this);
        this.mDefaultFactory = null;
        if (this.mOnPreAttachedListeners.contains(this.mSavedStateAttachListener)) {
            return;
        }
        apm apmVar = this.mSavedStateAttachListener;
        if (this.mState >= 0) {
            apmVar.b();
        } else {
            this.mOnPreAttachedListeners.add(apmVar);
        }
    }

    public final eeq b(ehj ehjVar, xd xdVar, bez bezVar) {
        if (this.mState > 1) {
            throw new IllegalStateException(awf.w("Fragment ", this, " is attempting to registerForActivityResult after being created. Fragments must call registerForActivityResult() before they are created (i.e. initialization, onAttach(), or onCreate())."));
        }
        AtomicReference atomicReference = new AtomicReference();
        evk evkVar = new evk(this, xdVar, atomicReference, ehjVar, bezVar);
        if (this.mState >= 0) {
            evkVar.b();
        } else {
            this.mOnPreAttachedListeners.add(evkVar);
        }
        return new eeq(atomicReference);
    }

    public final hep c() {
        if (this.mAnimationInfo == null) {
            hep hepVar = new hep();
            hepVar.m = null;
            Object obj = USE_DEFAULT_TRANSITION;
            hepVar.o = obj;
            hepVar.f19348b = null;
            hepVar.f19352f = obj;
            hepVar.l = null;
            hepVar.f19350d = obj;
            hepVar.p = 1.0f;
            hepVar.s = null;
            this.mAnimationInfo = hepVar;
        }
        return this.mAnimationInfo;
    }

    public void callStartTransitionListener(boolean z) {
        ViewGroup viewGroup;
        v vVar;
        hep hepVar = this.mAnimationInfo;
        if (hepVar != null) {
            hepVar.j = false;
        }
        if (this.mView == null || (viewGroup = this.mContainer) == null || (vVar = this.mFragmentManager) == null) {
            return;
        }
        y j = y.j(viewGroup, vVar.ch());
        j.o();
        if (z) {
            this.mHost.f16497e.post(new byd(13, j));
        } else {
            j.k();
        }
    }

    public egk createFragmentContainer() {
        return new t(this);
    }

    public final int d() {
        fqv fqvVar = this.mMaxState;
        return (fqvVar == fqv.INITIALIZED || this.mParentFragment == null) ? fqvVar.ordinal() : Math.min(fqvVar.ordinal(), this.mParentFragment.d());
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.mFragmentId));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.mContainerId));
        printWriter.print(" mTag=");
        printWriter.println(this.mTag);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.mState);
        printWriter.print(" mWho=");
        printWriter.print(this.mWho);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.mBackStackNesting);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.mAdded);
        printWriter.print(" mRemoving=");
        printWriter.print(this.mRemoving);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.mFromLayout);
        printWriter.print(" mInLayout=");
        printWriter.println(this.mInLayout);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.mHidden);
        printWriter.print(" mDetached=");
        printWriter.print(this.mDetached);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.mMenuVisible);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.mHasMenu);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.mRetainInstance);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.mUserVisibleHint);
        if (this.mFragmentManager != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.mFragmentManager);
        }
        if (this.mHost != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.mHost);
        }
        if (this.mParentFragment != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.mParentFragment);
        }
        if (this.mArguments != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.mArguments);
        }
        if (this.mSavedFragmentState != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.mSavedFragmentState);
        }
        if (this.mSavedViewState != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.mSavedViewState);
        }
        if (this.mSavedViewRegistryState != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewRegistryState=");
            printWriter.println(this.mSavedViewRegistryState);
        }
        Fragment e2 = e(false);
        if (e2 != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(e2);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.mTargetRequestCode);
        }
        printWriter.print(str);
        printWriter.print("mPopDirection=");
        printWriter.println(getPopDirection());
        if (getEnterAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getEnterAnim=");
            printWriter.println(getEnterAnim());
        }
        if (getExitAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getExitAnim=");
            printWriter.println(getExitAnim());
        }
        if (getPopEnterAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getPopEnterAnim=");
            printWriter.println(getPopEnterAnim());
        }
        if (getPopExitAnim() != 0) {
            printWriter.print(str);
            printWriter.print("getPopExitAnim=");
            printWriter.println(getPopExitAnim());
        }
        if (this.mContainer != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.mContainer);
        }
        if (this.mView != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.mView);
        }
        if (getAnimatingAway() != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(getAnimatingAway());
        }
        if (getContext() != null) {
            cyt.a(this).d(str, printWriter);
        }
        printWriter.print(str);
        printWriter.println("Child " + this.mChildFragmentManager + ":");
        this.mChildFragmentManager.bh(awf.c(str, "  "), fileDescriptor, printWriter, strArr);
    }

    public final Fragment e(boolean z) {
        String str;
        if (z) {
            vf vfVar = dek.f14057a;
            dek.c(new eka(this, "Attempting to get target fragment from fragment " + this));
            dek.b(this).getClass();
        }
        Fragment fragment = this.mTarget;
        if (fragment != null) {
            return fragment;
        }
        v vVar = this.mFragmentManager;
        if (vVar == null || (str = this.mTargetWho) == null) {
            return null;
        }
        return vVar.ah.k(str);
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    public Fragment findFragmentByWho(String str) {
        return str.equals(this.mWho) ? this : this.mChildFragmentManager.ah.l(str);
    }

    public String generateActivityResultKey() {
        return "fragment_" + this.mWho + "_rq#" + this.mNextLocalRequestCode.getAndIncrement();
    }

    public final u getActivity() {
        fay fayVar = this.mHost;
        if (fayVar == null) {
            return null;
        }
        return fayVar.f16499g;
    }

    public boolean getAllowEnterTransitionOverlap() {
        Boolean bool;
        hep hepVar = this.mAnimationInfo;
        if (hepVar == null || (bool = hepVar.k) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public boolean getAllowReturnTransitionOverlap() {
        Boolean bool;
        hep hepVar = this.mAnimationInfo;
        if (hepVar == null || (bool = hepVar.f19349c) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public View getAnimatingAway() {
        hep hepVar = this.mAnimationInfo;
        if (hepVar == null) {
            return null;
        }
        hepVar.getClass();
        return null;
    }

    public final Bundle getArguments() {
        return this.mArguments;
    }

    public final v getChildFragmentManager() {
        if (this.mHost != null) {
            return this.mChildFragmentManager;
        }
        throw new IllegalStateException(awf.w("Fragment ", this, " has not been attached yet."));
    }

    public Context getContext() {
        fay fayVar = this.mHost;
        if (fayVar == null) {
            return null;
        }
        return fayVar.h;
    }

    @Override // g.hcr
    public bin getDefaultViewModelCreationExtras() {
        Application application;
        Context applicationContext = requireContext().getApplicationContext();
        while (true) {
            if (!(applicationContext instanceof ContextWrapper)) {
                application = null;
                break;
            }
            if (applicationContext instanceof Application) {
                application = (Application) applicationContext;
                break;
            }
            applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
        }
        if (application == null && v.ao(3)) {
            Objects.toString(requireContext().getApplicationContext());
        }
        ewp ewpVar = new ewp();
        LinkedHashMap linkedHashMap = ewpVar.f11665b;
        if (application != null) {
            linkedHashMap.put(bfy.f11485g, application);
        }
        linkedHashMap.put(afo.y, this);
        linkedHashMap.put(afo.z, this);
        if (getArguments() != null) {
            linkedHashMap.put(afo.f10142ab, getArguments());
        }
        return ewpVar;
    }

    public dqr getDefaultViewModelProviderFactory() {
        Application application;
        if (this.mFragmentManager == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (this.mDefaultFactory == null) {
            Context applicationContext = requireContext().getApplicationContext();
            while (true) {
                if (!(applicationContext instanceof ContextWrapper)) {
                    application = null;
                    break;
                }
                if (applicationContext instanceof Application) {
                    application = (Application) applicationContext;
                    break;
                }
                applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
            }
            if (application == null && v.ao(3)) {
                Objects.toString(requireContext().getApplicationContext());
            }
            this.mDefaultFactory = new ecl(application, this, getArguments());
        }
        return this.mDefaultFactory;
    }

    public int getEnterAnim() {
        hep hepVar = this.mAnimationInfo;
        if (hepVar == null) {
            return 0;
        }
        return hepVar.n;
    }

    public Object getEnterTransition() {
        hep hepVar = this.mAnimationInfo;
        if (hepVar == null) {
            return null;
        }
        return hepVar.m;
    }

    public bca getEnterTransitionCallback() {
        hep hepVar = this.mAnimationInfo;
        if (hepVar == null) {
            return null;
        }
        hepVar.getClass();
        return null;
    }

    public int getExitAnim() {
        hep hepVar = this.mAnimationInfo;
        if (hepVar == null) {
            return 0;
        }
        return hepVar.q;
    }

    public Object getExitTransition() {
        hep hepVar = this.mAnimationInfo;
        if (hepVar == null) {
            return null;
        }
        return hepVar.f19348b;
    }

    public bca getExitTransitionCallback() {
        hep hepVar = this.mAnimationInfo;
        if (hepVar == null) {
            return null;
        }
        hepVar.getClass();
        return null;
    }

    public View getFocusedView() {
        hep hepVar = this.mAnimationInfo;
        if (hepVar == null) {
            return null;
        }
        return hepVar.s;
    }

    @Deprecated
    public final v getFragmentManager() {
        return this.mFragmentManager;
    }

    public final Object getHost() {
        fay fayVar = this.mHost;
        if (fayVar == null) {
            return null;
        }
        return ((p) fayVar).f204a;
    }

    public final int getId() {
        return this.mFragmentId;
    }

    public final LayoutInflater getLayoutInflater() {
        LayoutInflater layoutInflater = this.mLayoutInflater;
        return layoutInflater == null ? performGetLayoutInflater(null) : layoutInflater;
    }

    @Deprecated
    public LayoutInflater getLayoutInflater(Bundle bundle) {
        fay fayVar = this.mHost;
        if (fayVar == null) {
            throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
        }
        u uVar = ((p) fayVar).f204a;
        LayoutInflater cloneInContext = uVar.getLayoutInflater().cloneInContext(uVar);
        cloneInContext.setFactory2(this.mChildFragmentManager.v);
        return cloneInContext;
    }

    @Override // g.iz
    public euu getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @Deprecated
    public cyt getLoaderManager() {
        return cyt.a(this);
    }

    public int getNextTransition() {
        hep hepVar = this.mAnimationInfo;
        if (hepVar == null) {
            return 0;
        }
        return hepVar.i;
    }

    public final Fragment getParentFragment() {
        return this.mParentFragment;
    }

    public final v getParentFragmentManager() {
        v vVar = this.mFragmentManager;
        if (vVar != null) {
            return vVar;
        }
        throw new IllegalStateException(awf.w("Fragment ", this, " not associated with a fragment manager."));
    }

    public boolean getPopDirection() {
        hep hepVar = this.mAnimationInfo;
        if (hepVar == null) {
            return false;
        }
        return hepVar.h;
    }

    public int getPopEnterAnim() {
        hep hepVar = this.mAnimationInfo;
        if (hepVar == null) {
            return 0;
        }
        return hepVar.f19351e;
    }

    public int getPopExitAnim() {
        hep hepVar = this.mAnimationInfo;
        if (hepVar == null) {
            return 0;
        }
        return hepVar.f19353g;
    }

    public float getPostOnViewCreatedAlpha() {
        hep hepVar = this.mAnimationInfo;
        if (hepVar == null) {
            return 1.0f;
        }
        return hepVar.p;
    }

    public Object getReenterTransition() {
        hep hepVar = this.mAnimationInfo;
        if (hepVar == null) {
            return null;
        }
        Object obj = hepVar.f19352f;
        return obj == USE_DEFAULT_TRANSITION ? getExitTransition() : obj;
    }

    public final Resources getResources() {
        return requireContext().getResources();
    }

    @Deprecated
    public final boolean getRetainInstance() {
        vf vfVar = dek.f14057a;
        dek.c(new bqe(this, "Attempting to get retain instance for fragment " + this));
        dek.b(this).getClass();
        return this.mRetainInstance;
    }

    public Object getReturnTransition() {
        hep hepVar = this.mAnimationInfo;
        if (hepVar == null) {
            return null;
        }
        Object obj = hepVar.o;
        return obj == USE_DEFAULT_TRANSITION ? getEnterTransition() : obj;
    }

    @Override // g.gff
    public final hbu getSavedStateRegistry() {
        return this.mSavedStateRegistryController.f15097b;
    }

    public Object getSharedElementEnterTransition() {
        hep hepVar = this.mAnimationInfo;
        if (hepVar == null) {
            return null;
        }
        return hepVar.l;
    }

    public Object getSharedElementReturnTransition() {
        hep hepVar = this.mAnimationInfo;
        if (hepVar == null) {
            return null;
        }
        Object obj = hepVar.f19350d;
        return obj == USE_DEFAULT_TRANSITION ? getSharedElementEnterTransition() : obj;
    }

    public ArrayList<String> getSharedElementSourceNames() {
        ArrayList<String> arrayList;
        hep hepVar = this.mAnimationInfo;
        return (hepVar == null || (arrayList = hepVar.r) == null) ? new ArrayList<>() : arrayList;
    }

    public ArrayList<String> getSharedElementTargetNames() {
        ArrayList<String> arrayList;
        hep hepVar = this.mAnimationInfo;
        return (hepVar == null || (arrayList = hepVar.f19347a) == null) ? new ArrayList<>() : arrayList;
    }

    public final String getString(int i) {
        return getResources().getString(i);
    }

    public final String getString(int i, Object... objArr) {
        return getResources().getString(i, objArr);
    }

    public final String getTag() {
        return this.mTag;
    }

    @Deprecated
    public final Fragment getTargetFragment() {
        return e(true);
    }

    @Deprecated
    public final int getTargetRequestCode() {
        vf vfVar = dek.f14057a;
        dek.c(new eka(this, "Attempting to get target request code from fragment " + this));
        dek.b(this).getClass();
        return this.mTargetRequestCode;
    }

    public final CharSequence getText(int i) {
        return getResources().getText(i);
    }

    @Deprecated
    public boolean getUserVisibleHint() {
        return this.mUserVisibleHint;
    }

    public View getView() {
        return this.mView;
    }

    public iz getViewLifecycleOwner() {
        cdn cdnVar = this.mViewLifecycleOwner;
        if (cdnVar != null) {
            return cdnVar;
        }
        throw new IllegalStateException("Can't access the Fragment View's LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()");
    }

    public androidx.lifecycle.a getViewLifecycleOwnerLiveData() {
        return this.mViewLifecycleOwnerLiveData;
    }

    @Override // g.gyj
    public wg getViewModelStore() {
        if (this.mFragmentManager == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (d() == fqv.INITIALIZED.ordinal()) {
            throw new IllegalStateException("Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported");
        }
        HashMap hashMap = this.mFragmentManager.f213e.f198e;
        wg wgVar = (wg) hashMap.get(this.mWho);
        if (wgVar != null) {
            return wgVar;
        }
        wg wgVar2 = new wg();
        hashMap.put(this.mWho, wgVar2);
        return wgVar2;
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public final boolean hasOptionsMenu() {
        return this.mHasMenu;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public void initState() {
        a();
        this.mPreviousWho = this.mWho;
        this.mWho = UUID.randomUUID().toString();
        this.mAdded = false;
        this.mRemoving = false;
        this.mFromLayout = false;
        this.mInLayout = false;
        this.mRestored = false;
        this.mBackStackNesting = 0;
        this.mFragmentManager = null;
        this.mChildFragmentManager = new dmi();
        this.mHost = null;
        this.mFragmentId = 0;
        this.mContainerId = 0;
        this.mTag = null;
        this.mHidden = false;
        this.mDetached = false;
    }

    public final boolean isAdded() {
        return this.mHost != null && this.mAdded;
    }

    public final boolean isDetached() {
        return this.mDetached;
    }

    public final boolean isHidden() {
        if (this.mHidden) {
            return true;
        }
        v vVar = this.mFragmentManager;
        if (vVar != null) {
            Fragment fragment = this.mParentFragment;
            vVar.getClass();
            if (fragment == null ? false : fragment.isHidden()) {
                return true;
            }
        }
        return false;
    }

    public final boolean isInBackStack() {
        return this.mBackStackNesting > 0;
    }

    public final boolean isInLayout() {
        return this.mInLayout;
    }

    public final boolean isMenuVisible() {
        if (!this.mMenuVisible) {
            return false;
        }
        if (this.mFragmentManager != null) {
            Fragment fragment = this.mParentFragment;
            if (!(fragment == null ? true : fragment.isMenuVisible())) {
                return false;
            }
        }
        return true;
    }

    public boolean isPostponed() {
        hep hepVar = this.mAnimationInfo;
        if (hepVar == null) {
            return false;
        }
        return hepVar.j;
    }

    public final boolean isRemoving() {
        return this.mRemoving;
    }

    public final boolean isResumed() {
        return this.mState >= 7;
    }

    public final boolean isStateSaved() {
        v vVar = this.mFragmentManager;
        if (vVar == null) {
            return false;
        }
        return vVar.aj || vVar.ag;
    }

    public final boolean isVisible() {
        View view;
        return (!isAdded() || isHidden() || (view = this.mView) == null || view.getWindowToken() == null || this.mView.getVisibility() != 0) ? false : true;
    }

    public void noteStateNotSaved() {
        this.mChildFragmentManager.bm();
    }

    @Deprecated
    public void onActivityCreated(Bundle bundle) {
        this.mCalled = true;
    }

    @Deprecated
    public void onActivityResult(int i, int i2, Intent intent) {
        if (v.ao(2)) {
            toString();
            Objects.toString(intent);
        }
    }

    @Deprecated
    public void onAttach(Activity activity) {
        this.mCalled = true;
    }

    public void onAttach(Context context) {
        this.mCalled = true;
        fay fayVar = this.mHost;
        u uVar = fayVar == null ? null : fayVar.f16499g;
        if (uVar != null) {
            this.mCalled = false;
            onAttach((Activity) uVar);
        }
    }

    @Deprecated
    public void onAttachFragment(Fragment fragment) {
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.mCalled = true;
    }

    public boolean onContextItemSelected(MenuItem menuItem) {
        return false;
    }

    public void onCreate(Bundle bundle) {
        this.mCalled = true;
        restoreChildFragmentState(bundle);
        v vVar = this.mChildFragmentManager;
        if (vVar.x >= 1) {
            return;
        }
        vVar.aj = false;
        vVar.ag = false;
        vVar.f213e.f199f = false;
        vVar.cd(1);
    }

    public Animation onCreateAnimation(int i, boolean z, int i2) {
        return null;
    }

    public Animator onCreateAnimator(int i, boolean z, int i2) {
        return null;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        requireActivity().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    @Deprecated
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i = this.mContentLayoutId;
        if (i != 0) {
            return layoutInflater.inflate(i, viewGroup, false);
        }
        return null;
    }

    public void onDestroy() {
        this.mCalled = true;
    }

    @Deprecated
    public void onDestroyOptionsMenu() {
    }

    public void onDestroyView() {
        this.mCalled = true;
    }

    public void onDetach() {
        this.mCalled = true;
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return getLayoutInflater(bundle);
    }

    public void onHiddenChanged(boolean z) {
    }

    @Deprecated
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        this.mCalled = true;
    }

    public void onInflate(Context context, AttributeSet attributeSet, Bundle bundle) {
        this.mCalled = true;
        fay fayVar = this.mHost;
        u uVar = fayVar == null ? null : fayVar.f16499g;
        if (uVar != null) {
            this.mCalled = false;
            onInflate((Activity) uVar, attributeSet, bundle);
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        this.mCalled = true;
    }

    public void onMultiWindowModeChanged(boolean z) {
    }

    @Deprecated
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return false;
    }

    @Deprecated
    public void onOptionsMenuClosed(Menu menu) {
    }

    public void onPause() {
        this.mCalled = true;
    }

    public void onPictureInPictureModeChanged(boolean z) {
    }

    @Deprecated
    public void onPrepareOptionsMenu(Menu menu) {
    }

    public void onPrimaryNavigationFragmentChanged(boolean z) {
    }

    @Deprecated
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
    }

    public void onResume() {
        this.mCalled = true;
    }

    public void onSaveInstanceState(Bundle bundle) {
    }

    public void onStart() {
        this.mCalled = true;
    }

    public void onStop() {
        this.mCalled = true;
    }

    public void onViewCreated(View view, Bundle bundle) {
    }

    public void onViewStateRestored(Bundle bundle) {
        this.mCalled = true;
    }

    public void performActivityCreated(Bundle bundle) {
        this.mChildFragmentManager.bm();
        this.mState = 3;
        this.mCalled = false;
        onActivityCreated(bundle);
        if (!this.mCalled) {
            throw new cfa(awf.w("Fragment ", this, " did not call through to super.onActivityCreated()"));
        }
        if (v.ao(3)) {
            toString();
        }
        if (this.mView != null) {
            restoreViewState(this.mSavedFragmentState);
        }
        this.mSavedFragmentState = null;
        v vVar = this.mChildFragmentManager;
        vVar.aj = false;
        vVar.ag = false;
        vVar.f213e.f199f = false;
        vVar.cd(4);
    }

    public void performAttach() {
        Iterator<apm> it = this.mOnPreAttachedListeners.iterator();
        while (it.hasNext()) {
            it.next().b();
        }
        this.mOnPreAttachedListeners.clear();
        this.mChildFragmentManager.by(this.mHost, createFragmentContainer(), this);
        this.mState = 0;
        this.mCalled = false;
        onAttach((Context) this.mHost.h);
        if (!this.mCalled) {
            throw new cfa(awf.w("Fragment ", this, " did not call through to super.onAttach()"));
        }
        Iterator it2 = this.mFragmentManager.z.iterator();
        while (it2.hasNext()) {
            ((cem) it2.next()).b(this);
        }
        v vVar = this.mChildFragmentManager;
        vVar.aj = false;
        vVar.ag = false;
        vVar.f213e.f199f = false;
        vVar.cd(0);
    }

    public void performConfigurationChanged(Configuration configuration) {
        onConfigurationChanged(configuration);
    }

    public boolean performContextItemSelected(MenuItem menuItem) {
        if (this.mHidden) {
            return false;
        }
        if (onContextItemSelected(menuItem)) {
            return true;
        }
        return this.mChildFragmentManager.bx(menuItem);
    }

    public void performCreate(Bundle bundle) {
        this.mChildFragmentManager.bm();
        this.mState = 1;
        this.mCalled = false;
        this.mLifecycleRegistry.l(new ajm() { // from class: androidx.fragment.app.Fragment.6
            @Override // g.ajm
            public final void b(iz izVar, dtn dtnVar) {
                View view;
                if (dtnVar != dtn.ON_STOP || (view = Fragment.this.mView) == null) {
                    return;
                }
                view.cancelPendingInputEvents();
            }
        });
        this.mSavedStateRegistryController.e(bundle);
        onCreate(bundle);
        this.mIsCreated = true;
        if (!this.mCalled) {
            throw new cfa(awf.w("Fragment ", this, " did not call through to super.onCreate()"));
        }
        this.mLifecycleRegistry.k(dtn.ON_CREATE);
    }

    public boolean performCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        boolean z = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onCreateOptionsMenu(menu, menuInflater);
            z = true;
        }
        return this.mChildFragmentManager.ca(menu, menuInflater) | z;
    }

    public void performCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.mChildFragmentManager.bm();
        this.mPerformedCreateView = true;
        this.mViewLifecycleOwner = new cdn(this, getViewModelStore());
        View onCreateView = onCreateView(layoutInflater, viewGroup, bundle);
        this.mView = onCreateView;
        if (onCreateView == null) {
            if (this.mViewLifecycleOwner.f12694a != null) {
                throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
            }
            this.mViewLifecycleOwner = null;
            return;
        }
        this.mViewLifecycleOwner.f();
        View view = this.mView;
        cdn cdnVar = this.mViewLifecycleOwner;
        bff.p(view, "<this>");
        view.setTag(R.id.view_tree_lifecycle_owner, cdnVar);
        View view2 = this.mView;
        cdn cdnVar2 = this.mViewLifecycleOwner;
        bff.p(view2, "<this>");
        view2.setTag(R.id.view_tree_view_model_store_owner, cdnVar2);
        View view3 = this.mView;
        cdn cdnVar3 = this.mViewLifecycleOwner;
        bff.p(view3, "<this>");
        view3.setTag(R.id.view_tree_saved_state_registry_owner, cdnVar3);
        this.mViewLifecycleOwnerLiveData.q(this.mViewLifecycleOwner);
    }

    public void performDestroy() {
        this.mChildFragmentManager.as();
        this.mLifecycleRegistry.k(dtn.ON_DESTROY);
        this.mState = 0;
        this.mCalled = false;
        this.mIsCreated = false;
        onDestroy();
        if (!this.mCalled) {
            throw new cfa(awf.w("Fragment ", this, " did not call through to super.onDestroy()"));
        }
    }

    public void performDestroyView() {
        this.mChildFragmentManager.cd(1);
        if (this.mView != null) {
            cdn cdnVar = this.mViewLifecycleOwner;
            cdnVar.f();
            if (cdnVar.f12694a.f10342g.b(fqv.CREATED)) {
                this.mViewLifecycleOwner.e(dtn.ON_DESTROY);
            }
        }
        this.mState = 1;
        this.mCalled = false;
        onDestroyView();
        if (!this.mCalled) {
            throw new cfa(awf.w("Fragment ", this, " did not call through to super.onDestroyView()"));
        }
        gob gobVar = cyt.a(this).f18311c.f19355b;
        int j = gobVar.j();
        for (int i = 0; i < j; i++) {
            ((fm) gobVar.i(i)).z();
        }
        this.mPerformedCreateView = false;
    }

    public void performDetach() {
        this.mState = -1;
        this.mCalled = false;
        onDetach();
        this.mLayoutInflater = null;
        if (!this.mCalled) {
            throw new cfa(awf.w("Fragment ", this, " did not call through to super.onDetach()"));
        }
        v vVar = this.mChildFragmentManager;
        if (vVar.h) {
            return;
        }
        vVar.as();
        this.mChildFragmentManager = new dmi();
    }

    public LayoutInflater performGetLayoutInflater(Bundle bundle) {
        LayoutInflater onGetLayoutInflater = onGetLayoutInflater(bundle);
        this.mLayoutInflater = onGetLayoutInflater;
        return onGetLayoutInflater;
    }

    public void performLowMemory() {
        onLowMemory();
    }

    public void performMultiWindowModeChanged(boolean z) {
        onMultiWindowModeChanged(z);
    }

    public boolean performOptionsItemSelected(MenuItem menuItem) {
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible && onOptionsItemSelected(menuItem)) {
            return true;
        }
        return this.mChildFragmentManager.av(menuItem);
    }

    public void performOptionsMenuClosed(Menu menu) {
        if (this.mHidden) {
            return;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onOptionsMenuClosed(menu);
        }
        this.mChildFragmentManager.bt(menu);
    }

    public void performPause() {
        this.mChildFragmentManager.cd(5);
        if (this.mView != null) {
            this.mViewLifecycleOwner.e(dtn.ON_PAUSE);
        }
        this.mLifecycleRegistry.k(dtn.ON_PAUSE);
        this.mState = 6;
        this.mCalled = false;
        onPause();
        if (!this.mCalled) {
            throw new cfa(awf.w("Fragment ", this, " did not call through to super.onPause()"));
        }
    }

    public void performPictureInPictureModeChanged(boolean z) {
        onPictureInPictureModeChanged(z);
    }

    public boolean performPrepareOptionsMenu(Menu menu) {
        boolean z = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onPrepareOptionsMenu(menu);
            z = true;
        }
        return this.mChildFragmentManager.bs(menu) | z;
    }

    public void performPrimaryNavigationFragmentChanged() {
        this.mFragmentManager.getClass();
        boolean ap = v.ap(this);
        Boolean bool = this.mIsPrimaryNavigationFragment;
        if (bool == null || bool.booleanValue() != ap) {
            this.mIsPrimaryNavigationFragment = Boolean.valueOf(ap);
            onPrimaryNavigationFragmentChanged(ap);
            v vVar = this.mChildFragmentManager;
            vVar.cl();
            vVar.cb(vVar.u);
        }
    }

    public void performResume() {
        this.mChildFragmentManager.bm();
        this.mChildFragmentManager.ci(true);
        this.mState = 7;
        this.mCalled = false;
        onResume();
        if (!this.mCalled) {
            throw new cfa(awf.w("Fragment ", this, " did not call through to super.onResume()"));
        }
        ajs ajsVar = this.mLifecycleRegistry;
        dtn dtnVar = dtn.ON_RESUME;
        ajsVar.k(dtnVar);
        if (this.mView != null) {
            this.mViewLifecycleOwner.f12694a.k(dtnVar);
        }
        v vVar = this.mChildFragmentManager;
        vVar.aj = false;
        vVar.ag = false;
        vVar.f213e.f199f = false;
        vVar.cd(7);
    }

    public void performSaveInstanceState(Bundle bundle) {
        onSaveInstanceState(bundle);
        this.mSavedStateRegistryController.f(bundle);
        bundle.putParcelable("android:support:fragments", this.mChildFragmentManager.bv());
    }

    public void performStart() {
        this.mChildFragmentManager.bm();
        this.mChildFragmentManager.ci(true);
        this.mState = 5;
        this.mCalled = false;
        onStart();
        if (!this.mCalled) {
            throw new cfa(awf.w("Fragment ", this, " did not call through to super.onStart()"));
        }
        ajs ajsVar = this.mLifecycleRegistry;
        dtn dtnVar = dtn.ON_START;
        ajsVar.k(dtnVar);
        if (this.mView != null) {
            this.mViewLifecycleOwner.f12694a.k(dtnVar);
        }
        v vVar = this.mChildFragmentManager;
        vVar.aj = false;
        vVar.ag = false;
        vVar.f213e.f199f = false;
        vVar.cd(5);
    }

    public void performStop() {
        v vVar = this.mChildFragmentManager;
        vVar.ag = true;
        vVar.f213e.f199f = true;
        vVar.cd(4);
        if (this.mView != null) {
            this.mViewLifecycleOwner.e(dtn.ON_STOP);
        }
        this.mLifecycleRegistry.k(dtn.ON_STOP);
        this.mState = 4;
        this.mCalled = false;
        onStop();
        if (!this.mCalled) {
            throw new cfa(awf.w("Fragment ", this, " did not call through to super.onStop()"));
        }
    }

    public void performViewCreated() {
        onViewCreated(this.mView, this.mSavedFragmentState);
        this.mChildFragmentManager.cd(2);
    }

    public void postponeEnterTransition() {
        c().j = true;
    }

    public final void postponeEnterTransition(long j, TimeUnit timeUnit) {
        c().j = true;
        v vVar = this.mFragmentManager;
        Handler handler = vVar != null ? vVar.af.f16497e : new Handler(Looper.getMainLooper());
        handler.removeCallbacks(this.mPostponedDurationRunnable);
        handler.postDelayed(this.mPostponedDurationRunnable, timeUnit.toMillis(j));
    }

    public final <I, O> aly registerForActivityResult(ehj ehjVar, androidx.activity.result.a aVar, bez bezVar) {
        return b(ehjVar, new dcq(9, aVar), bezVar);
    }

    public final <I, O> aly registerForActivityResult(ehj ehjVar, bez bezVar) {
        return b(ehjVar, new c(this), bezVar);
    }

    public void registerForContextMenu(View view) {
        view.setOnCreateContextMenuListener(this);
    }

    @Deprecated
    public final void requestPermissions(String[] strArr, int i) {
        if (this.mHost == null) {
            throw new IllegalStateException(awf.w("Fragment ", this, " not attached to Activity"));
        }
        v parentFragmentManager = getParentFragmentManager();
        if (parentFragmentManager.k == null) {
            parentFragmentManager.af.getClass();
            return;
        }
        parentFragmentManager.q.addLast(new fob(this.mWho, i));
        parentFragmentManager.k.a(strArr);
    }

    public final u requireActivity() {
        u activity = getActivity();
        if (activity != null) {
            return activity;
        }
        throw new IllegalStateException(awf.w("Fragment ", this, " not attached to an activity."));
    }

    public final Bundle requireArguments() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            return arguments;
        }
        throw new IllegalStateException(awf.w("Fragment ", this, " does not have any arguments."));
    }

    public final Context requireContext() {
        Context context = getContext();
        if (context != null) {
            return context;
        }
        throw new IllegalStateException(awf.w("Fragment ", this, " not attached to a context."));
    }

    @Deprecated
    public final v requireFragmentManager() {
        return getParentFragmentManager();
    }

    public final Object requireHost() {
        Object host = getHost();
        if (host != null) {
            return host;
        }
        throw new IllegalStateException(awf.w("Fragment ", this, " not attached to a host."));
    }

    public final Fragment requireParentFragment() {
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null) {
            return parentFragment;
        }
        if (getContext() == null) {
            throw new IllegalStateException(awf.w("Fragment ", this, " is not attached to any Fragment or host"));
        }
        throw new IllegalStateException("Fragment " + this + " is not a child Fragment, it is directly attached to " + getContext());
    }

    public final View requireView() {
        View view = getView();
        if (view != null) {
            return view;
        }
        throw new IllegalStateException(awf.w("Fragment ", this, " did not return a View from onCreateView() or this was called before onCreateView()."));
    }

    public void restoreChildFragmentState(Bundle bundle) {
        Parcelable parcelable;
        if (bundle == null || (parcelable = bundle.getParcelable("android:support:fragments")) == null) {
            return;
        }
        this.mChildFragmentManager.ax(parcelable);
        v vVar = this.mChildFragmentManager;
        vVar.aj = false;
        vVar.ag = false;
        vVar.f213e.f199f = false;
        vVar.cd(1);
    }

    public final void restoreViewState(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = this.mSavedViewState;
        if (sparseArray != null) {
            this.mView.restoreHierarchyState(sparseArray);
            this.mSavedViewState = null;
        }
        if (this.mView != null) {
            cdn cdnVar = this.mViewLifecycleOwner;
            cdnVar.f12695b.e(this.mSavedViewRegistryState);
            this.mSavedViewRegistryState = null;
        }
        this.mCalled = false;
        onViewStateRestored(bundle);
        if (!this.mCalled) {
            throw new cfa(awf.w("Fragment ", this, " did not call through to super.onViewStateRestored()"));
        }
        if (this.mView != null) {
            this.mViewLifecycleOwner.e(dtn.ON_CREATE);
        }
    }

    public void setAllowEnterTransitionOverlap(boolean z) {
        c().k = Boolean.valueOf(z);
    }

    public void setAllowReturnTransitionOverlap(boolean z) {
        c().f19349c = Boolean.valueOf(z);
    }

    public void setAnimations(int i, int i2, int i3, int i4) {
        if (this.mAnimationInfo == null && i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            return;
        }
        c().n = i;
        c().q = i2;
        c().f19351e = i3;
        c().f19353g = i4;
    }

    public void setArguments(Bundle bundle) {
        if (this.mFragmentManager != null && isStateSaved()) {
            throw new IllegalStateException("Fragment already added and state has been saved");
        }
        this.mArguments = bundle;
    }

    public void setEnterSharedElementCallback(bca bcaVar) {
        c().getClass();
    }

    public void setEnterTransition(Object obj) {
        c().m = obj;
    }

    public void setExitSharedElementCallback(bca bcaVar) {
        c().getClass();
    }

    public void setExitTransition(Object obj) {
        c().f19348b = obj;
    }

    public void setFocusedView(View view) {
        c().s = view;
    }

    @Deprecated
    public void setHasOptionsMenu(boolean z) {
        if (this.mHasMenu != z) {
            this.mHasMenu = z;
            if (!isAdded() || isHidden()) {
                return;
            }
            ((p) this.mHost).f204a.invalidateOptionsMenu();
        }
    }

    public void setInitialSavedState(h hVar) {
        Bundle bundle;
        if (this.mFragmentManager != null) {
            throw new IllegalStateException("Fragment already added");
        }
        if (hVar == null || (bundle = hVar.mState) == null) {
            bundle = null;
        }
        this.mSavedFragmentState = bundle;
    }

    public void setMenuVisibility(boolean z) {
        if (this.mMenuVisible != z) {
            this.mMenuVisible = z;
            if (this.mHasMenu && isAdded() && !isHidden()) {
                ((p) this.mHost).f204a.invalidateOptionsMenu();
            }
        }
    }

    public void setNextTransition(int i) {
        if (this.mAnimationInfo == null && i == 0) {
            return;
        }
        c();
        this.mAnimationInfo.i = i;
    }

    public void setPopDirection(boolean z) {
        if (this.mAnimationInfo == null) {
            return;
        }
        c().h = z;
    }

    public void setPostOnViewCreatedAlpha(float f2) {
        c().p = f2;
    }

    public void setReenterTransition(Object obj) {
        c().f19352f = obj;
    }

    @Deprecated
    public void setRetainInstance(boolean z) {
        vf vfVar = dek.f14057a;
        dek.c(new bqe(this, "Attempting to set retain instance for fragment " + this));
        dek.b(this).getClass();
        this.mRetainInstance = z;
        v vVar = this.mFragmentManager;
        if (vVar == null) {
            this.mRetainInstanceChangedWhileDetached = true;
        } else if (z) {
            vVar.f213e.k(this);
        } else {
            vVar.f213e.i(this);
        }
    }

    public void setReturnTransition(Object obj) {
        c().o = obj;
    }

    public void setSharedElementEnterTransition(Object obj) {
        c().l = obj;
    }

    public void setSharedElementNames(ArrayList<String> arrayList, ArrayList<String> arrayList2) {
        c();
        hep hepVar = this.mAnimationInfo;
        hepVar.r = arrayList;
        hepVar.f19347a = arrayList2;
    }

    public void setSharedElementReturnTransition(Object obj) {
        c().f19350d = obj;
    }

    @Deprecated
    public void setTargetFragment(Fragment fragment, int i) {
        if (fragment != null) {
            vf vfVar = dek.f14057a;
            dek.c(new wf(this, fragment, i));
            dek.b(this).getClass();
        }
        v vVar = this.mFragmentManager;
        v vVar2 = fragment != null ? fragment.mFragmentManager : null;
        if (vVar != null && vVar2 != null && vVar != vVar2) {
            throw new IllegalArgumentException(awf.w("Fragment ", fragment, " must share the same FragmentManager to be set as a target fragment"));
        }
        for (Fragment fragment2 = fragment; fragment2 != null; fragment2 = fragment2.e(false)) {
            if (fragment2.equals(this)) {
                throw new IllegalArgumentException("Setting " + fragment + " as the target of " + this + " would create a target cycle");
            }
        }
        if (fragment == null) {
            this.mTargetWho = null;
            this.mTarget = null;
        } else if (this.mFragmentManager == null || fragment.mFragmentManager == null) {
            this.mTargetWho = null;
            this.mTarget = fragment;
        } else {
            this.mTargetWho = fragment.mWho;
            this.mTarget = null;
        }
        this.mTargetRequestCode = i;
    }

    @Deprecated
    public void setUserVisibleHint(boolean z) {
        vf vfVar = dek.f14057a;
        dek.c(new gqe(this, z));
        dek.b(this).getClass();
        boolean z2 = false;
        if (!this.mUserVisibleHint && z && this.mState < 5 && this.mFragmentManager != null && isAdded() && this.mIsCreated) {
            v vVar = this.mFragmentManager;
            x bq = vVar.bq(this);
            Fragment fragment = bq.f220e;
            if (fragment.mDeferStart) {
                if (vVar.f209ab) {
                    vVar.f212d = true;
                } else {
                    fragment.mDeferStart = false;
                    bq.n();
                }
            }
        }
        this.mUserVisibleHint = z;
        if (this.mState < 5 && !z) {
            z2 = true;
        }
        this.mDeferStart = z2;
        if (this.mSavedFragmentState != null) {
            this.mSavedUserVisibleHint = Boolean.valueOf(z);
        }
    }

    public boolean shouldShowRequestPermissionRationale(String str) {
        fay fayVar = this.mHost;
        if (fayVar == null) {
            return false;
        }
        u uVar = ((p) fayVar).f204a;
        int i = Build.VERSION.SDK_INT;
        if (i < 33 && TextUtils.equals("android.permission.POST_NOTIFICATIONS", str)) {
            return false;
        }
        if (i >= 32) {
            return id.x(uVar, str);
        }
        if (i == 31) {
            return id.m(uVar, str);
        }
        if (i >= 23) {
            return id.l(uVar, str);
        }
        return false;
    }

    public void startActivity(@SuppressLint({"UnknownNullness"}) Intent intent) {
        startActivity(intent, null);
    }

    public void startActivity(@SuppressLint({"UnknownNullness"}) Intent intent, Bundle bundle) {
        fay fayVar = this.mHost;
        if (fayVar == null) {
            throw new IllegalStateException(awf.w("Fragment ", this, " not attached to Activity"));
        }
        fayVar.h.startActivity(intent, bundle);
    }

    @Deprecated
    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i) {
        startActivityForResult(intent, i, null);
    }

    @Deprecated
    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i, Bundle bundle) {
        if (this.mHost == null) {
            throw new IllegalStateException(awf.w("Fragment ", this, " not attached to Activity"));
        }
        v parentFragmentManager = getParentFragmentManager();
        if (parentFragmentManager.f208a == null) {
            fay fayVar = parentFragmentManager.af;
            if (i == -1) {
                fayVar.h.startActivity(intent, bundle);
                return;
            } else {
                fayVar.getClass();
                throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
            }
        }
        parentFragmentManager.q.addLast(new fob(this.mWho, i));
        if (intent != null && bundle != null) {
            intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
        }
        parentFragmentManager.f208a.a(intent);
    }

    @Deprecated
    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        Intent intent2;
        if (this.mHost == null) {
            throw new IllegalStateException(awf.w("Fragment ", this, " not attached to Activity"));
        }
        if (v.ao(2)) {
            toString();
            Objects.toString(intentSender);
            Objects.toString(intent);
            Objects.toString(bundle);
        }
        v parentFragmentManager = getParentFragmentManager();
        if (parentFragmentManager.ae == null) {
            fay fayVar = parentFragmentManager.af;
            if (i == -1) {
                fayVar.f16499g.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
                return;
            } else {
                fayVar.getClass();
                throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
            }
        }
        if (bundle != null) {
            if (intent == null) {
                intent2 = new Intent();
                intent2.putExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", true);
            } else {
                intent2 = intent;
            }
            if (v.ao(2)) {
                bundle.toString();
                intent2.toString();
                Objects.toString(this);
            }
            intent2.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
        } else {
            intent2 = intent;
        }
        bff.p(intentSender, "intentSender");
        czn cznVar = new czn(intentSender, intent2, i2, i3);
        parentFragmentManager.q.addLast(new fob(this.mWho, i));
        if (v.ao(2)) {
            toString();
        }
        parentFragmentManager.ae.a(cznVar);
    }

    public void startPostponedEnterTransition() {
        if (this.mAnimationInfo == null || !c().j) {
            return;
        }
        if (this.mHost == null) {
            c().j = false;
        } else if (Looper.myLooper() != this.mHost.f16497e.getLooper()) {
            this.mHost.f16497e.postAtFrontOfQueue(new ok(this, 1));
        } else {
            callStartTransitionListener(true);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
        sb.append(getClass().getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} (");
        sb.append(this.mWho);
        if (this.mFragmentId != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.mFragmentId));
        }
        if (this.mTag != null) {
            sb.append(" tag=");
            sb.append(this.mTag);
        }
        sb.append(")");
        return sb.toString();
    }

    public void unregisterForContextMenu(View view) {
        view.setOnCreateContextMenuListener(null);
    }
}
