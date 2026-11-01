package g;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public class ewk {
    protected boolean cd;

    /* renamed from: f, reason: collision with root package name */
    protected boolean f16279f;
    protected boolean fw;
    protected boolean gh;
    protected boolean i;
    protected float ia;
    protected float ig;
    protected float iw;
    protected boolean jy;
    protected ViewGroup.LayoutParams k;
    protected float kk;
    protected boolean le;
    protected float mn;
    protected float mp;
    protected float no;
    protected float o;
    protected float q;
    protected boolean r;
    protected float s;
    protected eyh wp;
    protected float dq = -2.0f;

    /* renamed from: d, reason: collision with root package name */
    protected float f16278d = -2.0f;
    protected float ox = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    protected float p = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;

    public ewk(eyh eyhVar) {
        this.wp = eyhVar;
    }

    public ViewGroup.LayoutParams dq() {
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams((int) this.dq, (int) this.f16278d);
        marginLayoutParams.leftMargin = (int) (this.gh ? this.iw : this.s);
        marginLayoutParams.rightMargin = (int) (this.r ? this.mn : this.s);
        marginLayoutParams.topMargin = (int) (this.i ? this.ia : this.s);
        marginLayoutParams.bottomMargin = (int) (this.le ? this.kk : this.s);
        return marginLayoutParams;
    }

    public void dq(Context context, String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        str.getClass();
        switch (str) {
            case "paddingLeft":
                this.no = dxo.g(context, str2);
                this.jy = true;
                break;
            case "minWidth":
                this.ox = dxo.g(context, str2);
                break;
            case "height":
                if (!TextUtils.equals(str2, "match_parent")) {
                    if (!TextUtils.equals(str2, "wrap_content")) {
                        this.f16278d = dxo.g(context, str2);
                        break;
                    } else {
                        this.f16278d = -2.0f;
                        break;
                    }
                } else {
                    eyh eyhVar = this.wp;
                    if (eyhVar == null || !eyhVar.ji() || this.wp.u() != -2) {
                        this.f16278d = -1.0f;
                        break;
                    } else {
                        this.f16278d = -2.0f;
                        break;
                    }
                }
                break;
            case "margin":
                this.s = dxo.g(context, str2);
                break;
            case "marginTop":
                this.ia = dxo.g(context, str2);
                this.i = true;
                break;
            case "padding":
                this.o = dxo.g(context, str2);
                break;
            case "marginBottom":
                this.kk = dxo.g(context, str2);
                this.le = true;
                break;
            case "minHeight":
                this.p = dxo.g(context, str2);
                break;
            case "paddingTop":
                this.ig = dxo.g(context, str2);
                this.fw = true;
                break;
            case "width":
                if (!TextUtils.equals(str2, "match_parent")) {
                    if (!TextUtils.equals(str2, "wrap_content")) {
                        this.dq = dxo.g(context, str2);
                        break;
                    } else {
                        this.dq = -2.0f;
                        break;
                    }
                } else {
                    eyh eyhVar2 = this.wp;
                    if (eyhVar2 == null || !eyhVar2.ji() || this.wp.ir() != -2) {
                        this.dq = -1.0f;
                        break;
                    } else {
                        this.dq = -2.0f;
                        break;
                    }
                }
                break;
            case "paddingBottom":
                this.q = dxo.g(context, str2);
                this.cd = true;
                break;
            case "paddingRight":
                this.mp = dxo.g(context, str2);
                this.f16279f = true;
                break;
            case "marginRight":
                this.mn = dxo.g(context, str2);
                this.r = true;
                break;
            case "marginLeft":
                this.iw = dxo.g(context, str2);
                this.gh = true;
                break;
        }
    }

    public String toString() {
        return "LayoutParams{mWidth=" + this.dq + ", mHeight=" + this.f16278d + ", mMargin=" + this.s + ", mMarginLeft=" + this.iw + ", mMarginRight=" + this.mn + ", mMarginTop=" + this.ia + ", mMarginBottom=" + this.kk + ", mParams=" + this.k + '}';
    }
}
