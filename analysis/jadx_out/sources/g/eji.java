package g;

import android.text.TextUtils;
import android.view.View;

/* loaded from: classes.dex */
public final class eji extends dlv {

    /* renamed from: a, reason: collision with root package name */
    public float f15653a;
    public int aa;

    /* renamed from: ab, reason: collision with root package name */
    public int f15654ab;

    /* renamed from: g, reason: collision with root package name */
    public int f15655g;
    public int w;
    public String y;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x009f, code lost:
    
        if (r9.equals("left") == false) goto L46;
     */
    @Override // g.dlv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void dq(String str, String str2) {
        char c2;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        super.dq(str, str2);
        str.getClass();
        int i = 5;
        char c3 = 1;
        switch (str.hashCode()) {
            case -1065511464:
                if (str.equals("textAlign")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -1063571914:
                if (str.equals("textColor")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -1003668786:
                if (str.equals("textSize")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 3556653:
                if (str.equals("text")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 102977279:
                if (str.equals("lines")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 390232059:
                if (str.equals("maxLines")) {
                    c2 = 5;
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
                str2.getClass();
                switch (str2.hashCode()) {
                    case -1364013995:
                        if (str2.equals("center")) {
                            c3 = 0;
                            break;
                        }
                        c3 = 65535;
                        break;
                    case 3317767:
                        break;
                    case 108511772:
                        if (str2.equals("right")) {
                            c3 = 2;
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
                        i = 17;
                        break;
                    case 1:
                        i = 3;
                        break;
                    case 2:
                        break;
                    default:
                        i = 2;
                        break;
                }
                this.f15654ab = i;
                break;
            case 1:
                this.aa = bff.ab(str2, -16777216);
                break;
            case 2:
                this.f15653a = Float.parseFloat(str2);
                break;
            case 3:
                this.y = str2;
                break;
            case 4:
                this.w = Integer.parseInt(str2);
                break;
            case 5:
                this.f15655g = Integer.parseInt(str2);
                break;
        }
    }

    @Override // g.dlv
    public final View ox() {
        hdl hdlVar = new hdl(this.s);
        hdlVar.f19277b = new dv(hdlVar);
        hdlVar.f19276a = this;
        return hdlVar;
    }

    @Override // g.dlv
    public final void p() {
        super.p();
        ((hdl) this.ia).setRichText(this.y);
        ((hdl) this.ia).setTextSize(1, this.f15653a);
        ((hdl) this.ia).setTextColor(this.aa);
        ((hdl) this.ia).setLines(this.w);
        ((hdl) this.ia).setMaxLines(this.f15655g);
        ((hdl) this.ia).setGravity(this.f15654ab);
    }
}
