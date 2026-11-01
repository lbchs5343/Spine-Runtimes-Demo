package g;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

/* loaded from: classes.dex */
public final class abc implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9903a;

    public /* synthetic */ abc(int i) {
        this.f9903a = i;
    }

    private final void b(Activity activity) {
    }

    private final void c(Activity activity, Bundle bundle) {
    }

    private final void d(Activity activity, Bundle bundle) {
    }

    private final void e(Activity activity, Bundle bundle) {
    }

    private final void f(Activity activity) {
    }

    private final void g(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        Class cls;
        Class cls2;
        switch (this.f9903a) {
            case 0:
                break;
            default:
                String name = activity.getClass().getName();
                cls = com.tencent.bugly.proguard.s.l;
                if (cls != null) {
                    cls2 = com.tencent.bugly.proguard.s.l;
                    if (!cls2.getName().equals(name)) {
                    }
                }
                com.tencent.bugly.proguard.al.c(">>> %s onCreated <<<", name);
                com.tencent.bugly.proguard.aa b2 = com.tencent.bugly.proguard.aa.b();
                if (b2 != null) {
                    b2.L.add(com.tencent.bugly.proguard.s.a(name, "onCreated"));
                    break;
                }
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        Class cls;
        Class cls2;
        switch (this.f9903a) {
            case 0:
                break;
            default:
                String name = activity.getClass().getName();
                cls = com.tencent.bugly.proguard.s.l;
                if (cls != null) {
                    cls2 = com.tencent.bugly.proguard.s.l;
                    if (!cls2.getName().equals(name)) {
                    }
                }
                com.tencent.bugly.proguard.al.c(">>> %s onDestroyed <<<", name);
                com.tencent.bugly.proguard.aa b2 = com.tencent.bugly.proguard.aa.b();
                if (b2 != null) {
                    b2.L.add(com.tencent.bugly.proguard.s.a(name, "onDestroyed"));
                    break;
                }
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        Class cls;
        Class cls2;
        switch (this.f9903a) {
            case 0:
                break;
            default:
                String name = activity.getClass().getName();
                cls = com.tencent.bugly.proguard.s.l;
                if (cls != null) {
                    cls2 = com.tencent.bugly.proguard.s.l;
                    if (!cls2.getName().equals(name)) {
                    }
                }
                com.tencent.bugly.proguard.al.c(">>> %s onPaused <<<", name);
                com.tencent.bugly.proguard.aa b2 = com.tencent.bugly.proguard.aa.b();
                if (b2 != null) {
                    b2.L.add(com.tencent.bugly.proguard.s.a(name, "onPaused"));
                    long currentTimeMillis = System.currentTimeMillis();
                    b2.A = currentTimeMillis;
                    b2.B = currentTimeMillis - b2.z;
                    long unused = com.tencent.bugly.proguard.s.h = currentTimeMillis;
                    if (b2.B < 0) {
                        b2.B = 0L;
                    }
                    b2.y = "background";
                    break;
                }
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        Class cls;
        long j;
        long j2;
        long j3;
        long j4;
        int i;
        int i2;
        long j5;
        long j6;
        boolean z;
        long j7;
        boolean z2;
        Class cls2;
        switch (this.f9903a) {
            case 0:
                break;
            default:
                String name = activity.getClass().getName();
                cls = com.tencent.bugly.proguard.s.l;
                if (cls != null) {
                    cls2 = com.tencent.bugly.proguard.s.l;
                    if (!cls2.getName().equals(name)) {
                    }
                }
                boolean z3 = true;
                com.tencent.bugly.proguard.al.c(">>> %s onResumed <<<", name);
                com.tencent.bugly.proguard.aa b2 = com.tencent.bugly.proguard.aa.b();
                if (b2 != null) {
                    b2.L.add(com.tencent.bugly.proguard.s.a(name, "onResumed"));
                    b2.y = name;
                    long currentTimeMillis = System.currentTimeMillis();
                    b2.z = currentTimeMillis;
                    j = com.tencent.bugly.proguard.s.i;
                    b2.C = currentTimeMillis - j;
                    long j8 = b2.z;
                    j2 = com.tencent.bugly.proguard.s.h;
                    long j9 = j8 - j2;
                    j3 = com.tencent.bugly.proguard.s.f9793f;
                    if (j9 > (j3 > 0 ? com.tencent.bugly.proguard.s.f9793f : com.tencent.bugly.proguard.s.f9792e)) {
                        b2.c();
                        com.tencent.bugly.proguard.s.g();
                        Long valueOf = Long.valueOf(j9 / 1000);
                        j4 = com.tencent.bugly.proguard.s.f9792e;
                        com.tencent.bugly.proguard.al.a("[session] launch app one times (app in background %d seconds and over %d seconds)", valueOf, Long.valueOf(j4 / 1000));
                        i = com.tencent.bugly.proguard.s.f9794g;
                        i2 = com.tencent.bugly.proguard.s.f9790c;
                        int i3 = i % i2;
                        int i4 = 4;
                        if (i3 != 0) {
                            com.tencent.bugly.proguard.s.f9789b.a(4, false);
                            long currentTimeMillis2 = System.currentTimeMillis();
                            j5 = com.tencent.bugly.proguard.s.j;
                            long j10 = currentTimeMillis2 - j5;
                            j6 = com.tencent.bugly.proguard.s.f9791d;
                            if (j10 > j6) {
                                long unused = com.tencent.bugly.proguard.s.j = currentTimeMillis2;
                                com.tencent.bugly.proguard.al.a("add a timer to upload hot start user info", new Object[0]);
                                z = com.tencent.bugly.proguard.s.m;
                                if (z) {
                                    com.tencent.bugly.proguard.r rVar = com.tencent.bugly.proguard.s.f9789b;
                                    j7 = com.tencent.bugly.proguard.s.f9791d;
                                    com.tencent.bugly.proguard.ak.a().a(new cef(i4, rVar, (Object) null, z3), j7);
                                    break;
                                }
                            }
                        } else {
                            com.tencent.bugly.proguard.r rVar2 = com.tencent.bugly.proguard.s.f9789b;
                            z2 = com.tencent.bugly.proguard.s.m;
                            rVar2.a(4, z2);
                            break;
                        }
                    }
                }
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        int i = this.f9903a;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        switch (this.f9903a) {
            case 0:
                byh.f12447f = true;
                break;
            default:
                com.tencent.bugly.proguard.al.c(">>> %s onStart <<<", activity.getClass().getName());
                com.tencent.bugly.proguard.aa.b().a(activity.hashCode(), true);
                break;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        switch (this.f9903a) {
            case 0:
                byh.f12447f = false;
                break;
            default:
                com.tencent.bugly.proguard.al.c(">>> %s onStop <<<", activity.getClass().getName());
                com.tencent.bugly.proguard.aa.b().a(activity.hashCode(), false);
                break;
        }
    }
}
