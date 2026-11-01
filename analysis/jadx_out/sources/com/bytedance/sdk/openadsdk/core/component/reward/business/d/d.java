package com.bytedance.sdk.openadsdk.core.component.reward.business.d;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.Toast;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq;
import com.bytedance.sdk.openadsdk.core.component.reward.dq.s;
import com.bytedance.sdk.openadsdk.core.component.reward.ox.o;
import com.bytedance.sdk.openadsdk.core.fw;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.ob;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.f.d.d.f;
import com.bytedance.sdk.openadsdk.h.mn;
import com.bytedance.sdk.openadsdk.widget.TTProgressBar;
import g.tn;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d implements dq {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq.dq f2532d;
    private final dq.InterfaceC0139dq dq;
    private boolean ia;
    private int iw;
    private final AtomicBoolean ox = new AtomicBoolean(false);
    private final AtomicBoolean p = new AtomicBoolean(false);
    private final AtomicBoolean s = new AtomicBoolean(false);
    private int mn = 0;
    private boolean kk = true;
    private String o = "";
    private String no = "";
    private String ig = "";
    private String mp = "";
    private String q = "";

    public d(dq.InterfaceC0139dq interfaceC0139dq) {
        this.dq = interfaceC0139dq;
    }

    private TTProgressBar dq(Context context) {
        TTProgressBar tTProgressBar = new TTProgressBar(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA, MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
        layoutParams.gravity = 17;
        tTProgressBar.setLayoutParams(layoutParams);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(tn.v("#77000000", gradientDrawable, context, 2.0f));
        tTProgressBar.setBackground(gradientDrawable);
        int ox = ce.ox(context, 10.0f);
        tTProgressBar.setPadding(ox, ox, ox, ox);
        tTProgressBar.setIndeterminateDrawable(r.ox(context, "tt_video_loading_progress_bar"));
        return tTProgressBar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(Bundle bundle) {
        boolean z = bundle.getBoolean(TTRewardVideoAd.RewardAdPlayAgainController.KEY_PLAY_AGAIN_ALLOW);
        this.o = bundle.getString(TTRewardVideoAd.RewardAdPlayAgainController.KEY_PLAY_AGAIN_REWARD_NAME);
        this.no = bundle.getString(TTRewardVideoAd.RewardAdPlayAgainController.KEY_PLAY_AGAIN_REWARD_AMOUNT);
        this.q = bundle.getString("extra_info");
        this.kk = z;
        if (z) {
            mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.business.d.d.2
                @Override // java.lang.Runnable
                public void run() {
                    d.this.dq.dq(true, d.this.o, d.this.no);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void kk() {
        try {
            this.ox.set(true);
            String p = ob.p(this.dq.dq());
            if (TextUtils.isEmpty(p)) {
                p = String.valueOf(this.iw);
            }
            if (TextUtils.isEmpty(p)) {
                p = String.valueOf(c.kk(this.dq.dq()));
            }
            s.dq().dq(com.bytedance.sdk.openadsdk.core.component.reward.dq.dq.d.dq().dq(p), ob.ox(this.dq.dq()), this.mn, new com.bytedance.sdk.openadsdk.core.component.reward.dq.ox(new com.bytedance.sdk.openadsdk.r.dq.d.dq.mn(null) { // from class: com.bytedance.sdk.openadsdk.core.component.reward.business.d.d.3
                @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.mn
                public void d(f fVar) {
                }

                @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.mn
                public void dq() {
                }

                @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.mn
                public void dq(int i, String str) {
                    mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.business.d.d.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            d.this.p("当前无新视频，请点击重试");
                            d.this.ox.set(false);
                            if (d.this.f2532d != null) {
                                d.this.f2532d.s();
                            }
                            d.this.dq.dq(8, null);
                        }
                    });
                }

                @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.mn
                public void dq(final f fVar) {
                    mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.business.d.d.3.2
                        @Override // java.lang.Runnable
                        public void run() {
                            f fVar2 = fVar;
                            if (fVar2 instanceof com.bytedance.sdk.openadsdk.core.component.reward.ox) {
                                com.bytedance.sdk.openadsdk.core.component.reward.ox oxVar = (com.bytedance.sdk.openadsdk.core.component.reward.ox) fVar2;
                                oxVar.ox(true);
                                oxVar.dq(d.this.iw);
                                oxVar.d(d.this.mn + 1);
                                oxVar.ox(d.this.dq.d());
                                if (!TextUtils.isEmpty(d.this.o) && !TextUtils.isEmpty(d.this.no)) {
                                    oxVar.d(d.this.no);
                                    oxVar.dq(d.this.o);
                                }
                                oxVar.p(d.this.ia);
                                oxVar.dq(d.this.dq.getActivity());
                                d.this.dq.s();
                                d.this.p.set(true);
                            } else {
                                d.this.p("当前无新视频，请点击重试");
                                d.this.ox.set(false);
                            }
                            d.this.dq.dq(8, null);
                        }
                    });
                }
            }));
        } catch (Throwable unused) {
            this.ox.set(false);
            p("当前无新视频，请退出后重试");
        }
    }

    private void no() {
        com.bytedance.sdk.component.o.mn.d(new kk("executeMultiProcessCallback") { // from class: com.bytedance.sdk.openadsdk.core.component.reward.business.d.d.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    fw.dq.dq(com.bytedance.sdk.openadsdk.core.multipro.aidl.dq.dq(wp.getContext()).dq(5)).d(ob.d(d.this.dq.d()), "recycleRes", null);
                } catch (Throwable unused) {
                }
            }
        }, 5);
    }

    private boolean o() {
        if (!ob.d(this.dq.dq())) {
            return false;
        }
        if (this.ox.get()) {
            return true;
        }
        o oVar = new o() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.business.d.d.4
            @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.o
            public void d() {
                if (d.this.ox.get()) {
                    return;
                }
                com.bytedance.sdk.openadsdk.core.ig.ox.dq(d.this.dq.dq(), "reward_endcard", "popup_cancel", (String) null);
                d.this.dq.ox();
            }

            @Override // com.bytedance.sdk.openadsdk.core.component.reward.ox.o
            public void dq() {
                if (d.this.ox.get()) {
                    return;
                }
                if (d.this.f2532d != null) {
                    d.this.f2532d.p();
                }
                d.this.kk();
                com.bytedance.sdk.openadsdk.core.ig.ox.dq(d.this.dq.dq(), "reward_endcard", "reward_again", "popup");
            }
        };
        com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq.d dVar = new com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq.d(this.dq.getActivity(), this.dq.dq());
        this.f2532d = dVar;
        dVar.p(this.o);
        this.f2532d.ox(this.no);
        this.f2532d.dq(this.q);
        this.dq.p();
        return this.f2532d.dq(oVar).ox();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(final String str) {
        dq.InterfaceC0139dq interfaceC0139dq = this.dq;
        if (interfaceC0139dq == null || interfaceC0139dq.getActivity() == null) {
            return;
        }
        mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.business.d.d.5
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(d.this.dq.getActivity(), str, 0).show();
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq
    public void d(int i) {
        this.iw = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq
    public void d(String str) {
        this.mp = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq
    public void d(boolean z) {
        this.ia = z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq
    public boolean d() {
        return this.p.get();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq
    public void dq(int i) {
        this.mn = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq
    public void dq(String str) {
        this.ig = str;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq
    public void dq(boolean z) {
        this.s.set(z);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq
    public boolean dq() {
        return this.s.get();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq
    public String ia() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("isPlayAgain", this.s.get());
            jSONObject.put("mSourceRitId", this.iw);
            jSONObject.put("mNowPlayAgainCount", this.mn);
            jSONObject.put("isCustomPlayAgain", this.ia);
            jSONObject.put("isCanPlayAgain", this.kk);
            jSONObject.put("mPlayAgainRewardName", this.o);
            jSONObject.put("mPlayAgainRewardAmount", this.no);
            jSONObject.put("mLastRewardName", this.ig);
            jSONObject.put("mLastRewardAmount", this.mp);
        } catch (Exception unused) {
        }
        return jSONObject.toString();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq
    public String iw() {
        return this.ig;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq
    public String mn() {
        return this.mp;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq
    public void ox() {
        com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq.dq dqVar = this.f2532d;
        if (dqVar != null) {
            dqVar.ox();
        }
        no();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq
    public void ox(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.s.set(jSONObject.getBoolean("isPlayAgain"));
            this.iw = jSONObject.optInt("mSourceRitId");
            this.mn = jSONObject.optInt("mNowPlayAgainCount");
            this.ia = jSONObject.optBoolean("isCustomPlayAgain");
            this.kk = jSONObject.optBoolean("isCanPlayAgain");
            this.o = jSONObject.optString("mPlayAgainRewardName");
            this.no = jSONObject.optString("mPlayAgainRewardAmount");
            this.ig = jSONObject.optString("mLastRewardName");
            this.no = jSONObject.optString("mPlayAgainRewardAmount");
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq
    public boolean ox(int i) {
        dq.InterfaceC0139dq interfaceC0139dq = this.dq;
        if (interfaceC0139dq == null || interfaceC0139dq.getActivity() == null || this.dq.dq() == null || this.ox.get() || !this.kk) {
            return false;
        }
        if (i == 1) {
            dq.InterfaceC0139dq interfaceC0139dq2 = this.dq;
            interfaceC0139dq2.dq(0, dq(interfaceC0139dq2.getActivity()));
            kk();
            com.bytedance.sdk.openadsdk.core.ig.ox.dq(this.dq.dq(), "reward_endcard", "reward_again", "endcard");
        } else {
            if (i == 2) {
                return o();
            }
            if (i == 3) {
                dq.InterfaceC0139dq interfaceC0139dq3 = this.dq;
                interfaceC0139dq3.dq(0, dq(interfaceC0139dq3.getActivity()));
                kk();
                com.bytedance.sdk.openadsdk.core.ig.ox.dq(this.dq.dq(), "reward_endcard", "reward_again", "videoplaying");
            }
        }
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq
    public void p() {
        dq.InterfaceC0139dq interfaceC0139dq = this.dq;
        if (interfaceC0139dq == null || interfaceC0139dq.getActivity() == null || this.dq.dq() == null || !ob.dq(this.dq.dq())) {
            return;
        }
        if (!this.ia) {
            boolean z = this.mn == 0;
            this.dq.dq(z, null, null);
            this.kk = z;
        } else {
            this.kk = false;
            this.dq.dq(false, this.o, this.no);
            final int i = this.mn + 1;
            com.bytedance.sdk.component.o.mn.d(new kk("executeMultiProcessCallback") { // from class: com.bytedance.sdk.openadsdk.core.component.reward.business.d.d.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        fw dq = fw.dq.dq(com.bytedance.sdk.openadsdk.core.multipro.aidl.dq.dq(wp.getContext()).dq(5));
                        Bundle bundle = new Bundle();
                        bundle.putInt("callback_extra_key_next_play_again_count", i);
                        d.this.dq(dq.d(ob.d(d.this.dq.d()), "getPlayAgainCondition", bundle));
                    } catch (Throwable unused) {
                    }
                }
            }, 5);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq
    public boolean s() {
        com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq.dq dqVar = this.f2532d;
        if (dqVar == null) {
            return false;
        }
        return dqVar.d();
    }
}
