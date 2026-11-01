package com.bytedance.sdk.openadsdk.core.component.reward.swiper;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import com.bytedance.sdk.component.utils.e;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.component.reward.d.iw;
import com.bytedance.sdk.openadsdk.core.component.reward.view.FullRewardExpressView;
import com.bytedance.sdk.openadsdk.core.gh.ig;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.h;
import com.bytedance.sdk.openadsdk.core.nativeexpress.o;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.t;
import com.bytedance.sdk.openadsdk.core.video.d.dq;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.res.s;
import com.bytedance.sdk.openadsdk.widget.TTProgressBar;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class FullSwiperItemView extends FrameLayout implements e.dq, o {
    private dq cd;

    /* renamed from: d, reason: collision with root package name */
    public FrameLayout f2652d;
    public ViewGroup dq;

    /* renamed from: f, reason: collision with root package name */
    private boolean f2653f;
    private final e fw;
    private boolean gh;
    private d i;
    private float ia;
    private Context ig;
    public FrameLayout iw;
    private boolean jy;
    private float kk;
    public TTProgressBar mn;
    private com.bytedance.sdk.openadsdk.core.component.reward.iw.dq mp;
    private FullRewardExpressView no;
    private com.bytedance.sdk.openadsdk.core.component.reward.swiper.dq o;
    public FrameLayout ox;
    public FrameLayout p;
    private int q;
    private int r;
    public FrameLayout s;

    public interface d {
        void dq(View view, float f2, float f3);
    }

    public interface dq {
        void dq();
    }

    public static class ox implements dq.InterfaceC0195dq {

        /* renamed from: d, reason: collision with root package name */
        private final dq f2654d;
        private final dq.InterfaceC0195dq dq;
        private boolean ox = false;
        private final int p;
        private final e s;

        public interface dq {
            void dq();

            void dq(long j, long j2);
        }

        public ox(dq.InterfaceC0195dq interfaceC0195dq, int i, dq dqVar, e eVar) {
            this.dq = interfaceC0195dq;
            this.f2654d = dqVar;
            this.p = i;
            this.s = eVar;
        }

        @Override // com.bytedance.sdk.openadsdk.core.video.d.dq.InterfaceC0195dq
        public void d() {
            dq.InterfaceC0195dq interfaceC0195dq = this.dq;
            if (interfaceC0195dq != null) {
                interfaceC0195dq.d();
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.video.d.dq.InterfaceC0195dq
        public void dq() {
            this.ox = false;
            dq.InterfaceC0195dq interfaceC0195dq = this.dq;
            if (interfaceC0195dq != null) {
                interfaceC0195dq.dq();
            }
            dq dqVar = this.f2654d;
            if (dqVar != null) {
                dqVar.dq();
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.video.d.dq.InterfaceC0195dq
        public void dq(int i, String str) {
            this.ox = false;
            dq.InterfaceC0195dq interfaceC0195dq = this.dq;
            if (interfaceC0195dq != null) {
                interfaceC0195dq.dq(i, str);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.video.d.dq.InterfaceC0195dq
        public void dq(long j, long j2) {
            this.s.removeMessages(102);
            dq.InterfaceC0195dq interfaceC0195dq = this.dq;
            if (interfaceC0195dq != null) {
                interfaceC0195dq.dq(j, j2);
            }
            dq dqVar = this.f2654d;
            if (dqVar != null) {
                dqVar.dq(j, j2);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.video.d.dq.InterfaceC0195dq
        public void ox() {
            dq.InterfaceC0195dq interfaceC0195dq = this.dq;
            if (interfaceC0195dq != null) {
                interfaceC0195dq.ox();
            }
        }
    }

    public FullSwiperItemView(Context context, com.bytedance.sdk.openadsdk.core.component.reward.swiper.dq dqVar, float f2, float f3) {
        super(context);
        this.fw = new e(Looper.getMainLooper(), this);
        this.o = dqVar;
        this.ia = f2;
        this.kk = f3;
        this.ig = context;
        setBackgroundColor(0);
        ig();
        this.r = c.kk(dqVar.dq());
        this.gh = wp.d().dq(dqVar.dq(), this.r);
        mp();
        this.no = new FullRewardExpressView(this.dq.getContext(), this.o.dq(), h.dq(8, String.valueOf(this.r), this.ia, this.kk), this.o.d(), this.gh);
    }

    public void cd() {
        e eVar = this.fw;
        if (eVar != null) {
            eVar.removeMessages(102);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public int d() {
        com.bytedance.sdk.openadsdk.core.component.reward.iw.dq dqVar = this.mp;
        if (dqVar == null || !this.f2653f) {
            return 2;
        }
        if (dqVar.ha()) {
            return 5;
        }
        if (this.mp.le()) {
            return 1;
        }
        if (this.mp.cv()) {
            return 2;
        }
        this.mp.wp();
        return 3;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void d(int i) {
    }

    public void d(boolean z) {
        FullRewardExpressView fullRewardExpressView = this.no;
        if (fullRewardExpressView == null) {
            return;
        }
        if (fullRewardExpressView.i()) {
            Context context = this.ig;
            if (context instanceof TTBaseVideoActivity) {
                ((TTBaseVideoActivity) context).r();
            }
        } else {
            this.no.dq((ViewGroup) this.f2652d, false);
        }
        this.jy = true;
        this.o.ox(z);
        jy();
        this.mn.setVisibility(8);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public long dq() {
        return this.mp.no();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void dq(float f2) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void dq(float f2, float f3, float f4, float f5, int i) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void dq(int i) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void dq(int i, String str) {
    }

    @Override // com.bytedance.sdk.component.utils.e.dq
    public void dq(Message message) {
        if (message.what != 102) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.component.reward.swiper.dq dqVar = this.o;
        if (dqVar != null) {
            dqVar.ia();
        }
        Context context = this.ig;
        if (context instanceof TTBaseVideoActivity) {
            ((TTBaseVideoActivity) context).ig();
        }
        dq dqVar2 = this.cd;
        if (dqVar2 != null) {
            dqVar2.dq();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void dq(boolean z) {
        if (this.gh != z) {
            this.gh = z;
            com.bytedance.sdk.openadsdk.core.component.reward.iw.dq dqVar = this.mp;
            if (dqVar != null) {
                dqVar.d(z);
            }
            Context context = this.ig;
            if (context instanceof TTBaseVideoActivity) {
                ((TTBaseVideoActivity) context).yy().dq().d();
            }
            dq dqVar2 = this.cd;
            if (dqVar2 != null) {
                dqVar2.dq();
            }
        }
    }

    public void f() {
        com.bytedance.sdk.openadsdk.core.component.reward.iw.dq dqVar = this.mp;
        if (dqVar == null) {
            return;
        }
        dqVar.iw();
    }

    public void fw() {
        com.bytedance.sdk.openadsdk.core.component.reward.iw.dq dqVar = this.mp;
        if (dqVar != null) {
            dqVar.ia();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public long getActualPlayDuration() {
        return 0L;
    }

    public void gh() {
        FullRewardExpressView fullRewardExpressView = this.no;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.mp();
        }
        com.bytedance.sdk.openadsdk.core.component.reward.iw.dq dqVar = this.mp;
        if (dqVar != null) {
            dqVar.kk();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void ia() {
    }

    public void ig() {
        View ig = s.ig(this.ig);
        addView(ig);
        this.dq = (ViewGroup) ig.findViewById(2114387897);
        this.f2652d = (FrameLayout) ig.findViewById(2114387783);
        this.ox = (FrameLayout) ig.findViewById(2114387817);
        this.p = (FrameLayout) ig.findViewById(2114387673);
        this.s = (FrameLayout) ig.findViewById(2114387826);
        this.iw = (FrameLayout) ig.findViewById(2114387682);
        this.mn = (TTProgressBar) ig.findViewById(2114387772);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void iw() {
        ig.dq().ox(this.o.dq(), "stats_reward_full_click_express_close");
        Context context = this.ig;
        if (context instanceof TTBaseVideoActivity) {
            ((TTBaseVideoActivity) context).yy().dq().dq();
        }
        JSONObject jSONObject = new JSONObject();
        try {
            j dq2 = this.o.dq();
            if (dq2 != null && dq2.eo() != null) {
                jSONObject.put("refresh_num", this.o.dq().eo().ox());
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        ig.dq().dq(this.o.dq(), "stats_reward_full_click_native_close", jSONObject);
        dq dqVar = this.cd;
        if (dqVar != null) {
            dqVar.dq();
        }
    }

    public void jy() {
        if (this.mp != null && this.jy) {
            this.o.o();
            this.no.f();
            this.f2653f = true;
            if (j.d(this.o.dq())) {
                this.fw.sendEmptyMessageDelayed(102, PushUIConfig.dismissTime);
            }
            this.o.dq(this.no);
            if (this.no.i()) {
                return;
            }
            this.mp.dq(this.o.no());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void kk() {
        com.bytedance.sdk.openadsdk.core.component.reward.p.dq yy;
        dq dqVar = this.cd;
        if (dqVar != null) {
            dqVar.dq();
        }
        Context context = this.ig;
        if (!(context instanceof TTBaseVideoActivity) || (yy = ((TTBaseVideoActivity) context).yy()) == null || yy.dq() == null) {
            return;
        }
        yy.dq().ox();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void mn() {
        dq dqVar = this.cd;
        if (dqVar != null) {
            dqVar.dq();
        }
        JSONObject jSONObject = new JSONObject();
        try {
            j dq2 = this.o.dq();
            if (dq2 != null && dq2.eo() != null) {
                jSONObject.put("refresh_num", this.o.dq().eo().ox());
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        ig.dq().dq(this.o.dq(), "stats_reward_full_click_express_close", jSONObject);
        Context context = this.ig;
        if (context instanceof Activity) {
            ((Activity) context).finish();
        }
    }

    public void mp() {
        j dq2 = this.o.dq();
        if (dq2 == null) {
            return;
        }
        float es = dq2.es();
        int ho = dq2.ho();
        float pn = dq2.pn();
        float[] dq3 = com.bytedance.sdk.openadsdk.core.component.reward.s.d.dq(this.ig.getApplicationContext(), dq2.es(), dq2.ho());
        float f2 = dq3[0];
        float f3 = dq3[1];
        if (es == 100.0f) {
            this.ia = f2;
            this.kk = f3;
            return;
        }
        int[] dq4 = com.bytedance.sdk.openadsdk.core.component.reward.s.d.dq(this.ig.getApplicationContext(), es, pn, ho);
        int i = dq4[0];
        int i2 = dq4[1];
        int i3 = dq4[2];
        int i4 = dq4[3];
        this.ia = (int) ((f2 - i) - i3);
        this.kk = (int) ((f3 - i2) - i4);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        setLayoutParams(layoutParams);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void no() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void o() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public int ox() {
        com.bytedance.sdk.openadsdk.core.component.reward.iw.dq dqVar = this.mp;
        if (dqVar == null) {
            return 0;
        }
        return (int) (dqVar.no() / 1000);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void p() {
    }

    public void q() {
        if (this.o == null) {
            return;
        }
        this.mn.setVisibility(0);
        this.no.setExpressInteractionListener(new com.bytedance.sdk.openadsdk.core.nativeexpress.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.swiper.FullSwiperItemView.1
            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.dq
            public void dq(View view, float f2, float f3) {
                if (FullSwiperItemView.this.i != null) {
                    FullSwiperItemView.this.i.dq(view, f2, f3);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.dq
            public void dq(View view, int i) {
                super.dq(view, i);
            }
        });
        this.no.setExpressVideoListenerProxy(this);
        this.no.setInteractListener(this.cd);
        this.no.setOnVideoSizeChangeListener(new FullRewardExpressView.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.swiper.FullSwiperItemView.2
            @Override // com.bytedance.sdk.openadsdk.core.component.reward.view.FullRewardExpressView.dq
            public void dq(int i) {
                FullSwiperItemView.this.q = i;
            }
        });
        if (this.no.getParent() != null) {
            ((ViewGroup) this.no.getParent()).removeView(this.no);
        }
        this.s.addView(this.no);
        this.mp = new com.bytedance.sdk.openadsdk.core.component.reward.iw.dq(this.dq.getContext(), this.ox, this.o.dq(), null);
        this.mp.dq(new ox(this.o.s(), t.ox(this.o.dq()), new ox.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.swiper.FullSwiperItemView.3
            @Override // com.bytedance.sdk.openadsdk.core.component.reward.swiper.FullSwiperItemView.ox.dq
            public void dq() {
                if (FullSwiperItemView.this.ig instanceof TTBaseVideoActivity) {
                    ((TTBaseVideoActivity) FullSwiperItemView.this.ig).dq();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.reward.swiper.FullSwiperItemView.ox.dq
            public void dq(long j, long j2) {
                iw uh;
                if (FullSwiperItemView.this.no == null || !(FullSwiperItemView.this.ig instanceof TTBaseVideoActivity) || (uh = ((TTBaseVideoActivity) FullSwiperItemView.this.ig).uh()) == null) {
                    return;
                }
                uh.d(j);
                FullSwiperItemView.this.no.dq(String.valueOf(uh.n()), (int) (uh.op() / 1000), 0, j == j2 || uh.c());
            }
        }, this.fw));
        this.mp.d(this.gh);
        this.no.setVideoController(this.mp);
        this.o.dq(this.ox, this.p, this.no);
        this.no.fw();
        this.no.cd();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void s() {
    }

    public void setOnSwiperItemInteractListener(dq dqVar) {
        this.cd = dqVar;
    }

    public void setOnSwiperItemRenderResultListener(d dVar) {
        this.i = dVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void setPauseFromExpressView(boolean z) {
    }
}
