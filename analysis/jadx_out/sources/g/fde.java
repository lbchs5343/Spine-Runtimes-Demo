package g;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public class fde extends dlv {

    /* renamed from: d, reason: collision with root package name */
    protected ImageView.ScaleType f16595d;
    protected String dq;
    private float nt;
    protected boolean ox;
    private int p;
    private float tv;

    public fde(Context context) {
        super(context, 0);
        this.f16595d = ImageView.ScaleType.FIT_XY;
        this.p = -1;
        this.nt = -1.0f;
        this.tv = -1.0f;
    }

    public void d(Drawable drawable) {
        ((cdf) this.ia).setImageDrawable(drawable);
    }

    @Override // g.dlv
    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
    public cdf ox() {
        cdf cdfVar = new cdf(this.s);
        cdfVar.f12684e = this;
        return cdfVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00b1, code lost:
    
        if (r11.equals("fitCenter") == false) goto L51;
     */
    @Override // g.dlv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void dq(String str, String str2) {
        char c2;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        super.dq(str, str2);
        str.getClass();
        char c3 = 6;
        switch (str.hashCode()) {
            case -1878130163:
                if (str.equals("scaleMode")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -1877911644:
                if (str.equals("scaleType")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -878696350:
                if (str.equals("imageBlur")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case -372324943:
                if (str.equals("isBgGaussianBlur")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 114148:
                if (str.equals("src")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 1327599912:
                if (str.equals("tintColor")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case 1675225991:
                if (str.equals("imageBgBlur")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
            case 1:
                ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_XY;
                str2.getClass();
                switch (str2.hashCode()) {
                    case -1364013995:
                        if (str2.equals("center")) {
                            c3 = 0;
                            break;
                        }
                        c3 = 65535;
                        break;
                    case -1274298614:
                        if (str2.equals("fitEnd")) {
                            c3 = 1;
                            break;
                        }
                        c3 = 65535;
                        break;
                    case -522179887:
                        if (str2.equals("fitStart")) {
                            c3 = 2;
                            break;
                        }
                        c3 = 65535;
                        break;
                    case -340708175:
                        if (str2.equals("centerInside")) {
                            c3 = 3;
                            break;
                        }
                        c3 = 65535;
                        break;
                    case 101393:
                        if (str2.equals("fit")) {
                            c3 = 4;
                            break;
                        }
                        c3 = 65535;
                        break;
                    case 3062416:
                        if (str2.equals("crop")) {
                            c3 = 5;
                            break;
                        }
                        c3 = 65535;
                        break;
                    case 520762310:
                        break;
                    case 1161480325:
                        if (str2.equals("centerCrop")) {
                            c3 = 7;
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
                        scaleType = ImageView.ScaleType.CENTER;
                        break;
                    case 1:
                        scaleType = ImageView.ScaleType.FIT_END;
                        break;
                    case 2:
                        scaleType = ImageView.ScaleType.FIT_START;
                        break;
                    case 3:
                        scaleType = ImageView.ScaleType.CENTER_INSIDE;
                        break;
                    case 4:
                    case 6:
                        scaleType = ImageView.ScaleType.FIT_CENTER;
                        break;
                    case 5:
                    case 7:
                        scaleType = ImageView.ScaleType.CENTER_CROP;
                        break;
                }
                this.f16595d = scaleType;
                break;
            case 2:
                this.nt = byh.au(-1.0f, str2);
                break;
            case 3:
                this.ox = byh.ao(str2, false);
                break;
            case 4:
                this.dq = str2;
                break;
            case 5:
                this.p = bff.ab(str2, -16777216);
                break;
            case 6:
                this.tv = byh.au(-1.0f, str2);
                break;
        }
    }

    @Override // g.dlv, g.eun
    public void ia() {
        super.ia();
        Drawable drawable = ((cdf) this.ia).getDrawable();
        if (Build.VERSION.SDK_INT < 28 || !agk.a(drawable)) {
            return;
        }
        agk.w(drawable).stop();
    }

    public void ia(String str) {
        this.dq = str;
    }

    @Override // g.dlv, g.eun
    public void mn() {
        super.mn();
        ((cdf) this.ia).post(new dyn(10, this));
    }

    @Override // g.dlv
    public void p() {
        super.p();
        if (!TextUtils.isEmpty(this.dq)) {
            ((cdf) this.ia).setImageDrawable(null);
            if (this.dq.startsWith("local://")) {
                try {
                    ((cdf) this.ia).setImageResource(acw.as(this.s, this.dq.replace("local://", ""), "drawable"));
                } catch (Throwable unused) {
                }
            } else if (this.dq.startsWith("@")) {
                try {
                    ((cdf) this.ia).setImageResource(Integer.parseInt(this.dq.substring(1)));
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            } else if (this.nt > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                ((com.bytedance.sdk.openadsdk.core.ugeno.p) fzn.j().f17730e).dq(this.ig, this.dq, new eie(1, this));
            } else {
                com.bytedance.sdk.openadsdk.core.ugeno.p pVar = (com.bytedance.sdk.openadsdk.core.ugeno.p) fzn.j().f17730e;
                dmm dmmVar = this.ig;
                String str = this.dq;
                View view = this.ia;
                pVar.dq(dmmVar, str, (ImageView) view, ((cdf) view).getWidth(), ((cdf) this.ia).getHeight());
                if (this.ox || this.tv > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    ((com.bytedance.sdk.openadsdk.core.ugeno.p) fzn.j().f17730e).dq(this.ig, this.dq, new fnq(20, this));
                }
            }
        }
        ((cdf) this.ia).setScaleType(this.f16595d);
        ((cdf) this.ia).setBorderColor(this.dc);
        ((cdf) this.ia).setCornerRadius(this.gx);
        ((cdf) this.ia).setBorderWidth(this.cv);
        int i = this.p;
        if (i != -1) {
            ((cdf) this.ia).setColorFilter(i);
        }
    }
}
