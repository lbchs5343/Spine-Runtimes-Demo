package com.bytedance.sdk.openadsdk.core.ugeno.ia;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import com.bytedance.sdk.component.widget.recycler.RecyclerView;
import com.bytedance.sdk.openadsdk.core.c;
import com.bytedance.sdk.openadsdk.core.gh.ig;
import com.bytedance.sdk.openadsdk.core.le;
import com.bytedance.sdk.openadsdk.core.nativeexpress.o;
import com.bytedance.sdk.openadsdk.core.r.j;
import g.ajp;
import g.blw;
import g.cal;
import g.co;
import g.cyx;
import g.dlv;
import g.dmm;
import g.dvh;
import g.eho;
import g.eid;
import g.f;
import g.fzc;
import g.gco;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class iw implements cyx {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.ig.s f3590d;
    private Context dq;
    private d ia;
    private String ig;
    private j iw;
    private ia kk;
    private dlv mn;
    private int mp;
    private c no;
    private o o;
    private dlv ox;
    private p p;
    private ox s;

    public iw(Context context, com.bytedance.sdk.openadsdk.core.ig.s sVar, j jVar, String str, int i) {
        this.dq = context;
        this.f3590d = sVar;
        this.iw = jVar;
        this.ig = str;
        this.mp = i;
    }

    private void d(fzc fzcVar, dvh dvhVar, eho ehoVar) {
        fzc fzcVar2;
        if (fzcVar == null || fzcVar.f17689b == null) {
            return;
        }
        JSONObject jSONObject = fzcVar.f17691d;
        String optString = jSONObject.optString("type");
        String optString2 = jSONObject.optString("nodeId");
        optString.getClass();
        if (optString.equals("onDismiss")) {
            dlv ox = this.ox.ox(optString2);
            if (ox != null) {
                ox.d(8);
            }
        } else if (optString.equals("onShow")) {
            dlv ox2 = this.ox.ox(optString2);
            if (ox2 != null) {
                ox2.d(0);
            }
        } else {
            ox oxVar = this.s;
            if (oxVar != null) {
                oxVar.ox(fzcVar.f17689b);
            }
        }
        final String optString3 = jSONObject.optString("reportType");
        if (!TextUtils.isEmpty(optString3)) {
            ig.dq().d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.ia.iw.5
                @Override // com.bytedance.sdk.openadsdk.no.dq.dq
                public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.putOpt("type", optString3);
                    return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("agg_click").d(jSONObject2.toString());
                }
            }, "agg_click");
        }
        if (dvhVar == null || (fzcVar2 = fzcVar.f17688a) == null) {
            return;
        }
        dvhVar.dq(fzcVar2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(JSONObject jSONObject, List<co> list, mn mnVar) {
        Context context = this.dq;
        ajp ajpVar = new ajp(context);
        dmm dmmVar = new dmm();
        dmmVar.f14433a = context;
        HashMap hashMap = new HashMap();
        hashMap.put("key_material", this.iw);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size() && i <= 2; i++) {
            arrayList.add(list.get(i).f13213a);
        }
        c cVar = new c(this.dq);
        this.no = cVar;
        cVar.dq(this.o);
        this.no.dq(this.ia);
        this.no.dq(this.ig);
        this.no.ox(this.mp);
        hashMap.put("key_data_list", arrayList);
        hashMap.put("key_js_object", this.no);
        dmmVar.f14435c = hashMap;
        ajpVar.f10328a = dmmVar;
        ajpVar.f10334g = dmmVar.f14434b;
        dlv n = ajpVar.n(jSONObject);
        this.ox = n;
        if (n == null || list.size() <= 0) {
            com.bytedance.sdk.openadsdk.core.ig.s sVar = this.f3590d;
            if (sVar != null) {
                sVar.dq(-1, "ugeno render fail");
            }
            if (mnVar != null) {
                mnVar.dq(-1, "");
                return;
            }
            return;
        }
        dlv ox = this.ox.ox("recycler_layout");
        this.mn = ox;
        if (ox instanceof eid) {
            eid eidVar = (eid) ox;
            eidVar.f15581a = list;
            eidVar.f15583g = new gco() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.ia.iw.2
                @Override // g.gco
                public void dq() {
                    if (iw.this.p != null) {
                        iw.this.p.p(iw.this.mn);
                    }
                }

                @Override // g.gco
                public void dq(int i2, int i3) {
                    if (iw.this.p != null) {
                        iw.this.p.dq(i2, i3);
                    }
                }

                @Override // g.gco
                public void dq(int i2, View view, co coVar) {
                    if (iw.this.p != null) {
                        iw.this.p.dq(iw.this.mn, i2, view, coVar);
                    }
                }

                @Override // g.gco
                public void dq(RecyclerView recyclerView, int i2) {
                    if (iw.this.p != null) {
                        iw.this.p.dq(recyclerView, i2);
                    }
                }
            };
            ((eid) this.mn).f15582ab = new cal() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.ia.iw.3
                @Override // g.cal
                public void d(dlv dlvVar) {
                    if (iw.this.p != null) {
                        iw.this.p.iw(dlvVar);
                    }
                }

                @Override // g.cal
                public void dq(dlv dlvVar) {
                    if (iw.this.p != null) {
                        iw.this.p.s(dlvVar);
                    }
                }
            };
        }
        ajpVar.f10329b = new f() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.ia.iw.4
            @Override // g.f
            public void dq(dlv dlvVar) {
                if (iw.this.s != null) {
                    iw.this.s.ox(dlvVar);
                }
            }
        };
        ajpVar.s(this);
        JSONObject ve = this.iw.ve();
        if (list.size() > 0) {
            try {
                ve.put("ugen_sub_meta", list.get(0).f13213a);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        ajpVar.r(ve);
        this.f3590d.dq(0L);
        if (mnVar != null) {
            mnVar.dq(this.ox);
        }
    }

    public dlv dq() {
        return this.mn;
    }

    public void dq(o oVar) {
        this.o = oVar;
    }

    public void dq(d dVar) {
        this.ia = dVar;
    }

    public void dq(ia iaVar) {
        this.kk = iaVar;
    }

    public void dq(ox oxVar) {
        this.s = oxVar;
    }

    public void dq(p pVar) {
        this.p = pVar;
    }

    @Override // g.cyx
    public void dq(dlv dlvVar, String str, blw blwVar) {
    }

    @Override // g.cyx
    public void dq(fzc fzcVar, dvh dvhVar, eho ehoVar) {
        ia iaVar;
        if (fzcVar == null) {
            return;
        }
        int i = fzcVar.f17690c;
        if (i == 1) {
            d(fzcVar, (dvh) null, (eho) null);
            return;
        }
        if (i != 10 || (iaVar = this.kk) == null) {
            return;
        }
        iaVar.d(fzcVar.f17689b);
        c cVar = this.no;
        if (cVar != null) {
            cVar.dq("webviewVisible", (JSONObject) null);
        }
    }

    public void dq(final JSONObject jSONObject, final List<co> list, final mn mnVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            d(jSONObject, list, mnVar);
        } else {
            le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ugeno.ia.iw.1
                @Override // java.lang.Runnable
                public void run() {
                    iw.this.d(jSONObject, (List<co>) list, mnVar);
                }
            });
        }
    }
}
