package com.bytedance.sdk.openadsdk.core.ugeno.p;

import android.app.Activity;
import android.graphics.Color;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity;
import com.bytedance.sdk.openadsdk.core.h;
import com.bytedance.sdk.openadsdk.core.ig.s;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.ir.iw;
import com.bytedance.sdk.openadsdk.core.le.d;
import com.bytedance.sdk.openadsdk.core.o.ox.ig;
import com.bytedance.sdk.openadsdk.core.o.ox.jy;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.ugeno.ia.mn;
import com.bytedance.sdk.openadsdk.core.ugeno.ia.s;
import com.bytedance.sdk.openadsdk.core.ugeno.p.d;
import com.bytedance.sdk.openadsdk.core.wp;
import g.abn;
import g.cdf;
import g.dlv;
import g.fde;
import g.fzc;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq implements d.dq {

    /* renamed from: d, reason: collision with root package name */
    protected d f3630d;
    protected j dq;

    /* renamed from: f, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.multipro.d.dq f3631f;
    private com.bytedance.sdk.openadsdk.core.o.d.dq fw = new com.bytedance.sdk.openadsdk.core.o.d.dq() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.p.dq.8
        @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
        public void d(long j, long j2, String str, String str2) {
        }

        @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
        public void dq() {
        }

        @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
        public void dq(long j, long j2, String str, String str2) {
        }

        @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
        public void dq(long j, String str, String str2) {
        }

        @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
        public void dq(String str, String str2) {
        }

        @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
        public void ox(long j, long j2, String str, String str2) {
        }
    };
    private ViewGroup ia;
    private com.bytedance.sdk.openadsdk.core.r.ox ig;
    private s iw;
    private fde jy;
    private dlv kk;
    private Activity mn;
    private String mp;
    private JSONObject no;
    private com.bytedance.sdk.openadsdk.core.o.d.ox o;
    protected com.bytedance.sdk.openadsdk.core.ugeno.s.dq ox;
    protected String p;
    private com.bytedance.sdk.openadsdk.core.ugeno.component.video.d q;
    protected int s;

    public dq(Activity activity, ViewGroup viewGroup, s sVar, j jVar, String str, int i, com.bytedance.sdk.openadsdk.core.multipro.d.dq dqVar) {
        this.dq = jVar;
        this.mn = activity;
        this.iw = sVar;
        this.ia = viewGroup;
        this.p = str;
        this.s = i;
        this.f3631f = dqVar;
    }

    private void d(j jVar) {
        String ip;
        if (jVar == null) {
            return;
        }
        if (this.ig != null) {
            com.bytedance.sdk.openadsdk.core.r.s hy = jVar.hy();
            if (hy != null) {
                this.ig.dq(hy.p());
                this.ig.dq(hy.ox());
            }
            ip = this.ig.iw();
        } else {
            ip = jVar.ip();
        }
        Activity activity = this.mn;
        if (activity instanceof TTNativePageActivity) {
            ((TTNativePageActivity) activity).ox();
        }
        iw.dq(this.mn, jVar.fx(), new iw.dq() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.p.dq.6
            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void d() {
                if (dq.this.mn instanceof TTNativePageActivity) {
                    ((TTNativePageActivity) dq.this.mn).p();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void dq() {
                dq.this.p(true);
                if (dq.this.mn instanceof TTNativePageActivity) {
                    ((TTNativePageActivity) dq.this.mn).p();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void ox() {
                if (dq.this.mn instanceof TTNativePageActivity) {
                    ((TTNativePageActivity) dq.this.mn).p();
                }
            }
        }, ip);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(JSONObject jSONObject) {
        this.no = jSONObject;
        p(jSONObject);
    }

    private void d(boolean z) {
        ia();
        com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = this.o;
        if (oxVar instanceof ig) {
            ((ig) oxVar).d().dq(z);
        }
    }

    private boolean d(fzc fzcVar) {
        if (fzcVar == null) {
            return false;
        }
        View kk = fzcVar.f17689b.kk();
        if (!(kk instanceof TextView)) {
            return false;
        }
        CharSequence text = ((TextView) kk).getText();
        if (TextUtils.isEmpty(text)) {
            return false;
        }
        return text.toString().contains("下载");
    }

    private void dq(j jVar) {
        String ip;
        if (jVar == null) {
            return;
        }
        if (this.ig != null) {
            com.bytedance.sdk.openadsdk.core.r.s hy = jVar.hy();
            if (hy != null) {
                this.ig.dq(hy.p());
                this.ig.dq(hy.ox());
            }
            ip = this.ig.iw();
        } else {
            ip = jVar.ip();
        }
        Activity activity = this.mn;
        if (activity instanceof TTNativePageActivity) {
            ((TTNativePageActivity) activity).ox();
        }
        iw.dq(this.mn, jVar.fx(), ip, new iw.dq() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.p.dq.5
            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void d() {
                if (dq.this.mn instanceof TTNativePageActivity) {
                    ((TTNativePageActivity) dq.this.mn).p();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void dq() {
                dq.this.p(true);
                if (dq.this.mn instanceof TTNativePageActivity) {
                    ((TTNativePageActivity) dq.this.mn).p();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void ox() {
                if (dq.this.mn instanceof TTNativePageActivity) {
                    ((TTNativePageActivity) dq.this.mn).p();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(JSONObject jSONObject, JSONObject jSONObject2) {
        this.iw.d();
        this.f3630d.dq(this);
        this.f3630d.dq(jSONObject, jSONObject2, new mn() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.p.dq.3
            @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.mn
            public void dq(int i, String str) {
                com.bytedance.sdk.openadsdk.core.ugeno.s.dq dqVar = dq.this.ox;
                if (dqVar != null) {
                    dqVar.dq(i);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.mn
            public void dq(dlv dlvVar) {
                dq.this.kk = dlvVar;
                dq.this.ia.addView(dlvVar.kk(), new FrameLayout.LayoutParams(dlvVar.ir(), dlvVar.u()));
                com.bytedance.sdk.openadsdk.core.ugeno.s.dq dqVar = dq.this.ox;
                if (dqVar != null) {
                    dqVar.dq(dlvVar.kk());
                }
                dq.this.s();
                dq.this.dq(dlvVar);
            }
        });
    }

    private void dq(boolean z) {
        com.bytedance.sdk.openadsdk.core.ugeno.component.video.d dVar = this.q;
        if (dVar != null) {
            dVar.p(z);
        }
        fde fdeVar = this.jy;
        if (fdeVar == null || fdeVar.kk() == null) {
            return;
        }
        ((cdf) this.jy.kk()).setImageDrawable(r.ox(this.mn, z ? "tt_mute" : "tt_unmute"));
    }

    private void ia() {
        if (this.o == null) {
            com.bytedance.sdk.openadsdk.core.o.d.ox dq = com.bytedance.sdk.openadsdk.core.o.s.dq(this.mn, this.mp, this.dq, this.p);
            this.o = dq;
            dq.dq(jy.dq(this.dq));
            this.o.dq(this.fw, false);
            this.o.iw(false);
        }
        this.o.dq(this.mn);
    }

    private String iw() {
        JSONArray optJSONArray;
        JSONObject optJSONObject;
        JSONObject jSONObject = this.no;
        if (jSONObject != null && (optJSONArray = jSONObject.optJSONArray("download_buttons")) != null && (optJSONObject = optJSONArray.optJSONObject(0)) != null) {
            String optString = optJSONObject.optString(abn.EXTRA_URL);
            return TextUtils.isEmpty(optString) ? mn() : optString;
        }
        return mn();
    }

    private void kk() {
        com.bytedance.sdk.openadsdk.core.ugeno.component.video.d dVar = this.q;
        if (dVar != null) {
            dVar.dq(this.f3631f);
        }
    }

    private String mn() {
        return c.f(this.dq);
    }

    private void ox(j jVar) {
        if (jVar == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.r.s hy = jVar.hy();
        com.bytedance.sdk.openadsdk.core.r.ox oxVar = this.ig;
        iw.d(this.mn, oxVar != null ? oxVar.p() : hy == null ? "" : hy.kk(), jVar.fx(), new iw.dq() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.p.dq.7
            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void d() {
                if (dq.this.mn instanceof TTNativePageActivity) {
                    ((TTNativePageActivity) dq.this.mn).p();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void dq() {
                dq.this.p(true);
                if (dq.this.mn instanceof TTNativePageActivity) {
                    ((TTNativePageActivity) dq.this.mn).p();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void ox() {
                if (dq.this.mn instanceof TTNativePageActivity) {
                    ((TTNativePageActivity) dq.this.mn).p();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox(final JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.core.ugeno.ia.s.dq(this.dq.ig(), "lp_" + this.dq.no(), this.dq.mp(), new s.dq() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.p.dq.2
            @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.s.dq
            public void dq(JSONObject jSONObject2) {
                if (jSONObject2 == null) {
                    dq.this.iw.dq(-1, "template info load fail");
                    com.bytedance.sdk.openadsdk.core.ugeno.s.dq dqVar = dq.this.ox;
                    if (dqVar != null) {
                        dqVar.dq(-1);
                        return;
                    }
                    return;
                }
                try {
                    jSONObject.put("creative", dq.this.dq.ve());
                    dq.this.dq(jSONObject);
                    dq.this.dq(jSONObject2, jSONObject);
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
        });
    }

    private void ox(boolean z) {
        d(false);
        p(z);
    }

    private void p(final JSONObject jSONObject) {
        if (this.ig != null) {
            try {
                JSONObject jSONObject2 = new JSONObject(this.ig.iw());
                jSONObject2.put("is_support_func_desc", "true");
                jSONObject.put("app", jSONObject2);
                ox(jSONObject);
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        String iw = iw();
        this.mp = iw;
        if (!TextUtils.isEmpty(iw)) {
            com.bytedance.sdk.component.o.mn.d(new kk("tt_pl_download_check") { // from class: com.bytedance.sdk.openadsdk.core.ugeno.p.dq.4
                @Override // java.lang.Runnable
                public void run() {
                    dq dqVar = dq.this;
                    h<com.bytedance.sdk.openadsdk.core.ig.dq> dq = wp.dq();
                    dq dqVar2 = dq.this;
                    dqVar.ig = dq.dq(dqVar2.dq, dqVar2.mp);
                    try {
                        JSONObject jSONObject3 = dq.this.ig != null ? new JSONObject(dq.this.ig.iw()) : dq.this.dq.ip() != null ? new JSONObject(dq.this.dq.ip()) : new JSONObject();
                        jSONObject3.put("is_support_func_desc", "true");
                        jSONObject.put("app", jSONObject3);
                        jSONObject3.put("download_url", dq.this.mp);
                        dq.this.ox(jSONObject);
                    } catch (Throwable unused2) {
                    }
                }
            });
            return;
        }
        com.bytedance.sdk.openadsdk.core.ugeno.s.dq dqVar = this.ox;
        if (dqVar != null) {
            dqVar.dq(-4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(boolean z) {
        ia();
        com.bytedance.sdk.openadsdk.core.d.dq dqVar = new com.bytedance.sdk.openadsdk.core.d.dq(this.mn, this.dq, "embeded_ad_landingpage", this.s);
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).ox(true);
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(true);
        this.o.d(z);
        this.o.dq(this.dq, false);
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this.o);
        this.o.d(c.gh(this.dq), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        j jVar = this.dq;
        if (jVar == null || pa.kk(jVar) != 200) {
            return;
        }
        dlv ox = this.kk.ox(MediaFormat.KEY_VIDEO);
        if (ox instanceof com.bytedance.sdk.openadsdk.core.ugeno.component.video.d) {
            com.bytedance.sdk.openadsdk.core.ugeno.component.video.d dVar = (com.bytedance.sdk.openadsdk.core.ugeno.component.video.d) ox;
            this.q = dVar;
            dVar.s(true);
            kk();
        }
        dlv ox2 = this.kk.ox("mute");
        if (ox2 instanceof fde) {
            this.jy = (fde) ox2;
            ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
            shapeDrawable.getPaint().setColor(Color.parseColor("#99333333"));
            shapeDrawable.setIntrinsicWidth(ce.ox(this.mn, 28.0f));
            shapeDrawable.setIntrinsicHeight(ce.ox(this.mn, 28.0f));
            ((cdf) this.jy.kk()).setBackground(shapeDrawable);
        }
        com.bytedance.sdk.openadsdk.core.multipro.d.dq dqVar = this.f3631f;
        if (dqVar != null) {
            dq(dqVar.ia);
        } else {
            dq(true);
        }
    }

    public void d() {
        com.bytedance.sdk.openadsdk.core.ugeno.component.video.d dVar = this.q;
        if (dVar != null) {
            dVar.yy();
        }
    }

    public void dq() {
        this.f3630d = new d(this.mn, this.iw, this.p, this.s);
        if (this.dq.jy() != null) {
            try {
                d(new JSONObject(this.dq.jy().toString()));
                return;
            } catch (JSONException e2) {
                e2.printStackTrace();
                return;
            }
        }
        int no = this.dq.no();
        if (no == 5 || no == 4) {
            d(new JSONObject());
        } else {
            com.bytedance.sdk.openadsdk.core.le.d.dq(this.dq.o(), new d.dq() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.p.dq.1
                @Override // com.bytedance.sdk.openadsdk.core.le.d.dq
                public void dq(int i, String str) {
                    dq.this.iw.dq(-3, "ad meta info load fail");
                    com.bytedance.sdk.openadsdk.core.ugeno.s.dq dqVar = dq.this.ox;
                    if (dqVar != null) {
                        dqVar.dq(-3);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.le.d.dq
                public void dq(JSONObject jSONObject) {
                    dq.this.d(jSONObject);
                }
            });
        }
    }

    public void dq(com.bytedance.sdk.openadsdk.core.ugeno.s.dq dqVar) {
        this.ox = dqVar;
    }

    public void dq(dlv dlvVar) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.p.d.dq
    public void dq(fzc fzcVar) {
        JSONObject jSONObject;
        com.bytedance.sdk.openadsdk.core.ugeno.component.video.d dVar;
        if (fzcVar == null || fzcVar.f17690c != 1 || (jSONObject = fzcVar.f17691d) == null) {
            return;
        }
        String optString = jSONObject.optString("type");
        optString.getClass();
        switch (optString) {
            case "openAppPermission":
                dq(this.dq);
                break;
            case "clickVideo":
                com.bytedance.sdk.openadsdk.core.ugeno.component.video.d dVar2 = this.q;
                if (dVar2 != null) {
                    dVar2.ha();
                    break;
                }
                break;
            case "openAppFunctionDesc":
                ox(this.dq);
                break;
            case "downloadEvent":
                d(true);
                p(d(fzcVar));
                break;
            case "downloadDirect":
                ox(d(fzcVar));
                break;
            case "muteVideo":
                if (this.jy != null && (dVar = this.q) != null) {
                    dq(!dVar.d());
                    break;
                }
                break;
            case "openAppPolicy":
                d(this.dq);
                break;
            case "openInfringement":
                iw.dq(this.mn, this.p, this.dq);
                break;
        }
    }

    public void dq(JSONObject jSONObject) {
    }

    public void ox() {
        com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = this.o;
        if (oxVar != null) {
            oxVar.ia();
        }
        com.bytedance.sdk.openadsdk.core.ugeno.component.video.d dVar = this.q;
        if (dVar != null) {
            dVar.xz();
        }
    }

    public void p() {
        com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = this.o;
        if (oxVar != null) {
            oxVar.kk();
        }
    }
}
