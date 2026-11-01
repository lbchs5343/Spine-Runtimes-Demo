package g;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;

/* loaded from: classes.dex */
public final class eoa implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15882a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f15883b;

    public /* synthetic */ eoa(int i, Object obj) {
        this.f15882a = i;
        this.f15883b = obj;
    }

    private final void c(Activity activity, Bundle bundle) {
    }

    private final void d(Activity activity) {
    }

    private final void e(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        Intent intent;
        switch (this.f15882a) {
            case 0:
                epy epyVar = (epy) this.f15883b;
                epyVar.q = activity.getClass().getName();
                epyVar.f15954a = System.currentTimeMillis();
                epyVar.p.add(epyVar.q);
                epyVar.f15958e.add(Long.valueOf(epyVar.f15954a));
                return;
            case 1:
                ((bhz) this.f15883b).l(new dhn(this, bundle, activity));
                return;
            default:
                cyg cygVar = (cyg) ((csp) this.f15883b).z;
                try {
                    bgm bgmVar = cygVar.z;
                    cyg.ak(bgmVar);
                    bgmVar.f11519c.h("onActivityCreated");
                    intent = activity.getIntent();
                } catch (RuntimeException e2) {
                    e = e2;
                } catch (Throwable th) {
                    th = th;
                    bcm bcmVar = cygVar.h;
                    cyg.aj(bcmVar);
                    bcmVar.x(activity, bundle);
                    throw th;
                }
                if (intent == null) {
                    bcm bcmVar2 = cygVar.h;
                    cyg.aj(bcmVar2);
                    bcmVar2.x(activity, bundle);
                    return;
                }
                Uri data = intent.getData();
                if (data != null && data.isHierarchical()) {
                    cyg.ai(cygVar.m);
                    String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
                    String str = ("android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "https://www.google.com".equals(stringExtra) || "android-app://com.google.appcrawler".equals(stringExtra)) ? "gs" : LiveConfigKey.AUTO;
                    String queryParameter = data.getQueryParameter("referrer");
                    boolean z = bundle == null;
                    fth fthVar = cygVar.j;
                    cyg.ak(fthVar);
                    try {
                        try {
                            fthVar.p(new gf(this, z, data, str, queryParameter));
                        } catch (RuntimeException e3) {
                            e = e3;
                            bgm bgmVar2 = cygVar.z;
                            cyg.ak(bgmVar2);
                            bgmVar2.f11518b.i(e, "Throwable caught in onActivityCreated");
                            bcm bcmVar3 = cygVar.h;
                            cyg.aj(bcmVar3);
                            bcmVar3.x(activity, bundle);
                            return;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        bcm bcmVar4 = cygVar.h;
                        cyg.aj(bcmVar4);
                        bcmVar4.x(activity, bundle);
                        throw th;
                    }
                }
                bcm bcmVar32 = cygVar.h;
                cyg.aj(bcmVar32);
                bcmVar32.x(activity, bundle);
                return;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        switch (this.f15882a) {
            case 0:
                String name = activity.getClass().getName();
                epy epyVar = (epy) this.f15883b;
                int indexOf = epyVar.p.indexOf(name);
                if (indexOf >= 0 && indexOf < epyVar.p.size()) {
                    epyVar.p.remove(indexOf);
                    epyVar.f15958e.remove(indexOf);
                }
                epyVar.f15960g.add(name);
                epyVar.i.add(Long.valueOf(System.currentTimeMillis()));
                return;
            case 1:
                ((bhz) this.f15883b).l(new aba(this, activity, 4));
                return;
            default:
                bcm bcmVar = ((cyg) ((csp) this.f15883b).z).h;
                cyg.aj(bcmVar);
                synchronized (bcmVar.p) {
                    try {
                        if (activity == bcmVar.f11282g) {
                            bcmVar.f11282g = null;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (((cyg) bcmVar.z).f13747e.j()) {
                    bcmVar.h.remove(activity);
                    return;
                }
                return;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        switch (this.f15882a) {
            case 0:
                epy epyVar = (epy) this.f15883b;
                epyVar.k = activity.getClass().getName();
                epyVar.f15957d = System.currentTimeMillis();
                int i = epyVar.o - 1;
                epyVar.o = i;
                if (i <= 0) {
                    epyVar.r = false;
                    return;
                }
                return;
            case 1:
                ((bhz) this.f15883b).l(new aba(this, activity, 2));
                return;
            default:
                bcm bcmVar = ((cyg) ((csp) this.f15883b).z).h;
                cyg.aj(bcmVar);
                synchronized (bcmVar.p) {
                    bcmVar.k = false;
                    bcmVar.o = true;
                }
                ((cyg) bcmVar.z).f13743ab.getClass();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                if (((cyg) bcmVar.z).f13747e.j()) {
                    ein s = bcmVar.s(activity);
                    bcmVar.n = bcmVar.m;
                    bcmVar.m = null;
                    fth fthVar = ((cyg) bcmVar.z).j;
                    cyg.ak(fthVar);
                    fthVar.p(new did(bcmVar, s, elapsedRealtime, 2));
                } else {
                    bcmVar.m = null;
                    fth fthVar2 = ((cyg) bcmVar.z).j;
                    cyg.ak(fthVar2);
                    fthVar2.p(new axi(bcmVar, elapsedRealtime, 3));
                }
                cjv cjvVar = ((cyg) ((csp) this.f15883b).z).n;
                cyg.aj(cjvVar);
                ((cyg) cjvVar.z).f13743ab.getClass();
                long elapsedRealtime2 = SystemClock.elapsedRealtime();
                fth fthVar3 = ((cyg) cjvVar.z).j;
                cyg.ak(fthVar3);
                fthVar3.p(new ffk(cjvVar, elapsedRealtime2, 1));
                return;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        switch (this.f15882a) {
            case 0:
                epy epyVar = (epy) this.f15883b;
                epyVar.f15955b = activity.getClass().getName();
                epyVar.f15959f = System.currentTimeMillis();
                epyVar.r = true;
                epyVar.o++;
                return;
            case 1:
                ((bhz) this.f15883b).l(new aba(this, activity, 1));
                return;
            default:
                cjv cjvVar = ((cyg) ((csp) this.f15883b).z).n;
                cyg.aj(cjvVar);
                ((cyg) cjvVar.z).f13743ab.getClass();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                fth fthVar = ((cyg) cjvVar.z).j;
                cyg.ak(fthVar);
                fthVar.p(new ffk(cjvVar, elapsedRealtime, 0));
                bcm bcmVar = ((cyg) ((csp) this.f15883b).z).h;
                cyg.aj(bcmVar);
                synchronized (bcmVar.p) {
                    bcmVar.k = true;
                    if (activity != bcmVar.f11282g) {
                        synchronized (bcmVar.p) {
                            bcmVar.f11282g = activity;
                            bcmVar.o = false;
                        }
                        if (((cyg) bcmVar.z).f13747e.j()) {
                            bcmVar.j = null;
                            fth fthVar2 = ((cyg) bcmVar.z).j;
                            cyg.ak(fthVar2);
                            fthVar2.p(new ehg(bcmVar, 1));
                        }
                    }
                }
                if (!((cyg) bcmVar.z).f13747e.j()) {
                    bcmVar.m = bcmVar.j;
                    fth fthVar3 = ((cyg) bcmVar.z).j;
                    cyg.ak(fthVar3);
                    fthVar3.p(new ehg(bcmVar, 0));
                    return;
                }
                bcmVar.r(activity, bcmVar.s(activity), false);
                fqm am = ((cyg) bcmVar.z).am();
                ((cyg) am.z).f13743ab.getClass();
                long elapsedRealtime2 = SystemClock.elapsedRealtime();
                fth fthVar4 = ((cyg) am.z).j;
                cyg.ak(fthVar4);
                fthVar4.p(new axi(am, elapsedRealtime2, 2));
                return;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        ein einVar;
        switch (this.f15882a) {
            case 0:
                break;
            case 1:
                bay bayVar = new bay();
                ((bhz) this.f15883b).l(new dhn(this, activity, bayVar));
                Bundle d2 = bayVar.d(50L);
                if (d2 != null) {
                    bundle.putAll(d2);
                    break;
                }
                break;
            default:
                bcm bcmVar = ((cyg) ((csp) this.f15883b).z).h;
                cyg.aj(bcmVar);
                if (((cyg) bcmVar.z).f13747e.j() && bundle != null && (einVar = (ein) bcmVar.h.get(activity)) != null) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putLong(TTDownloadField.TT_ID, einVar.f15600f);
                    bundle2.putString(abn.EXTRA_UA_APP_NAME, einVar.f15597c);
                    bundle2.putString("referrer_name", einVar.f15599e);
                    bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
                    break;
                }
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        switch (this.f15882a) {
            case 0:
                epy epyVar = (epy) this.f15883b;
                epyVar.l = activity.getClass().getName();
                epyVar.n = System.currentTimeMillis();
                break;
            case 1:
                ((bhz) this.f15883b).l(new aba(this, activity, 0));
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        switch (this.f15882a) {
            case 0:
                epy epyVar = (epy) this.f15883b;
                epyVar.f15956c = activity.getClass().getName();
                epyVar.j = System.currentTimeMillis();
                break;
            case 1:
                ((bhz) this.f15883b).l(new aba(this, activity, 3));
                break;
        }
    }
}
