package com.bytedance.sdk.openadsdk.core.ugeno.o;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Toast;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import com.bytedance.sdk.component.utils.e;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.component.widget.recycler.RecyclerView;
import com.bytedance.sdk.openadsdk.core.ig.s;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.ugeno.ia.s;
import com.bytedance.sdk.openadsdk.core.ugeno.kk;
import g.co;
import g.dlv;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d extends com.bytedance.sdk.openadsdk.core.ugeno.ia.dq implements e.dq {

    /* renamed from: e, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.fw.ox f3605e;
    private boolean h;
    private AtomicBoolean ji;
    private boolean k;
    private long kx;
    private com.bytedance.sdk.openadsdk.core.ugeno.component.video.d le;
    private final Handler wp;

    public d(Context context, ViewGroup viewGroup, s sVar, j jVar, String str, int i) {
        super(context, viewGroup, sVar, jVar, str, i);
        this.k = false;
        this.wp = new e(Looper.getMainLooper(), this);
        this.h = true;
        this.ji = new AtomicBoolean();
        this.kx = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(List<j> list) {
        this.f3583f = list.size();
        this.fw = list.size();
        this.cd = jy();
        j jVar = list.get(0);
        if (jVar != null) {
            this.q = jVar.td();
        }
        this.kk = dq(list);
        com.bytedance.sdk.openadsdk.core.ugeno.ia.s.dq(this.dq, new s.dq() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.o.d.2
            @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.s.dq
            public void dq(JSONObject jSONObject) {
                if (jSONObject != null) {
                    d dVar = d.this;
                    dVar.dq(jSONObject, (List<co>) ((com.bytedance.sdk.openadsdk.core.ugeno.ia.dq) dVar).kk);
                } else {
                    ((com.bytedance.sdk.openadsdk.core.ugeno.ia.dq) d.this).p.dq(-1, "template info load fail");
                    if (((com.bytedance.sdk.openadsdk.core.ugeno.ia.dq) d.this).iw != null) {
                        ((com.bytedance.sdk.openadsdk.core.ugeno.ia.dq) d.this).iw.dq(-1);
                    }
                }
            }
        });
    }

    public void cd() {
        gh();
        if (this.h) {
            this.h = false;
            final JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("start", this.kx);
                jSONObject.put("end", System.currentTimeMillis());
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            com.bytedance.sdk.openadsdk.core.ig.ox.dq(this.s, "landingpage", "agg_stay_page", new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.o.d.3
                @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
                public void dq(JSONObject jSONObject2) throws JSONException {
                    jSONObject2.put("ad_extra_data", jSONObject);
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public int d() {
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void d(int i) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public long dq() {
        return 0L;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void dq(float f2) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void dq(float f2, float f3, float f4, float f5, int i) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void dq(int i) {
        com.bytedance.sdk.openadsdk.core.ugeno.component.video.d dVar = this.le;
        if (dVar == null) {
            ig.p("BasePageInflater", "onChangeVideoState,mVideoComponent is null !!!!!!!!!!!!");
        } else if (i == 2) {
            dVar.yy();
        } else if (i == 3) {
            dVar.xz();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.p
    public void dq(int i, int i2) {
        if (i2 > 0) {
            this.o.set(1);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void dq(int i, String str) {
    }

    @Override // com.bytedance.sdk.component.utils.e.dq
    public void dq(Message message) {
        int i = message.what;
        if (i != 10081) {
            if (i != 10082) {
                return;
            }
            if (!this.ji.get()) {
                this.wp.removeMessages(10082);
                return;
            } else {
                dq(r.dq(this.f3581d, "tt_ecomm_page_reward_slide_tip"));
                this.wp.sendEmptyMessageDelayed(10082, 6000L);
                return;
            }
        }
        com.bytedance.sdk.openadsdk.core.ugeno.ia.d dVar = this.gh;
        if (dVar != null) {
            dVar.dq();
            this.ji.set(true);
            dq(r.dq(this.f3581d, "tt_ecomm_page_reward_slide_tip"));
            this.wp.sendEmptyMessageDelayed(10082, 6000L);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.p
    public void dq(RecyclerView recyclerView, int i) {
        if (kk.d(this.s)) {
            ox(i);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.p
    public void dq(dlv dlvVar, int i, View view, co coVar) {
        JSONObject jSONObject;
        if (coVar == null || (jSONObject = coVar.f13213a) == null) {
            return;
        }
        int hashCode = jSONObject.hashCode();
        if (this.no.get(Integer.valueOf(hashCode)) != null && this.no.containsKey(Integer.valueOf(hashCode)) && this.no.get(Integer.valueOf(hashCode)).booleanValue()) {
            return;
        }
        dq(coVar.f13213a);
        if (i == this.cd) {
            dq(dlvVar);
        }
        this.no.put(Integer.valueOf(hashCode), Boolean.TRUE);
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("timestamp", System.currentTimeMillis());
            jSONObject2.put("is_slide", 1);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        if (this.o.get() == 1) {
            com.bytedance.sdk.openadsdk.core.ig.ox.dq(this.s, this.ig, "ugeno_coin_eCommerce_is_slide", jSONObject2);
        }
    }

    public void dq(String str) {
        ViewGroup viewGroup = this.ox;
        if (viewGroup == null || !viewGroup.isShown()) {
            return;
        }
        Toast makeText = Toast.makeText(this.f3581d, str, 0);
        makeText.setGravity(49, 0, 60);
        makeText.show();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void dq(boolean z) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.dq
    public void f() {
        super.f();
        com.bytedance.sdk.openadsdk.core.playable.p.dq().d(this.s);
        gh();
    }

    public void fw() {
        ScrollView scrollView = new ScrollView(this.f3581d);
        LinearLayout linearLayout = new LinearLayout(this.f3581d);
        linearLayout.setOrientation(1);
        ImageView imageView = new ImageView(this.f3581d);
        imageView.setImageDrawable(r.ox(this.f3581d, "tt_ecomm_page_backup_img"));
        ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_XY;
        imageView.setScaleType(scaleType);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.topMargin = ce.ox(this.f3581d, 10.0f);
        layoutParams.leftMargin = ce.ox(this.f3581d, 10.0f);
        layoutParams.rightMargin = ce.ox(this.f3581d, 10.0f);
        linearLayout.addView(imageView, layoutParams);
        ImageView imageView2 = new ImageView(this.f3581d);
        imageView2.setScaleType(scaleType);
        imageView2.setImageDrawable(r.ox(this.f3581d, "tt_ecomm_page_backup_img"));
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.topMargin = ce.ox(this.f3581d, 10.0f);
        layoutParams2.leftMargin = ce.ox(this.f3581d, 10.0f);
        layoutParams2.rightMargin = ce.ox(this.f3581d, 10.0f);
        linearLayout.addView(imageView2, layoutParams2);
        scrollView.addView(linearLayout, new ViewGroup.LayoutParams(-1, -2));
        this.ox.addView(scrollView, new FrameLayout.LayoutParams(-1, -1));
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public long getActualPlayDuration() {
        return 0L;
    }

    public void gh() {
        Handler handler = this.wp;
        if (handler != null) {
            handler.removeMessages(10081);
            this.wp.removeMessages(10082);
        }
    }

    public void i() {
        if (kk.d(this.s)) {
            this.wp.sendEmptyMessageDelayed(10081, PushUIConfig.dismissTime);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void ia() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.dq
    public List<co> ig() {
        this.kk = new ArrayList();
        JSONObject ve = this.s.ve();
        try {
            ve.put("env_info", kk.dq());
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        this.kk.add(new co(ve, -2134548432));
        return this.kk;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void iw() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.p
    public void iw(dlv dlvVar) {
        JSONObject o;
        if (dlvVar == null || (o = dlvVar.o()) == null) {
            return;
        }
        dlv ox = dlvVar.ox("video_".concat(String.valueOf(o.optInt("image_mode"))));
        if (ox instanceof com.bytedance.sdk.openadsdk.core.ugeno.component.video.d) {
            ((com.bytedance.sdk.openadsdk.core.ugeno.component.video.d) ox).v();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void kk() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void mn() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.dq
    public void mp() {
        try {
            this.jy = kk.dq(this.s);
            JSONObject td = this.s.td();
            this.f3605e = new com.bytedance.sdk.openadsdk.core.fw.ox() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.o.d.1
                @Override // com.bytedance.sdk.openadsdk.core.fw.ox
                public void dq(boolean z, List<j> list, boolean z2) {
                    if (!z) {
                        if (((com.bytedance.sdk.openadsdk.core.ugeno.ia.dq) d.this).i.get() > 0) {
                            ((com.bytedance.sdk.openadsdk.core.ugeno.ia.dq) d.this).i.get();
                            ((com.bytedance.sdk.openadsdk.core.ugeno.ia.dq) d.this).i.decrementAndGet();
                            d.this.mp();
                            return;
                        } else {
                            ((com.bytedance.sdk.openadsdk.core.ugeno.ia.dq) d.this).p.dq(-3, "ad meta info load fail");
                            if (((com.bytedance.sdk.openadsdk.core.ugeno.ia.dq) d.this).iw != null) {
                                ((com.bytedance.sdk.openadsdk.core.ugeno.ia.dq) d.this).iw.dq(-3);
                                return;
                            }
                            return;
                        }
                    }
                    if (list != null && list.size() > 0) {
                        d.this.d(list);
                        return;
                    }
                    if (((com.bytedance.sdk.openadsdk.core.ugeno.ia.dq) d.this).i.get() <= 0) {
                        if (((com.bytedance.sdk.openadsdk.core.ugeno.ia.dq) d.this).iw != null) {
                            ((com.bytedance.sdk.openadsdk.core.ugeno.ia.dq) d.this).iw.dq(-2);
                        }
                    } else {
                        ((com.bytedance.sdk.openadsdk.core.ugeno.ia.dq) d.this).i.get();
                        ((com.bytedance.sdk.openadsdk.core.ugeno.ia.dq) d.this).i.decrementAndGet();
                        d.this.mp();
                    }
                }
            };
            j jVar = this.s;
            if (jVar != null) {
                if (jVar.r() != null) {
                    if (this.s.r().ox() != null) {
                        if (this.s.r().ox().optInt("use_gnd_prefetch", 0) == 1) {
                        }
                        j jVar2 = this.s;
                        com.bytedance.sdk.openadsdk.core.le.d.dq(jVar2, td, this.f3605e, jVar2.ds());
                    }
                }
            }
            if (com.bytedance.sdk.openadsdk.core.playable.p.dq().dq(this.s, this.f3605e)) {
                return;
            }
            j jVar22 = this.s;
            com.bytedance.sdk.openadsdk.core.le.d.dq(jVar22, td, this.f3605e, jVar22.ds());
        } catch (Exception e2) {
            if (this.i.get() > 0) {
                this.i.get();
                this.i.decrementAndGet();
                mp();
            } else {
                this.p.dq(-3, e2.getMessage());
                com.bytedance.sdk.openadsdk.core.ugeno.s.dq dqVar = this.iw;
                if (dqVar != null) {
                    dqVar.dq(-3);
                }
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void no() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void o() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public int ox() {
        return 0;
    }

    public void ox(int i) {
        if (i == 0) {
            if (this.ji.get()) {
                return;
            }
            this.wp.sendEmptyMessageDelayed(10081, PushUIConfig.dismissTime);
            return;
        }
        if (this.ji.get()) {
            com.bytedance.sdk.openadsdk.core.ugeno.ia.d dVar = this.gh;
            if (dVar != null) {
                dVar.d();
            }
            this.ji.set(false);
        }
        this.wp.removeMessages(10081);
        this.wp.removeMessages(10082);
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.ox
    public void ox(dlv dlvVar) {
        if (dlvVar == null) {
            return;
        }
        j dq = dlvVar.o().has("ugen_sub_meta") ? com.bytedance.sdk.openadsdk.core.d.dq(dlvVar.o().optJSONObject("ugen_sub_meta")) : com.bytedance.sdk.openadsdk.core.d.dq(dlvVar.o());
        if (dq != null) {
            dq(dq, dlvVar);
        }
    }

    public void ox(boolean z) {
        this.k = z;
        com.bytedance.sdk.openadsdk.core.ugeno.component.video.d dVar = this.le;
        if (dVar != null) {
            dVar.p(z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void p() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.p
    public void p(dlv dlvVar) {
    }

    public void r() {
        this.wp.removeMessages(10082);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void s() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.p
    public void s(dlv dlvVar) {
        JSONObject o;
        if (dlvVar == null || (o = dlvVar.o()) == null) {
            return;
        }
        dlv ox = dlvVar.ox("video_".concat(String.valueOf(o.optInt("image_mode"))));
        if (ox instanceof com.bytedance.sdk.openadsdk.core.ugeno.component.video.d) {
            com.bytedance.sdk.openadsdk.core.ugeno.component.video.d dVar = (com.bytedance.sdk.openadsdk.core.ugeno.component.video.d) ox;
            this.le = dVar;
            dVar.p(this.k);
            this.le.uh();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.o
    public void setPauseFromExpressView(boolean z) {
    }
}
