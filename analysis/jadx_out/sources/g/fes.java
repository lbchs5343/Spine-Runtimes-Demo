package g;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.internal.ads.zzazf;
import com.google.android.gms.internal.ads.zzazt;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class fes implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a, reason: collision with root package name */
    public dyn f16675a;

    /* renamed from: c, reason: collision with root package name */
    public long f16677c;

    /* renamed from: g, reason: collision with root package name */
    public Activity f16681g;
    public Application i;

    /* renamed from: d, reason: collision with root package name */
    public final Object f16678d = new Object();

    /* renamed from: e, reason: collision with root package name */
    public boolean f16679e = true;

    /* renamed from: f, reason: collision with root package name */
    public boolean f16680f = false;
    public final ArrayList j = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f16676b = new ArrayList();
    public boolean h = false;

    public final void k(zzazf zzazfVar) {
        synchronized (this.f16678d) {
            this.j.add(zzazfVar);
        }
    }

    public final void l(zzazf zzazfVar) {
        synchronized (this.f16678d) {
            this.j.remove(zzazfVar);
        }
    }

    public final void m(Activity activity) {
        synchronized (this.f16678d) {
            try {
                if (!activity.getClass().getName().startsWith(MobileAds.ERROR_DOMAIN)) {
                    this.f16681g = activity;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        synchronized (this.f16678d) {
            try {
                Activity activity2 = this.f16681g;
                if (activity2 == null) {
                    return;
                }
                if (activity2.equals(activity)) {
                    this.f16681g = null;
                }
                Iterator it = this.f16676b.iterator();
                while (it.hasNext()) {
                    try {
                        if (((zzazt) it.next()).zza()) {
                            it.remove();
                        }
                    } catch (Exception e2) {
                        ti.f20033a.f20034ab.zzw(e2, "AppActivityTracker.ActivityListener.onActivityDestroyed");
                        agd.f("", e2);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m(activity);
        synchronized (this.f16678d) {
            Iterator it = this.f16676b.iterator();
            while (it.hasNext()) {
                try {
                    ((zzazt) it.next()).zzb();
                } catch (Exception e2) {
                    ti.f20033a.f20034ab.zzw(e2, "AppActivityTracker.ActivityListener.onActivityPaused");
                    agd.f("", e2);
                }
            }
        }
        this.f16680f = true;
        dyn dynVar = this.f16675a;
        if (dynVar != null) {
            esy.f16117a.removeCallbacks(dynVar);
        }
        gfx gfxVar = esy.f16117a;
        dyn dynVar2 = new dyn(27, this);
        this.f16675a = dynVar2;
        gfxVar.postDelayed(dynVar2, this.f16677c);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m(activity);
        this.f16680f = false;
        boolean z = this.f16679e;
        this.f16679e = true;
        dyn dynVar = this.f16675a;
        if (dynVar != null) {
            esy.f16117a.removeCallbacks(dynVar);
        }
        synchronized (this.f16678d) {
            Iterator it = this.f16676b.iterator();
            while (it.hasNext()) {
                try {
                    ((zzazt) it.next()).zzc();
                } catch (Exception e2) {
                    ti.f20033a.f20034ab.zzw(e2, "AppActivityTracker.ActivityListener.onActivityResumed");
                    agd.f("", e2);
                }
            }
            if (z) {
                agd.c("App is still foreground.");
            } else {
                Iterator it2 = this.j.iterator();
                while (it2.hasNext()) {
                    try {
                        ((zzazf) it2.next()).zza(true);
                    } catch (Exception e3) {
                        agd.f("", e3);
                    }
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        m(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
