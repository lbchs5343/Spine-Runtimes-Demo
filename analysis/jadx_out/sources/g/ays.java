package g;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public final class ays extends ewk {

    /* renamed from: a, reason: collision with root package name */
    public int f11066a;

    /* renamed from: b, reason: collision with root package name */
    public float f11067b;

    /* renamed from: c, reason: collision with root package name */
    public int f11068c;

    /* renamed from: e, reason: collision with root package name */
    public float f11069e;

    /* renamed from: g, reason: collision with root package name */
    public float f11070g;

    @Override // g.ewk
    public final ViewGroup.LayoutParams dq() {
        avj avjVar = new avj((int) this.dq, (int) this.f16278d);
        ((ViewGroup.MarginLayoutParams) avjVar).leftMargin = (int) this.iw;
        ((ViewGroup.MarginLayoutParams) avjVar).rightMargin = (int) this.mn;
        ((ViewGroup.MarginLayoutParams) avjVar).topMargin = (int) this.ia;
        ((ViewGroup.MarginLayoutParams) avjVar).bottomMargin = (int) this.kk;
        avjVar.ox(this.f11068c);
        avjVar.p(this.f11066a);
        avjVar.dq(this.f11069e);
        avjVar.d(this.f11070g);
        avjVar.ox(this.f11067b);
        return avjVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // g.ewk
    public final void dq(Context context, String str, String str2) {
        char c2;
        float f2;
        char c3;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        super.dq(context, str, str2);
        str.getClass();
        int i = 4;
        int i2 = 1;
        switch (str.hashCode()) {
            case -1962496832:
                if (str.equals("flexBasisPercent")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 106006350:
                if (str.equals("order")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 1031115618:
                if (str.equals("flexShrink")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 1743739820:
                if (str.equals("flexGrow")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 1767100401:
                if (str.equals("alignSelf")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        float f3 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        switch (c2) {
            case 0:
                try {
                    f2 = Float.parseFloat(str2);
                } catch (Exception e2) {
                    e2.printStackTrace();
                    f2 = -1.0f;
                }
                this.f11067b = f2;
                break;
            case 1:
                try {
                    i2 = Integer.parseInt(str2);
                } catch (NumberFormatException e3) {
                    e3.printStackTrace();
                }
                this.f11068c = i2;
                break;
            case 2:
                try {
                    f3 = Float.parseFloat(str2);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                this.f11070g = f3;
                break;
            case 3:
                try {
                    f3 = Float.parseFloat(str2);
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
                this.f11069e = f3;
                break;
            case 4:
                str2.getClass();
                switch (str2.hashCode()) {
                    case -1881872635:
                        if (str2.equals("stretch")) {
                            c3 = 0;
                            break;
                        }
                        c3 = 65535;
                        break;
                    case -1720785339:
                        if (str2.equals("baseline")) {
                            c3 = 1;
                            break;
                        }
                        c3 = 65535;
                        break;
                    case -1364013995:
                        if (str2.equals("center")) {
                            c3 = 2;
                            break;
                        }
                        c3 = 65535;
                        break;
                    case 1384876188:
                        if (str2.equals("flex_start")) {
                            c3 = 3;
                            break;
                        }
                        c3 = 65535;
                        break;
                    case 1744442261:
                        if (str2.equals("flex_end")) {
                            c3 = 4;
                            break;
                        }
                        c3 = 65535;
                        break;
                    default:
                        c3 = 65535;
                        break;
                }
                switch (c3) {
                    case 0:
                        break;
                    case 1:
                        i = 3;
                        break;
                    case 2:
                        i = 2;
                        break;
                    case 3:
                        i = 0;
                        break;
                    case 4:
                        i = 1;
                        break;
                    default:
                        i = -1;
                        break;
                }
                this.f11066a = i;
                break;
        }
    }

    @Override // g.ewk
    public final String toString() {
        return "LayoutParams{mWidth=" + this.dq + ", mHeight=" + this.f16278d + ", mMargin=" + this.s + ", mMarginLeft=" + this.iw + ", mMarginRight=" + this.mn + ", mMarginTop=" + this.ia + ", mMarginBottom=" + this.kk + ", mParams=" + this.k + ", mOrder=" + this.f11068c + ", mFlexGrow=" + this.f11069e + ", mFlexShrink=" + this.f11070g + ", mAlignSelf=" + this.f11066a + ", mFlexBasisPercent=" + this.f11067b + ", mMinWidth=-1, mMinHeight=-1, mMaxWidth=16777215, mMaxHeight=16777215} " + super.toString();
    }
}
