package com.bytedance.sdk.openadsdk.core.component.reward.layout;

import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.gx;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.widget.RoundImageView;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class ia extends d {
    private TextView cd;

    /* renamed from: f, reason: collision with root package name */
    private TextView f2613f;
    private ImageView fw;
    private TextView gh;
    private RelativeLayout i;
    private TextView jy;
    private boolean le;
    private RoundImageView mp;
    private RelativeLayout q;
    private RelativeLayout r;

    public ia(TTBaseVideoActivity tTBaseVideoActivity, j jVar, boolean z) {
        super(tTBaseVideoActivity, jVar, z);
    }

    private void dq(View.OnTouchListener onTouchListener) {
        ce.dq(this.ia, onTouchListener, "TTBaseVideoActivity#mRlDownloadBar");
        ce.dq(this.kk, onTouchListener, "TTBaseVideoActivity#mVideoNativeFrame");
        ce.dq(this.gh, onTouchListener, (String) null);
        ce.dq(this.f2613f, onTouchListener, (String) null);
        ce.dq(this.cd, onTouchListener, (String) null);
        ce.dq(this.jy, onTouchListener, (String) null);
        ce.dq(this.mp, onTouchListener, (String) null);
        ce.dq(this.no, onTouchListener, "TTBaseVideoActivity#mLiveBtnLayout");
    }

    private void dq(View view, final com.bytedance.sdk.openadsdk.core.d.d dVar, final String str) {
        if (view == null || dVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        TTBaseVideoActivity tTBaseVideoActivity = this.f2610d;
        j jVar = this.ox;
        boolean z = this.iw;
        view.setOnClickListener(new com.bytedance.sdk.openadsdk.core.d.d(tTBaseVideoActivity, jVar, z ? "rewarded_video" : "fullscreen_interstitial_ad", z ? 7 : 5) { // from class: com.bytedance.sdk.openadsdk.core.component.reward.layout.ia.1
            @Override // com.bytedance.sdk.openadsdk.core.d.d, com.bytedance.sdk.openadsdk.core.d.p
            public void dq(View view2, com.bytedance.sdk.openadsdk.core.r.o oVar) {
                HashMap hashMap = new HashMap();
                hashMap.put("click_live_element", str);
                ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) dVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq(hashMap);
                dVar.dq(view2, oVar);
            }
        });
    }

    private void dq(com.bytedance.sdk.openadsdk.core.d.d dVar) {
        dq(this.kk, dVar, "click_live_feed");
        dq(this.gh, dVar, "click_live_author_description");
        dq(this.f2613f, dVar, "click_live_author_follower_count");
        dq(this.cd, dVar, "click_live_author_following_count");
        dq(this.jy, dVar, "click_live_author_nickname");
        dq(this.mp, dVar, "click_live_avata");
        dq(this.ia, dVar, "click_live_button");
        dq(this.no, dVar, "click_live_btn_layout");
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.layout.d
    public void dq() {
        String valueOf;
        String valueOf2;
        super.dq();
        this.ia = (RelativeLayout) this.f2610d.findViewById(2114387665);
        this.kk = (FrameLayout) this.f2610d.findViewById(2114387759);
        this.o = (TextView) this.f2610d.findViewById(2114387661);
        this.mp = (RoundImageView) this.f2610d.findViewById(2114387887);
        this.q = (RelativeLayout) this.f2610d.findViewById(2114387916);
        this.jy = (TextView) this.f2610d.findViewById(2114387926);
        this.f2613f = (TextView) this.f2610d.findViewById(2114387855);
        this.fw = (ImageView) this.f2610d.findViewById(2114387886);
        this.cd = (TextView) this.f2610d.findViewById(2114387786);
        this.gh = (TextView) this.f2610d.findViewById(2114387643);
        this.r = (RelativeLayout) this.f2610d.findViewById(2114387666);
        this.i = (RelativeLayout) this.f2610d.findViewById(2114387840);
        this.no = (RelativeLayout) this.f2610d.findViewById(2114387720);
        ce.dq(this.o, this.ox);
        no();
        if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(this.ox)) {
            String kk = com.bytedance.sdk.openadsdk.core.r.ce.kk(this.ox);
            if (TextUtils.isEmpty(kk) || this.mp == null) {
                ce.dq((View) this.q, 8);
            } else {
                ce.dq((View) this.q, 0);
                com.bytedance.sdk.openadsdk.ia.d.dq(kk).dq(this.mp);
            }
            if (this.jy != null) {
                this.jy.setText(com.bytedance.sdk.openadsdk.core.r.ce.ox(this.ox));
            }
            if (this.f2613f != null) {
                int p = com.bytedance.sdk.openadsdk.core.r.ce.p(this.ox);
                if (p < 0) {
                    this.f2613f.setVisibility(4);
                    ce.dq((View) this.fw, 4);
                } else {
                    String dq = r.dq(this.f2610d, "tt_live_fans_text");
                    if (p > 10000) {
                        valueOf2 = (p / 10000.0f) + "w";
                    } else {
                        valueOf2 = String.valueOf(p);
                    }
                    this.f2613f.setText(String.format(dq, valueOf2));
                }
            }
            if (this.cd != null) {
                int s = com.bytedance.sdk.openadsdk.core.r.ce.s(this.ox);
                if (s < 0) {
                    this.cd.setVisibility(4);
                    ce.dq((View) this.fw, 4);
                } else {
                    String dq2 = r.dq(this.f2610d, "tt_live_watch_text");
                    if (s > 10000) {
                        valueOf = (s / 10000.0f) + "w";
                    } else {
                        valueOf = String.valueOf(s);
                    }
                    this.cd.setText(String.format(dq2, valueOf));
                }
            }
            if (this.gh != null) {
                this.gh.setText(com.bytedance.sdk.openadsdk.core.r.ce.iw(this.ox));
            }
        }
    }

    public void dq(int i, int i2) {
        TextView textView;
        if (i != 0) {
            this.le = true;
            ce.dq((View) this.no, 8);
            return;
        }
        ce.dq((View) this.no, 0);
        if (i2 >= 0 && com.bytedance.sdk.openadsdk.core.live.d.dq().d(this.ox) && gx.dq(this.ox) && gx.s(this.ox) == 3 && (textView = (TextView) this.f2610d.findViewById(2114387719)) != null) {
            textView.setText(String.format(r.dq(this.f2610d, "tt_reward_auto_jump_live"), i2 + "s"));
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.layout.d
    public void dq(com.bytedance.sdk.openadsdk.core.d.d dVar, com.bytedance.sdk.openadsdk.core.d.d dVar2) {
        dq(dVar);
        dq((View.OnTouchListener) dVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.layout.d
    public void ox(int i) {
        ce.dq((View) this.r, i);
        ce.dq((View) this.i, i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.layout.d
    public void p(int i) {
        if (this.le) {
            return;
        }
        ce.dq((View) this.no, i);
    }
}
