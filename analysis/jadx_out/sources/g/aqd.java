package g;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class aqd extends efb {

    /* renamed from: a, reason: collision with root package name */
    public boolean f10649a;
    public String aa;

    /* renamed from: ab, reason: collision with root package name */
    public String f10650ab;
    public boolean ac;

    /* renamed from: g, reason: collision with root package name */
    public int f10651g;
    public coy w;
    public int y;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void ad(Drawable drawable) {
        char c2;
        if (drawable == null) {
            return;
        }
        String str = this.f10650ab;
        switch (str.hashCode()) {
            case -1781065991:
                if (str.equals("column_reverse")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case -1354837162:
                if (str.equals("column")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -207799939:
                if (str.equals("row_reverse")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 113114:
                if (str.equals("row")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 == 0) {
            ((fmg) this.ia).setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, drawable, (Drawable) null);
            return;
        }
        if (c2 == 1) {
            ((fmg) this.ia).setCompoundDrawablesWithIntrinsicBounds((Drawable) null, drawable, (Drawable) null, (Drawable) null);
        } else if (c2 != 2) {
            ((fmg) this.ia).setCompoundDrawablesWithIntrinsicBounds(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
        } else {
            ((fmg) this.ia).setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, drawable);
        }
    }

    @Override // g.efb, g.dlv
    public final void dq(String str, String str2) {
        super.dq(str, str2);
        str.getClass();
        switch (str) {
            case "direction":
                this.f10650ab = str2;
                break;
            case "highlightTextColor":
            case "highlightedTextColor":
                this.y = bff.ab(str2, -16777216);
                this.ac = true;
                break;
            case "image":
                this.aa = str2;
                break;
            case "highlightBackgroundColor":
                if (!TextUtils.isEmpty(str2) && str2.startsWith("linear-gradient")) {
                    this.x = true;
                    this.w = bff.ak(str2);
                } else {
                    this.f10651g = bff.ab(str2, -16777216);
                    this.x = false;
                }
                this.f10649a = true;
                break;
        }
    }

    @Override // g.dlv
    public final void j() {
        super.j();
        if (this.ac) {
            ((fmg) this.ia).setTextColor(this.y);
        }
        if (this.f10649a) {
            if (this.x) {
                dq(this.w);
            } else {
                ox(this.f10651g);
            }
        }
    }

    @Override // g.dlv
    public final void nh() {
        super.nh();
        if (this.ac) {
            ((fmg) this.ia).setTextColor(((efb) this).f15418d);
        }
        if (this.f10649a) {
            if (this.x) {
                dq(this.bx);
            } else {
                ox(this.j);
            }
        }
    }

    @Override // g.efb, g.dlv
    public final void p() {
        super.p();
        if (!TextUtils.isEmpty(this.aa)) {
            ((fmg) this.ia).setCompoundDrawables(null, null, null, null);
            if (this.aa.startsWith("local://")) {
                try {
                    String replace = this.aa.replace("local://", "");
                    Context context = this.s;
                    int as = acw.as(context, replace, "drawable");
                    Object obj = dxo.f15026a;
                    ad(context.getDrawable(as));
                } catch (Throwable unused) {
                }
            } else {
                ((com.bytedance.sdk.openadsdk.core.ugeno.p) fzn.j().f17730e).dq(this.ig, this.aa, new evf(21, this));
            }
        }
        ((fmg) this.ia).setGravity(17);
    }
}
