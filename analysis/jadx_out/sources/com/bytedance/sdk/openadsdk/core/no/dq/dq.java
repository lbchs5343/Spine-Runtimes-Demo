package com.bytedance.sdk.openadsdk.core.no.dq;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.d.no;
import com.bytedance.sdk.component.adexpress.dynamic.interact.jy;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.d.ox;
import com.bytedance.sdk.openadsdk.core.d.p;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.ir.ir;
import com.bytedance.sdk.openadsdk.core.o.ox.ox.iw;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.k;
import com.bytedance.sdk.openadsdk.core.r.o;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq extends p implements com.bytedance.sdk.component.adexpress.dynamic.s.dq, ox {

    /* renamed from: d, reason: collision with root package name */
    private boolean f3276d;
    private no dq;
    private int ig;
    private View iw;
    private jy no;
    private j ox;
    private WeakReference<ViewGroup> p;
    private volatile boolean s;

    public dq(j jVar, WeakReference<ViewGroup> weakReference) {
        super(null);
        this.s = false;
        this.ig = Integer.MIN_VALUE;
        this.ox = jVar;
        this.p = weakReference;
    }

    private void d() {
        WeakReference<ViewGroup> weakReference = this.p;
        if (weakReference == null || weakReference.get() == null || !ir.dq(this.p.get())) {
            return;
        }
        this.ig = 1;
        ox(this.iw);
    }

    private void dq(View view, int i) {
        CharSequence text;
        if (this.dq != null) {
            if (this.f3276d && this.ox != null) {
                iw.p = true;
            }
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            View iw = this.ia.iw();
            if (iw != null) {
                int[] dq = ce.dq(iw);
                if (dq != null) {
                    iArr = dq;
                }
                int[] ox = ce.ox(iw);
                if (ox != null) {
                    iArr2 = ox;
                }
            }
            JSONObject jSONObject = new JSONObject();
            try {
                if ((view instanceof TextView) && (text = ((TextView) view).getText()) != null && text.toString().contains("下载")) {
                    jSONObject.put("is_compliant_download", true);
                }
                jSONObject.putOpt("convertActionType", Integer.valueOf(this.ig));
            } catch (Throwable unused) {
            }
            this.dq.dq(view, i, new k.dq().p(this.ia.q()).ox(this.ia.jy()).d(this.ia.f()).dq(this.ia.fw()).d(this.ia.ig()).dq(this.ia.mp()).dq(iArr[0]).d(iArr[1]).ox(iArr2[0]).p(iArr2[1]).dq(p(view)).ox(String.valueOf(i)).d(String.valueOf(view.getTag(2097610714))).dq(String.valueOf(view.getTag(2097610715))).p(String.valueOf(view.getTag(2097610713))).dq(this.ia.s()).dq(jSONObject).dq(this.ia.o()).dq());
        }
    }

    private void ox(View view) {
        try {
            dq(view, ((Integer) view.getTag()).intValue());
        } catch (ArrayIndexOutOfBoundsException e2) {
            e2.printStackTrace();
            e2.getMessage();
        } catch (Exception e3) {
            ig.p("DynamicClickListener", e3.getMessage());
        }
    }

    private JSONObject p(View view) {
        try {
            Object tag = view.getTag(2097610716);
            if (tag == null) {
                return new JSONObject();
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("openPlayableLandingPage", tag);
            return jSONObject;
        } catch (Throwable unused) {
            return new JSONObject();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.s.dq
    public void d(View view) {
        this.ia.dq(view);
    }

    @Override // com.bytedance.sdk.openadsdk.core.d.ox
    public void dq() {
        d();
        this.s = false;
        jy jyVar = this.no;
        if (jyVar != null) {
            jyVar.s();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.s.dq
    public void dq(View view) {
        this.ia.d(view);
    }

    @Override // com.bytedance.sdk.openadsdk.core.d.p
    public void dq(View view, o oVar) {
        this.iw = view;
        if (this.s) {
            this.s = false;
        } else {
            ox(view);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.s.dq
    public void dq(no noVar) {
        this.dq = noVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.s.dq
    public void dq(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.ig = jSONObject.optInt("convertActionType", Integer.MIN_VALUE);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.s.dq
    public void dq(boolean z, jy jyVar) {
        this.s = true;
        this.f3276d = z;
        this.no = jyVar;
        WeakReference<ViewGroup> weakReference = this.p;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        ir.dq(this.p, this);
    }
}
