package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.app.KeyguardManager;
import android.content.Context;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.PowerManager;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.aga;
import g.agd;
import g.edt;
import g.esy;
import g.fci;
import g.gra;
import g.sr;
import g.ti;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public final class zzayn implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, Application.ActivityLifecycleCallbacks {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f4614a = 0;

    /* renamed from: b, reason: collision with root package name */
    public static final long f4615b = ((Long) edt.f15376a.f15379d.zza(zzbcn.zzbt)).longValue();

    /* renamed from: c, reason: collision with root package name */
    public final fci f4616c;

    /* renamed from: d, reason: collision with root package name */
    public final WeakReference f4617d;

    /* renamed from: f, reason: collision with root package name */
    public final PowerManager f4619f;
    public final KeyguardManager i;
    public sr j;
    public final Context k;
    public final Application m;
    public final Rect n;
    public final DisplayMetrics o;
    public WeakReference p;
    public final gra l = new gra(f4615b);

    /* renamed from: e, reason: collision with root package name */
    public boolean f4618e = false;
    public int h = -1;

    /* renamed from: g, reason: collision with root package name */
    public final HashSet f4620g = new HashSet();

    public zzayn(Context context, View view) {
        Context applicationContext = context.getApplicationContext();
        this.k = applicationContext;
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        this.f4619f = (PowerManager) applicationContext.getSystemService("power");
        this.i = (KeyguardManager) context.getSystemService("keyguard");
        if (applicationContext instanceof Application) {
            Application application = (Application) applicationContext;
            this.m = application;
            this.f4616c = new fci(application, this);
        }
        this.o = context.getResources().getDisplayMetrics();
        Rect rect = new Rect();
        this.n = rect;
        rect.right = windowManager.getDefaultDisplay().getWidth();
        rect.bottom = windowManager.getDefaultDisplay().getHeight();
        WeakReference weakReference = this.f4617d;
        View view2 = weakReference != null ? (View) weakReference.get() : null;
        if (view2 != null) {
            view2.removeOnAttachStateChangeListener(this);
            t(view2);
        }
        this.f4617d = new WeakReference(view);
        if (view != null) {
            if (view.isAttachedToWindow()) {
                r(view);
            }
            view.addOnAttachStateChangeListener(this);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        u(activity, 0);
        v(3);
        q();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        v(3);
        q();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        u(activity, 4);
        v(3);
        q();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        u(activity, 0);
        v(3);
        q();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        v(3);
        q();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        u(activity, 0);
        v(3);
        q();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        v(3);
        q();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        v(2);
        q();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        v(1);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.h = -1;
        r(view);
        v(3);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.h = -1;
        v(3);
        q();
        t(view);
    }

    public final void q() {
        esy.f16117a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzayj
            @Override // java.lang.Runnable
            public final void run() {
                zzayn.this.v(3);
            }
        });
    }

    public final void r(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.p = new WeakReference(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.j == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            sr srVar = new sr(13, this);
            this.j = srVar;
            Context context = this.k;
            aga agaVar = ti.f20033a.f20035b;
            synchronized (agaVar) {
                if (agaVar.f10173e) {
                    ((WeakHashMap) agaVar.f10171c).put(srVar, intentFilter);
                } else {
                    zzbcn.zza(context);
                    if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkG)).booleanValue() || Build.VERSION.SDK_INT < 33) {
                        context.registerReceiver(srVar, intentFilter);
                    } else {
                        context.registerReceiver(srVar, intentFilter, 4);
                    }
                }
            }
        }
        Application application = this.m;
        if (application != null) {
            try {
                application.registerActivityLifecycleCallbacks(this.f4616c);
            } catch (Exception e2) {
                agd.f("Error registering activity lifecycle callbacks.", e2);
            }
        }
    }

    public final Rect s(Rect rect) {
        float f2 = rect.left;
        float f3 = this.o.density;
        return new Rect((int) (f2 / f3), (int) (rect.top / f3), (int) (rect.right / f3), (int) (rect.bottom / f3));
    }

    public final void t(View view) {
        try {
            WeakReference weakReference = this.p;
            if (weakReference != null) {
                ViewTreeObserver viewTreeObserver = (ViewTreeObserver) weakReference.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.p = null;
            }
        } catch (Exception e2) {
            agd.f("Error while unregistering listeners from the last ViewTreeObserver.", e2);
        }
        try {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnScrollChangedListener(this);
                viewTreeObserver2.removeGlobalOnLayoutListener(this);
            }
        } catch (Exception e3) {
            agd.f("Error while unregistering listeners from the ViewTreeObserver.", e3);
        }
        sr srVar = this.j;
        if (srVar != null) {
            try {
                ti.f20033a.f20035b.h(this.k, srVar);
            } catch (IllegalStateException e4) {
                agd.f("Failed trying to unregister the receiver", e4);
            } catch (Exception e5) {
                ti.f20033a.f20034ab.zzw(e5, "ActiveViewUnit.stopScreenStatusMonitoring");
            }
            this.j = null;
        }
        Application application = this.m;
        if (application != null) {
            try {
                application.unregisterActivityLifecycleCallbacks(this.f4616c);
            } catch (Exception e6) {
                agd.f("Error registering activity lifecycle callbacks.", e6);
            }
        }
    }

    public final void u(Activity activity, int i) {
        Window window;
        WeakReference weakReference = this.f4617d;
        if (weakReference == null || (window = activity.getWindow()) == null) {
            return;
        }
        View peekDecorView = window.peekDecorView();
        View view = (View) weakReference.get();
        if (view == null || peekDecorView == null || view.getRootView() != peekDecorView.getRootView()) {
            return;
        }
        this.h = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:110:0x014c, code lost:
    
        if (r10 == 0) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x012e, code lost:
    
        if (r10 == 0) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0130, code lost:
    
        r4 = true;
        r10 = 0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x021b A[LOOP:1: B:85:0x0215->B:87:0x021b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01e6  */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v33, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v34, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void v(int i) {
        WeakReference weakReference;
        View view;
        boolean z;
        boolean z2;
        ?? r0;
        ?? r4;
        PowerManager powerManager;
        Iterator it;
        HashSet hashSet = this.f4620g;
        if (hashSet.isEmpty() || (weakReference = this.f4617d) == null) {
            return;
        }
        View view2 = (View) weakReference.get();
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        Rect rect3 = new Rect();
        Rect rect4 = new Rect();
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        if (view2 != null) {
            z = view2.getGlobalVisibleRect(rect2);
            z2 = view2.getLocalVisibleRect(rect3);
            view2.getHitRect(rect4);
            try {
                view2.getLocationOnScreen(iArr);
                view2.getLocationInWindow(iArr2);
            } catch (Exception e2) {
                agd.f("Failure getting view location.", e2);
            }
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzeT)).booleanValue()) {
                rect.left = iArr2[0];
                rect.top = iArr2[1];
            } else {
                rect.left = iArr[0];
                rect.top = iArr[1];
            }
            rect.right = view2.getWidth() + rect.left;
            rect.bottom = view2.getHeight() + rect.top;
            view = view2;
        } else {
            view = null;
            z = false;
            z2 = false;
        }
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbw)).booleanValue() || view == null) {
            r0 = Collections.EMPTY_LIST;
        } else {
            try {
                r0 = new ArrayList();
                ViewParent parent = view.getParent();
                while (parent instanceof View) {
                    View view3 = (View) parent;
                    Rect rect5 = new Rect();
                    if (view3.isScrollContainer() && view3.getGlobalVisibleRect(rect5)) {
                        r0.add(s(rect5));
                    }
                    parent = parent.getParent();
                }
            } catch (Exception e3) {
                ti.f20033a.f20034ab.zzw(e3, "PositionWatcher.getParentScrollViewRects");
                r0 = Collections.EMPTY_LIST;
            }
        }
        List list = r0;
        int windowVisibility = view != null ? view.getWindowVisibility() : 8;
        int i2 = this.h;
        if (i2 != -1) {
            windowVisibility = i2;
        }
        ti tiVar = ti.f20033a;
        esy esyVar = tiVar.z;
        long o = esy.o(view);
        zzbce zzbceVar = zzbcn.zzkj;
        edt edtVar = edt.f15376a;
        zzbcl zzbclVar = edtVar.f15379d;
        zzbcl zzbclVar2 = edtVar.f15379d;
        boolean booleanValue = ((Boolean) zzbclVar.zza(zzbceVar)).booleanValue();
        KeyguardManager keyguardManager = this.i;
        PowerManager powerManager2 = this.f4619f;
        if (!booleanValue) {
            if (view2 != null && esy.p(view, powerManager2, keyguardManager)) {
                if (z) {
                    if (z2) {
                    }
                    r4 = 0;
                    z = true;
                    z2 = false;
                    if (((Boolean) zzbclVar2.zza(zzbcn.zzko)).booleanValue()) {
                    }
                    if (i == 1) {
                    }
                    if (r4 != 0) {
                    }
                    tiVar.v.getClass();
                    boolean z3 = r4;
                    zzayl zzaylVar = new zzayl(SystemClock.elapsedRealtime(), powerManager.isScreenOn(), view == null && view.isAttachedToWindow(), view != null ? view.getWindowVisibility() : 8, s(this.n), s(rect), s(rect2), z, s(rect3), z2, o, s(rect4), this.o.density, z3, list);
                    it = hashSet.iterator();
                    while (it.hasNext()) {
                    }
                    this.f4618e = z3;
                }
                r4 = 0;
                z = false;
                if (((Boolean) zzbclVar2.zza(zzbcn.zzko)).booleanValue()) {
                }
                if (i == 1) {
                }
                if (r4 != 0) {
                }
                tiVar.v.getClass();
                boolean z32 = r4;
                zzayl zzaylVar2 = new zzayl(SystemClock.elapsedRealtime(), powerManager.isScreenOn(), view == null && view.isAttachedToWindow(), view != null ? view.getWindowVisibility() : 8, s(this.n), s(rect), s(rect2), z, s(rect3), z2, o, s(rect4), this.o.density, z32, list);
                it = hashSet.iterator();
                while (it.hasNext()) {
                }
                this.f4618e = z32;
            }
            r4 = 0;
            if (((Boolean) zzbclVar2.zza(zzbcn.zzko)).booleanValue()) {
            }
            if (i == 1) {
            }
            if (r4 != 0) {
            }
            tiVar.v.getClass();
            boolean z322 = r4;
            zzayl zzaylVar22 = new zzayl(SystemClock.elapsedRealtime(), powerManager.isScreenOn(), view == null && view.isAttachedToWindow(), view != null ? view.getWindowVisibility() : 8, s(this.n), s(rect), s(rect2), z, s(rect3), z2, o, s(rect4), this.o.density, z322, list);
            it = hashSet.iterator();
            while (it.hasNext()) {
            }
            this.f4618e = z322;
        }
        if (view2 != null && esy.p(view, powerManager2, keyguardManager)) {
            if (z) {
                if (z2) {
                    if (o >= ((Integer) zzbclVar2.zza(zzbcn.zzkm)).intValue()) {
                    }
                    boolean z4 = false;
                    z = true;
                    z2 = true;
                    r4 = z4;
                    if (((Boolean) zzbclVar2.zza(zzbcn.zzko)).booleanValue()) {
                        int i3 = true != esy.p(view, powerManager2, keyguardManager) ? 0 : 64;
                        int i4 = true != z ? 0 : 8;
                        powerManager = powerManager2;
                        esy.m((o >= ((long) ((Integer) zzbclVar2.zza(zzbcn.zzkm)).intValue()) ? 32 : 0) | i3 | i4 | (true != z2 ? 0 : 16) | (windowVisibility == 0 ? TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME : 0) | r4, view);
                    } else {
                        powerManager = powerManager2;
                    }
                    if (i == 1 || this.l.f() || r4 != this.f4618e) {
                        if (r4 != 0 && !this.f4618e) {
                            if (i == 1) {
                                return;
                            }
                        }
                        tiVar.v.getClass();
                        boolean z3222 = r4;
                        zzayl zzaylVar222 = new zzayl(SystemClock.elapsedRealtime(), powerManager.isScreenOn(), view == null && view.isAttachedToWindow(), view != null ? view.getWindowVisibility() : 8, s(this.n), s(rect), s(rect2), z, s(rect3), z2, o, s(rect4), this.o.density, z3222, list);
                        it = hashSet.iterator();
                        while (it.hasNext()) {
                            ((zzaym) it.next()).zzdp(zzaylVar222);
                        }
                        this.f4618e = z3222;
                    }
                    return;
                }
                r4 = 0;
                z = true;
                z2 = false;
                if (((Boolean) zzbclVar2.zza(zzbcn.zzko)).booleanValue()) {
                }
                if (i == 1) {
                }
                if (r4 != 0) {
                }
                tiVar.v.getClass();
                boolean z32222 = r4;
                zzayl zzaylVar2222 = new zzayl(SystemClock.elapsedRealtime(), powerManager.isScreenOn(), view == null && view.isAttachedToWindow(), view != null ? view.getWindowVisibility() : 8, s(this.n), s(rect), s(rect2), z, s(rect3), z2, o, s(rect4), this.o.density, z32222, list);
                it = hashSet.iterator();
                while (it.hasNext()) {
                }
                this.f4618e = z32222;
            }
            r4 = 0;
            z = false;
            if (((Boolean) zzbclVar2.zza(zzbcn.zzko)).booleanValue()) {
            }
            if (i == 1) {
            }
            if (r4 != 0) {
            }
            tiVar.v.getClass();
            boolean z322222 = r4;
            zzayl zzaylVar22222 = new zzayl(SystemClock.elapsedRealtime(), powerManager.isScreenOn(), view == null && view.isAttachedToWindow(), view != null ? view.getWindowVisibility() : 8, s(this.n), s(rect), s(rect2), z, s(rect3), z2, o, s(rect4), this.o.density, z322222, list);
            it = hashSet.iterator();
            while (it.hasNext()) {
            }
            this.f4618e = z322222;
        }
        r4 = 0;
        if (((Boolean) zzbclVar2.zza(zzbcn.zzko)).booleanValue()) {
        }
        if (i == 1) {
        }
        if (r4 != 0) {
        }
        tiVar.v.getClass();
        boolean z3222222 = r4;
        zzayl zzaylVar222222 = new zzayl(SystemClock.elapsedRealtime(), powerManager.isScreenOn(), view == null && view.isAttachedToWindow(), view != null ? view.getWindowVisibility() : 8, s(this.n), s(rect), s(rect2), z, s(rect3), z2, o, s(rect4), this.o.density, z3222222, list);
        it = hashSet.iterator();
        while (it.hasNext()) {
        }
        this.f4618e = z3222222;
    }

    public final void zzc(zzaym zzaymVar) {
        this.f4620g.add(zzaymVar);
        v(3);
    }

    public final void zze(zzaym zzaymVar) {
        this.f4620g.remove(zzaymVar);
    }

    public final void zzf() {
        gra graVar = this.l;
        long j = f4615b;
        synchronized (graVar.f18626a) {
            graVar.f18627c = j;
        }
    }

    public final void zzg(long j) {
        gra graVar = this.l;
        synchronized (graVar.f18626a) {
            graVar.f18627c = j;
        }
    }
}
