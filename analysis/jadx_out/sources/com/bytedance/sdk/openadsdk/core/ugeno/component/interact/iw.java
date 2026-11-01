package com.bytedance.sdk.openadsdk.core.ugeno.component.interact;

import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.core.c;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.kx;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class iw extends d {
    private final mn ia;
    private PlayableFeedWebView iw;
    private final com.bytedance.sdk.openadsdk.core.i.d mn;

    public iw(j jVar, dq dqVar, ox oxVar) {
        super(jVar, dqVar, oxVar);
        this.ia = new mn() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.component.interact.iw.1
            @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.mn
            public void d() {
                if (iw.this.iw != null) {
                    iw.this.iw.mp();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.mn
            public void dq() {
                if (iw.this.iw != null) {
                    iw.this.iw.ig();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.mn
            public void dq(boolean z) {
                if (iw.this.iw != null) {
                    iw.this.iw.d(z);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.mn
            public void ox() {
                iw.this.iw.q();
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.mn
            public void p() {
                iw iwVar = iw.this;
                if (iwVar.p) {
                    iwVar.p = false;
                    com.bytedance.sdk.openadsdk.h.mn.dq(iwVar.s);
                }
                if (kx.dq() && iw.this.mn != null) {
                    iw.this.mn.dq(iw.this.dq);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.mn
            public boolean s() {
                c jsObject;
                if (iw.this.iw == null || (jsObject = iw.this.iw.getJsObject()) == null) {
                    return false;
                }
                return jsObject.le();
            }
        };
        this.mn = new com.bytedance.sdk.openadsdk.core.i.d(jVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.d
    public mn d() {
        return this.ia;
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.d
    public void d(final ViewGroup viewGroup, final View view, final boolean z) {
        if (viewGroup == null) {
            HashMap hashMap = new HashMap();
            hashMap.put("render_type", Integer.valueOf(dq()));
            hashMap.put("error_code", 100);
            this.ox.dq(false, (Map<String, Object>) hashMap);
            return;
        }
        this.ox.dq(dq());
        PlayableFeedWebView playableFeedWebView = new PlayableFeedWebView(this.mn, viewGroup);
        this.iw = playableFeedWebView;
        this.mn.dq(playableFeedWebView);
        this.iw.setEasyPlayableListener(this.f3559d);
        viewGroup.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.component.interact.iw.2
            @Override // java.lang.Runnable
            public void run() {
                iw iwVar = iw.this;
                iwVar.dq(viewGroup, view, iwVar.iw, z, false);
            }
        }, 200L);
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.d
    public int dq() {
        return 0;
    }

    public void dq(com.bytedance.sdk.openadsdk.wp.dq.d.dq.d dVar) {
        this.mn.dq(dVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.component.interact.d
    public boolean dq(int i, int i2) {
        return true;
    }

    public boolean ox() {
        return kx.d(this.dq);
    }

    public void p() {
        PlayableFeedWebView playableFeedWebView = this.iw;
        if (playableFeedWebView != null) {
            playableFeedWebView.dq();
        }
    }
}
