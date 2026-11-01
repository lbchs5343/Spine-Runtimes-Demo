package com.bytedance.msdk.ox.p;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.msdk.api.activity.TTTransparentActivity;
import com.bytedance.msdk.core.dq;
import com.bytedance.pangle.wrapper.PluginActivityWrapper;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.lang.ref.SoftReference;
import java.util.List;

/* loaded from: classes.dex */
public abstract class p extends o {
    private final Application.ActivityLifecycleCallbacks bl;

    /* renamed from: d, reason: collision with root package name */
    private volatile boolean f1223d;
    private boolean dq;

    /* renamed from: e, reason: collision with root package name */
    private int f1224e;
    private SoftReference<Activity> gh;
    private TTAdConstant.RitScenes h;
    private Handler i;
    private String ji;
    protected boolean jy;
    private int k;
    private com.bytedance.msdk.d.s kx;
    private int le;
    private SoftReference<Activity> r;
    private int wp;

    public static class dq implements Runnable {

        /* renamed from: d, reason: collision with root package name */
        private final int f1227d;
        private Toast dq;
        private final Handler ox;

        private dq(Toast toast, int i, Handler handler) {
            this.dq = toast;
            this.f1227d = i;
            this.ox = handler;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f1227d <= 0) {
                this.dq.cancel();
                return;
            }
            this.dq.cancel();
            Toast makeText = Toast.makeText(com.bytedance.msdk.core.dq.getContext(), this.f1227d + "秒后播放下一个广告", 0);
            this.dq = makeText;
            makeText.show();
            Handler handler = this.ox;
            handler.postDelayed(new dq(this.dq, this.f1227d - 1, handler), 1000L);
        }
    }

    public p(Context context) {
        super(context);
        this.dq = false;
        this.jy = true;
        this.f1223d = false;
        this.gh = new SoftReference<>(null);
        this.r = new SoftReference<>(null);
        this.le = 0;
        this.k = 2;
        this.wp = 0;
        this.f1224e = 15000;
        this.bl = new Application.ActivityLifecycleCallbacks() { // from class: com.bytedance.msdk.ox.p.p.1
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
                Activity activity2;
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- onActivityCreated: activity: ".concat(String.valueOf(activity)));
                String name = activity.getClass().getName();
                if (activity.getClass() == PluginActivityWrapper.class && (activity2 = ((PluginActivityWrapper) activity).mOriginActivity) != null) {
                    com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- onActivityCreated: originActivity: ".concat(String.valueOf(activity2)));
                    name = activity2.getClass().getName();
                }
                Activity activity3 = (Activity) p.this.r.get();
                if (activity3 == null) {
                    com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- onActivityCreated: start transparent activity");
                    if (activity instanceof TTTransparentActivity) {
                        p.this.r = new SoftReference(activity);
                        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- onActivityCreated: start transparent activity, callSuperShowAd");
                        p pVar = p.this;
                        pVar.d(pVar.kx, activity, p.this.h, p.this.ji);
                        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- onActivityCreated: end");
                        return;
                    }
                    return;
                }
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- onActivityCreated again, showingActivity: ".concat(String.valueOf(activity3)));
                if ((activity3 instanceof TTTransparentActivity) && com.bytedance.msdk.core.admanager.iw.d(name)) {
                    com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- onActivityCreated again, is adn ad activity: ".concat(String.valueOf(activity)));
                    activity3.finish();
                    p.this.r = new SoftReference(activity);
                } else {
                    com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- onActivityCreated again, is not adn ad activity");
                }
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- onActivityCreated: end 2");
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(com.bytedance.msdk.d.s sVar, Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        super.dq(sVar, activity, ritScenes, str);
    }

    private void dq(final Handler handler, final Activity activity) {
        int i = this.f1224e + AVMDLDataLoader.AVMDLErrorIsInvalidContentLenth;
        if (i <= 0) {
            return;
        }
        handler.postDelayed(new Runnable() { // from class: com.bytedance.msdk.ox.p.p.2
            @Override // java.lang.Runnable
            public void run() {
                if (!p.this.dq(activity)) {
                    p.this.s();
                    return;
                }
                Toast makeText = Toast.makeText(com.bytedance.msdk.core.dq.getContext(), "2秒后播放下一个广告", 0);
                makeText.show();
                Handler handler2 = handler;
                handler2.postDelayed(new dq(makeText, 1, handler2), 1000L);
            }
        }, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean dq(Activity activity) {
        if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- 插全屏轮播，showingActivity正在finish或已经destroy，停止轮播");
            return false;
        }
        int iw = iw();
        if (iw == 2) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- 插全屏轮播，无任何广告可用，停止轮播");
            com.bytedance.msdk.s.iw.dq(this.iw, 81008);
            return false;
        }
        if (iw == 1) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- 插全屏轮播，仅有自定义adn广告可用，停止轮播");
            com.bytedance.msdk.s.iw.dq(this.iw, 81009);
            return false;
        }
        int d2 = d.d(this.s);
        if (d2 == 0) {
            return true;
        }
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- 插全屏轮播，命中了展示频控，停止轮播");
        com.bytedance.msdk.s.iw.dq(this.iw, d2);
        return false;
    }

    private boolean dq(Activity activity, Activity activity2, com.bytedance.msdk.d.s sVar) {
        if (this.le >= this.k) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- 插全屏轮播，轮播次数已达上限: " + this.k);
            return false;
        }
        if (activity2 == null) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- 插全屏轮播 停止轮播 developerActivity为null");
            return false;
        }
        if (sVar == null) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- 插全屏轮播，ttBaseAd为null，不轮播");
            return false;
        }
        if (p(sVar)) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- 插全屏轮播，展示的是自定义adn，则不轮播");
            return false;
        }
        if (!com.bytedance.msdk.core.admanager.iw.dq(sVar.m(), sVar.qz(), sVar.cv())) {
            if (activity != null) {
                return true;
            }
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- 插全屏轮播，showingActivity是null，停止轮播");
            com.bytedance.msdk.s.iw.dq(this.iw, 81010);
            return false;
        }
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- 插全屏轮播，当前展示的广告不支持轮播: " + sVar.m() + ", adtype: " + sVar.qz() + ", subType: " + sVar.cv());
        com.bytedance.msdk.s.iw.dq(this.iw, 81011);
        return false;
    }

    private boolean dq(com.bytedance.msdk.core.no.no noVar) {
        return noVar.wn() && noVar.dq() != 1;
    }

    private int iw() {
        List<com.bytedance.msdk.d.s> list;
        List<com.bytedance.msdk.d.s> list2;
        List<com.bytedance.msdk.d.s> list3;
        boolean z;
        com.bytedance.msdk.ox.s.dq.d dVar = this.ox;
        List<com.bytedance.msdk.core.no.no> list4 = null;
        if (dVar != null) {
            list = dVar.mn();
            list2 = this.ox.o();
            list3 = this.ox.ia();
        } else {
            list = null;
            list2 = null;
            list3 = null;
        }
        if (list == null || list.size() <= 0) {
            z = false;
        } else {
            z = false;
            for (com.bytedance.msdk.d.s sVar : list) {
                if (sVar != null && sVar.u(this.s) && !sVar.xi()) {
                    if (!p(sVar) && !com.bytedance.msdk.core.admanager.iw.dq(sVar.m(), sVar.qz(), sVar.cv())) {
                        return 0;
                    }
                    z = true;
                }
            }
        }
        if (list3 != null && list3.size() > 0) {
            for (com.bytedance.msdk.d.s sVar2 : list3) {
                if (sVar2 != null && sVar2.u(this.s) && !sVar2.xi()) {
                    if (!p(sVar2) && !com.bytedance.msdk.core.admanager.iw.dq(sVar2.m(), sVar2.qz(), sVar2.cv())) {
                        return 0;
                    }
                    z = true;
                }
            }
        }
        if (list2 != null && list2.size() > 0) {
            for (com.bytedance.msdk.d.s sVar3 : list2) {
                if (sVar3 != null && sVar3.u(this.s) && !sVar3.xi()) {
                    if (!p(sVar3) && !com.bytedance.msdk.core.admanager.iw.dq(sVar3.m(), sVar3.qz(), sVar3.cv())) {
                        return 0;
                    }
                    z = true;
                }
            }
        }
        try {
            list4 = h_();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (list4 != null && list4.size() > 0) {
            for (com.bytedance.msdk.core.no.no noVar : list4) {
                String cd = noVar.cd();
                if (noVar.r() && com.bytedance.msdk.core.s.dq.dq.dq().p(this.s, cd, i()) && com.bytedance.msdk.core.s.dq.dq.dq().dq(cd, this.iw, false) == 3) {
                    if (!dq(noVar) && !com.bytedance.msdk.core.admanager.iw.dq(noVar.jy(), noVar.mp(), noVar.iw())) {
                        return 0;
                    }
                    z = true;
                }
            }
        }
        return z ? 1 : 2;
    }

    private boolean ox() {
        return this.wp != 0;
    }

    private void p() {
        if (this.f1223d) {
            return;
        }
        Application dq2 = dq.C0046dq.dq();
        if (dq2 == null) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- app is null, 插全屏轮播直接return");
            return;
        }
        dq2.unregisterActivityLifecycleCallbacks(this.bl);
        dq2.registerActivityLifecycleCallbacks(this.bl);
        this.f1223d = true;
    }

    private boolean p(com.bytedance.msdk.d.s sVar) {
        return sVar.zc() && sVar.j() != 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        Handler handler = this.i;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        Application dq2 = dq.C0046dq.dq();
        if (dq2 != null) {
            dq2.unregisterActivityLifecycleCallbacks(this.bl);
        }
    }

    public void d(com.bytedance.msdk.api.dq.d dVar) {
        dq(dVar);
        com.bytedance.msdk.core.no.d dVar2 = this.mn;
        if (dVar2 != null) {
            this.wp = dVar2.mp();
            if (!ox()) {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- inter full refresh is not enabled");
                return;
            }
            this.k = this.mn.q();
            com.bytedance.msdk.core.no.d dVar3 = this.mn;
            int kk = dVar3.kk(dVar3.ce());
            this.f1224e = kk;
            if (kk <= 0) {
                this.f1224e = 15000;
            }
            this.i = new Handler(Looper.getMainLooper());
        }
    }

    public void dq(Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
    }

    @Override // com.bytedance.msdk.ox.p.o
    public void dq(com.bytedance.msdk.d.s sVar, Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        if (!ox()) {
            super.dq(sVar, activity, ritScenes, str);
            return;
        }
        p();
        this.gh = new SoftReference<>(activity);
        this.kx = sVar;
        this.h = ritScenes;
        this.ji = str;
        Intent intent = new Intent(com.bytedance.msdk.core.dq.getContext(), (Class<?>) TTTransparentActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        com.bytedance.msdk.core.dq.getContext().startActivity(intent);
    }

    public final void ia() {
        if (ox()) {
            this.jy = true;
            this.le++;
            final Activity activity = this.gh.get();
            final Activity activity2 = this.r.get();
            final com.bytedance.msdk.d.s sVar = this.kx;
            if (!dq(activity2, activity, sVar)) {
                s();
                return;
            }
            Handler handler = this.i;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
                dq(this.i, activity2);
                this.i.postDelayed(new Runnable() { // from class: com.bytedance.msdk.ox.p.p.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!p.this.dq(activity2)) {
                            p.this.s();
                            return;
                        }
                        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- 插全屏轮播 开始，先showingActivity finish");
                        p.this.jy = false;
                        activity2.finish();
                        sVar.p();
                        p.this.r = new SoftReference(null);
                        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- 插全屏轮播开始 showingActivity finish end");
                        p.this.dq = true;
                        p pVar = p.this;
                        pVar.dq(activity, pVar.h, p.this.ji);
                    }
                }, this.f1224e);
            }
        }
    }

    public final void k() {
        if (ox()) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- 用户点击了广告，停止轮播");
            s();
        }
    }

    public final void le() {
        if (ox()) {
            if (!this.jy) {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- 调用finish触发了close回调");
                return;
            }
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- 用户关闭了广告，停止轮播");
            Activity activity = this.r.get();
            if (activity instanceof TTTransparentActivity) {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- 用户关闭了广告，finish showingActivity");
                activity.finish();
                this.r = new SoftReference<>(null);
            }
            s();
        }
    }

    @Override // com.bytedance.msdk.ox.p.o
    public boolean mn() {
        return this.dq;
    }
}
