package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.app.KeyguardManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import g.dyn;
import g.fci;
import g.sr;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public final class zzawm implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, Application.ActivityLifecycleCallbacks {

    /* renamed from: a, reason: collision with root package name */
    public static final Handler f4546a = new Handler(Looper.getMainLooper());

    /* renamed from: b, reason: collision with root package name */
    public WeakReference f4547b;

    /* renamed from: c, reason: collision with root package name */
    public WeakReference f4548c;

    /* renamed from: e, reason: collision with root package name */
    public final PowerManager f4550e;
    public final KeyguardManager h;
    public sr i;
    public final Context j;
    public final fci k;
    public final Application l;
    public final zzavy m;

    /* renamed from: d, reason: collision with root package name */
    public byte f4549d = -1;

    /* renamed from: g, reason: collision with root package name */
    public int f4552g = -1;

    /* renamed from: f, reason: collision with root package name */
    public long f4551f = -3;

    public zzawm(Context context, zzavy zzavyVar) {
        Context applicationContext = context.getApplicationContext();
        this.j = applicationContext;
        this.m = zzavyVar;
        this.f4550e = (PowerManager) applicationContext.getSystemService("power");
        this.h = (KeyguardManager) applicationContext.getSystemService("keyguard");
        if (applicationContext instanceof Application) {
            Application application = (Application) applicationContext;
            this.l = application;
            this.k = new fci(application, this);
        }
        p(null);
    }

    public final void n(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.f4548c = new WeakReference(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.i == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            sr srVar = new sr(12, this);
            this.i = srVar;
            this.j.registerReceiver(srVar, intentFilter);
        }
        Application application = this.l;
        if (application != null) {
            try {
                application.registerActivityLifecycleCallbacks(this.k);
            } catch (Exception unused) {
            }
        }
    }

    public final void o(View view) {
        try {
            WeakReference weakReference = this.f4548c;
            if (weakReference != null) {
                ViewTreeObserver viewTreeObserver = (ViewTreeObserver) weakReference.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.f4548c = null;
            }
        } catch (Exception unused) {
        }
        try {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnScrollChangedListener(this);
                viewTreeObserver2.removeGlobalOnLayoutListener(this);
            }
        } catch (Exception unused2) {
        }
        sr srVar = this.i;
        if (srVar != null) {
            try {
                this.j.unregisterReceiver(srVar);
            } catch (Exception unused3) {
            }
            this.i = null;
        }
        Application application = this.l;
        if (application != null) {
            try {
                application.unregisterActivityLifecycleCallbacks(this.k);
            } catch (Exception unused4) {
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        q(activity, 0);
        r();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        r();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        q(activity, 4);
        r();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        q(activity, 0);
        r();
        f4546a.post(new dyn(25, this));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        r();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        q(activity, 0);
        r();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        r();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        r();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        r();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f4552g = -1;
        n(view);
        r();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f4552g = -1;
        r();
        f4546a.post(new dyn(25, this));
        o(view);
    }

    public final void p(View view) {
        long j;
        WeakReference weakReference = this.f4547b;
        View view2 = weakReference != null ? (View) weakReference.get() : null;
        if (view2 != null) {
            view2.removeOnAttachStateChangeListener(this);
            o(view2);
        }
        this.f4547b = new WeakReference(view);
        if (view != null) {
            if (view.getWindowToken() != null || view.getWindowVisibility() != 8) {
                n(view);
            }
            view.addOnAttachStateChangeListener(this);
            j = -2;
        } else {
            j = -3;
        }
        this.f4551f = j;
    }

    public final void q(Activity activity, int i) {
        Window window;
        if (this.f4547b == null || (window = activity.getWindow()) == null) {
            return;
        }
        View peekDecorView = window.peekDecorView();
        WeakReference weakReference = this.f4547b;
        View view = weakReference != null ? (View) weakReference.get() : null;
        if (view == null || peekDecorView == null || view.getRootView() != peekDecorView.getRootView()) {
            return;
        }
        this.f4552g = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x0084, code lost:
    
        if ((r1.flags & 524288) != 0) goto L54;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void r() {
        Activity activity;
        WeakReference weakReference = this.f4547b;
        if (weakReference == null) {
            return;
        }
        View view = weakReference != null ? (View) weakReference.get() : null;
        if (view == null) {
            this.f4551f = -3L;
            this.f4549d = (byte) -1;
            return;
        }
        int i = view.getVisibility() != 0 ? 1 : 0;
        if (!view.isShown()) {
            i |= 2;
        }
        PowerManager powerManager = this.f4550e;
        if (powerManager != null && !powerManager.isScreenOn()) {
            i |= 4;
        }
        if (!this.m.f4530a) {
            KeyguardManager keyguardManager = this.h;
            if (keyguardManager != null && keyguardManager.inKeyguardRestrictedInputMode()) {
                char[] cArr = zzawi.f4545a;
                View rootView = view.getRootView();
                if (rootView == null) {
                    rootView = view;
                }
                Context context = rootView.getContext();
                for (int i2 = 0; (context instanceof ContextWrapper) && i2 < 10; i2++) {
                    if (context instanceof Activity) {
                        activity = (Activity) context;
                        break;
                    }
                    context = ((ContextWrapper) context).getBaseContext();
                }
                activity = null;
                if (activity != null) {
                    Window window = activity.getWindow();
                    WindowManager.LayoutParams attributes = window != null ? window.getAttributes() : null;
                    if (attributes != null) {
                    }
                }
            }
            i |= 8;
        }
        if (!view.getGlobalVisibleRect(new Rect())) {
            i |= 16;
        }
        if (!view.getLocalVisibleRect(new Rect())) {
            i |= 32;
        }
        int windowVisibility = view.getWindowVisibility();
        int i3 = this.f4552g;
        if (i3 != -1) {
            windowVisibility = i3;
        }
        if (windowVisibility != 0) {
            i |= 64;
        }
        if (this.f4549d != i) {
            this.f4549d = (byte) i;
            this.f4551f = i == 0 ? SystemClock.elapsedRealtime() : (-3) - i;
        }
    }

    public final long zza() {
        if (this.f4551f <= -2) {
            WeakReference weakReference = this.f4547b;
            if ((weakReference != null ? (View) weakReference.get() : null) == null) {
                this.f4551f = -3L;
            }
        }
        return this.f4551f;
    }
}
