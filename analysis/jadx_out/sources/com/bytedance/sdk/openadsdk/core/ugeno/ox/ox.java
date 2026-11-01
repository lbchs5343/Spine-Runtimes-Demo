package com.bytedance.sdk.openadsdk.core.ugeno.ox;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.bytedance.android.live.base.api.push.ILivePush;
import com.bytedance.sdk.component.adexpress.d.ia;
import com.bytedance.sdk.component.adexpress.d.mn;
import com.bytedance.sdk.component.adexpress.d.q;
import com.bytedance.sdk.component.utils.i;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.gh.ig;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.ir.ir;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.k;
import com.bytedance.sdk.openadsdk.core.r.o;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.ahr;
import g.ajp;
import g.bix;
import g.blw;
import g.cyx;
import g.dlv;
import g.dvh;
import g.dzm;
import g.efb;
import g.eho;
import g.eyh;
import g.fde;
import g.fmg;
import g.fzc;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ox implements cyx, ahr, com.bytedance.sdk.component.adexpress.d.p<View>, com.bytedance.sdk.component.adexpress.dynamic.p {
    protected com.bytedance.sdk.openadsdk.core.ugeno.no.dq cd;

    /* renamed from: d, reason: collision with root package name */
    protected Context f3613d;
    protected ajp dq;
    protected i fw;
    private List<dlv> gh;
    private String i;
    protected FrameLayout ia;
    protected j iw;
    protected dlv jy;
    protected ia kk;
    private boolean le;
    protected dq mn;
    protected WeakReference<ViewGroup> mp;
    protected q no;
    protected com.bytedance.sdk.openadsdk.core.ugeno.component.interact.ia o;
    protected dlv ox;
    protected dlv q;
    private String r;
    protected JSONObject s;
    protected o ig = new o();

    /* renamed from: f, reason: collision with root package name */
    protected AtomicBoolean f3614f = new AtomicBoolean(false);
    protected JSONObject p = dq();

    public ox(Context context, j jVar, dq dqVar, ViewGroup viewGroup) {
        JSONObject jSONObject;
        JSONObject optJSONObject;
        this.le = false;
        this.f3613d = context;
        this.dq = new ajp(context);
        this.iw = jVar;
        this.mn = dqVar;
        this.ia = new FrameLayout(context);
        this.mp = new WeakReference<>(viewGroup);
        if (jVar == null || !jVar.ju() || (jSONObject = this.p) == null || (optJSONObject = jSONObject.optJSONObject("event_template")) == null) {
            return;
        }
        this.le = true;
        com.bytedance.sdk.component.no.ox.d.INSTANCE.dq(optJSONObject);
    }

    private void d(fzc fzcVar) {
        JSONObject jSONObject;
        if (fzcVar == null || (jSONObject = fzcVar.f17691d) == null) {
            return;
        }
        ig.dq().dq(this.iw, jSONObject.optString("uttieUrl"));
    }

    private void d(fzc fzcVar, dvh dvhVar, eho ehoVar) {
        JSONObject jSONObject = fzcVar.f17691d;
        if (jSONObject == null) {
            return;
        }
        String optString = jSONObject.optString("type", null);
        if (TextUtils.isEmpty(optString)) {
            return;
        }
        optString.getClass();
        if (optString.equals("clickEvent")) {
            dq(fzcVar, dvhVar, ehoVar, 0);
            return;
        }
        if (optString.equals(ILivePush.ClickType.CLOSE)) {
            com.bytedance.sdk.openadsdk.core.ugeno.component.interact.ia iaVar = this.o;
            if (iaVar != null) {
                iaVar.dq();
            }
            ig.dq().d(this.iw, jSONObject.optString("uttieUrl"));
        }
    }

    private void d(JSONObject jSONObject) {
        dlv dlvVar;
        dlv ox;
        if (jSONObject == null) {
            return;
        }
        String ae = dzm.ae(jSONObject.optString("type"), kk());
        String ae2 = dzm.ae(jSONObject.optString("nodeId"), kk());
        if (TextUtils.isEmpty(ae2) || (dlvVar = this.ox) == null || (ox = dlvVar.d(dlvVar).ox(ae2)) == null) {
            return;
        }
        if (TextUtils.equals(ae, "onDismiss")) {
            ox.d(8);
        } else if (TextUtils.equals(ae, "onShow")) {
            ox.d(0);
        }
    }

    private void dq(dlv dlvVar, List<dlv> list) {
        if (!(dlvVar instanceof eyh)) {
            if (dlvVar == null || !dlvVar.dq(4)) {
                return;
            }
            list.add(dlvVar);
            return;
        }
        if (dlvVar.dq(4)) {
            list.add(dlvVar);
        }
        List<dlv> d2 = ((eyh) dlvVar).d();
        if (d2 == null || d2.size() == 0) {
            return;
        }
        Iterator<dlv> it = d2.iterator();
        while (it.hasNext()) {
            dq(it.next(), list);
        }
    }

    private void dq(fzc fzcVar) {
        JSONObject jSONObject;
        if (fzcVar == null || (jSONObject = fzcVar.f17691d) == null) {
            return;
        }
        String optString = jSONObject.optString("type");
        String optString2 = jSONObject.optString("uchain");
        JSONObject optJSONObject = jSONObject.optJSONObject("params");
        JSONObject jSONObject2 = new JSONObject();
        if (optJSONObject != null) {
            Iterator<String> keys = optJSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                try {
                    jSONObject2.put(next, dzm.ae(optJSONObject.optString(next), kk()));
                } catch (Throwable unused) {
                }
            }
        }
        if ("true".equals(optString2)) {
            if (!com.bytedance.sdk.openadsdk.core.ia.dq.p.dq.dq()) {
                com.bytedance.sdk.openadsdk.core.ig.ox.d(this.iw, c.d(this.iw), "ugen_view_visibility", jSONObject2);
                return;
            }
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            hashMap2.put("material_meta", this.iw);
            HashMap hashMap3 = new HashMap();
            hashMap3.put("ugen_event_params", jSONObject2);
            String d2 = c.d(this.iw);
            c.kx();
            com.bytedance.sdk.openadsdk.core.ia.dq.p.dq.dq(this.iw, hashMap, optString, hashMap2, d2, hashMap3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(fzc fzcVar, dvh dvhVar, eho ehoVar, int i) {
        dlv dlvVar;
        int i2;
        String str;
        fzc fzcVar2;
        JSONObject bl;
        CharSequence text;
        if (fzcVar == null || (dlvVar = fzcVar.f17689b) == null) {
            return;
        }
        JSONObject jSONObject = fzcVar.f17691d;
        String ae = dzm.ae(jSONObject.optString("nodeId"), kk());
        String ae2 = dzm.ae(jSONObject.optString("type"), kk());
        int i3 = -1;
        if (TextUtils.equals(ae2, "clickEvent")) {
            str = jSONObject.optString("subConvertLinkTag");
            i3 = jSONObject.optInt("dpaPosition", -1);
            i2 = 2;
        } else {
            if (TextUtils.equals(ae2, "muteVideo")) {
                this.r = jSONObject.optString("muteSrc");
                this.i = jSONObject.optString("unmuteSrc");
                i2 = 5;
            } else if (TextUtils.equals(ae2, "dislike")) {
                i2 = 3;
            } else if (TextUtils.equals(ae2, "skip")) {
                i2 = 6;
            } else if (TextUtils.equals(ae2, "openPolicy")) {
                i2 = 7;
            } else if (TextUtils.equals(ae2, "openAppPolicy")) {
                i2 = 9;
            } else if (TextUtils.equals(ae2, "openAppPermission")) {
                i2 = 10;
            } else if (TextUtils.equals(ae2, ILivePush.ClickType.CLOSE)) {
                str = "";
                i2 = 8;
            } else if (TextUtils.equals(ae2, "openAppFunctionDesc")) {
                i2 = 12;
            } else if (TextUtils.equals(ae2, "videoControl") || TextUtils.equals(ae2, "pauseVideo")) {
                i2 = 4;
            } else {
                if (TextUtils.equals(ae2, "onDismiss")) {
                    dlv dlvVar2 = fzcVar.f17689b;
                    dlv ox = dlvVar2.d(dlvVar2).ox(ae);
                    if (ox != null) {
                        ox.d(8);
                        return;
                    }
                    return;
                }
                if (TextUtils.equals(ae2, "onShow")) {
                    dlv dlvVar3 = fzcVar.f17689b;
                    dlv ox2 = dlvVar3.d(dlvVar3).ox(ae);
                    if (ox2 != null) {
                        ox2.d(0);
                        return;
                    }
                    return;
                }
                str = "";
                i2 = 0;
            }
            str = "";
        }
        k.dq s = new k.dq().p(this.ig.q()).ox(this.ig.jy()).d(this.ig.f()).dq(this.ig.fw()).dq(dlvVar.n()).d(this.ig.ig()).dq(this.ig.mp()).s(str).s(i3);
        JSONObject jSONObject2 = new JSONObject();
        if (i > 0) {
            try {
                jSONObject2.put("convertActionType", i);
            } catch (Throwable unused) {
            }
        }
        View kk = dlvVar.kk();
        try {
            if ((kk instanceof TextView) && (text = ((TextView) kk).getText()) != null && text.toString().contains("下载")) {
                jSONObject2.put("is_compliant_download", true);
            }
        } catch (JSONException unused2) {
        }
        try {
            j jVar = this.iw;
            if (jVar != null && jVar.ju() && this.le && jSONObject.optBoolean("uchain", false)) {
                jSONObject2.put("uchain_event_name", ae2);
            }
        } catch (JSONException unused3) {
        }
        try {
            dq dqVar = this.mn;
            if (dqVar != null && (bl = dqVar.bl()) != null) {
                jSONObject2.put("ugen_id", bl.optString("ugen_id"));
            }
        } catch (JSONException unused4) {
        }
        s.dq(jSONObject2);
        k dq = s.dq();
        ia iaVar = this.kk;
        if (iaVar != null) {
            iaVar.dq(kk, i2, dq);
        }
        if (dvhVar == null || (fzcVar2 = fzcVar.f17688a) == null) {
            return;
        }
        dvhVar.dq(fzcVar2);
    }

    private void dq(JSONObject jSONObject) {
        dlv dlvVar;
        dlv ox;
        if (jSONObject == null) {
            return;
        }
        String ae = dzm.ae(jSONObject.optString("type"), kk());
        String ae2 = dzm.ae(jSONObject.optString("nodeId"), kk());
        if (TextUtils.isEmpty(ae2) || (dlvVar = this.ox) == null || (ox = dlvVar.d(dlvVar).ox(ae2)) == null) {
            return;
        }
        if (TextUtils.equals(ae, "onShow")) {
            ox.d(0);
        } else if (TextUtils.equals(ae, "onDismiss")) {
            ox.d(8);
        }
    }

    private void ox(fzc fzcVar) {
        JSONObject jSONObject;
        if (fzcVar == null || (jSONObject = fzcVar.f17691d) == null) {
            return;
        }
        ig.dq().dq(this.iw, jSONObject.optString("uttieUrl"), jSONObject.optLong(MediationConstant.EXTRA_DURATION));
    }

    private void ox(final fzc fzcVar, final dvh dvhVar, final eho ehoVar) {
        if (this.fw == null) {
            i iVar = new i(wp.getContext(), 2, this.mn.mn());
            this.fw = iVar;
            iVar.dq(this.iw.us());
            this.fw.ox(this.iw.tn());
            this.fw.d(this.iw.bs());
            this.fw.dq(this.iw.rw());
            this.fw.d(this.iw.jo());
            this.fw.dq(this.iw.mc());
            this.fw.d(this.iw.aq());
        }
        final AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        final float[] fArr = {TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT};
        this.fw.dq(new i.dq() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.ox.ox.2
            @Override // com.bytedance.sdk.component.utils.i.dq
            public void dq(int i) {
                if (i != 2) {
                    return;
                }
                ox.this.fw.d();
                fArr[0] = 0.0f;
                View kk = ((dlv) dvhVar).kk();
                if (kk != null) {
                    kk.getViewTreeObserver().addOnWindowFocusChangeListener(new ViewTreeObserver.OnWindowFocusChangeListener() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.ox.ox.2.1
                        @Override // android.view.ViewTreeObserver.OnWindowFocusChangeListener
                        public void onWindowFocusChanged(boolean z) {
                            if (z) {
                                ox.this.fw.dq();
                            } else {
                                ox.this.fw.d();
                                fArr[0] = 0.0f;
                            }
                        }
                    });
                }
                AtomicBoolean atomicBoolean2 = atomicBoolean;
                if (atomicBoolean2 != null) {
                    atomicBoolean2.set(true);
                }
                ox.this.dq(fzcVar, dvhVar, ehoVar, 2);
            }
        });
        this.fw.dq(new i.d() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.ox.ox.3
            float dq = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;

            /* renamed from: d, reason: collision with root package name */
            float f3616d = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            float ox = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            float p = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            float s = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            float iw = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            long mn = System.currentTimeMillis();

            @Override // com.bytedance.sdk.component.utils.i.d
            public void dq(float f2, float f3, float f4) {
                JSONObject jSONObject;
                View kk;
                boolean z;
                float f5;
                float f6;
                long currentTimeMillis = System.currentTimeMillis();
                if (currentTimeMillis - this.mn < 100) {
                    return;
                }
                this.mn = currentTimeMillis;
                fzc fzcVar2 = fzcVar;
                if (fzcVar2 == null || (jSONObject = fzcVar2.f17691d) == null) {
                    return;
                }
                double optDouble = jSONObject.optDouble("rotateZ", -1.0d);
                if (optDouble == -1.0d) {
                    return;
                }
                dvh dvhVar2 = dvhVar;
                if ((dvhVar2 instanceof dlv) && (kk = ((dlv) dvhVar2).kk()) != null && kk.isShown()) {
                    float abs = Math.abs(f2);
                    float abs2 = Math.abs(f3);
                    float abs3 = Math.abs(f4);
                    AtomicBoolean atomicBoolean2 = atomicBoolean;
                    if (atomicBoolean2 != null && atomicBoolean2.get()) {
                        if (f2 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && f3 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && f4 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                            atomicBoolean.set(false);
                        }
                        this.dq = abs;
                        this.f3616d = abs2;
                        this.ox = abs3;
                        this.p = f2;
                        this.s = f3;
                        this.iw = f4;
                        return;
                    }
                    float max = Math.max(Math.abs(abs - this.dq), Math.max(Math.abs(abs2 - this.f3616d), Math.abs(abs3 - this.ox)));
                    int bs = ox.this.iw.bs();
                    if (bs <= 0) {
                        bs = 50;
                    }
                    if (Math.abs(abs - this.dq) == max) {
                        f5 = f2 >= this.p ? max : -max;
                        z = true;
                    } else {
                        z = false;
                        f5 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                    }
                    if (Math.abs(abs2 - this.f3616d) == max) {
                        f5 = f3 >= this.s ? max : -max;
                        z = true;
                    }
                    if (Math.abs(abs3 - this.ox) != max) {
                        max = f5;
                    } else if (f4 < this.iw) {
                        max = -max;
                    }
                    if (ox.this.iw.jo() == 0) {
                        f6 = (float) Math.ceil((max * 180.0f) / optDouble);
                    } else {
                        double degrees = Math.toDegrees(max);
                        float ceil = (float) Math.ceil(degrees / optDouble);
                        if (z && Math.abs(degrees) < bs - 8) {
                            return;
                        } else {
                            f6 = z ? -Math.abs(ceil) : ceil;
                        }
                    }
                    if (Math.abs(f6 - fArr[0]) < 1.3d) {
                        return;
                    }
                    ObjectAnimator ofFloat = ObjectAnimator.ofFloat(kk, "rotation", fArr[0], f6);
                    ofFloat.setInterpolator(new LinearInterpolator());
                    ofFloat.setDuration(100L);
                    ofFloat.start();
                    fArr[0] = f6;
                }
            }
        });
        this.fw.dq();
    }

    private void p(final fzc fzcVar, final dvh dvhVar, final eho ehoVar) {
        WeakReference<ViewGroup> weakReference = this.mp;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        ir.dq(this.mp, new com.bytedance.sdk.openadsdk.core.d.ox() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.ox.ox.4
            @Override // com.bytedance.sdk.openadsdk.core.d.ox
            public void dq() {
                WeakReference<ViewGroup> weakReference2 = ox.this.mp;
                if (weakReference2 == null || weakReference2.get() == null || !ir.dq(ox.this.mp.get())) {
                    return;
                }
                ox.this.dq(fzcVar, dvhVar, ehoVar, 1);
            }
        });
    }

    private boolean p(fzc fzcVar) {
        JSONObject jSONObject;
        return fzcVar != null && fzcVar.f17690c == 1 && (jSONObject = fzcVar.f17691d) != null && jSONObject.optBoolean("lottieEvent", false);
    }

    public void d() {
        List<dlv> list = this.gh;
        if (list == null || list.size() == 0) {
            return;
        }
        Iterator<dlv> it = this.gh.iterator();
        while (it.hasNext()) {
            it.next().vf();
        }
    }

    public void d(mn mnVar) {
        this.dq.s(this);
        ajp ajpVar = this.dq;
        ajpVar.f10332e = this;
        this.ox = ajpVar.n(this.p);
        this.mn.n().d();
        this.mn.n().ox();
        this.dq.r(this.s);
    }

    public JSONObject dq() {
        return this.mn.ox();
    }

    public void dq(long j, long j2) {
        dlv dlvVar = this.q;
        if (dlvVar instanceof com.bytedance.sdk.openadsdk.core.ugeno.component.ox.dq) {
            ((com.bytedance.sdk.openadsdk.core.ugeno.component.ox.dq) dlvVar).dq(j, j2);
        }
    }

    public void dq(ia iaVar) {
        this.kk = iaVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.d.p
    public void dq(mn mnVar) {
        this.mn.n().dq();
        this.p = dq();
        JSONObject kk = kk();
        this.s = kk;
        if (this.p == null || kk == null) {
            mnVar.dq(133, (String) null);
            return;
        }
        d(mnVar);
        if (this.ox == null) {
            mnVar.dq(138, (String) null);
            return;
        }
        d dVar = new d();
        this.no = dVar;
        dVar.dq(true);
        this.no.dq(ox());
        dlv p = p();
        this.q = p;
        if (p != null && (p instanceof com.bytedance.sdk.openadsdk.core.ugeno.component.ox.dq)) {
            ((d) this.no).dq((FrameLayout) p.kk());
        }
        dlv s = s();
        this.jy = s;
        if (s != null && (s instanceof bix)) {
            ((d) this.no).d((FrameLayout) s.kk());
        }
        q qVar = this.no;
        if (qVar instanceof d) {
            ((d) qVar).dq(this.cd);
        }
        int ir = this.ox.ir();
        int u = this.ox.u();
        ArrayList arrayList = new ArrayList();
        this.gh = arrayList;
        dq(this.ox, arrayList);
        View kk2 = this.ox.kk();
        ViewGroup viewGroup = (ViewGroup) kk2.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(kk2);
        }
        this.ia.addView(this.ox.kk(), new FrameLayout.LayoutParams(ir, u));
        float h = this.mn.h();
        float ji = this.mn.ji();
        float ox = ce.ox(this.f3613d, h);
        float ox2 = ce.ox(this.f3613d, ji);
        int p2 = ce.p(this.f3613d);
        int no = (int) (ce.no(this.f3613d) + ce.kk(this.f3613d));
        float f2 = p2;
        if (ox > f2) {
            ox = f2;
        }
        float f3 = no;
        if (ox2 > f3) {
            ox2 = f3;
        }
        if (ji <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            this.ia.setLayoutParams(new FrameLayout.LayoutParams((int) ox, -2));
        } else {
            this.ia.setLayoutParams(new FrameLayout.LayoutParams((int) ox, (int) ox2));
        }
        if (ji <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || h <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            this.ia.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            int p3 = ce.p(this.f3613d, this.ia.getMeasuredWidth());
            int p4 = ce.p(this.f3613d, this.ia.getMeasuredHeight());
            this.no.dq(p3);
            this.no.d(p4);
        } else {
            this.no.dq(h);
            this.no.d(ji);
        }
        if (this.f3614f.get()) {
            mnVar.dq(137, (String) null);
        } else {
            mnVar.dq(this.ia, this.no);
            this.ia.getViewTreeObserver().addOnWindowFocusChangeListener(new ViewTreeObserver.OnWindowFocusChangeListener() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.ox.ox.1
                @Override // android.view.ViewTreeObserver.OnWindowFocusChangeListener
                public void onWindowFocusChanged(boolean z) {
                    com.bytedance.sdk.openadsdk.core.ugeno.no.dq dqVar = ox.this.cd;
                    if (dqVar != null) {
                        if (z) {
                            dqVar.dq();
                        } else {
                            dqVar.d();
                        }
                    }
                }
            });
        }
    }

    public void dq(com.bytedance.sdk.openadsdk.core.ugeno.component.interact.ia iaVar) {
        this.o = iaVar;
    }

    @Override // g.ahr
    public void dq(dlv dlvVar, MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                return;
            }
            this.ig.ox(motionEvent.getRawX());
            this.ig.p(motionEvent.getRawY());
            this.ig.d(System.currentTimeMillis());
            return;
        }
        this.ig.s((int) motionEvent.getRawX());
        this.ig.iw((int) motionEvent.getRawY());
        this.ig.dq(motionEvent.getRawX());
        this.ig.d(motionEvent.getRawY());
        this.ig.dq(System.currentTimeMillis());
        this.ig.d(motionEvent.getToolType(0));
        this.ig.ox(motionEvent.getDeviceId());
        this.ig.p(motionEvent.getSource());
    }

    @Override // g.cyx
    public void dq(dlv dlvVar, String str, blw blwVar) {
    }

    @Override // g.cyx
    public void dq(fzc fzcVar, dvh dvhVar, eho ehoVar) {
        if (fzcVar == null) {
            return;
        }
        int i = fzcVar.f17690c;
        if (i == 18) {
            ox(fzcVar, dvhVar, ehoVar);
        } else if (i == 3) {
            p(fzcVar, dvhVar, ehoVar);
        } else if (i == 9) {
            d(fzcVar.f17691d);
        } else if (i == 10) {
            dq(fzcVar.f17691d);
        } else if (i == 21) {
            d(fzcVar);
        } else if (i == 19) {
            ox(fzcVar);
        } else if (i != 20) {
            if (p(fzcVar)) {
                d(fzcVar, dvhVar, ehoVar);
            } else if (fzcVar.f17690c == 22) {
                dq(fzcVar);
            } else {
                dq(fzcVar, dvhVar, ehoVar, 0);
            }
        }
        JSONObject jSONObject = fzcVar.f17691d;
        if (jSONObject != null) {
            String optString = jSONObject.optString("next");
            try {
                if (TextUtils.isEmpty(optString)) {
                    return;
                }
                fzc fzcVar2 = new fzc();
                fzcVar2.f17690c = 1;
                fzcVar2.f17691d = new JSONObject(optString);
                fzcVar2.f17689b = this.ox;
                dq(fzcVar2, (dvh) null, (eho) null);
            } catch (JSONException unused) {
            }
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.p
    public void dq(CharSequence charSequence, int i, int i2, boolean z) {
        dlv dlvVar = this.ox;
        if (dlvVar == null) {
            return;
        }
        dlv ox = dlvVar.ox("count_down_skip_container");
        if (ox != null && ox.kk() != null) {
            ox.kk().setVisibility(0);
        }
        dlv ox2 = this.ox.ox("count_down");
        dlv ox3 = this.ox.ox("skip");
        if ((ox2 instanceof efb) && (ox3 instanceof efb)) {
            if (i2 != 0) {
                ((efb) ox2).mn(((Object) charSequence) + "s ");
                return;
            }
            if (TextUtils.equals(charSequence, "0") || z) {
                ((fmg) ((efb) ox2).kk()).setVisibility(8);
                ((efb) ox3).mn("跳过");
                return;
            }
            ((efb) ox2).mn(((Object) charSequence) + "s ");
            efb efbVar = (efb) ox3;
            efbVar.mn("| 跳过");
            ((fmg) efbVar.kk()).setVisibility(0);
        }
    }

    public void dq(boolean z) {
        this.f3614f.set(z);
    }

    public boolean ia() {
        return this.le;
    }

    public void ig() {
        dlv ox;
        dlv dlvVar = this.ox;
        if (dlvVar == null || (ox = dlvVar.ox("corver_container")) == null || ox.kk() == null) {
            return;
        }
        ox.kk().setVisibility(8);
    }

    public List<dlv> iw() {
        return this.gh;
    }

    public JSONObject kk() {
        return this.mn.bl();
    }

    @Override // com.bytedance.sdk.component.adexpress.d.p
    public View mn() {
        return this.ia;
    }

    public void no() {
        dlv ox;
        dlv dlvVar = this.ox;
        if (dlvVar == null || (ox = dlvVar.ox("corver_container")) == null || ox.kk() == null) {
            return;
        }
        ox.kk().setVisibility(0);
    }

    public void o() {
        this.f3614f.set(false);
        i iVar = this.fw;
        if (iVar != null) {
            iVar.d();
        }
        com.bytedance.sdk.openadsdk.core.ugeno.no.dq dqVar = this.cd;
        if (dqVar != null) {
            dqVar.d();
        }
    }

    public int ox() {
        return this.iw.dr();
    }

    public dlv p() {
        dlv dlvVar = this.ox;
        if (dlvVar == null) {
            return null;
        }
        return dlvVar.p("VideoPlaceholder");
    }

    public dlv s() {
        dlv dlvVar = this.ox;
        if (dlvVar == null) {
            return null;
        }
        return dlvVar.p("PlayableComponent");
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.p
    public void setSoundMute(boolean z) {
        dlv ox;
        dlv dlvVar = this.ox;
        if (dlvVar == null || (ox = dlvVar.ox("mute_image")) == null) {
            return;
        }
        if (z) {
            if (!TextUtils.isEmpty(this.r)) {
                ((fde) ox).ia(this.r);
            }
        } else if (!TextUtils.isEmpty(this.i)) {
            ((fde) ox).ia(this.i);
        }
        ox.p();
    }
}
