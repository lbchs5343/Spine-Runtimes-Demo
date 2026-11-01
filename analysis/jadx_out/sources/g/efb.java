package g;

import android.content.Context;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public class efb extends dlv {

    /* renamed from: a, reason: collision with root package name */
    private int f15417a;
    private float ah;

    /* renamed from: d, reason: collision with root package name */
    protected int f15418d;

    @Deprecated
    private TextUtils.TruncateAt dk;
    protected String dq;

    /* renamed from: g, reason: collision with root package name */
    private float f15419g;
    private float hy;
    private float ip;
    private int nt;
    private int ny;
    private float ox;
    private int p;
    private int sc;
    private TextUtils.TruncateAt sy;
    private int tv;
    private float zi;

    public efb(Context context) {
        super(context, 0);
        this.f15418d = -16777216;
        this.ox = 12.0f;
        this.nt = he.UNDEFINED_ITEM_ID;
        this.ny = 2;
        this.f15419g = -1.0f;
        this.zi = 400.0f;
    }

    @Override // g.dlv
    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
    public fmg ox() {
        fmg fmgVar = new fmg(this.s);
        fmgVar.f17029a = new dv(fmgVar);
        fmgVar.f17030b = this;
        return fmgVar;
    }

    public void dq(TextUtils.TruncateAt truncateAt) {
        if (truncateAt == null) {
            return;
        }
        ((fmg) this.ia).setEllipsize(truncateAt);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x011d, code lost:
    
        if (r14.equals("end") == false) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0202, code lost:
    
        if (r14.equals("left") == false) goto L156;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
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
        int i = 16;
        int i2 = 5;
        char c3 = 65535;
        switch (str.hashCode()) {
            case -1621067310:
                if (str.equals("shadowRadius")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -1589741021:
                if (str.equals("shadowColor")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -1065511464:
                if (str.equals("textAlign")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case -1063571914:
                if (str.equals("textColor")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case -1048634236:
                if (str.equals("textStyle")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case -1021145689:
                if (str.equals("shadowBlur")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case -1003668786:
                if (str.equals("textSize")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case -879295043:
                if (str.equals("textDecoration")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case -756368940:
                if (str.equals("shadowDx")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            case -756368939:
                if (str.equals("shadowDy")) {
                    c2 = '\t';
                    break;
                }
                c2 = 65535;
                break;
            case -734428249:
                if (str.equals("fontWeight")) {
                    c2 = '\n';
                    break;
                }
                c2 = 65535;
                break;
            case -515807685:
                if (str.equals("lineHeight")) {
                    c2 = 11;
                    break;
                }
                c2 = 65535;
                break;
            case 3556653:
                if (str.equals("text")) {
                    c2 = '\f';
                    break;
                }
                c2 = 65535;
                break;
            case 102977279:
                if (str.equals("lines")) {
                    c2 = '\r';
                    break;
                }
                c2 = 65535;
                break;
            case 188702929:
                if (str.equals("ellipsis")) {
                    c2 = 14;
                    break;
                }
                c2 = 65535;
                break;
            case 390232059:
                if (str.equals("maxLines")) {
                    c2 = 15;
                    break;
                }
                c2 = 65535;
                break;
            case 1554823821:
                if (str.equals("ellipsize")) {
                    c2 = 16;
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
            case 5:
                this.ah = byh.au(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, str2);
                break;
            case 1:
                this.sc = bff.ab(str2, -16777216);
                break;
            case 2:
                str2.getClass();
                switch (str2.hashCode()) {
                    case -1364013995:
                        if (str2.equals("center")) {
                            r5 = 0;
                            break;
                        }
                        r5 = -1;
                        break;
                    case 3317767:
                        break;
                    case 108511772:
                        if (str2.equals("right")) {
                            r5 = 2;
                            break;
                        }
                        r5 = -1;
                        break;
                    default:
                        r5 = -1;
                        break;
                }
                switch (r5) {
                    case 0:
                        i2 = 17;
                        break;
                    case 1:
                        i2 = 3;
                        break;
                    case 2:
                        break;
                    default:
                        i2 = 2;
                        break;
                }
                this.ny = i2;
                break;
            case 3:
                this.f15418d = bff.ab(str2, -16777216);
                break;
            case 4:
                int hashCode = str2.hashCode();
                if (hashCode != -1178781136) {
                    if (hashCode != -1039745817) {
                        if (hashCode == 3029637 && str2.equals("bold")) {
                            c3 = 0;
                        }
                    } else if (str2.equals("normal")) {
                        c3 = 2;
                    }
                } else if (str2.equals("italic")) {
                    c3 = 1;
                }
                this.p = c3 != 0 ? c3 != 1 ? 0 : 2 : 1;
                break;
            case 6:
                this.ox = byh.au(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, str2);
                break;
            case 7:
                str2.getClass();
                if (str2.equals("underline")) {
                    i = 8;
                } else if (!str2.equals("strikethrough")) {
                    i = he.UNDEFINED_ITEM_ID;
                }
                this.f15417a = i;
                break;
            case '\b':
                this.hy = byh.au(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, str2);
                break;
            case '\t':
                this.ip = byh.au(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, str2);
                break;
            case '\n':
                this.zi = byh.au(-1.0f, str2);
                break;
            case 11:
                this.f15419g = byh.au(1.0f, str2);
                break;
            case '\f':
                this.dq = str2;
                break;
            case '\r':
                this.tv = byh.o(str2, 0);
                break;
            case 14:
                this.sy = TextUtils.equals(str2, LiveConfigKey.NONE) ? null : TextUtils.TruncateAt.END;
                break;
            case 15:
                this.nt = Integer.parseInt(str2);
                break;
            case 16:
                str2.getClass();
                switch (str2.hashCode()) {
                    case -1364013995:
                        if (str2.equals("center")) {
                            r5 = 0;
                            break;
                        }
                        r5 = -1;
                        break;
                    case 100571:
                        break;
                    case 109757538:
                        if (str2.equals("start")) {
                            r5 = 2;
                            break;
                        }
                        r5 = -1;
                        break;
                    default:
                        r5 = -1;
                        break;
                }
                switch (r5) {
                    case 0:
                        this.dk = TextUtils.TruncateAt.MIDDLE;
                        break;
                    case 1:
                        this.dk = TextUtils.TruncateAt.END;
                        break;
                    case 2:
                        this.dk = TextUtils.TruncateAt.START;
                        break;
                    default:
                        this.dk = null;
                        break;
                }
                this.dk = this.dk;
                break;
        }
    }

    public void iw(int i) {
        this.f15417a = i;
        if (i == Integer.MAX_VALUE) {
            return;
        }
        ((fmg) this.ia).setPaintFlags(i);
    }

    public void mn(String str) {
        this.dq = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (TextUtils.equals("null", str)) {
            this.dq = "";
        }
        ((fmg) this.ia).setText(this.dq);
    }

    @Override // g.dlv
    public void p() {
        Typeface create;
        super.p();
        if (TextUtils.equals("null", this.dq)) {
            this.dq = "";
        }
        mn(this.dq);
        ((fmg) this.ia).setTextSize(1, this.ox);
        ((fmg) this.ia).setTextColor(this.f15418d);
        ((fmg) this.ia).setLines(this.tv);
        ((fmg) this.ia).setMaxLines(this.nt);
        ((fmg) this.ia).setGravity(this.ny);
        ((fmg) this.ia).setIncludeFontPadding(false);
        iw(this.f15417a);
        if (ji()) {
            dq(this.sy);
        } else {
            dq(this.dk);
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            float f2 = this.f15419g;
            if (f2 >= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                ((fmg) this.ia).setLineSpacing(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, f2);
            }
        }
        ((fmg) this.ia).setShadowLayer(this.ah, this.hy, this.ip, this.sc);
        int i2 = this.p;
        if (i2 == 1) {
            ((fmg) this.ia).setTypeface(Typeface.DEFAULT, i2);
            return;
        }
        if (i >= 28) {
            Typeface typeface = Typeface.DEFAULT;
            create = Typeface.create(Typeface.DEFAULT, (int) this.zi, i2 == 2);
            ((fmg) this.ia).setTypeface(create);
        } else if (this.zi >= 500.0f) {
            ((fmg) this.ia).setTypeface(Typeface.DEFAULT, 1);
        }
    }
}
