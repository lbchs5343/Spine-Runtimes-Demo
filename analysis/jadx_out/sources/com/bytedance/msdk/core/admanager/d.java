package com.bytedance.msdk.core.admanager;

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
public abstract class d extends com.bytedance.msdk.core.mn.p {

    /* renamed from: b, reason: collision with root package name */
    private final Application.ActivityLifecycleCallbacks f793b;
    private int cc;

    /* renamed from: d, reason: collision with root package name */
    private volatile boolean f794d;
    private boolean dq;
    private String hf;
    private SoftReference<Activity> io;
    private com.bytedance.msdk.d.s jo;
    private Handler m;
    private int mc;
    protected boolean ox;
    private SoftReference<Activity> pa;
    private int wi;
    private int xv;
    private TTAdConstant.RitScenes yo;

    public static class dq implements Runnable {

        /* renamed from: d, reason: collision with root package name */
        private final int f797d;
        private Toast dq;
        private final Handler ox;

        private dq(Toast toast, int i, Handler handler) {
            this.dq = toast;
            this.f797d = i;
            this.ox = handler;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f797d <= 0) {
                this.dq.cancel();
                return;
            }
            this.dq.cancel();
            Toast makeText = Toast.makeText(com.bytedance.msdk.core.dq.getContext(), this.f797d + "秒后播放下一个广告", 0);
            this.dq = makeText;
            makeText.show();
            Handler handler = this.ox;
            handler.postDelayed(new dq(this.dq, this.f797d - 1, handler), 1000L);
        }
    }

    public d(Context context, String str, int i) {
        super(context, str, i);
        this.dq = false;
        this.ox = true;
        this.f794d = false;
        this.pa = new SoftReference<>(null);
        this.io = new SoftReference<>(null);
        this.xv = 0;
        this.wi = 2;
        this.cc = 0;
        this.mc = 15000;
        this.f793b = new Application.ActivityLifecycleCallbacks() { // from class: com.bytedance.msdk.core.admanager.d.1
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
                Activity activity2;
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- onActivityCreated: activity: ".concat(String.valueOf(activity)));
                String name = activity.getClass().getName();
                if (activity.getClass() == PluginActivityWrapper.class && (activity2 = ((PluginActivityWrapper) activity).mOriginActivity) != null) {
                    com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- onActivityCreated: originActivity: ".concat(String.valueOf(activity2)));
                    name = activity2.getClass().getName();
                }
                Activity activity3 = (Activity) d.this.io.get();
                if (activity3 == null) {
                    com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- onActivityCreated: start transparent activity");
                    if (activity instanceof TTTransparentActivity) {
                        d.this.io = new SoftReference(activity);
                        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- onActivityCreated: start transparent activity, callSuperShowAd");
                        d dVar = d.this;
                        dVar.d(dVar.jo, activity, d.this.yo, d.this.hf);
                        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- onActivityCreated: end");
                        return;
                    }
                    return;
                }
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- onActivityCreated again, showingActivity: ".concat(String.valueOf(activity3)));
                if ((activity3 instanceof TTTransparentActivity) && iw.d(name)) {
                    com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- onActivityCreated again, is adn ad activity: ".concat(String.valueOf(activity)));
                    activity3.finish();
                    d.this.io = new SoftReference(activity);
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
        com.bytedance.msdk.core.no.d dVar = this.mn;
        if (dVar != null) {
            this.cc = dVar.mp();
            if (!f()) {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- inter full refresh is not enabled");
                return;
            }
            this.wi = this.mn.q();
            int kk = this.mn.kk(i);
            this.mc = kk;
            if (kk <= 0) {
                this.mc = 15000;
            }
            this.m = new Handler(Looper.getMainLooper());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cd() {
        Handler handler = this.m;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        Application dq2 = dq.C0046dq.dq();
        if (dq2 != null) {
            dq2.unregisterActivityLifecycleCallbacks(this.f793b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(com.bytedance.msdk.d.s sVar, Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        super.dq(sVar, activity, ritScenes, str);
    }

    private boolean d(com.bytedance.msdk.core.no.no noVar) {
        return noVar.wn() && noVar.dq() != 1;
    }

    private void dq(final Handler handler, final Activity activity) {
        int i = this.mc + AVMDLDataLoader.AVMDLErrorIsInvalidContentLenth;
        if (i <= 0) {
            return;
        }
        handler.postDelayed(new Runnable() { // from class: com.bytedance.msdk.core.admanager.d.2
            @Override // java.lang.Runnable
            public void run() {
                if (!d.this.dq(activity)) {
                    d.this.cd();
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
        int xv = xv();
        if (xv == 2) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- 插全屏轮播，无任何广告可用，停止轮播");
            com.bytedance.msdk.s.iw.dq(this.no, 81008);
            return false;
        }
        if (xv == 1) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- 插全屏轮播，仅有自定义adn广告可用，停止轮播");
            com.bytedance.msdk.s.iw.dq(this.no, 81009);
            return false;
        }
        int d2 = p.d(this.kk);
        if (d2 == 0) {
            return true;
        }
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- 插全屏轮播，命中了展示频控，停止轮播");
        com.bytedance.msdk.s.iw.dq(this.no, d2);
        return false;
    }

    private boolean dq(Activity activity, Activity activity2, com.bytedance.msdk.d.s sVar) {
        if (this.xv >= this.wi) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- 插全屏轮播，轮播次数已达上限: " + this.wi);
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
        if (s(sVar)) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- 插全屏轮播，展示的是自定义adn，则不轮播");
            return false;
        }
        if (!iw.dq(sVar.m(), sVar.qz(), sVar.cv())) {
            if (activity != null) {
                return true;
            }
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- 插全屏轮播，showingActivity是null，停止轮播");
            com.bytedance.msdk.s.iw.dq(this.no, 81010);
            return false;
        }
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- 插全屏轮播，当前展示的广告不支持轮播: " + sVar.m() + ", adtype: " + sVar.qz() + ", subType: " + sVar.cv());
        com.bytedance.msdk.s.iw.dq(this.no, 81011);
        return false;
    }

    private boolean f() {
        return this.cc != 0;
    }

    private void fw() {
        if (this.f794d) {
            return;
        }
        Application dq2 = dq.C0046dq.dq();
        if (dq2 == null) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- app is null, 插全屏轮播直接return");
            return;
        }
        dq2.unregisterActivityLifecycleCallbacks(this.f793b);
        dq2.registerActivityLifecycleCallbacks(this.f793b);
        this.f794d = true;
    }

    private boolean s(com.bytedance.msdk.d.s sVar) {
        return sVar.zc() && sVar.j() != 1;
    }

    private int xv() {
        boolean z;
        List<com.bytedance.msdk.core.no.no> list;
        List<com.bytedance.msdk.d.s> list2 = this.r;
        if (list2 == null || list2.size() <= 0) {
            z = false;
        } else {
            z = false;
            for (com.bytedance.msdk.d.s sVar : this.r) {
                if (sVar != null && sVar.u(this.kk) && !sVar.xi()) {
                    if (!s(sVar) && !iw.dq(sVar.m(), sVar.qz(), sVar.cv())) {
                        return 0;
                    }
                    z = true;
                }
            }
        }
        List<com.bytedance.msdk.d.s> list3 = this.cd;
        if (list3 != null && list3.size() > 0) {
            for (com.bytedance.msdk.d.s sVar2 : this.cd) {
                if (sVar2 != null && sVar2.u(this.kk) && !sVar2.xi()) {
                    if (!s(sVar2) && !iw.dq(sVar2.m(), sVar2.qz(), sVar2.cv())) {
                        return 0;
                    }
                    z = true;
                }
            }
        }
        List<com.bytedance.msdk.d.s> list4 = this.gh;
        if (list4 != null && list4.size() > 0) {
            for (com.bytedance.msdk.d.s sVar3 : this.gh) {
                if (sVar3 != null && sVar3.u(this.kk) && !sVar3.xi()) {
                    if (!s(sVar3) && !iw.dq(sVar3.m(), sVar3.qz(), sVar3.cv())) {
                        return 0;
                    }
                    z = true;
                }
            }
        }
        try {
            list = h_();
        } catch (Throwable th) {
            th.printStackTrace();
            list = null;
        }
        if (list != null && list.size() > 0) {
            for (com.bytedance.msdk.core.no.no noVar : list) {
                String cd = noVar.cd();
                if (noVar.r() && com.bytedance.msdk.core.s.dq.dq.dq().p(this.kk, cd, i()) && com.bytedance.msdk.core.s.dq.dq.dq().dq(cd, this.no, false) == 3) {
                    if (!d(noVar) && !iw.dq(noVar.jy(), noVar.mp(), noVar.iw())) {
                        return 0;
                    }
                    z = true;
                }
            }
        }
        return z ? 1 : 2;
    }

    public void dq(Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
    }

    @Override // com.bytedance.msdk.core.mn.p
    public void dq(com.bytedance.msdk.d.s sVar, Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        if (!f()) {
            super.dq(sVar, activity, ritScenes, str);
            return;
        }
        fw();
        this.pa = new SoftReference<>(activity);
        this.jo = sVar;
        this.yo = ritScenes;
        this.hf = str;
        Intent intent = new Intent(com.bytedance.msdk.core.dq.getContext(), (Class<?>) TTTransparentActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        com.bytedance.msdk.core.dq.getContext().startActivity(intent);
    }

    public final void e_() {
        if (f()) {
            this.ox = true;
            this.xv++;
            final Activity activity = this.pa.get();
            final Activity activity2 = this.io.get();
            final com.bytedance.msdk.d.s sVar = this.jo;
            if (!dq(activity2, activity, sVar)) {
                cd();
                return;
            }
            Handler handler = this.m;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
                dq(this.m, activity2);
                this.m.postDelayed(new Runnable() { // from class: com.bytedance.msdk.core.admanager.d.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!d.this.dq(activity2)) {
                            d.this.cd();
                            return;
                        }
                        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- 插全屏轮播 开始，先showingActivity finish");
                        d.this.ox = false;
                        activity2.finish();
                        sVar.p();
                        d.this.io = new SoftReference(null);
                        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- 插全屏轮播开始 showingActivity finish end");
                        d.this.dq = true;
                        d dVar = d.this;
                        dVar.dq(activity, dVar.yo, d.this.hf);
                    }
                }, this.mc);
            }
        }
    }

    public final void f_() {
        if (f()) {
            if (!this.ox) {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- 调用finish触发了close回调");
                return;
            }
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- 用户关闭了广告，停止轮播");
            Activity activity = this.io.get();
            if (activity instanceof TTTransparentActivity) {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- 用户关闭了广告，finish showingActivity");
                activity.finish();
                this.io = new SoftReference<>(null);
            }
            cd();
        }
    }

    public final void g_() {
        if (f()) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- 用户点击了广告，停止轮播");
            cd();
        }
    }

    @Override // com.bytedance.msdk.core.mn.p
    public boolean mn() {
        return this.dq;
    }
}
