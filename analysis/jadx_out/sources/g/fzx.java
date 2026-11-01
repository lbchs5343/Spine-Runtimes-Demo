package g;

import android.content.Context;
import android.text.TextUtils;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.HashMap;

/* loaded from: classes.dex */
public class fzx extends dlv {
    public ImageView.ScaleType aa;

    /* renamed from: ab, reason: collision with root package name */
    public final HashMap f17753ab;
    public boolean ac;
    public int ad;
    public float ae;
    public String af;
    public ImageView.ScaleType ag;
    public String ah;
    public float ai;

    public fzx(Context context) {
        super(context, 0);
        this.ah = "images";
        this.ai = 1.0f;
        this.aa = ImageView.ScaleType.FIT_CENTER;
        this.ag = ImageView.ScaleType.FIT_XY;
        this.f17753ab = new HashMap();
    }

    public void d() {
        ((gkb) this.ia).dq();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00e1, code lost:
    
        if (r11.equals("centerCrop") == false) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0144, code lost:
    
        if (r11.equals(com.bykv.vk.component.ttvideo.LiveConfigKey.NONE) == false) goto L109;
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
        char c3 = 5;
        char c4 = 3;
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
            case -1001078227:
                if (str.equals("progress")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case -878289888:
                if (str.equals("imagePath")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case -291235277:
                if (str.equals("autoReverse")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 114148:
                if (str.equals("src")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case 3327652:
                if (str.equals("loop")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case 109641799:
                if (str.equals("speed")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case 1438608771:
                if (str.equals("autoPlay")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            case 1439562083:
                if (str.equals("autoplay")) {
                    c2 = '\t';
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
                ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_XY;
                str2.getClass();
                switch (str2.hashCode()) {
                    case -1364013995:
                        if (str2.equals("center")) {
                            c4 = 0;
                            break;
                        }
                        c4 = 65535;
                        break;
                    case 101393:
                        if (str2.equals("fit")) {
                            c4 = 1;
                            break;
                        }
                        c4 = 65535;
                        break;
                    case 3062416:
                        if (str2.equals("crop")) {
                            c4 = 2;
                            break;
                        }
                        c4 = 65535;
                        break;
                    case 3387192:
                        break;
                    default:
                        c4 = 65535;
                        break;
                }
                switch (c4) {
                    case 0:
                    case 3:
                        scaleType = ImageView.ScaleType.CENTER;
                        break;
                    case 1:
                        scaleType = ImageView.ScaleType.FIT_CENTER;
                        break;
                    case 2:
                        scaleType = ImageView.ScaleType.CENTER_CROP;
                        break;
                }
                this.ag = scaleType;
                break;
            case 1:
                ImageView.ScaleType scaleType2 = ImageView.ScaleType.FIT_XY;
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
                    case 520762310:
                        if (str2.equals("fitCenter")) {
                            c3 = 4;
                            break;
                        }
                        c3 = 65535;
                        break;
                    case 1161480325:
                        break;
                    default:
                        c3 = 65535;
                        break;
                }
                switch (c3) {
                    case 0:
                        scaleType2 = ImageView.ScaleType.CENTER;
                        break;
                    case 1:
                        scaleType2 = ImageView.ScaleType.FIT_END;
                        break;
                    case 2:
                        scaleType2 = ImageView.ScaleType.FIT_START;
                        break;
                    case 3:
                        scaleType2 = ImageView.ScaleType.CENTER_INSIDE;
                        break;
                    case 4:
                        scaleType2 = ImageView.ScaleType.FIT_CENTER;
                        break;
                    case 5:
                        scaleType2 = ImageView.ScaleType.CENTER_CROP;
                        break;
                }
                this.aa = scaleType2;
                break;
            case 2:
                this.ae = byh.au(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, str2);
                break;
            case 3:
                this.ah = str2;
                break;
            case 4:
                byh.ao(str2, false);
                break;
            case 5:
                this.af = str2;
                break;
            case 6:
                if (!ji()) {
                    this.ac = byh.ao(str2, false);
                    break;
                } else {
                    this.ad = byh.o(str2, 0);
                    break;
                }
            case 7:
                this.ai = byh.au(1.0f, str2);
                break;
            case '\b':
                byh.ao(str2, false);
                break;
            case '\t':
                byh.ao(str2, true);
                break;
        }
    }

    @Override // g.dlv
    public final void p() {
        super.p();
        ((gkb) this.ia).setProgress(this.ae);
        if (this.ai <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            this.ai = 1.0f;
        }
        ((gkb) this.ia).setSpeed(this.ai);
        if (this.af.startsWith("local")) {
            String str = this.af;
            String str2 = "";
            if (!TextUtils.isEmpty(str) && str.contains("local")) {
                if (str.contains("shake_phone")) {
                    str2 = "lottie_json/shake_phone.json";
                } else if (str.contains("swipe_right")) {
                    str2 = "lottie_json/swipe_right.json";
                }
            }
            ((gkb) this.ia).setAnimation(str2);
            ((gkb) this.ia).setImageAssetsFolder(this.ah);
        } else {
            ((gkb) this.ia).setAnimationFromUrl(this.af);
        }
        ((gkb) this.ia).setImageAssetDelegate(new emr(20, this));
        if (ji()) {
            ((gkb) this.ia).setScaleType(this.ag);
        } else {
            ((gkb) this.ia).setScaleType(this.aa);
        }
        if (ji()) {
            ((gkb) this.ia).setRepeatCount(this.ad);
        } else {
            ((gkb) this.ia).dq(this.ac);
        }
        d();
    }

    @Override // g.dlv
    /* renamed from: y */
    public gkb ox() {
        gkb gkbVar = new gkb(this.s);
        gkbVar.dq(this);
        return gkbVar;
    }
}
