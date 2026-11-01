package g;

import android.text.TextUtils;
import android.view.View;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class cfe extends eyh {

    /* renamed from: a, reason: collision with root package name */
    public float f12775a;
    public float aa;

    /* renamed from: ab, reason: collision with root package name */
    public float f12776ab;
    public String ac;
    public boolean ad;
    public boolean ae;
    public JSONArray af;
    public boolean ag;
    public float ah;
    public int ai;

    /* renamed from: g, reason: collision with root package name */
    public int f12777g;
    public dlv w;
    public float y;

    @Override // g.eyh
    public final void dq(dlv dlvVar) {
        this.w = dlvVar;
    }

    @Override // g.dlv
    public final void dq(String str, String str2) {
        JSONArray jSONArray;
        super.dq(str, str2);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        str.getClass();
        switch (str) {
            case "delayStart":
                byh.au(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, str2);
                break;
            case "indicatorColor":
                this.ai = bff.ab(str2, -16777216);
                break;
            case "nextMargin":
                this.ah = dxo.f(this.s, byh.au(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, str2));
                break;
            case "effect":
                this.ac = str2;
                break;
            case "indicator":
                this.ad = byh.ao(str2, true);
                break;
            case "previousMargin":
                this.aa = dxo.f(this.s, byh.au(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, str2));
                break;
            case "loop":
                this.ae = byh.ao(str2, true);
                break;
            case "speed":
                this.y = byh.au(500.0f, str2);
                break;
            case "pageCount":
                this.f12775a = byh.au(1.0f, str2);
                break;
            case "pageMargin":
                this.f12776ab = dxo.f(this.s, byh.au(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, str2));
                break;
            case "indicatorSelectedColor":
                this.f12777g = bff.ab(str2, -16777216);
                break;
            case "autoplay":
                this.ag = byh.ao(str2, true);
                break;
            case "dataList":
                if (!TextUtils.isEmpty(str2)) {
                    try {
                        jSONArray = new JSONArray(str2);
                    } catch (JSONException unused) {
                    }
                    this.af = jSONArray;
                    break;
                }
                jSONArray = null;
                this.af = jSONArray;
        }
    }

    @Override // g.dlv
    public final void dq(JSONObject jSONObject) {
    }

    @Override // g.dlv
    public final View ox() {
        ekm ekmVar = new ekm(this.s);
        this.ia = ekmVar;
        ekmVar.f15706a = this;
        return ekmVar;
    }

    @Override // g.dlv
    public final void p() {
        super.p();
        JSONArray jSONArray = this.af;
        if (jSONArray == null || jSONArray.length() <= 0) {
            return;
        }
        ((ekm) this.ia).p((int) this.f12776ab).s((int) this.aa).iw((int) this.ah).ox(this.ad).d(this.f12777g).ox(this.ai).dq(this.ac).p(this.ae).dq(this.f12775a).dq(this.ag).dq((int) this.y).ox(this.ad);
        for (int i = 0; i < this.af.length(); i++) {
            ajp ajpVar = new ajp(this.s);
            ajpVar.s(this.tl);
            dlv o = ajpVar.o(this.w.h(), null);
            ajpVar.r(this.af.optJSONObject(i));
            ((ekm) this.ia).dq(o);
        }
        if (this.ag) {
            ((ekm) this.ia).dq();
        }
    }
}
