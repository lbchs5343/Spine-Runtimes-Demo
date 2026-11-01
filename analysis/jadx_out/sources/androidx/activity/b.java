package androidx.activity;

import android.os.Build;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import g.ajs;
import g.bcn;
import g.bff;
import g.bwm;
import g.dkw;
import g.dxi;
import g.eej;
import g.euu;
import g.fab;
import g.fbz;
import g.fqv;
import g.fyo;
import g.goq;
import g.gws;
import g.iz;
import java.util.Iterator;
import java.util.ListIterator;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final OnBackInvokedCallback f22a;

    /* renamed from: b, reason: collision with root package name */
    public OnBackInvokedDispatcher f23b;

    /* renamed from: c, reason: collision with root package name */
    public final Runnable f24c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f25d;

    /* renamed from: e, reason: collision with root package name */
    public final fbz f26e = new fbz();

    /* renamed from: f, reason: collision with root package name */
    public bcn f27f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f28g;

    public b(Runnable runnable) {
        OnBackInvokedCallback b2;
        this.f24c = runnable;
        int i = Build.VERSION.SDK_INT;
        if (i >= 33) {
            if (i >= 34) {
                b2 = dkw.f14341a.b(new eej(this), new goq(this), new dxi(this), new fab(this));
            } else {
                b2 = fyo.f17649a.b(new gws(this));
            }
            this.f22a = b2;
        }
    }

    public final void h() {
        boolean z = this.f28g;
        boolean z2 = false;
        fbz fbzVar = this.f26e;
        if (fbzVar == null || !fbzVar.isEmpty()) {
            Iterator it = fbzVar.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (((bcn) it.next()).f11285c) {
                    z2 = true;
                    break;
                }
            }
        }
        this.f28g = z2;
        if (z2 == z || Build.VERSION.SDK_INT < 33) {
            return;
        }
        k(z2);
    }

    public final void i(iz izVar, bcn bcnVar) {
        bff.p(izVar, "owner");
        bff.p(bcnVar, "onBackPressedCallback");
        euu lifecycle = izVar.getLifecycle();
        if (((ajs) lifecycle).f10342g == fqv.DESTROYED) {
            return;
        }
        bcnVar.f11286d.add(new OnBackPressedDispatcher$LifecycleOnBackPressedCancellable(this, lifecycle, bcnVar));
        h();
        bcnVar.f11287e = new bwm(0, this, b.class, "updateEnabledCallbacks", "updateEnabledCallbacks()V", 0, 0);
    }

    public final void j() {
        Object obj;
        fbz fbzVar = this.f26e;
        ListIterator listIterator = fbzVar.listIterator(fbzVar.j());
        while (true) {
            if (!listIterator.hasPrevious()) {
                obj = null;
                break;
            } else {
                obj = listIterator.previous();
                if (((bcn) obj).f11285c) {
                    break;
                }
            }
        }
        bcn bcnVar = (bcn) obj;
        this.f27f = null;
        if (bcnVar != null) {
            bcnVar.f();
        } else {
            this.f24c.run();
        }
    }

    public final void k(boolean z) {
        OnBackInvokedDispatcher onBackInvokedDispatcher = this.f23b;
        OnBackInvokedCallback onBackInvokedCallback = this.f22a;
        if (onBackInvokedDispatcher == null || onBackInvokedCallback == null) {
            return;
        }
        fyo fyoVar = fyo.f17649a;
        if (z && !this.f25d) {
            fyoVar.c(onBackInvokedDispatcher, 0, onBackInvokedCallback);
            this.f25d = true;
        } else {
            if (z || !this.f25d) {
                return;
            }
            fyoVar.d(onBackInvokedDispatcher, onBackInvokedCallback);
            this.f25d = false;
        }
    }
}
