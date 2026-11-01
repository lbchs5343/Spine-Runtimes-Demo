package com.bytedance.sdk.openadsdk.core.component.reward.layout;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.component.reward.view.PlayableEndcardFrameLayout;
import com.bytedance.sdk.openadsdk.core.component.reward.view.lp.RewardLpBottomView;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.ir.dq;
import com.bytedance.sdk.openadsdk.core.le;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.ugeno.ia.dq;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public class dq extends d {
    private AtomicBoolean cd;

    /* renamed from: f, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.ugeno.kk.dq f2611f;
    private com.bytedance.sdk.openadsdk.core.ugeno.o.d fw;
    private String gh;
    private AtomicBoolean i;
    private com.bytedance.sdk.openadsdk.core.ugeno.o.p jy;
    private com.bytedance.sdk.openadsdk.core.component.reward.d.s k;
    private AtomicBoolean le;
    private com.bytedance.sdk.openadsdk.core.ugeno.mn.dq mp;
    private com.bytedance.sdk.openadsdk.core.ig.s q;
    private RewardLpBottomView r;
    private boolean wp;

    public dq(TTBaseVideoActivity tTBaseVideoActivity, j jVar, boolean z, com.bytedance.sdk.openadsdk.core.ig.s sVar, com.bytedance.sdk.openadsdk.core.component.reward.d.s sVar2) {
        super(tTBaseVideoActivity, jVar, z);
        this.mp = jVar.gh();
        this.q = sVar;
        this.f2610d.mn(0);
        this.cd = new AtomicBoolean();
        this.i = new AtomicBoolean();
        this.le = new AtomicBoolean();
        this.k = sVar2;
    }

    private void cd() {
        FrameLayout frameLayout = new FrameLayout(this.f2610d);
        this.mn.addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
        com.bytedance.sdk.openadsdk.core.ugeno.o.d dVar = new com.bytedance.sdk.openadsdk.core.ugeno.o.d(this.f2610d, frameLayout, this.q, this.ox, this.gh, c.dq(this.dq));
        this.fw = dVar;
        dVar.d(true);
        this.fw.dq(new com.bytedance.sdk.openadsdk.core.ugeno.ia.d() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.layout.dq.3
            @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.d
            public void d() {
                dq.this.f2610d.vf();
                dq.this.i.set(true);
                dq.this.fw.r();
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.d
            public void dq() {
                dq.this.f2610d.nh();
            }
        });
        this.fw.dq(new com.bytedance.sdk.openadsdk.core.ugeno.s.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.layout.dq.4
            @Override // com.bytedance.sdk.openadsdk.core.ugeno.s.dq
            public void dq(int i) {
                le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.layout.dq.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        dq.this.f2610d.mn(8);
                        dq.this.fw.fw();
                        dq.this.fw.dq(r.dq(dq.this.f2610d, "tt_ecomm_page_reward_acquire"));
                        dq.this.f2610d.p(0);
                    }
                });
                dq.this.cd.set(false);
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.s.dq
            public void dq(View view) {
                dq.this.f2610d.mn(8);
                dq.this.cd.set(true);
            }
        });
        this.fw.dq(new dq.InterfaceC0189dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.layout.dq.5
            @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.dq.InterfaceC0189dq
            public void dq() {
                le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.layout.dq.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (dq.this.f2610d.v()) {
                            dq.this.fw.dq(r.dq(dq.this.f2610d, "tt_ecomm_page_reward_acquire"));
                        } else {
                            dq.this.fw.dq(String.format(r.dq(dq.this.f2610d, "tt_ecomm_page_reward_tip"), Integer.valueOf(dq.this.f2610d.yy().ce())));
                        }
                    }
                });
            }
        });
        this.fw.mp();
        no.ia().p().d(new dq.d() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.layout.dq.6
            @Override // com.bytedance.sdk.openadsdk.core.ir.dq.d
            public void d() {
                if (dq.this.i.get() || !dq.this.fw.q()) {
                    dq.this.le.set(false);
                } else {
                    dq.this.le.set(true);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.ir.dq.d
            public void dq() {
            }
        });
        if (TextUtils.equals(this.mp.dq(), "3")) {
            return;
        }
        d();
    }

    private void fw() {
        com.bytedance.sdk.openadsdk.core.ugeno.o.p pVar = new com.bytedance.sdk.openadsdk.core.ugeno.o.p(this.f2610d, this.mn, this.q, this.ox, this.gh, c.dq(this.dq));
        this.jy = pVar;
        pVar.d(true);
        this.jy.dq(new com.bytedance.sdk.openadsdk.core.ugeno.s.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.layout.dq.2
            @Override // com.bytedance.sdk.openadsdk.core.ugeno.s.dq
            public void dq(int i) {
                le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.layout.dq.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        dq.this.f2610d.mn(8);
                        dq.this.f2610d.r();
                    }
                });
                dq.this.cd.set(false);
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.s.dq
            public void dq(View view) {
                dq.this.f2610d.mn(8);
                dq.this.cd.set(true);
            }
        });
        this.jy.mp();
    }

    private void gh() {
        com.bytedance.sdk.openadsdk.core.ugeno.kk.dq dqVar = new com.bytedance.sdk.openadsdk.core.ugeno.kk.dq(this.f2610d, r(), this.mp, this.ox);
        this.f2611f = dqVar;
        dqVar.dq(this.f2610d.ob());
        this.f2611f.dq(new com.bytedance.sdk.openadsdk.core.ugeno.s.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.layout.dq.8
            @Override // com.bytedance.sdk.openadsdk.core.ugeno.s.dq
            public void dq(int i) {
                le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.layout.dq.8.2
                    @Override // java.lang.Runnable
                    public void run() {
                        dq.this.f2610d.mn(8);
                        dq.this.f2610d.r();
                    }
                });
                dq.this.cd.set(false);
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.s.dq
            public void dq(View view) {
                com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.layout.dq.8.1
                    @Override // java.lang.Runnable
                    public void run() {
                        dq.this.f2610d.mn(8);
                        dq.this.cd.set(true);
                        if (dq.this.r != null) {
                            dq.this.r.dq();
                        }
                    }
                });
            }
        });
        this.f2611f.dq();
    }

    private ViewGroup r() {
        if (this.mn == null) {
            return null;
        }
        PlayableEndcardFrameLayout playableEndcardFrameLayout = new PlayableEndcardFrameLayout(this.f2610d);
        this.mn.addView(playableEndcardFrameLayout);
        this.r = new RewardLpBottomView(this.f2610d);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 80;
        this.mn.addView(this.r, layoutParams);
        this.r.dq(this.ox, this.gh);
        playableEndcardFrameLayout.dq(new PlayableEndcardFrameLayout.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.layout.dq.9
            @Override // com.bytedance.sdk.openadsdk.core.component.reward.view.PlayableEndcardFrameLayout.dq
            public void dq() {
                if (dq.this.r != null) {
                    dq.this.r.d();
                }
            }
        });
        return playableEndcardFrameLayout;
    }

    public void d() {
        final ImageView imageView = new ImageView(this.f2610d);
        float ox = ce.ox(this.f2610d, 18.0f);
        float ox2 = ce.ox(this.f2610d, 20.0f);
        int i = (int) ox;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i, i);
        layoutParams.gravity = 53;
        int i2 = (int) ox2;
        layoutParams.setMargins(i2, i2, i2, i2);
        this.mn.addView(imageView, layoutParams);
        imageView.setImageDrawable(r.ox(this.f2610d, "tt_unmute"));
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.layout.dq.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                dq.this.wp = !r2.wp;
                imageView.setImageDrawable(dq.this.wp ? r.ox(dq.this.f2610d, "tt_mute") : r.ox(dq.this.f2610d, "tt_unmute"));
                dq.this.fw.ox(dq.this.wp);
            }
        });
    }

    public void d(boolean z) {
        if (this.fw == null || !com.bytedance.sdk.openadsdk.core.ugeno.kk.p(this.ox)) {
            return;
        }
        this.fw.ox(z);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.layout.d
    public void dq() {
        super.dq();
        this.gh = c.dq(c.dq(this.dq));
        com.bytedance.sdk.openadsdk.core.ugeno.mn.dq dqVar = this.mp;
        if (dqVar == null) {
            le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.layout.dq.1
                @Override // java.lang.Runnable
                public void run() {
                    dq.this.f2610d.mn(8);
                    dq.this.f2610d.r();
                }
            });
            return;
        }
        int p = dqVar.p();
        if (p == 2) {
            fw();
            return;
        }
        if (p == 3) {
            cd();
        } else if (p == 4) {
            gh();
        } else {
            this.f2610d.mn(8);
            this.f2610d.r();
        }
    }

    public void dq(int i) {
        if (this.jy == null || !com.bytedance.sdk.openadsdk.core.ugeno.kk.s(this.ox)) {
            return;
        }
        this.jy.ox(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.layout.d
    public void dq(DownloadListener downloadListener) {
        com.bytedance.sdk.openadsdk.core.ugeno.kk.dq dqVar = this.f2611f;
        if (dqVar != null) {
            dqVar.dq(downloadListener);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.layout.d
    public void dq(com.bytedance.sdk.openadsdk.core.d.d dVar, com.bytedance.sdk.openadsdk.core.d.d dVar2) {
        super.dq(dVar, dVar2);
        com.bytedance.sdk.openadsdk.core.ugeno.o.p pVar = this.jy;
        if (pVar != null) {
            pVar.dq(this.f2610d.ob());
        }
        com.bytedance.sdk.openadsdk.core.ugeno.o.d dVar3 = this.fw;
        if (dVar3 != null) {
            dVar3.dq(this.f2610d.ob());
        }
        com.bytedance.sdk.openadsdk.core.ugeno.kk.dq dqVar = this.f2611f;
        if (dqVar != null) {
            dqVar.dq(dVar);
        }
    }

    public void dq(boolean z) {
        this.le.set(z);
    }

    public void ia() {
        com.bytedance.sdk.openadsdk.core.ugeno.o.d dVar = this.fw;
        if (dVar != null) {
            dVar.cd();
        }
    }

    public boolean iw() {
        return this.cd.get();
    }

    public void kk() {
        com.bytedance.sdk.openadsdk.core.ugeno.o.d dVar = this.fw;
        if (dVar != null) {
            dVar.i();
        }
    }

    public void mn() {
        com.bytedance.sdk.openadsdk.core.ugeno.o.d dVar = this.fw;
        if (dVar != null) {
            dVar.gh();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.layout.d
    public void o() {
        com.bytedance.sdk.openadsdk.core.ugeno.kk.dq dqVar = this.f2611f;
        if (dqVar != null) {
            dqVar.d();
        }
        com.bytedance.sdk.openadsdk.core.ugeno.o.d dVar = this.fw;
        if (dVar != null) {
            dVar.f();
        }
        RewardLpBottomView rewardLpBottomView = this.r;
        if (rewardLpBottomView != null) {
            rewardLpBottomView.d();
        }
    }

    public boolean ox() {
        return this.le.get();
    }

    public boolean p() {
        com.bytedance.sdk.openadsdk.core.ugeno.o.d dVar = this.fw;
        if (dVar != null) {
            return dVar.q();
        }
        return false;
    }

    public AtomicInteger s() {
        return new AtomicInteger(0);
    }
}
