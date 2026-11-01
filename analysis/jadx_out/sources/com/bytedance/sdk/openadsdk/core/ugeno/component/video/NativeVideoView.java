package com.bytedance.sdk.openadsdk.core.ugeno.component.video;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bykv.vk.openvk.component.video.api.ox.p;
import com.bykv.vk.openvk.component.video.api.p.ox;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.h.o;
import g.eun;
import java.util.Map;

/* loaded from: classes3.dex */
public class NativeVideoView extends NativeVideoTsView implements ox.dq {

    /* renamed from: d, reason: collision with root package name */
    private dq f3572d;
    private int dq;
    private eun i;
    private boolean le;

    public NativeVideoView(Context context) {
        super(context);
        ox oxVar = this.s;
        if (oxVar != null) {
            oxVar.dq(true);
        }
        this.r.set(true);
        setNeedNativeVideoPlayBtnVisible(false);
        setEnableBlur(true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView
    public void U_() {
        super.U_();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView, com.bytedance.sdk.openadsdk.core.video.nativevideo.ox.dq
    public void V_() {
        ce.dq((View) this.o, 8);
        super.V_();
    }

    public void ac_() {
        dq dqVar = this.f3572d;
        if (dqVar != null) {
            dqVar.ia();
            ce.dq((View) this.o, 8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView, com.bykv.vk.openvk.component.video.api.p.ox.dq
    public void d(long j, int i) {
        super.d(j, i);
        ce.dq((View) this.o, 0);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView
    public ox dq(Context context, ViewGroup viewGroup, j jVar, String str, boolean z, boolean z2, boolean z3) {
        dq dqVar = new dq(context, viewGroup, jVar, str, z, z2, z3);
        this.f3572d = dqVar;
        return dqVar;
    }

    public void dq(eun eunVar) {
        this.i = eunVar;
    }

    public void dq(boolean z, boolean z2) {
        no();
        ce.dq((View) this.o, 0);
        ce.dq((View) this.mp, z ? 0 : 8);
        ce.dq((View) this.no, z2 ? 0 : 8);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView
    public boolean dq(long j, boolean z, boolean z2) {
        this.iw.setVisibility(0);
        if (this.s == null) {
            this.s = new com.bytedance.sdk.openadsdk.core.video.nativevideo.ox(getContext(), this.mn, this.p, this.jy, false, false);
        }
        if (ig() || this.kk) {
            dq(this.ox, 25, pa.d(this.p));
        }
        return false;
    }

    public void ia() {
        dq dqVar = this.f3572d;
        if (dqVar != null) {
            dqVar.iw();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        eun eunVar = this.i;
        if (eunVar == null) {
            super.onMeasure(i, i2);
        } else {
            int[] dq = eunVar.dq(i, i2);
            super.onMeasure(dq[0], dq[1]);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView, android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (!this.le && i == 8) {
            s();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView
    public void p() {
        ox oxVar = this.s;
        if (oxVar == null) {
            U_();
        } else if ((oxVar instanceof com.bytedance.sdk.openadsdk.core.video.nativevideo.ox) && !f()) {
            ((com.bytedance.sdk.openadsdk.core.video.nativevideo.ox) this.s).uh();
        }
        if (this.s == null || !this.r.get()) {
            return;
        }
        this.r.set(false);
        mn();
        if (!q()) {
            if (this.s.r()) {
                ce.dq((View) this.o, 0);
                return;
            }
            ig.dq("NativeVideoAdView", "attachTask.......mRlImgCover.....VISIBLE");
            no();
            ce.dq((View) this.o, 0);
            return;
        }
        ce.dq((View) this.o, 0);
        ImageView imageView = this.ig;
        if (imageView != null) {
            ce.dq((View) imageView, 8);
        }
        if (pa.q(this.p) == null) {
            ig.p("NativeVideoAdView", "attachTask materialMeta.getVideo() is null !!");
            return;
        }
        p dq = pa.dq(4, this.p);
        dq.d(this.p.fx());
        dq.d(this.iw.getWidth());
        dq.ox(this.iw.getHeight());
        dq.ox(this.p.dn());
        this.p.yy(this.dq);
        dq.s(this.dq);
        dq.dq(o.dq(this.p));
        dq.dq(this.s.no());
        dq.d(this.s.gh());
        ((com.bytedance.sdk.openadsdk.core.video.nativevideo.ox) this.s).p(this.dq);
        ((com.bytedance.sdk.openadsdk.core.video.nativevideo.ox) this.s).dq(this.p);
        dq(dq);
        this.s.ox(false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView
    public void s() {
        super.s();
        ce.dq((View) this.o, 0);
    }

    public void setExtraMap(Map<String, Object> map) {
        ox oxVar = this.s;
        if (oxVar != null) {
            oxVar.dq(map);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView
    public void setIsAutoPlay(boolean z) {
        super.setIsAutoPlay(z);
        ce.dq((View) this.o, 0);
    }

    public void setLp(boolean z) {
        this.le = z;
    }

    public void setPlayerType(int i) {
        this.dq = i;
    }
}
