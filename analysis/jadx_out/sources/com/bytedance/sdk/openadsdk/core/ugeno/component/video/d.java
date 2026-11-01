package com.bytedance.sdk.openadsdk.core.ugeno.component.video;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.bykv.vk.openvk.component.video.api.ox.ox;
import com.bykv.vk.openvk.component.video.api.p.ox;
import com.bytedance.sdk.openadsdk.core.r.ce;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.pa;
import g.dlv;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d extends dlv {

    /* renamed from: a, reason: collision with root package name */
    private dq f3573a;

    /* renamed from: d, reason: collision with root package name */
    private String f3574d;
    private boolean dq;
    private ox nt;
    private boolean ny;
    private String ox;
    private String p;
    private j tv;

    public class dq implements ox.dq {
        ox.dq dq;

        private dq() {
        }

        @Override // com.bykv.vk.openvk.component.video.api.p.ox.dq
        public void d(long j, int i) {
            ox.dq dqVar = this.dq;
            if (dqVar != null) {
                dqVar.d(j, i);
            }
        }

        @Override // com.bykv.vk.openvk.component.video.api.p.ox.dq
        public void dq() {
            ox.dq dqVar = this.dq;
            if (dqVar != null) {
                dqVar.dq();
            }
        }

        @Override // com.bykv.vk.openvk.component.video.api.p.ox.dq
        public void dq(long j, int i) {
            if (d.this.dq) {
                if (((dlv) d.this).ia != null) {
                    ((NativeVideoView) ((dlv) d.this).ia).setComplete(true);
                }
                if (((dlv) d.this).ia != null) {
                    ((NativeVideoView) ((dlv) d.this).ia).dq(true, true);
                }
            }
            ox.dq dqVar = this.dq;
            if (dqVar != null) {
                dqVar.dq(j, i);
            }
        }

        @Override // com.bykv.vk.openvk.component.video.api.p.ox.dq
        public void dq(long j, long j2) {
            ox.dq dqVar = this.dq;
            if (dqVar != null) {
                dqVar.dq(j, j2);
            }
        }
    }

    public d(Context context) {
        super(context, 0);
        this.ny = false;
    }

    private void cv() {
        if (!this.dq) {
            this.tv = new j();
            this.nt = new com.bykv.vk.openvk.component.video.api.ox.ox();
            return;
        }
        if (!TextUtils.isEmpty(this.p)) {
            try {
                this.tv = com.bytedance.sdk.openadsdk.core.d.dq(new JSONObject(this.p));
                this.p = null;
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        j jVar = this.tv;
        if (jVar == null) {
            this.tv = new j();
            this.nt = new com.bykv.vk.openvk.component.video.api.ox.ox();
            return;
        }
        com.bykv.vk.openvk.component.video.api.ox.ox q = pa.q(jVar);
        this.nt = q;
        if (q == null) {
            this.nt = new com.bykv.vk.openvk.component.video.api.ox.ox();
        }
    }

    public boolean d() {
        View view = this.ia;
        return (view == null || ((NativeVideoView) view).getNativeVideoController() == null) ? this.ny : ((NativeVideoView) this.ia).getNativeVideoController().gh();
    }

    @Override // g.dlv
    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
    public NativeVideoView ox() {
        NativeVideoView nativeVideoView = new NativeVideoView(this.s);
        nativeVideoView.dq(this);
        return nativeVideoView;
    }

    public void dq(com.bytedance.sdk.openadsdk.core.multipro.d.dq dqVar) {
        j jVar;
        if (o() == null || (jVar = this.tv) == null) {
            ((NativeVideoView) this.ia).setPlayerType(0);
        } else if (jVar.gv() == 0) {
            int optInt = o().optInt("image_mode");
            this.tv.op(optInt);
            this.tv.dq(new ce(o()));
            if (optInt == 166) {
                this.tv.yy(-2);
                ((NativeVideoView) this.ia).setPlayerType(-2);
            }
        }
        if (dqVar != null) {
            com.bykv.vk.openvk.component.video.api.p.ox nativeVideoController = ((NativeVideoView) this.ia).getNativeVideoController();
            nativeVideoController.p(dqVar.p);
            nativeVideoController.d(dqVar.ia);
            if (dqVar.dq) {
                nativeVideoController.d(0L);
            } else {
                nativeVideoController.d(dqVar.mn);
            }
        }
        ((NativeVideoView) this.ia).p();
    }

    @Override // g.dlv
    public void dq(String str, String str2) {
        super.dq(str, str2);
        str.getClass();
        switch (str) {
            case "coverSrc":
                this.ox = str2;
                break;
            case "src":
                this.f3574d = str2;
                break;
            case "isLp":
                try {
                    boolean booleanValue = Boolean.valueOf(str2).booleanValue();
                    this.dq = booleanValue;
                    View view = this.ia;
                    if (view != null) {
                        ((NativeVideoView) view).setLp(booleanValue);
                        break;
                    }
                } catch (Exception unused) {
                    return;
                }
                break;
            case "mate":
                this.p = str2;
                break;
        }
    }

    public void dq(Map<String, Object> map) {
        View view = this.ia;
        if (view != null) {
            ((NativeVideoView) view).setExtraMap(map);
        }
    }

    @Override // g.dlv
    public void dq(JSONObject jSONObject) {
        super.dq(jSONObject);
    }

    public boolean ds() {
        com.bykv.vk.openvk.component.video.api.dq fw;
        View view = this.ia;
        if (view == null || ((NativeVideoView) view).getNativeVideoController() == null || (fw = ((NativeVideoView) this.ia).getNativeVideoController().fw()) == null) {
            return false;
        }
        return fw.mp();
    }

    public void ha() {
        if (vw()) {
            View view = this.ia;
            if (view != null) {
                ((NativeVideoView) view).cd();
                return;
            }
            return;
        }
        if (ds()) {
            yy();
        } else {
            xz();
        }
    }

    @Override // g.dlv
    public void p() {
        super.p();
        cv();
        this.nt.ox(this.f3574d);
        this.nt.dq(this.f14395f + "x" + this.fw);
        this.nt.d(this.ox);
        this.tv.dq(this.nt);
        ((NativeVideoView) this.ia).setMaterialMeta(this.tv);
        ((NativeVideoView) this.ia).setIsAutoPlay(true);
        ((NativeVideoView) this.ia).setIsQuiet(this.ny);
        ((NativeVideoView) this.ia).setVisibility(0);
        ((NativeVideoView) this.ia).setEnableAutoCheck(false);
        ((NativeVideoView) this.ia).dq(this.s, 25, this.ox);
        ((NativeVideoView) this.ia).dq(0L, true, false);
        ((NativeVideoView) this.ia).dq(this.ox);
        com.bykv.vk.openvk.component.video.api.p.ox nativeVideoController = ((NativeVideoView) this.ia).getNativeVideoController();
        if (nativeVideoController != null) {
            dq dqVar = new dq();
            this.f3573a = dqVar;
            nativeVideoController.dq(dqVar);
        }
    }

    public void p(boolean z) {
        this.ny = z;
        View view = this.ia;
        if (view == null || ((NativeVideoView) view).getNativeVideoController() == null) {
            return;
        }
        ((NativeVideoView) this.ia).getNativeVideoController().d(z);
    }

    public void s(boolean z) {
        View view = this.ia;
        if (view != null) {
            ((NativeVideoView) view).setNeedNativeVideoPlayBtnVisible(z);
        }
    }

    public void uh() {
        dq((com.bytedance.sdk.openadsdk.core.multipro.d.dq) null);
    }

    public void v() {
        View view = this.ia;
        if (view != null) {
            ((NativeVideoView) view).s();
            ((NativeVideoView) this.ia).dq(this.ox);
        }
    }

    public boolean vw() {
        com.bykv.vk.openvk.component.video.api.dq fw;
        View view = this.ia;
        if (view == null || ((NativeVideoView) view).getNativeVideoController() == null || (fw = ((NativeVideoView) this.ia).getNativeVideoController().fw()) == null) {
            return false;
        }
        return fw.kk();
    }

    public void xz() {
        View view = this.ia;
        if (view != null) {
            ((NativeVideoView) view).ac_();
        }
    }

    public void yy() {
        View view = this.ia;
        if (view != null) {
            ((NativeVideoView) view).ia();
            if (this.dq) {
                ((NativeVideoView) this.ia).dq(true, false);
            } else {
                ((NativeVideoView) this.ia).dq(this.ox);
            }
        }
    }
}
