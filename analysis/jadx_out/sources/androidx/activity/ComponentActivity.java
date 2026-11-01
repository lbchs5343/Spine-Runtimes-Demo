package androidx.activity;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Trace;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.window.OnBackInvokedDispatcher;
import androidx.activity.ComponentActivity;
import cn.trinea.android.developertools.R;
import g.afo;
import g.ajm;
import g.ajs;
import g.ako;
import g.aly;
import g.arz;
import g.atm;
import g.baf;
import g.bav;
import g.bez;
import g.bff;
import g.bfy;
import g.bin;
import g.bjn;
import g.bkp;
import g.buv;
import g.byd;
import g.cbb;
import g.cdh;
import g.cvw;
import g.dco;
import g.dnu;
import g.dqr;
import g.dtn;
import g.dts;
import g.dyr;
import g.dz;
import g.ecl;
import g.ehj;
import g.emf;
import g.enr;
import g.eud;
import g.euu;
import g.ewp;
import g.fck;
import g.fgv;
import g.fqv;
import g.fvi;
import g.fxh;
import g.gbv;
import g.gfd;
import g.gff;
import g.gpp;
import g.gre;
import g.gyj;
import g.hbu;
import g.hcr;
import g.hef;
import g.hv;
import g.iz;
import g.wg;
import g.zo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class ComponentActivity extends emf implements gyj, hcr, gff, eud, cdh, gpp, fxh, dnu, gbv, bkp {
    private static final String ACTIVITY_RESULT_TAG = "android:support:activity-result";
    private final androidx.activity.result.a mActivityResultRegistry;
    private int mContentLayoutId;
    private dqr mDefaultFactory;
    private boolean mDispatchingOnMultiWindowModeChanged;
    private boolean mDispatchingOnPictureInPictureModeChanged;
    final fgv mFullyDrawnReporter;
    private final AtomicInteger mNextLocalRequestCode;
    private b mOnBackPressedDispatcher;
    private final CopyOnWriteArrayList<dts> mOnConfigurationChangedListeners;
    private final CopyOnWriteArrayList<dts> mOnMultiWindowModeChangedListeners;
    private final CopyOnWriteArrayList<dts> mOnNewIntentListeners;
    private final CopyOnWriteArrayList<dts> mOnPictureInPictureModeChangedListeners;
    private final CopyOnWriteArrayList<dts> mOnTrimMemoryListeners;
    final hef mReportFullyDrawnExecutor;
    final dyr mSavedStateRegistryController;
    private wg mViewModelStore;
    final atm mContextAwareHelper = new atm();
    private final fck mMenuHostHelper = new fck(new fvi(8, this));
    private final ajs mLifecycleRegistry = new ajs(this);

    public ComponentActivity() {
        dyr dyrVar = new dyr(this);
        this.mSavedStateRegistryController = dyrVar;
        this.mOnBackPressedDispatcher = null;
        a aVar = new a(this);
        this.mReportFullyDrawnExecutor = aVar;
        this.mFullyDrawnReporter = new fgv(aVar, new hv(0, this));
        this.mNextLocalRequestCode = new AtomicInteger();
        this.mActivityResultRegistry = new zo(this);
        this.mOnConfigurationChangedListeners = new CopyOnWriteArrayList<>();
        this.mOnTrimMemoryListeners = new CopyOnWriteArrayList<>();
        this.mOnNewIntentListeners = new CopyOnWriteArrayList<>();
        this.mOnMultiWindowModeChangedListeners = new CopyOnWriteArrayList<>();
        this.mOnPictureInPictureModeChangedListeners = new CopyOnWriteArrayList<>();
        this.mDispatchingOnMultiWindowModeChanged = false;
        this.mDispatchingOnPictureInPictureModeChanged = false;
        if (getLifecycle() == null) {
            throw new IllegalStateException("getLifecycle() returned null in ComponentActivity's constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization.");
        }
        int i = Build.VERSION.SDK_INT;
        getLifecycle().l(new ajm() { // from class: androidx.activity.ComponentActivity.2
            @Override // g.ajm
            public final void b(iz izVar, dtn dtnVar) {
                if (dtnVar == dtn.ON_STOP) {
                    Window window = ComponentActivity.this.getWindow();
                    View peekDecorView = window != null ? window.peekDecorView() : null;
                    if (peekDecorView != null) {
                        peekDecorView.cancelPendingInputEvents();
                    }
                }
            }
        });
        getLifecycle().l(new ajm() { // from class: androidx.activity.ComponentActivity.3
            @Override // g.ajm
            public final void b(iz izVar, dtn dtnVar) {
                if (dtnVar == dtn.ON_DESTROY) {
                    ComponentActivity.this.mContextAwareHelper.f10810b = null;
                    if (!ComponentActivity.this.isChangingConfigurations()) {
                        ComponentActivity.this.getViewModelStore().b();
                    }
                    a aVar2 = (a) ComponentActivity.this.mReportFullyDrawnExecutor;
                    ComponentActivity componentActivity = aVar2.f19b;
                    componentActivity.getWindow().getDecorView().removeCallbacks(aVar2);
                    componentActivity.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(aVar2);
                }
            }
        });
        getLifecycle().l(new ajm() { // from class: androidx.activity.ComponentActivity.4
            @Override // g.ajm
            public final void b(iz izVar, dtn dtnVar) {
                ComponentActivity componentActivity = ComponentActivity.this;
                componentActivity.ensureViewModelStore();
                componentActivity.getLifecycle().n(this);
            }
        });
        dyrVar.d();
        afo.aj(this);
        if (i <= 23) {
            euu lifecycle = getLifecycle();
            ImmLeaksCleaner immLeaksCleaner = new ImmLeaksCleaner();
            immLeaksCleaner.f13f = this;
            lifecycle.l(immLeaksCleaner);
        }
        getSavedStateRegistry().j(ACTIVITY_RESULT_TAG, new dco(0, this));
        addOnContextAvailableListener(new buv() { // from class: g.crw
            @Override // g.buv
            public final void b(ComponentActivity componentActivity) {
                ComponentActivity.a(ComponentActivity.this);
            }
        });
    }

    public static void a(ComponentActivity componentActivity) {
        Bundle h = componentActivity.getSavedStateRegistry().h(ACTIVITY_RESULT_TAG);
        if (h != null) {
            androidx.activity.result.a aVar = componentActivity.mActivityResultRegistry;
            HashMap hashMap = aVar.f37e;
            HashMap hashMap2 = aVar.f35c;
            Bundle bundle = aVar.f39g;
            ArrayList<Integer> integerArrayList = h.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
            ArrayList<String> stringArrayList = h.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
            if (stringArrayList == null || integerArrayList == null) {
                return;
            }
            aVar.f33a = h.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
            bundle.putAll(h.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT"));
            for (int i = 0; i < stringArrayList.size(); i++) {
                String str = stringArrayList.get(i);
                if (hashMap.containsKey(str)) {
                    Integer num = (Integer) hashMap.remove(str);
                    if (!bundle.containsKey(str)) {
                        hashMap2.remove(num);
                    }
                }
                Integer num2 = integerArrayList.get(i);
                num2.intValue();
                String str2 = stringArrayList.get(i);
                hashMap2.put(num2, str2);
                aVar.f37e.put(str2, num2);
            }
        }
    }

    public static Bundle b(ComponentActivity componentActivity) {
        Bundle bundle = new Bundle();
        androidx.activity.result.a aVar = componentActivity.mActivityResultRegistry;
        aVar.getClass();
        HashMap hashMap = aVar.f37e;
        bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(hashMap.values()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(hashMap.keySet()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(aVar.f33a));
        bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", (Bundle) aVar.f39g.clone());
        return bundle;
    }

    @Override // android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initializeViewTreeOwners();
        this.mReportFullyDrawnExecutor.e(getWindow().getDecorView());
        super.addContentView(view, layoutParams);
    }

    @Override // g.bkp
    public void addMenuProvider(arz arzVar) {
        fck fckVar = this.mMenuHostHelper;
        fckVar.f16566b.add(arzVar);
        fckVar.f16565a.run();
    }

    public void addMenuProvider(final arz arzVar, iz izVar) {
        final fck fckVar = this.mMenuHostHelper;
        fckVar.f16566b.add(arzVar);
        fckVar.f16565a.run();
        euu lifecycle = izVar.getLifecycle();
        HashMap hashMap = fckVar.f16567c;
        cbb cbbVar = (cbb) hashMap.remove(arzVar);
        if (cbbVar != null) {
            cbbVar.f12575a.n(cbbVar.f12576b);
            cbbVar.f12576b = null;
        }
        hashMap.put(arzVar, new cbb(lifecycle, new ajm() { // from class: g.fmw
            @Override // g.ajm
            public final void b(iz izVar2, dtn dtnVar) {
                dtn dtnVar2 = dtn.ON_DESTROY;
                fck fckVar2 = fck.this;
                if (dtnVar == dtnVar2) {
                    fckVar2.e(arzVar);
                } else {
                    fckVar2.getClass();
                }
            }
        }));
    }

    @SuppressLint({"LambdaLast"})
    public void addMenuProvider(final arz arzVar, iz izVar, final fqv fqvVar) {
        final fck fckVar = this.mMenuHostHelper;
        fckVar.getClass();
        euu lifecycle = izVar.getLifecycle();
        HashMap hashMap = fckVar.f16567c;
        cbb cbbVar = (cbb) hashMap.remove(arzVar);
        if (cbbVar != null) {
            cbbVar.f12575a.n(cbbVar.f12576b);
            cbbVar.f12576b = null;
        }
        hashMap.put(arzVar, new cbb(lifecycle, new ajm() { // from class: g.akw
            @Override // g.ajm
            public final void b(iz izVar2, dtn dtnVar) {
                fck fckVar2 = fck.this;
                fckVar2.getClass();
                Runnable runnable = fckVar2.f16565a;
                CopyOnWriteArrayList copyOnWriteArrayList = fckVar2.f16566b;
                dtn.Companion.getClass();
                fqv fqvVar2 = fqvVar;
                bff.p(fqvVar2, "state");
                int i = evy.f16259a[fqvVar2.ordinal()];
                dtn dtnVar2 = i != 1 ? i != 2 ? i != 3 ? null : dtn.ON_RESUME : dtn.ON_START : dtn.ON_CREATE;
                arz arzVar2 = arzVar;
                if (dtnVar == dtnVar2) {
                    copyOnWriteArrayList.add(arzVar2);
                    runnable.run();
                } else if (dtnVar == dtn.ON_DESTROY) {
                    fckVar2.e(arzVar2);
                } else if (dtnVar == uu.a(fqvVar2)) {
                    copyOnWriteArrayList.remove(arzVar2);
                    runnable.run();
                }
            }
        }));
    }

    @Override // g.gpp
    public final void addOnConfigurationChangedListener(dts dtsVar) {
        this.mOnConfigurationChangedListeners.add(dtsVar);
    }

    public final void addOnContextAvailableListener(buv buvVar) {
        atm atmVar = this.mContextAwareHelper;
        atmVar.getClass();
        bff.p(buvVar, "listener");
        ComponentActivity componentActivity = atmVar.f10810b;
        if (componentActivity != null) {
            buvVar.b(componentActivity);
        }
        atmVar.f10809a.add(buvVar);
    }

    @Override // g.dnu
    public final void addOnMultiWindowModeChangedListener(dts dtsVar) {
        this.mOnMultiWindowModeChangedListeners.add(dtsVar);
    }

    public final void addOnNewIntentListener(dts dtsVar) {
        this.mOnNewIntentListeners.add(dtsVar);
    }

    @Override // g.gbv
    public final void addOnPictureInPictureModeChangedListener(dts dtsVar) {
        this.mOnPictureInPictureModeChangedListeners.add(dtsVar);
    }

    @Override // g.fxh
    public final void addOnTrimMemoryListener(dts dtsVar) {
        this.mOnTrimMemoryListeners.add(dtsVar);
    }

    public void ensureViewModelStore() {
        if (this.mViewModelStore == null) {
            bav bavVar = (bav) getLastNonConfigurationInstance();
            if (bavVar != null) {
                this.mViewModelStore = bavVar.f11192b;
            }
            if (this.mViewModelStore == null) {
                this.mViewModelStore = new wg();
            }
        }
    }

    @Override // g.cdh
    public final androidx.activity.result.a getActivityResultRegistry() {
        return this.mActivityResultRegistry;
    }

    @Override // g.hcr
    public bin getDefaultViewModelCreationExtras() {
        ewp ewpVar = new ewp();
        Application application = getApplication();
        LinkedHashMap linkedHashMap = ewpVar.f11665b;
        if (application != null) {
            linkedHashMap.put(bfy.f11485g, getApplication());
        }
        linkedHashMap.put(afo.y, this);
        linkedHashMap.put(afo.z, this);
        if (getIntent() != null && getIntent().getExtras() != null) {
            linkedHashMap.put(afo.f10142ab, getIntent().getExtras());
        }
        return ewpVar;
    }

    public dqr getDefaultViewModelProviderFactory() {
        if (this.mDefaultFactory == null) {
            this.mDefaultFactory = new ecl(getApplication(), this, getIntent() != null ? getIntent().getExtras() : null);
        }
        return this.mDefaultFactory;
    }

    public fgv getFullyDrawnReporter() {
        return this.mFullyDrawnReporter;
    }

    @Deprecated
    public Object getLastCustomNonConfigurationInstance() {
        bav bavVar = (bav) getLastNonConfigurationInstance();
        if (bavVar != null) {
            return bavVar.f11191a;
        }
        return null;
    }

    @Override // g.iz
    public euu getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @Override // g.eud
    public final b getOnBackPressedDispatcher() {
        if (this.mOnBackPressedDispatcher == null) {
            this.mOnBackPressedDispatcher = new b(new byd(3, this));
            getLifecycle().l(new ajm() { // from class: androidx.activity.ComponentActivity.6
                @Override // g.ajm
                public final void b(iz izVar, dtn dtnVar) {
                    if (dtnVar != dtn.ON_CREATE || Build.VERSION.SDK_INT < 33) {
                        return;
                    }
                    b bVar = ComponentActivity.this.mOnBackPressedDispatcher;
                    OnBackInvokedDispatcher a2 = gfd.a((ComponentActivity) izVar);
                    bVar.getClass();
                    bff.p(a2, "invoker");
                    bVar.f23b = a2;
                    bVar.k(bVar.f28g);
                }
            });
        }
        return this.mOnBackPressedDispatcher;
    }

    @Override // g.gff
    public final hbu getSavedStateRegistry() {
        return this.mSavedStateRegistryController.f15097b;
    }

    @Override // g.gyj
    public wg getViewModelStore() {
        if (getApplication() == null) {
            throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
        }
        ensureViewModelStore();
        return this.mViewModelStore;
    }

    public void initializeViewTreeOwners() {
        View decorView = getWindow().getDecorView();
        bff.p(decorView, "<this>");
        decorView.setTag(R.id.view_tree_lifecycle_owner, this);
        View decorView2 = getWindow().getDecorView();
        bff.p(decorView2, "<this>");
        decorView2.setTag(R.id.view_tree_view_model_store_owner, this);
        View decorView3 = getWindow().getDecorView();
        bff.p(decorView3, "<this>");
        decorView3.setTag(R.id.view_tree_saved_state_registry_owner, this);
        View decorView4 = getWindow().getDecorView();
        bff.p(decorView4, "<this>");
        decorView4.setTag(R.id.view_tree_on_back_pressed_dispatcher_owner, this);
        View decorView5 = getWindow().getDecorView();
        bff.p(decorView5, "<this>");
        decorView5.setTag(R.id.report_drawn, this);
    }

    public void invalidateMenu() {
        invalidateOptionsMenu();
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (this.mActivityResultRegistry.j(i, i2, intent)) {
            return;
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        getOnBackPressedDispatcher().j();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Iterator<dts> it = this.mOnConfigurationChangedListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(configuration);
        }
    }

    @Override // g.emf, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.mSavedStateRegistryController.e(bundle);
        atm atmVar = this.mContextAwareHelper;
        atmVar.getClass();
        atmVar.f10810b = this;
        Iterator it = atmVar.f10809a.iterator();
        while (it.hasNext()) {
            ((buv) it.next()).b(this);
        }
        super.onCreate(bundle);
        int i = ako.f10397a;
        dz.b(this);
        int i2 = this.mContentLayoutId;
        if (i2 != 0) {
            setContentView(i2);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, Menu menu) {
        if (i != 0) {
            return true;
        }
        super.onCreatePanelMenu(i, menu);
        fck fckVar = this.mMenuHostHelper;
        MenuInflater menuInflater = getMenuInflater();
        Iterator it = fckVar.f16566b.iterator();
        while (it.hasNext()) {
            ((bjn) ((arz) it.next())).f11707a.ca(menu, menuInflater);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i == 0) {
            return this.mMenuHostHelper.d(menuItem);
        }
        return false;
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z) {
        if (this.mDispatchingOnMultiWindowModeChanged) {
            return;
        }
        Iterator<dts> it = this.mOnMultiWindowModeChangedListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(new enr(z));
        }
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z, Configuration configuration) {
        this.mDispatchingOnMultiWindowModeChanged = true;
        try {
            super.onMultiWindowModeChanged(z, configuration);
            this.mDispatchingOnMultiWindowModeChanged = false;
            Iterator<dts> it = this.mOnMultiWindowModeChangedListeners.iterator();
            while (it.hasNext()) {
                dts next = it.next();
                bff.p(configuration, "newConfig");
                next.accept(new enr(z));
            }
        } catch (Throwable th) {
            this.mDispatchingOnMultiWindowModeChanged = false;
            throw th;
        }
    }

    @Override // android.app.Activity
    public void onNewIntent(@SuppressLint({"UnknownNullness", "MissingNullability"}) Intent intent) {
        super.onNewIntent(intent);
        Iterator<dts> it = this.mOnNewIntentListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(intent);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        Iterator it = this.mMenuHostHelper.f16566b.iterator();
        while (it.hasNext()) {
            ((bjn) ((arz) it.next())).f11707a.bt(menu);
        }
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z) {
        if (this.mDispatchingOnPictureInPictureModeChanged) {
            return;
        }
        Iterator<dts> it = this.mOnPictureInPictureModeChangedListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(new gre(z));
        }
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z, Configuration configuration) {
        this.mDispatchingOnPictureInPictureModeChanged = true;
        try {
            super.onPictureInPictureModeChanged(z, configuration);
            this.mDispatchingOnPictureInPictureModeChanged = false;
            Iterator<dts> it = this.mOnPictureInPictureModeChangedListeners.iterator();
            while (it.hasNext()) {
                dts next = it.next();
                bff.p(configuration, "newConfig");
                next.accept(new gre(z));
            }
        } catch (Throwable th) {
            this.mDispatchingOnPictureInPictureModeChanged = false;
            throw th;
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i, View view, Menu menu) {
        if (i != 0) {
            return true;
        }
        super.onPreparePanel(i, view, menu);
        Iterator it = this.mMenuHostHelper.f16566b.iterator();
        while (it.hasNext()) {
            ((bjn) ((arz) it.next())).f11707a.bs(menu);
        }
        return true;
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (this.mActivityResultRegistry.j(i, -1, new Intent().putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr).putExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS", iArr)) || Build.VERSION.SDK_INT < 23) {
            return;
        }
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Deprecated
    public Object onRetainCustomNonConfigurationInstance() {
        return null;
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        bav bavVar;
        Object onRetainCustomNonConfigurationInstance = onRetainCustomNonConfigurationInstance();
        wg wgVar = this.mViewModelStore;
        if (wgVar == null && (bavVar = (bav) getLastNonConfigurationInstance()) != null) {
            wgVar = bavVar.f11192b;
        }
        if (wgVar == null && onRetainCustomNonConfigurationInstance == null) {
            return null;
        }
        bav bavVar2 = new bav();
        bavVar2.f11191a = onRetainCustomNonConfigurationInstance;
        bavVar2.f11192b = wgVar;
        return bavVar2;
    }

    @Override // g.emf, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        euu lifecycle = getLifecycle();
        if (lifecycle instanceof ajs) {
            ((ajs) lifecycle).p(fqv.CREATED);
        }
        super.onSaveInstanceState(bundle);
        this.mSavedStateRegistryController.f(bundle);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
        Iterator<dts> it = this.mOnTrimMemoryListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(Integer.valueOf(i));
        }
    }

    public Context peekAvailableContext() {
        return this.mContextAwareHelper.f10810b;
    }

    public final <I, O> aly registerForActivityResult(ehj ehjVar, androidx.activity.result.a aVar, bez bezVar) {
        return aVar.h("activity_rq#" + this.mNextLocalRequestCode.getAndIncrement(), this, ehjVar, bezVar);
    }

    public final <I, O> aly registerForActivityResult(ehj ehjVar, bez bezVar) {
        return registerForActivityResult(ehjVar, this.mActivityResultRegistry, bezVar);
    }

    @Override // g.bkp
    public void removeMenuProvider(arz arzVar) {
        this.mMenuHostHelper.e(arzVar);
    }

    @Override // g.gpp
    public final void removeOnConfigurationChangedListener(dts dtsVar) {
        this.mOnConfigurationChangedListeners.remove(dtsVar);
    }

    public final void removeOnContextAvailableListener(buv buvVar) {
        atm atmVar = this.mContextAwareHelper;
        atmVar.getClass();
        bff.p(buvVar, "listener");
        atmVar.f10809a.remove(buvVar);
    }

    @Override // g.dnu
    public final void removeOnMultiWindowModeChangedListener(dts dtsVar) {
        this.mOnMultiWindowModeChangedListeners.remove(dtsVar);
    }

    public final void removeOnNewIntentListener(dts dtsVar) {
        this.mOnNewIntentListeners.remove(dtsVar);
    }

    @Override // g.gbv
    public final void removeOnPictureInPictureModeChangedListener(dts dtsVar) {
        this.mOnPictureInPictureModeChangedListeners.remove(dtsVar);
    }

    @Override // g.fxh
    public final void removeOnTrimMemoryListener(dts dtsVar) {
        this.mOnTrimMemoryListeners.remove(dtsVar);
    }

    @Override // android.app.Activity
    public void reportFullyDrawn() {
        try {
            if (baf.am()) {
                Trace.beginSection(baf.y("reportFullyDrawn() for ComponentActivity"));
            }
            super.reportFullyDrawn();
            fgv fgvVar = this.mFullyDrawnReporter;
            synchronized (fgvVar.f16765a) {
                try {
                    fgvVar.f16766b = true;
                    Iterator it = fgvVar.f16767c.iterator();
                    while (it.hasNext()) {
                        ((cvw) it.next()).invoke();
                    }
                    fgvVar.f16767c.clear();
                } finally {
                }
            }
            Trace.endSection();
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        initializeViewTreeOwners();
        this.mReportFullyDrawnExecutor.e(getWindow().getDecorView());
        super.setContentView(i);
    }

    @Override // android.app.Activity
    public void setContentView(@SuppressLint({"UnknownNullness", "MissingNullability"}) View view) {
        initializeViewTreeOwners();
        this.mReportFullyDrawnExecutor.e(getWindow().getDecorView());
        super.setContentView(view);
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initializeViewTreeOwners();
        this.mReportFullyDrawnExecutor.e(getWindow().getDecorView());
        super.setContentView(view, layoutParams);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startActivityForResult(Intent intent, int i) {
        super.startActivityForResult(intent, i);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startActivityForResult(Intent intent, int i, Bundle bundle) {
        super.startActivityForResult(intent, i, bundle);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4) throws IntentSender.SendIntentException {
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }
}
