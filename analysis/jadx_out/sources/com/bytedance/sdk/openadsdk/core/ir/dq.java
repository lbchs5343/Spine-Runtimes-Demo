package com.bytedance.sdk.openadsdk.core.ir;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.Window;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.pangle.annotations.ForbidWrapParam;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public class dq implements Application.ActivityLifecycleCallbacks {

    /* renamed from: d, reason: collision with root package name */
    public static long f3043d;
    public static boolean dq;
    public static long ox;
    private volatile WeakReference<Activity> ig;
    private volatile InterfaceC0164dq p;
    private volatile d s;
    private final AtomicBoolean iw = new AtomicBoolean(false);
    private final HashSet<Integer> mn = new HashSet<>();
    private volatile CopyOnWriteArrayList<WeakReference<com.bytedance.sdk.component.adexpress.dq>> ia = new CopyOnWriteArrayList<>();
    private volatile CopyOnWriteArrayList<d> kk = new CopyOnWriteArrayList<>();
    private final ArrayList<String> o = new ArrayList<>();
    private SparseArray<Set<Runnable>> no = new SparseArray<>();

    public interface d {
        void d();

        void dq();
    }

    /* renamed from: com.bytedance.sdk.openadsdk.core.ir.dq$dq, reason: collision with other inner class name */
    public interface InterfaceC0164dq {
        void dq();
    }

    private void d(boolean z) {
        try {
            if (z) {
                if (this.s != null) {
                    this.s.d();
                }
                Iterator<d> it = this.kk.iterator();
                while (it.hasNext()) {
                    d next = it.next();
                    if (next != null) {
                        next.d();
                    }
                }
                return;
            }
            if (this.s != null) {
                this.s.dq();
            }
            Iterator<d> it2 = this.kk.iterator();
            while (it2.hasNext()) {
                d next2 = it2.next();
                if (next2 != null) {
                    next2.dq();
                }
            }
        } catch (Exception unused) {
        }
    }

    private void iw() {
        if (!com.bytedance.sdk.openadsdk.core.no.ia().le() && d()) {
            com.bytedance.sdk.component.o.mn.ox(new com.bytedance.sdk.component.o.kk("reportSdkUseTime") { // from class: com.bytedance.sdk.openadsdk.core.ir.dq.1
                @Override // java.lang.Runnable
                public void run() {
                    dq.dq = false;
                    dq.ox = System.currentTimeMillis();
                    com.bytedance.sdk.openadsdk.core.gh.ig.dq().dq(dq.f3043d / 1000, dq.ox / 1000, !com.bytedance.sdk.openadsdk.core.le.f3144d.get() ? 1 : 0);
                    com.bytedance.sdk.openadsdk.core.le.f3144d.set(false);
                }
            });
        }
    }

    private void mn() {
        if (com.bytedance.sdk.openadsdk.core.no.ia().le()) {
            return;
        }
        com.bytedance.sdk.openadsdk.h.mn.d(new com.bytedance.sdk.component.o.kk("upload_dpl") { // from class: com.bytedance.sdk.openadsdk.core.ir.dq.2
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.component.mn.dq dq2 = com.bytedance.sdk.openadsdk.core.ox.dq();
                long d2 = dq2.d("save_jump_success_time", 0L);
                if (d2 <= 0) {
                    return;
                }
                long currentTimeMillis = System.currentTimeMillis() - d2;
                if (currentTimeMillis >= AdBaseConstants.DEFAULT_DELAY_TIMESTAMP || currentTimeMillis <= 0) {
                    return;
                }
                String d3 = dq2.d("save_jump_success_ad_tag", "");
                String d4 = dq2.d("save_dpl_success_materialmeta", "");
                if (TextUtils.isEmpty(d3) || TextUtils.isEmpty(d4)) {
                    return;
                }
                com.bytedance.sdk.openadsdk.core.ig.ox.dq(currentTimeMillis, d3, d4);
            }
        });
    }

    private boolean s() {
        Bridge nh = com.bytedance.sdk.openadsdk.core.no.ia().nh();
        if (nh != null) {
            try {
                return ((Boolean) nh.call(2, null, Boolean.class)).booleanValue();
            } catch (Exception unused) {
            }
        }
        return this.iw.get();
    }

    public void d(d dVar) {
        this.s = dVar;
    }

    public boolean d() {
        return s();
    }

    public boolean d(com.bytedance.sdk.component.adexpress.dq dqVar) {
        return this.ia.remove(new WeakReference(dqVar));
    }

    public WeakReference<Activity> dq() {
        return this.ig;
    }

    public void dq(com.bytedance.sdk.component.adexpress.dq dqVar) {
        this.ia.add(new WeakReference<>(dqVar));
    }

    public void dq(d dVar) {
        if (this.kk.contains(dVar)) {
            return;
        }
        this.kk.add(dVar);
    }

    public void dq(InterfaceC0164dq interfaceC0164dq) {
        this.p = interfaceC0164dq;
    }

    public boolean dq(@ForbidWrapParam Activity activity) {
        return activity != null && this.mn.contains(Integer.valueOf(activity.hashCode()));
    }

    public boolean dq(Activity activity, Runnable runnable) {
        boolean add;
        if (activity == null) {
            return false;
        }
        int hashCode = activity.hashCode();
        synchronized (this.no) {
            try {
                Set<Runnable> set = this.no.get(hashCode);
                if (set == null) {
                    set = new HashSet<>();
                    this.no.put(hashCode, set);
                }
                add = set.add(runnable);
            } catch (Throwable th) {
                throw th;
            }
        }
        return add;
    }

    public boolean dq(boolean z) {
        Activity activity;
        Window window;
        return (this.ig == null || (activity = this.ig.get()) == null || (window = activity.getWindow()) == null) ? z : window.getDecorView().hasWindowFocus();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(@ForbidWrapParam Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(@ForbidWrapParam Activity activity) {
        if (activity != null) {
            this.mn.remove(Integer.valueOf(activity.hashCode()));
        }
        if (this.ia != null && this.ia.size() > 0) {
            Iterator<WeakReference<com.bytedance.sdk.component.adexpress.dq>> it = this.ia.iterator();
            while (it.hasNext()) {
                WeakReference<com.bytedance.sdk.component.adexpress.dq> next = it.next();
                if (next != null && next.get() != null) {
                    try {
                        next.get().dq(activity);
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            }
        }
        if (this.ig != null && this.ig.get() == activity) {
            this.ig = null;
        }
        if (activity != null) {
            int hashCode = activity.hashCode();
            synchronized (this.no) {
                try {
                    Set<Runnable> set = this.no.get(hashCode);
                    if (set != null) {
                        for (Runnable runnable : set) {
                            if (runnable != null) {
                                runnable.run();
                            }
                        }
                        this.no.remove(hashCode);
                    }
                } finally {
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(@ForbidWrapParam Activity activity) {
        if (com.bytedance.sdk.openadsdk.core.no.ia().le() || activity == null || activity.getComponentName() == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.ir.d.dq().ox(activity.getComponentName().getClassName());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(@ForbidWrapParam Activity activity) {
        if (activity != null) {
            this.mn.add(Integer.valueOf(activity.hashCode()));
        }
        if (this.p != null) {
            this.p.dq();
        }
        com.bytedance.sdk.component.kk.ox.dq.dq(com.bytedance.sdk.openadsdk.core.wp.getContext(), Integer.parseInt("1371"));
        if (!dq) {
            f3043d = System.currentTimeMillis();
            dq = true;
        }
        com.bytedance.sdk.openadsdk.core.n.dq();
        this.ig = new WeakReference<>(activity);
        if (com.bytedance.sdk.openadsdk.core.no.ia().le()) {
            return;
        }
        if (activity != null && activity.getComponentName() != null) {
            com.bytedance.sdk.openadsdk.core.ir.d.dq().dq(activity.getComponentName().getClassName());
        }
        if (activity == null || activity.getIntent() == null) {
            return;
        }
        q.dq().dq(activity.getIntent());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(@ForbidWrapParam Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(@ForbidWrapParam Activity activity) {
        if (this.iw.get()) {
            d(true);
        }
        if (!this.o.contains(activity.toString())) {
            this.o.add(activity.toString());
            this.iw.set(false);
            com.bytedance.sdk.openadsdk.dq.d.d.s();
        }
        mn();
        ce.p(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(@ForbidWrapParam Activity activity) {
        if (this.o.contains(activity.toString())) {
            this.o.remove(activity.toString());
            if (this.o.size() == 0) {
                this.iw.set(true);
                com.bytedance.sdk.openadsdk.dq.d.d.p();
                d(false);
            }
        }
        iw();
    }

    public void ox() {
        if (this.p != null) {
            this.p = null;
        }
    }

    public void p() {
        com.bytedance.sdk.openadsdk.core.ir.d.dq().d();
    }
}
