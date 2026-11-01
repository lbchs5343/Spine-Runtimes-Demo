package com.bytedance.sdk.openadsdk.core.playable;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.utils.e;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.gh;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.l;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.video.d.dq;
import com.bytedance.sdk.openadsdk.h.o;
import g.tn;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class mn implements e.dq {

    /* renamed from: d, reason: collision with root package name */
    private final Context f3402d;
    private final String dq;
    private iw ia;
    private FrameLayout iw;
    private PlayableVideoContainer mn;
    private boolean no;
    private final j ox;
    private final com.bytedance.sdk.openadsdk.core.video.d.d q;
    private final int s;
    private final e p = new e(Looper.getMainLooper(), this);
    private boolean kk = false;
    private boolean o = true;
    private boolean ig = false;
    private boolean mp = false;

    public mn(String str, Activity activity, j jVar, int i, com.bytedance.sdk.openadsdk.core.video.d.d dVar, FrameLayout frameLayout) {
        this.dq = str;
        this.f3402d = activity;
        this.ox = jVar;
        this.s = i;
        if (!gh.p(jVar)) {
            this.iw = frameLayout;
        }
        s();
        this.q = dVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(boolean z) {
        HashMap p = tn.p("event", "csj_enter_bkbw_playable");
        p.put("is_plbkbw_video_show", Boolean.valueOf(z));
        com.bytedance.sdk.openadsdk.core.ig.ox.kk(this.ox, this.dq, "playable_track", p);
    }

    private void dq(long j) {
        if (this.mn == null) {
            return;
        }
        if (l.kx(this.ox) || this.q != null || o.dq(this.ox)) {
            if (this.kk) {
                iw iwVar = this.ia;
                if (iwVar != null) {
                    iwVar.d(j);
                    this.ia.dq(j);
                    return;
                }
                return;
            }
            this.kk = true;
            com.bykv.vk.openvk.component.video.api.ox.p dq = pa.dq(1, this.ox, this.s);
            dq.d(this.ox.fx());
            dq.d(this.mn.getWidth());
            dq.ox(this.mn.getHeight());
            dq.ox(this.ox.dn());
            dq.dq(j);
            dq.d(this.o);
            if (o.dq(this.ox)) {
                dq.dq(true);
            }
            iw iwVar2 = new iw(this.f3402d, this.mn.getVideoContainer(), this.ox, null);
            this.ia = iwVar2;
            iwVar2.dq(new dq.InterfaceC0195dq() { // from class: com.bytedance.sdk.openadsdk.core.playable.mn.3
                @Override // com.bytedance.sdk.openadsdk.core.video.d.dq.InterfaceC0195dq
                public void d() {
                    mn.this.kk();
                    mn.this.mn.dq(true);
                    if (mn.this.q != null) {
                        mn.this.q.o();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.video.d.dq.InterfaceC0195dq
                public void dq() {
                    if (mn.this.q != null) {
                        mn.this.dq();
                        mn.this.q.ox();
                    } else {
                        if (!o.dq(mn.this.ox) || mn.this.ia == null || mn.this.ia.s()) {
                            return;
                        }
                        mn.this.dq();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.video.d.dq.InterfaceC0195dq
                public void dq(int i, String str) {
                    if (i == 308) {
                        return;
                    }
                    mn.this.kk();
                    mn.this.mn.dq(true);
                }

                @Override // com.bytedance.sdk.openadsdk.core.video.d.dq.InterfaceC0195dq
                public void dq(long j2, long j3) {
                    mn.this.mn.dq(false);
                    if (mn.this.q != null) {
                        mn.this.q.dq(j2, j3);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.video.d.dq.InterfaceC0195dq
                public void ox() {
                    mn.this.d(true);
                    mn.this.ia();
                }
            });
            this.ia.d(j);
            this.ia.dq(dq);
            if (this.q != null) {
                this.ia.wp();
                this.ia.mn(false);
                this.mn.dq();
            } else {
                if (o.dq(this.ox)) {
                    this.ia.mn(true);
                }
                o();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ia() {
        this.ig = true;
        if (this.no) {
            this.no = false;
            d();
        }
        dq(this.o);
    }

    private void iw() {
        ce.dq((View) this.iw, 8);
        ce.dq((View) this.mn, 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void kk() {
        com.bytedance.sdk.openadsdk.core.ig.ox.kk(this.ox, this.dq, "playable_track", tn.p("event", "csj_bkbw_playable_error"));
    }

    private void mn() {
        ce.dq((View) this.iw, 0);
        ce.dq((View) this.mn, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void no() {
        if (this.mn == null || this.iw == null) {
            return;
        }
        mn();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mn, "translationX", -ce.ox(this.f3402d, 150.0f), TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.mn, "translationY", -ce.ox(this.f3402d, 100.0f), TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.mn, "alpha", 0.1f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofFloat, ofFloat2, ofFloat3);
        animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        animatorSet.setDuration(500L);
        animatorSet.start();
    }

    private void o() {
        PlayableVideoContainer playableVideoContainer = this.mn;
        if (playableVideoContainer == null) {
            return;
        }
        playableVideoContainer.d(true);
        this.p.sendEmptyMessageDelayed(1, 2000L);
    }

    private void s() {
        if (this.iw == null) {
            return;
        }
        if (l.dq(this.ox, this.s) == 1) {
            PlayableVideoContainer playableVideoContainer = new PlayableVideoContainer(this.f3402d);
            playableVideoContainer.setBackgroundColor(0);
            playableVideoContainer.setVisibility(8);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(ce.ox(this.f3402d, 156.0f), ce.ox(this.f3402d, 87.0f));
            layoutParams.gravity = 8388661;
            layoutParams.topMargin = ce.ox(this.f3402d, 55.0f);
            layoutParams.rightMargin = ce.ox(this.f3402d, 20.0f);
            this.iw.addView(playableVideoContainer, layoutParams);
            this.mn = playableVideoContainer;
            return;
        }
        PlayableVideoContainer playableVideoContainer2 = new PlayableVideoContainer(this.f3402d);
        playableVideoContainer2.setBackgroundColor(0);
        playableVideoContainer2.setVisibility(8);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(ce.ox(this.f3402d, 73.0f), ce.ox(this.f3402d, 130.0f));
        layoutParams2.gravity = 8388661;
        layoutParams2.topMargin = ce.ox(this.f3402d, 55.0f);
        layoutParams2.rightMargin = ce.ox(this.f3402d, 30.0f);
        this.iw.addView(playableVideoContainer2, layoutParams2);
        this.mn = playableVideoContainer2;
    }

    public void d() {
        if (this.mp && this.kk && this.ia != null) {
            this.p.removeMessages(1);
            if (this.ig) {
                this.ia.iw();
            } else {
                this.no = true;
            }
        }
    }

    public void dq() {
        this.mp = false;
        p();
        iw();
    }

    public void dq(long j, boolean z) {
        PlayableVideoContainer playableVideoContainer;
        this.mp = true;
        this.o = z;
        dq(j);
        if (this.kk) {
            if (this.q != null && (playableVideoContainer = this.mn) != null) {
                playableVideoContainer.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.playable.mn.1
                    @Override // java.lang.Runnable
                    public void run() {
                        mn.this.no();
                    }
                }, 500L);
                this.mn.setCustomClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.playable.mn.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (mn.this.iw != null) {
                            mn.this.dq();
                            mn.this.q.d();
                        }
                    }
                });
            } else if (o.dq(this.ox)) {
                iw();
            } else {
                mn();
            }
        }
    }

    @Override // com.bytedance.sdk.component.utils.e.dq
    public void dq(Message message) {
        PlayableVideoContainer playableVideoContainer = this.mn;
        if (playableVideoContainer == null) {
            return;
        }
        playableVideoContainer.d(false);
    }

    public void dq(boolean z) {
        iw iwVar = this.ia;
        if (iwVar == null) {
            return;
        }
        this.o = z;
        iwVar.d(z);
    }

    public void ox() {
        if (this.mp && this.kk && this.ia != null) {
            this.no = false;
            this.p.sendEmptyMessageDelayed(1, 2000L);
            if (this.ia.cv()) {
                return;
            }
            this.ia.ia();
        }
    }

    public void p() {
        iw iwVar = this.ia;
        if (iwVar == null) {
            return;
        }
        iwVar.o();
        this.ia = null;
        this.kk = false;
        this.no = false;
        this.ig = false;
    }
}
