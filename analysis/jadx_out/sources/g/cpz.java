package g;

import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;

/* loaded from: classes.dex */
public final class cpz extends dlv {

    /* renamed from: a, reason: collision with root package name */
    public String f13312a;
    public int aa;

    /* renamed from: ab, reason: collision with root package name */
    public int f13313ab;
    public int ac;
    public int ad;

    /* renamed from: g, reason: collision with root package name */
    public String f13314g;
    public float w;
    public int y;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a3, code lost:
    
        if (r11.equals("text") != false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0107, code lost:
    
        if (r11.equals("left") == false) goto L86;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
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
        char c3 = 4;
        int i2 = 1;
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
            case 3202695:
                if (str.equals("hint")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 3556653:
                if (str.equals("text")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 102977279:
                if (str.equals("lines")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case 390232059:
                if (str.equals("maxLines")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case 1706976804:
                if (str.equals("inputType")) {
                    c2 = 7;
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
                            i2 = 0;
                            break;
                        }
                        i2 = -1;
                        break;
                    case 3317767:
                        break;
                    case 108511772:
                        if (str2.equals("right")) {
                            i2 = 2;
                            break;
                        }
                        i2 = -1;
                        break;
                    default:
                        i2 = -1;
                        break;
                }
                switch (i2) {
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
                this.ad = i;
                break;
            case 1:
                this.ac = bff.ab(str2, -16777216);
                break;
            case 2:
                this.w = Float.parseFloat(str2);
                break;
            case 3:
                this.f13312a = str2;
                break;
            case 4:
                this.f13314g = str2;
                break;
            case 5:
                this.aa = Integer.parseInt(str2);
                break;
            case 6:
                this.y = Integer.parseInt(str2);
                break;
            case 7:
                switch (str2.hashCode()) {
                    case -1034364087:
                        if (str2.equals("number")) {
                            c3 = 2;
                            break;
                        }
                        c3 = 65535;
                        break;
                    case 3556653:
                        break;
                    case 96619420:
                        if (str2.equals("email")) {
                            c3 = 3;
                            break;
                        }
                        c3 = 65535;
                        break;
                    case 106642798:
                        if (str2.equals("phone")) {
                            c3 = 1;
                            break;
                        }
                        c3 = 65535;
                        break;
                    case 1216985755:
                        if (str2.equals("password")) {
                            c3 = 0;
                            break;
                        }
                        c3 = 65535;
                        break;
                    default:
                        c3 = 65535;
                        break;
                }
                if (c3 == 0) {
                    i2 = TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME;
                } else if (c3 == 1) {
                    i2 = 3;
                } else if (c3 == 2) {
                    i2 = 2;
                } else if (c3 == 3) {
                    i2 = 32;
                }
                this.f13313ab = i2;
                break;
        }
    }

    @Override // g.dlv
    public final View ox() {
        ate ateVar = new ate(this.s);
        ateVar.f10793a = this;
        return ateVar;
    }

    @Override // g.dlv
    public final void p() {
        super.p();
        ((EditText) this.ia).setInputType(this.f13313ab);
        ((EditText) this.ia).setText(this.f13314g);
        ((EditText) this.ia).setTextSize(1, this.w);
        ((EditText) this.ia).setTextColor(this.ac);
        ((EditText) this.ia).setLines(this.aa);
        ((EditText) this.ia).setMaxLines(this.y);
        ((EditText) this.ia).setGravity(this.ad);
        ((EditText) this.ia).setHint(this.f13312a);
    }
}
