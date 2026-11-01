package com.bytedance.sdk.openadsdk.core.component.reward.p;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.r.ce;
import com.bytedance.sdk.openadsdk.core.r.gx;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.kk;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.r.uh;
import com.bytedance.sdk.openadsdk.core.wp;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class o extends dq {
    boolean ir;
    private boolean u;

    public o(TTBaseVideoActivity tTBaseVideoActivity, j jVar) {
        super(tTBaseVideoActivity, jVar);
        this.ir = false;
        this.u = false;
        this.u = com.bytedance.sdk.openadsdk.core.live.ox.d.dq(jVar) == 1;
    }

    public static int dq(j jVar) {
        return 9;
    }

    public static boolean dq(Context context, j jVar) {
        if (!gx.p(jVar)) {
            return false;
        }
        long min = Math.min(uh.dq(), (long) ((jVar.ie() / 100.0f) * (ce.dq(jVar) ? ce.d(jVar) * 1000 : pa.q(jVar) != null ? (long) (pa.iw(jVar) * 1000.0d) : 0L)));
        HashMap hashMap = new HashMap(3);
        hashMap.put("reward_countdown", Long.valueOf(min));
        hashMap.put("event_tag", "rewarded_video");
        hashMap.put("reward_live_scene", Integer.valueOf(com.bytedance.sdk.openadsdk.core.live.ox.d.dq(jVar)));
        return com.bytedance.sdk.openadsdk.core.live.d.dq().d(context, jVar, hashMap) == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fd() {
        if (this.ir) {
            return;
        }
        this.ir = true;
        ia(false);
        this.dq.finish();
    }

    private void ia(final boolean z) {
        if (this.kk instanceof com.bytedance.sdk.openadsdk.core.component.reward.layout.kk) {
            com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.p.o.2
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.core.component.reward.layout.d dVar = o.this.kk;
                    if (dVar == null) {
                        return;
                    }
                    com.bytedance.sdk.openadsdk.core.component.reward.layout.kk kkVar = (com.bytedance.sdk.openadsdk.core.component.reward.layout.kk) dVar;
                    if (z) {
                        kkVar.d();
                    } else {
                        kkVar.ox();
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public int bl() {
        return dq(this.f2635d);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public void dc() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public com.bytedance.sdk.openadsdk.core.component.reward.layout.d dq(boolean z) {
        com.bytedance.sdk.openadsdk.core.component.reward.layout.kk kkVar = new com.bytedance.sdk.openadsdk.core.component.reward.layout.kk(this.dq, this.f2635d, z);
        this.kk = kkVar;
        return kkVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void dq(int i) {
        super.dq(i);
        if (i == 0) {
            fd();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public void dq(int i, int i2, Intent intent) {
        super.dq(i, i2, intent);
        if (i != 1) {
            this.dq.finish();
            return;
        }
        if (intent == null || intent.getExtras() == null) {
            this.dq.finish();
            return;
        }
        if (intent.getExtras().getLong("csj.reward_countdown_duration_ms") > 0) {
            this.dq.finish();
            return;
        }
        int i3 = intent.getExtras().getInt("csj.reward_auth_status", 0);
        if (this.u && i3 == 1) {
            this.dq.finish();
            return;
        }
        com.bytedance.sdk.component.utils.ig.p("rewardAuthFlag", "verify rew....");
        this.dq.p(0);
        ia(true);
        this.dq.er().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.p.o.1
            @Override // java.lang.Runnable
            public void run() {
                o.this.fd();
            }
        }, 2000L);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public boolean iw() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq
    public View kk() {
        FrameLayout frameLayout = new FrameLayout(this.dq);
        frameLayout.setId(2114387959);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        return frameLayout;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.dq, com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public void ox() {
        this.dq.d(true, true);
        this.kk.ox(true);
        this.o.ox(false);
        this.gh.dq(false);
        int ia = com.bytedance.sdk.openadsdk.core.ir.ce.ia(wp.getContext());
        com.bytedance.sdk.openadsdk.core.ig.ox.dq("click", this.f2635d, new kk.dq().iw(-1.0f).s(-1.0f).p(-1.0f).ox(-1.0f).d(-1L).dq(-1L).ox(-1).p(-1).s(-1024).d(com.bytedance.sdk.openadsdk.core.no.ia().ox() ? 1 : 2).dq(ia).dq(com.bytedance.sdk.openadsdk.core.ir.ce.iw(wp.getContext())).d(com.bytedance.sdk.openadsdk.core.ir.ce.mn(wp.getContext())).dq(), this.ig, true, this.dq.ob(), -1, false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public boolean uh() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public boolean xz() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.p.d
    public boolean yy() {
        return false;
    }
}
