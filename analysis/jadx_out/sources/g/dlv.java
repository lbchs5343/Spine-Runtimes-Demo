package g;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class dlv implements View.OnTouchListener, eun, dvh, eho {

    /* renamed from: a, reason: collision with root package name */
    private boolean f14390a;
    private dbw ae;

    @Deprecated
    private cdb ah;

    /* renamed from: b, reason: collision with root package name */
    protected f f14391b;
    protected float bl;
    private boolean bn;
    protected float bu;
    protected coy bx;
    protected float by;

    /* renamed from: c, reason: collision with root package name */
    protected boolean f14392c;
    protected float cd;
    protected boolean ce;
    protected float cv;

    /* renamed from: d, reason: collision with root package name */
    private boolean f14393d;
    protected int dc;
    private boolean dq;
    protected boolean ds;

    /* renamed from: e, reason: collision with root package name */
    protected boolean f14394e;
    protected boolean er;
    private boolean fp;
    private boolean fq;
    protected float gh;
    protected float gx;
    protected boolean h;
    protected boolean ha;

    @Deprecated
    private bye hy;
    protected float i;
    protected dmm ig;
    protected ViewGroup.LayoutParams ij;

    @Deprecated
    private dhi ip;
    protected float ir;
    protected JSONObject iw;
    protected int j;
    protected boolean ji;
    private gjp jn;

    @Deprecated
    private gii jv;
    protected String jy;
    protected float k;
    protected boolean kx;
    protected boolean l;
    protected float le;
    private gsa lk;
    protected JSONObject mn;
    protected boolean mp;
    protected float n;
    protected String nh;
    protected abm no;
    private boolean nt;
    private boolean ny;
    protected eyh o;
    protected float ob;
    protected float op;
    private boolean ox;
    private boolean p;
    private dsk py;
    protected String q;
    protected float r;
    private boolean rp;
    protected Context s;
    private sh sc;
    private boolean sy;
    protected boolean t;
    protected cyx tl;
    private boolean tv;
    protected float u;
    protected float uh;
    private JSONObject ux;
    protected boolean v;
    protected ImageView.ScaleType vf;
    protected boolean vw;
    private String w;
    protected boolean wn;
    protected float wp;
    private boolean wq;
    protected boolean x;
    protected gse xi;
    protected ahr xj;

    @Deprecated
    private fwp xx;
    protected float xz;
    private boolean y;
    protected float yy;
    private String zi;

    /* renamed from: f, reason: collision with root package name */
    protected float f14395f = -2.0f;
    protected float fw = -2.0f;
    protected String jw = "solid";
    protected int fd = 0;
    protected boolean ws = true;
    protected float z = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    protected float pa = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    protected float io = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    protected float m = 1.0f;
    protected float xv = 1.0f;
    protected float wi = 1.0f;
    protected float cc = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    protected float mc = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    protected float jo = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    protected float yo = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    protected float hf = 1.0f;
    private boolean dk = true;
    private boolean oh = true;
    private boolean en = false;
    private boolean qz = false;
    private float gl = 12.0f;
    protected eyh kk = null;
    protected Map<Integer, fzc> bf = new HashMap();

    /* renamed from: g, reason: collision with root package name */
    private GradientDrawable f14396g = new GradientDrawable();
    protected View ia = ox();

    public dlv(Context context, int i) {
        this.s = context;
    }

    public final void aj() {
        float f2 = this.v ? this.by : this.gx;
        float f3 = this.ds ? this.xz : this.gx;
        float f4 = this.vw ? this.uh : this.gx;
        float f5 = this.ha ? this.yy : this.gx;
        this.f14396g.setCornerRadii(new float[]{f2, f2, f3, f3, f5, f5, f4, f4});
    }

    public final void ak() {
        if (TextUtils.equals("dashed", this.jw)) {
            GradientDrawable gradientDrawable = this.f14396g;
            float f2 = this.cv;
            gradientDrawable.setStroke((int) f2, this.dc, 3.0f * f2, f2);
        } else {
            if (!TextUtils.equals("dotted", this.jw)) {
                this.f14396g.setStroke((int) this.cv, this.dc);
                return;
            }
            GradientDrawable gradientDrawable2 = this.f14396g;
            float f3 = this.cv;
            gradientDrawable2.setStroke((int) f3, this.dc, f3 / 2.0f, f3);
        }
    }

    public eyh bl() {
        return this.kk;
    }

    public boolean by() {
        return this.sy;
    }

    public dmm c() {
        return this.ig;
    }

    public float cd() {
        return this.yo;
    }

    public boolean ce() {
        return this.ws;
    }

    public dlv d(dlv dlvVar) {
        return (dlvVar.bl() == null && (dlvVar instanceof eyh)) ? dlvVar : d(dlvVar.bl());
    }

    public dlv d(String str) {
        if (TextUtils.isEmpty(this.jy) || !TextUtils.equals(this.jy, str)) {
            return null;
        }
        return this;
    }

    public void d(int i) {
        ViewParent viewParent = (ViewGroup) this.ia.getParent();
        if (viewParent instanceof aau) {
            ((aau) viewParent).ox(this.ia, i);
        } else {
            this.ia.setVisibility(i);
        }
    }

    @Override // g.eun
    public void d(int i, int i2, int i3, int i4) {
        cw cwVar;
        gjp gjpVar = this.jn;
        if (gjpVar != null) {
            gjpVar.f18257a = i / 2;
            gjpVar.f18258b = i2 / 2;
        }
        gse gseVar = this.xi;
        if (gseVar == null || (cwVar = gseVar.f18680d) == null) {
            return;
        }
        cwVar.d(i, i2);
    }

    public void d(String str, String str2) {
        if (TextUtils.isEmpty(str2) || this.bf == null) {
            return;
        }
        try {
            int type = cvf.b(str).getType();
            fzc fzcVar = new fzc();
            fzcVar.f17690c = type;
            fzcVar.f17689b = this;
            JSONObject jSONObject = new JSONObject(str2);
            if (type == 3) {
                try {
                    this.gl = Float.parseFloat(dzm.ae(jSONObject.optString("shakeAmplitude"), this.mn));
                } catch (NumberFormatException unused) {
                    this.gl = 12.0f;
                }
            }
            cyx cyxVar = this.tl;
            if (!(cyxVar instanceof cbh)) {
                dq(type, jSONObject, fzcVar);
                return;
            }
            String str3 = ((cbh) cyxVar).f12588b;
            if (str3 != null) {
                "3".compareTo(str3);
            }
            dq(type, jSONObject, fzcVar);
        } catch (JSONException unused2) {
        }
    }

    public void d(JSONObject jSONObject) {
        this.iw = jSONObject;
    }

    public void d(boolean z) {
        this.y = z;
    }

    public dlv dq(String str) {
        if (TextUtils.isEmpty(this.q) || !TextUtils.equals(this.q, str)) {
            return null;
        }
        return this;
    }

    @Override // g.eun
    public void dq(int i, int i2, int i3, int i4) {
        if (this.ae == null || this.bn) {
            return;
        }
        this.bn = true;
    }

    @Deprecated
    public void dq(int i, JSONObject jSONObject, fzc fzcVar) {
        JSONObject optJSONObject = jSONObject.optJSONObject("success");
        if (optJSONObject != null) {
            fzc fzcVar2 = new fzc();
            fzcVar2.f17691d = optJSONObject;
            fzcVar2.f17689b = this;
            fzcVar.f17688a = fzcVar2;
        }
        if (jSONObject.optJSONObject("fail") != null) {
            fzcVar.getClass();
        }
        fzcVar.f17691d = jSONObject;
        this.bf.put(Integer.valueOf(i), fzcVar);
    }

    @Override // g.eun
    public void dq(Canvas canvas) {
        cw cwVar;
        gse gseVar = this.xi;
        if (gseVar == null || (cwVar = gseVar.f18680d) == null) {
            return;
        }
        cwVar.e(canvas);
    }

    @Override // g.eun
    public void dq(Canvas canvas, gsy gsyVar) {
        gjp gjpVar = this.jn;
        if (gjpVar != null) {
            Paint paint = gjpVar.f18260d;
            try {
                if (gsyVar.getRipple() == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || TextUtils.isEmpty(gjpVar.f18263g)) {
                    return;
                }
                paint.setColor(bff.ab(gjpVar.f18263g, -16777216));
                paint.setAlpha(90);
                ((ViewGroup) gjpVar.f18262f.getParent()).setClipChildren(true);
                canvas.drawCircle(gjpVar.f18257a, gjpVar.f18258b, Math.min(r2, r0) * 2 * gsyVar.getRipple(), paint);
            } catch (Throwable th) {
                th.getMessage();
            }
        }
    }

    public void dq(Drawable drawable) {
        this.ia.setBackground(drawable);
    }

    public void dq(ViewGroup.LayoutParams layoutParams) {
        View view = this.ia;
        if (view != null) {
            view.setLayoutParams(layoutParams);
        }
        this.ij = layoutParams;
    }

    public void dq(abm abmVar) {
        this.no = abmVar;
    }

    public void dq(ahr ahrVar) {
        this.xj = ahrVar;
    }

    public void dq(coy coyVar) {
        if (coyVar == null) {
            return;
        }
        this.f14396g.setShape(0);
        this.f14396g.setOrientation(coyVar.f13257a);
        if (Build.VERSION.SDK_INT >= 29) {
            this.f14396g.setColors(coyVar.f13258b, coyVar.f13259c);
        } else {
            this.f14396g.setColors(coyVar.f13258b);
        }
        aj();
        ak();
        this.ia.setBackground(this.f14396g);
    }

    public void dq(cyx cyxVar) {
        this.tl = cyxVar;
    }

    public void dq(dbw dbwVar) {
        this.ae = dbwVar;
    }

    public void dq(dmm dmmVar) {
        this.ig = dmmVar;
    }

    public void dq(dsk dskVar) {
        this.py = dskVar;
    }

    public void dq(eyh eyhVar) {
        this.kk = eyhVar;
    }

    public void dq(f fVar) {
        this.f14391b = fVar;
    }

    @Override // g.dvh
    public void dq(fzc fzcVar) {
        eyh eyhVar;
        dlv ox;
        if (fzcVar == null || fzcVar.f17691d == null) {
            return;
        }
        gii giiVar = this.jv;
        if (giiVar != null) {
            giiVar.d();
        }
        if (TextUtils.equals(fzcVar.f17691d.optString("type"), "onDismiss")) {
            String optString = fzcVar.f17691d.optString("nodeId");
            d(8);
            this.o = (eyh) d(this);
            if (TextUtils.isEmpty(optString) || (eyhVar = this.o) == null || (ox = eyhVar.ox(optString)) == null) {
                return;
            }
            ox.d(8);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void dq(String str, String str2) {
        char c2;
        bgh z;
        eyh eyhVar;
        eyh eyhVar2;
        char c3;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        str.getClass();
        switch (str.hashCode()) {
            case -1964681502:
                if (str.equals("clickable")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -1901681170:
                if (str.equals("onRenderSuccess")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -1721943862:
                if (str.equals("translateX")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case -1721943861:
                if (str.equals("translateY")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case -1501175880:
                if (str.equals("paddingLeft")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case -1375815020:
                if (str.equals("minWidth")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case -1351184668:
                if (str.equals("onDelay")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case -1337252761:
                if (str.equals("onShake")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case -1337126126:
                if (str.equals("onSlide")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            case -1336288090:
                if (str.equals("onTimer")) {
                    c2 = '\t';
                    break;
                }
                c2 = 65535;
                break;
            case -1335874424:
                if (str.equals("onTwist")) {
                    c2 = '\n';
                    break;
                }
                c2 = 65535;
                break;
            case -1332194002:
                if (str.equals("background")) {
                    c2 = 11;
                    break;
                }
                c2 = 65535;
                break;
            case -1291329255:
                if (str.equals("events")) {
                    c2 = '\f';
                    break;
                }
                c2 = 65535;
                break;
            case -1267206133:
                if (str.equals("opacity")) {
                    c2 = '\r';
                    break;
                }
                c2 = 65535;
                break;
            case -1228066334:
                if (str.equals("borderTopLeftRadius")) {
                    c2 = 14;
                    break;
                }
                c2 = 65535;
                break;
            case -1221029593:
                if (str.equals(MediaFormat.KEY_HEIGHT)) {
                    c2 = 15;
                    break;
                }
                c2 = 65535;
                break;
            case -1081309778:
                if (str.equals("margin")) {
                    c2 = 16;
                    break;
                }
                c2 = 65535;
                break;
            case -1044792121:
                if (str.equals("marginTop")) {
                    c2 = 17;
                    break;
                }
                c2 = 65535;
                break;
            case -1013407967:
                if (str.equals("onDown")) {
                    c2 = 18;
                    break;
                }
                c2 = 65535;
                break;
            case -933876756:
                if (str.equals("backgroundDrawable")) {
                    c2 = 19;
                    break;
                }
                c2 = 65535;
                break;
            case -925180581:
                if (str.equals("rotate")) {
                    c2 = 20;
                    break;
                }
                c2 = 65535;
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    c2 = 21;
                    break;
                }
                c2 = 65535;
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    c2 = 22;
                    break;
                }
                c2 = 65535;
                break;
            case -806339567:
                if (str.equals("padding")) {
                    c2 = 23;
                    break;
                }
                c2 = 65535;
                break;
            case -681357156:
                if (str.equals("triggerFunc")) {
                    c2 = 24;
                    break;
                }
                c2 = 65535;
                break;
            case -289173127:
                if (str.equals("marginBottom")) {
                    c2 = 25;
                    break;
                }
                c2 = 65535;
                break;
            case -133587431:
                if (str.equals("minHeight")) {
                    c2 = 26;
                    break;
                }
                c2 = 65535;
                break;
            case 3355:
                if (str.equals(TTDownloadField.TT_ID)) {
                    c2 = 27;
                    break;
                }
                c2 = 65535;
                break;
            case 3176990:
                if (str.equals("i18n")) {
                    c2 = 28;
                    break;
                }
                c2 = 65535;
                break;
            case 3373707:
                if (str.equals(abn.EXTRA_UA_APP_NAME)) {
                    c2 = 29;
                    break;
                }
                c2 = 65535;
                break;
            case 87811796:
                if (str.equals("backgroundImageBlur")) {
                    c2 = 30;
                    break;
                }
                c2 = 65535;
                break;
            case 90130308:
                if (str.equals("paddingTop")) {
                    c2 = 31;
                    break;
                }
                c2 = 65535;
                break;
            case 94750088:
                if (str.equals("click")) {
                    c2 = ' ';
                    break;
                }
                c2 = 65535;
                break;
            case 105871684:
                if (str.equals("onTap")) {
                    c2 = '!';
                    break;
                }
                c2 = 65535;
                break;
            case 108285963:
                if (str.equals("ratio")) {
                    c2 = '\"';
                    break;
                }
                c2 = 65535;
                break;
            case 109250890:
                if (str.equals("scale")) {
                    c2 = '#';
                    break;
                }
                c2 = 65535;
                break;
            case 113126854:
                if (str.equals(MediaFormat.KEY_WIDTH)) {
                    c2 = '$';
                    break;
                }
                c2 = 65535;
                break;
            case 202355100:
                if (str.equals("paddingBottom")) {
                    c2 = '%';
                    break;
                }
                c2 = 65535;
                break;
            case 320386138:
                if (str.equals("onLoadMore")) {
                    c2 = '&';
                    break;
                }
                c2 = 65535;
                break;
            case 333432965:
                if (str.equals("borderTopRightRadius")) {
                    c2 = '\'';
                    break;
                }
                c2 = 65535;
                break;
            case 529642498:
                if (str.equals("overflow")) {
                    c2 = '(';
                    break;
                }
                c2 = 65535;
                break;
            case 581268560:
                if (str.equals("borderBottomLeftRadius")) {
                    c2 = ')';
                    break;
                }
                c2 = 65535;
                break;
            case 588239831:
                if (str.equals("borderBottomRightRadius")) {
                    c2 = '*';
                    break;
                }
                c2 = 65535;
                break;
            case 713848971:
                if (str.equals("paddingRight")) {
                    c2 = '+';
                    break;
                }
                c2 = 65535;
                break;
            case 722830999:
                if (str.equals("borderColor")) {
                    c2 = ',';
                    break;
                }
                c2 = 65535;
                break;
            case 737768677:
                if (str.equals("borderStyle")) {
                    c2 = '-';
                    break;
                }
                c2 = 65535;
                break;
            case 741115130:
                if (str.equals("borderWidth")) {
                    c2 = '.';
                    break;
                }
                c2 = 65535;
                break;
            case 843948038:
                if (str.equals("onExposure")) {
                    c2 = '/';
                    break;
                }
                c2 = 65535;
                break;
            case 975087886:
                if (str.equals("marginRight")) {
                    c2 = '0';
                    break;
                }
                c2 = 65535;
                break;
            case 1052832078:
                if (str.equals("translate")) {
                    c2 = '1';
                    break;
                }
                c2 = 65535;
                break;
            case 1087723621:
                if (str.equals("onAnimation")) {
                    c2 = '2';
                    break;
                }
                c2 = 65535;
                break;
            case 1118509956:
                if (str.equals("animation")) {
                    c2 = '3';
                    break;
                }
                c2 = 65535;
                break;
            case 1151851515:
                if (str.equals("animatorSet")) {
                    c2 = '4';
                    break;
                }
                c2 = 65535;
                break;
            case 1158381436:
                if (str.equals("onPullToRefresh")) {
                    c2 = '5';
                    break;
                }
                c2 = 65535;
                break;
            case 1287124693:
                if (str.equals("backgroundColor")) {
                    c2 = '6';
                    break;
                }
                c2 = 65535;
                break;
            case 1292595405:
                if (str.equals("backgroundImage")) {
                    c2 = '7';
                    break;
                }
                c2 = 65535;
                break;
            case 1301532860:
                if (str.equals("backgroundScale")) {
                    c2 = '8';
                    break;
                }
                c2 = 65535;
                break;
            case 1349188574:
                if (str.equals("borderRadius")) {
                    c2 = '9';
                    break;
                }
                c2 = 65535;
                break;
            case 1384173149:
                if (str.equals("rotateX")) {
                    c2 = ':';
                    break;
                }
                c2 = 65535;
                break;
            case 1384173150:
                if (str.equals("rotateY")) {
                    c2 = ';';
                    break;
                }
                c2 = 65535;
                break;
            case 1384173151:
                if (str.equals("rotateZ")) {
                    c2 = '<';
                    break;
                }
                c2 = 65535;
                break;
            case 1490730380:
                if (str.equals("onScroll")) {
                    c2 = '=';
                    break;
                }
                c2 = 65535;
                break;
            case 1671308008:
                if (str.equals("disable")) {
                    c2 = '>';
                    break;
                }
                c2 = 65535;
                break;
            case 1685004456:
                if (str.equals("onLongTap")) {
                    c2 = '?';
                    break;
                }
                c2 = 65535;
                break;
            case 1941332754:
                if (str.equals("visibility")) {
                    c2 = '@';
                    break;
                }
                c2 = 65535;
                break;
            case 1970934485:
                if (str.equals("marginLeft")) {
                    c2 = 'A';
                    break;
                }
                c2 = 65535;
                break;
            case 1997542747:
                if (str.equals("availability")) {
                    c2 = 'B';
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        gsa gsaVar = null;
        r15 = null;
        sh h = null;
        r15 = null;
        JSONObject jSONObject = null;
        gsaVar = null;
        gsaVar = null;
        switch (c2) {
            case 0:
                this.oh = byh.ao(str2, true);
                break;
            case 1:
            case 6:
            case 7:
            case '\b':
            case '\t':
            case '\n':
            case 18:
            case '!':
            case '&':
            case '/':
            case '2':
            case '5':
            case '=':
            case '?':
                d(str, str2);
                break;
            case 2:
                this.dq = true;
                this.pa = dxo.f(this.s, byh.au(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, str2));
                break;
            case 3:
                this.f14393d = true;
                this.io = dxo.f(this.s, byh.au(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, str2));
                break;
            case 4:
                this.n = dxo.g(this.s, str2);
                this.f14392c = true;
                break;
            case 5:
                this.k = byh.au(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, str2);
                break;
            case 11:
            case '6':
                if (!TextUtils.isEmpty(str2) && str2.startsWith("linear-gradient")) {
                    this.x = true;
                    this.bx = bff.ak(str2);
                    break;
                } else {
                    this.j = bff.ab(str2, 0);
                    this.x = false;
                    break;
                }
                break;
            case '\f':
                if (!TextUtils.isEmpty(str2)) {
                    try {
                        JSONArray jSONArray = new JSONArray(str2);
                        if (jSONArray.length() > 0) {
                            HashMap hashMap = new HashMap();
                            for (int i = 0; i < jSONArray.length(); i++) {
                                JSONObject optJSONObject = jSONArray.optJSONObject(i);
                                if (optJSONObject != null && (z = byh.z(kk().getContext(), this, optJSONObject, o())) != null) {
                                    hashMap.put(z.mn(), z);
                                }
                            }
                            gsa gsaVar2 = new gsa();
                            gsaVar2.f18673b = this;
                            gsaVar2.f18672a = hashMap;
                            gsaVar = gsaVar2;
                        }
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                }
                this.lk = gsaVar;
                break;
            case '\r':
                this.f14390a = true;
                this.hf = byh.au(1.0f, str2);
                break;
            case 14:
                this.by = dxo.g(this.s, str2);
                this.v = true;
                break;
            case 15:
                if (TextUtils.equals(str2, "match_parent")) {
                    if (ji() && (eyhVar = this.kk) != null && eyhVar.u() == -2) {
                        this.fw = -2.0f;
                    } else {
                        this.fw = -1.0f;
                    }
                } else if (TextUtils.equals(str2, "wrap_content")) {
                    this.fw = -2.0f;
                } else {
                    this.fw = dxo.g(this.s, str2);
                }
                this.qz = true;
                break;
            case 16:
                this.cd = dxo.g(this.s, str2);
                break;
            case 17:
                this.i = dxo.g(this.s, str2);
                this.h = true;
                break;
            case 19:
            case '7':
                this.nh = str2;
                break;
            case 20:
                this.nt = true;
                this.cc = byh.au(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, str2);
                break;
            case 21:
                this.ox = true;
                this.xv = byh.au(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, str2);
                break;
            case 22:
                this.p = true;
                this.wi = byh.au(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, str2);
                break;
            case 23:
                this.bl = dxo.g(this.s, str2);
                break;
            case 24:
                this.w = str2;
                break;
            case 25:
                this.le = dxo.g(this.s, str2);
                this.ji = true;
                break;
            case 26:
                this.wp = byh.au(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, str2);
                break;
            case 27:
                this.q = str2;
                break;
            case 28:
                if (!TextUtils.isEmpty(str2)) {
                    try {
                        jSONObject = new JSONObject(str2);
                    } catch (JSONException e3) {
                        e3.printStackTrace();
                    }
                }
                this.ux = jSONObject;
                break;
            case 29:
                this.jy = str2;
                break;
            case 30:
                float au = byh.au(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, str2);
                this.ob = au;
                if (au > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    this.l = true;
                    break;
                }
                break;
            case 31:
                this.ir = dxo.g(this.s, str2);
                this.er = true;
                break;
            case ' ':
                this.zi = str2;
                break;
            case '\"':
                this.bu = byh.au(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, str2);
                break;
            case '#':
                this.ox = true;
                this.p = true;
                float[] ay = egh.ay(str2);
                this.xv = ay[0];
                this.wi = ay[1];
                break;
            case '$':
                if (TextUtils.equals(str2, "match_parent")) {
                    if (ji() && (eyhVar2 = this.kk) != null && eyhVar2.ir() == -2) {
                        this.f14395f = -2.0f;
                    } else {
                        this.f14395f = -1.0f;
                    }
                } else if (TextUtils.equals(str2, "wrap_content")) {
                    this.f14395f = -2.0f;
                } else {
                    this.f14395f = dxo.g(this.s, str2);
                }
                this.en = true;
                break;
            case '%':
                this.u = dxo.g(this.s, str2);
                this.wn = true;
                break;
            case '\'':
                this.xz = dxo.g(this.s, str2);
                this.ds = true;
                break;
            case '(':
                this.dk = TextUtils.isEmpty(str2) || !TextUtils.equals(str2, "hidden");
                break;
            case ')':
                this.uh = dxo.g(this.s, str2);
                this.vw = true;
                break;
            case '*':
                this.yy = dxo.g(this.s, str2);
                this.ha = true;
                break;
            case '+':
                this.op = dxo.g(this.s, str2);
                this.ce = true;
                break;
            case ',':
                this.dc = bff.ab(str2, -16777216);
                break;
            case '-':
                this.jw = str2;
                break;
            case '.':
                this.cv = dxo.g(this.s, str2);
                break;
            case '0':
                this.r = dxo.g(this.s, str2);
                this.kx = true;
                break;
            case '1':
                this.dq = true;
                this.f14393d = true;
                float[] ay2 = egh.ay(str2);
                this.pa = dxo.f(this.s, ay2[0]);
                this.io = dxo.f(this.s, ay2[1]);
                break;
            case '3':
                try {
                    bel as = egh.as(new JSONObject(str2));
                    Context context = this.s;
                    gse gseVar = new gse();
                    gseVar.f18679c = this;
                    gseVar.f18681e = as;
                    gseVar.f18677a = context;
                    this.xi = gseVar;
                    break;
                } catch (JSONException e4) {
                    e4.printStackTrace();
                    return;
                }
            case '4':
                if (!TextUtils.isEmpty(str2)) {
                    try {
                        h = sh.h(this, new JSONObject(str2));
                    } catch (JSONException e5) {
                        e5.printStackTrace();
                    }
                }
                this.sc = h;
                break;
            case '8':
                this.t = true;
                str2.getClass();
                switch (str2.hashCode()) {
                    case -1364013995:
                        if (str2.equals("center")) {
                            c3 = 0;
                            break;
                        }
                        c3 = 65535;
                        break;
                    case 101393:
                        if (str2.equals("fit")) {
                            c3 = 1;
                            break;
                        }
                        c3 = 65535;
                        break;
                    case 3062416:
                        if (str2.equals("crop")) {
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
                        this.vf = ImageView.ScaleType.CENTER;
                        break;
                    case 1:
                        this.vf = ImageView.ScaleType.FIT_CENTER;
                        break;
                    case 2:
                        this.vf = ImageView.ScaleType.CENTER_CROP;
                        break;
                    default:
                        this.vf = ImageView.ScaleType.FIT_XY;
                        break;
                }
                this.vf = this.vf;
                break;
            case '9':
                this.gx = dxo.g(this.s, str2);
                break;
            case ':':
                this.tv = true;
                this.mc = byh.au(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, str2);
                break;
            case ';':
                this.ny = true;
                this.jo = byh.au(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, str2);
                break;
            case '<':
                this.yo = byh.au(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, str2);
                break;
            case '>':
                this.sy = byh.ao(str2, false);
                break;
            case '@':
                if (TextUtils.equals("visible", str2)) {
                    this.fd = 0;
                    break;
                } else if (TextUtils.equals("invisible", str2)) {
                    this.fd = 4;
                    break;
                } else if (TextUtils.equals("gone", str2) || TextUtils.equals("hidden", str2)) {
                    this.fd = 8;
                    break;
                }
                break;
            case 'A':
                this.gh = dxo.g(this.s, str2);
                this.f14394e = true;
                break;
            case 'B':
                this.ws = !TextUtils.equals(str2, "unavailable");
                break;
        }
    }

    public void dq(JSONObject jSONObject) {
        this.mn = jSONObject;
        JSONObject jSONObject2 = this.iw;
        if (jSONObject2 == null) {
            return;
        }
        Iterator<String> keys = jSONObject2.keys();
        eyh eyhVar = this.kk;
        ewk dq = eyhVar != null ? eyhVar.dq() : null;
        while (keys.hasNext()) {
            String next = keys.next();
            String ae = dzm.ae(this.iw.optString(next), jSONObject);
            dq(next, ae);
            if (dq != null) {
                dq.dq(this.s, next, ae);
            }
        }
        if (dq != null) {
            dq(dq.dq());
        }
        if (this.ux == null || this.mn == null) {
            return;
        }
        try {
            if (!ji()) {
                this.mn.put("i18n", this.ux);
                return;
            }
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("i18n", this.ux);
            this.mn.put("xNode", jSONObject3);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public void dq(boolean z) {
        dbw dbwVar = this.ae;
        if (dbwVar != null) {
            dbwVar.dq(z);
        }
    }

    public boolean dq(int i) {
        Map<Integer, fzc> map = this.bf;
        return map != null && map.containsKey(Integer.valueOf(i));
    }

    @Override // g.eun
    public int[] dq(int i, int i2) {
        if (this.bu > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            if (this.en) {
                int size = View.MeasureSpec.getSize(i);
                float f2 = this.bu;
                if (f2 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    i2 = View.MeasureSpec.makeMeasureSpec((int) (size / f2), C.ENCODING_PCM_32BIT);
                }
            } else if (this.qz) {
                int size2 = View.MeasureSpec.getSize(i2);
                float f3 = this.bu;
                if (f3 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    i = View.MeasureSpec.makeMeasureSpec((int) (size2 * f3), C.ENCODING_PCM_32BIT);
                }
            }
        }
        if (this.ae != null && !this.rp) {
            this.rp = true;
        }
        return new int[]{i, i2};
    }

    public ViewGroup.LayoutParams e() {
        return this.ij;
    }

    public int er() {
        return this.j;
    }

    public float f() {
        return this.mc;
    }

    public float fw() {
        return this.jo;
    }

    public float gh() {
        return this.hf;
    }

    public float gx() {
        KeyEvent.Callback callback = this.ia;
        return callback instanceof aeb ? ((aeb) callback).getRubIn() : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    public abm h() {
        return this.no;
    }

    public cyx i() {
        return this.tl;
    }

    @Override // g.eun
    public void ia() {
        ObjectAnimator objectAnimator;
        AnimatorSet animatorSet;
        gjp gjpVar = this.jn;
        if (gjpVar != null && (animatorSet = gjpVar.f18261e) != null) {
            animatorSet.cancel();
        }
        gse gseVar = this.xi;
        if (gseVar != null && (objectAnimator = gseVar.f18682f) != null) {
            objectAnimator.cancel();
        }
        dbw dbwVar = this.ae;
        if (dbwVar != null) {
            dbwVar.s();
        }
    }

    public float ig() {
        return this.pa;
    }

    public int ir() {
        return (int) this.f14395f;
    }

    @Override // g.eun
    public void iw() {
        if (this.ae == null || this.fq) {
            return;
        }
        this.fq = true;
    }

    public void iw(String str) {
        this.jy = str;
    }

    public void j() {
    }

    public boolean ji() {
        return this.mp;
    }

    public float jy() {
        return this.wi;
    }

    public void k() {
        BitmapDrawable bitmapDrawable;
        BitmapDrawable bitmapDrawable2;
        if (TextUtils.isEmpty(this.nh)) {
            if (this.x) {
                dq(this.bx);
                return;
            } else {
                this.f14396g.setColor(this.j);
                ox(this.j);
                return;
            }
        }
        if (!this.nh.startsWith("local://")) {
            wp();
            return;
        }
        String replace = this.nh.replace("local://", "");
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inPreferredConfig = this.l ? Bitmap.Config.ARGB_4444 : Bitmap.Config.RGB_565;
            options.inPurgeable = true;
            options.inInputShareable = true;
            Bitmap decodeStream = BitmapFactory.decodeStream(this.s.getResources().openRawResource(acw.as(this.s, replace, "drawable")), null, options);
            if (this.l) {
                Bitmap c2 = dxo.c(this.s, decodeStream, (int) this.ob);
                if (c2 != null) {
                    bitmapDrawable2 = new BitmapDrawable(this.s.getResources(), c2);
                    dq(bitmapDrawable2);
                }
                bitmapDrawable = new BitmapDrawable(this.s.getResources(), decodeStream);
            } else {
                bitmapDrawable = new BitmapDrawable(this.s.getResources(), decodeStream);
            }
            bitmapDrawable2 = bitmapDrawable;
            dq(bitmapDrawable2);
        } catch (Throwable unused) {
        }
    }

    public View kk() {
        return this.ia;
    }

    public void kx() {
        if (this.ia != null) {
            dq(this.ij);
            p((int) this.f14395f);
            s((int) this.fw);
        }
    }

    public float l() {
        KeyEvent.Callback callback = this.ia;
        return callback instanceof aeb ? ((aeb) callback).getShine() : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    public JSONObject le() {
        return this.iw;
    }

    public void mn() {
        bye byeVar;
        fzc fzcVar;
        dhi dhiVar;
        fzc fzcVar2;
        bgh d2;
        ObjectAnimator objectAnimator;
        sh shVar = this.sc;
        if (shVar != null) {
            gjp gjpVar = new gjp(this.ia, shVar);
            this.jn = gjpVar;
            gjpVar.h();
        }
        gse gseVar = this.xi;
        if (gseVar != null && (objectAnimator = gseVar.f18682f) != null && gseVar.f18678b != -2) {
            objectAnimator.start();
        }
        dbw dbwVar = this.ae;
        if (dbwVar != null) {
            dbwVar.p();
        }
        gsa gsaVar = this.lk;
        if (gsaVar != null && (d2 = gsaVar.d("timer")) != null) {
            d2.dq(gsaVar);
            d2.dq(new Object[0]);
        }
        if (this.ip != null && dq(10) && (fzcVar2 = (dhiVar = this.ip).f14180c) != null) {
            try {
                dhiVar.f14178a.sendEmptyMessageDelayed(1001, Integer.parseInt(dzm.ae(fzcVar2.f17691d.optString("delay"), dhiVar.f14181d.o())));
            } catch (NumberFormatException e2) {
                e2.printStackTrace();
            }
        }
        if (this.hy == null || !dq(9) || (fzcVar = (byeVar = this.hy).f12435a) == null) {
            return;
        }
        JSONObject jSONObject = fzcVar.f17691d;
        try {
            byeVar.f12439e = Integer.parseInt(dzm.ae(jSONObject.optString("interval", "8000"), byeVar.f12436b.o()));
            byeVar.f12437c = jSONObject.optBoolean("repeat");
            byeVar.f12438d.sendEmptyMessageDelayed(1001, byeVar.f12439e);
        } catch (NumberFormatException e3) {
            e3.printStackTrace();
        }
    }

    public float mp() {
        return this.io;
    }

    public String n() {
        return this.q;
    }

    public void nh() {
    }

    public void no() {
        this.ia.setPadding((int) (this.f14392c ? this.n : this.bl), (int) (this.er ? this.ir : this.bl), (int) (this.ce ? this.op : this.bl), (int) (this.wn ? this.u : this.bl));
    }

    public JSONObject o() {
        return this.mn;
    }

    public float ob() {
        KeyEvent.Callback callback = this.ia;
        return callback instanceof aeb ? ((aeb) callback).getRipple() : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x00e1, code lost:
    
        if (r3.f17532f != Float.MIN_VALUE) goto L70;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouch(View view, MotionEvent motionEvent) {
        fwp fwpVar;
        cyx cyxVar;
        cdb cdbVar;
        int action = motionEvent.getAction();
        if (action == 0) {
            j();
        } else if (action == 1 || action == 3) {
            nh();
        }
        ahr ahrVar = this.xj;
        if (ahrVar != null) {
            ahrVar.dq(this, motionEvent);
        }
        if (dq(17) && motionEvent.getAction() == 0) {
            this.tl.dq(this.bf.get(17), this, this);
        }
        if (!dq(1) || !this.y || (cyxVar = this.tl) == null || (cdbVar = this.ah) == null) {
            cyx cyxVar2 = this.tl;
            if (cyxVar2 == null || (fwpVar = this.xx) == null) {
                gsa gsaVar = this.lk;
                if (gsaVar != null) {
                    bgh d2 = gsaVar.d("tap");
                    if (d2 instanceof beb) {
                        d2.dq(gsaVar);
                        gsaVar.f18674c = d2.dq(motionEvent);
                    }
                    if (!gsaVar.f18674c) {
                        bgh d3 = gsaVar.d("slide");
                        if (!(d3 instanceof pv)) {
                            return gsaVar.f18674c;
                        }
                        d3.dq(gsaVar);
                        return d3.dq(motionEvent);
                    }
                }
                return false;
            }
            Context context = fwpVar.h;
            fzc fzcVar = fwpVar.f17528b;
            int action2 = motionEvent.getAction();
            if (action2 == 0) {
                fwpVar.f17530d = motionEvent.getX();
                fwpVar.f17532f = motionEvent.getY();
                return true;
            }
            if (action2 != 1) {
                if (action2 == 3) {
                    if (fwpVar.f17530d != Float.MIN_VALUE) {
                    }
                    return false;
                }
            }
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if (fwpVar.f17527a && Math.abs(x - fwpVar.f17530d) <= 10.0f && Math.abs(y - fwpVar.f17532f) <= 10.0f) {
                fwpVar.i();
                cyxVar2.dq(fwpVar.f17529c, this, this);
                return true;
            }
            if (fwpVar.f17533g == 0) {
                fwpVar.i();
                cyxVar2.dq(fzcVar, this, this);
                return true;
            }
            int e2 = dxo.e(context, x - fwpVar.f17530d);
            int e3 = dxo.e(context, y - fwpVar.f17532f);
            if (TextUtils.equals(fwpVar.f17531e, "up")) {
                e2 = -e3;
            } else if (TextUtils.equals(fwpVar.f17531e, "down")) {
                e2 = e3;
            } else if (TextUtils.equals(fwpVar.f17531e, "left")) {
                e2 = -e2;
            } else if (!TextUtils.equals(fwpVar.f17531e, "right")) {
                e2 = (int) Math.abs(Math.sqrt(Math.pow(e3, 2.0d) + Math.pow(e2, 2.0d)));
            }
            if (e2 < fwpVar.f17533g) {
                fwpVar.i();
                return false;
            }
            fwpVar.i();
            cyxVar2.dq(fzcVar, this, this);
            return true;
        }
        int action3 = motionEvent.getAction();
        if (action3 == 0) {
            cdbVar.f12675b = motionEvent.getX();
            cdbVar.f12676c = motionEvent.getY();
            return true;
        }
        if (action3 == 1) {
            if (cdbVar.f12674a) {
                cdbVar.f12674a = false;
                return false;
            }
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            if (Math.abs(x2 - cdbVar.f12675b) >= 15.0f || Math.abs(y2 - cdbVar.f12676c) >= 15.0f) {
                cdbVar.f12674a = false;
                return true;
            }
            cyxVar.dq(cdbVar.f12677d, this, this);
            return true;
        }
        if (action3 == 2) {
            float x3 = motionEvent.getX();
            float y3 = motionEvent.getY();
            if (Math.abs(x3 - cdbVar.f12675b) >= 15.0f || Math.abs(y3 - cdbVar.f12676c) >= 15.0f) {
                cdbVar.f12674a = true;
                return true;
            }
        } else if (action3 == 3) {
            cdbVar.f12674a = false;
            return true;
        }
        return true;
    }

    public String op() {
        return this.jy;
    }

    public abstract View ox();

    public dlv ox(String str) {
        return dq(str);
    }

    public void ox(int i) {
        this.f14396g.setShape(0);
        this.f14396g.setColor(i);
        aj();
        ak();
        this.ia.setBackground(this.f14396g);
    }

    public void ox(boolean z) {
        this.mp = z;
    }

    public dlv p(String str) {
        return d(str);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x04e0, code lost:
    
        if (r3.equals("ease_in") != false) goto L223;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:195:0x04bc  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x04e6  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x04fc  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x04c6  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x04d0  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x04da  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x04e3  */
    /* JADX WARN: Type inference failed for: r7v26, types: [g.cw] */
    /* JADX WARN: Type inference failed for: r7v27 */
    /* JADX WARN: Type inference failed for: r7v33 */
    /* JADX WARN: Type inference failed for: r7v34, types: [g.duu] */
    /* JADX WARN: Type inference failed for: r7v49 */
    /* JADX WARN: Type inference failed for: r7v50 */
    /* JADX WARN: Type inference failed for: r7v51 */
    /* JADX WARN: Type inference failed for: r7v52 */
    /* JADX WARN: Type inference failed for: r7v53 */
    /* JADX WARN: Type inference failed for: r7v54 */
    /* JADX WARN: Type inference failed for: r7v55 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void p() {
        int i;
        String str;
        char c2;
        ?? r7;
        char c3;
        Paint paint;
        ?? r72;
        ctj ctjVar;
        fzc fzcVar;
        k();
        no();
        d(this.fd);
        if (this.dq) {
            this.ia.setTranslationX(this.pa);
        }
        if (this.f14393d) {
            this.ia.setTranslationY(this.io);
        }
        if (this.ox) {
            this.ia.setScaleX(this.xv);
        }
        if (this.p) {
            this.ia.setScaleY(this.wi);
        }
        if (this.nt) {
            this.ia.setRotation(this.cc);
        }
        if (this.tv) {
            this.ia.setRotationX(this.cc);
        }
        if (this.ny) {
            this.ia.setRotationY(this.jo);
        }
        if (this.f14390a) {
            this.ia.setAlpha(this.hf);
        }
        float f2 = this.yo;
        if (f2 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            this.ia.setRotation(f2);
        }
        int i2 = 1;
        this.ia.setVisibility(this.fd);
        float f3 = this.yo;
        if (f3 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            this.ia.setRotation(f3);
        }
        abm abmVar = this.no;
        char c4 = 0;
        if (abmVar != null && TextUtils.isEmpty(abmVar.f9926d)) {
            this.ia.setOnClickListener(new bqh(this, false ? 1 : 0));
        } else if (dq(1) && !this.y) {
            this.ia.setOnClickListener(new bqh(this, i2));
        }
        if (this.tl != null && dq(4)) {
            if (dq(1)) {
                this.wq = true;
                Context context = this.s;
                fzc fzcVar2 = this.bf.get(4);
                fzc fzcVar3 = this.bf.get(1);
                boolean z = this.wq;
                fwp fwpVar = new fwp();
                fwpVar.f17530d = Float.MIN_VALUE;
                fwpVar.f17532f = Float.MIN_VALUE;
                fwpVar.f17533g = 0;
                fwpVar.h = context;
                fwpVar.f17528b = fzcVar2;
                fwpVar.f17529c = fzcVar3;
                fwpVar.f17527a = z;
                if (fzcVar2 != null) {
                    fwpVar.f17533g = fzcVar2.f17691d.optInt("slideThreshold");
                    fwpVar.f17531e = fzcVar2.f17691d.optString("slideDirection");
                }
                this.xx = fwpVar;
            } else {
                Context context2 = this.s;
                fzc fzcVar4 = this.bf.get(4);
                boolean z2 = this.wq;
                fwp fwpVar2 = new fwp();
                fwpVar2.f17530d = Float.MIN_VALUE;
                fwpVar2.f17532f = Float.MIN_VALUE;
                fwpVar2.f17533g = 0;
                fwpVar2.h = context2;
                fwpVar2.f17528b = fzcVar4;
                fwpVar2.f17527a = z2;
                if (fzcVar4 != null) {
                    fwpVar2.f17533g = fzcVar4.f17691d.optInt("slideThreshold");
                    fwpVar2.f17531e = fzcVar4.f17691d.optString("slideDirection");
                }
                this.xx = fwpVar2;
            }
        }
        if (this.tl != null && dq(1) && this.y) {
            fzc fzcVar5 = this.bf.get(1);
            cdb cdbVar = new cdb();
            cdbVar.f12677d = fzcVar5;
            this.ah = cdbVar;
        }
        if (this.tl != null && dq(18) && (fzcVar = this.bf.get(18)) != null) {
            JSONObject jSONObject = fzcVar.f17691d;
            if (jSONObject != null) {
                try {
                    jSONObject.put("rotateZ", dzm.ae(jSONObject.optString("rotateZ"), this.mn));
                } catch (JSONException unused) {
                }
            }
            this.tl.dq(fzcVar, this, this);
        }
        if (this.tl != null && dq(3) && (ctjVar = (ctj) fzn.j().i) != null) {
            gii dq = ctjVar.dq(this.s);
            this.jv = dq;
            dq.dq(this.gl);
            this.jv.dq();
            this.jv.dq(new emr(i2, this));
        }
        if (this.tl != null && dq(9)) {
            fzc fzcVar6 = this.bf.get(9);
            bye byeVar = new bye();
            byeVar.f12438d = new giy(Looper.getMainLooper(), byeVar);
            byeVar.f12435a = fzcVar6;
            byeVar.f12436b = this;
            this.hy = byeVar;
            byeVar.f12440f = this.tl;
        }
        if (dq(10)) {
            fzc fzcVar7 = this.bf.get(10);
            dhi dhiVar = new dhi();
            dhiVar.f14178a = new giy(Looper.getMainLooper(), dhiVar);
            dhiVar.f14180c = fzcVar7;
            dhiVar.f14181d = this;
            this.ip = dhiVar;
            dhiVar.f14179b = this.tl;
        }
        gsa gsaVar = this.lk;
        if (gsaVar != null) {
            bgh d2 = gsaVar.d("shake");
            if (d2 != null) {
                d2.dq(gsaVar);
                d2.dq(new Object[0]);
            }
            gsa gsaVar2 = this.lk;
            bgh d3 = gsaVar2.d("twist");
            if (d3 != null) {
                d3.dq(gsaVar2);
                d3.dq(new Object[0]);
            }
            gsa gsaVar3 = this.lk;
            for (Map.Entry entry : gsaVar3.f18672a.entrySet()) {
                if (entry != null) {
                    bgh bghVar = (bgh) entry.getValue();
                    if (bghVar instanceof dus) {
                        bghVar.dq(gsaVar3);
                        bghVar.dq(new Object[0]);
                    }
                }
            }
        }
        this.ia.setOnTouchListener(this);
        StringBuilder sb = new StringBuilder();
        sb.append(this.q);
        this.ia.setContentDescription(sb);
        ViewGroup viewGroup = (ViewGroup) this.ia.getParent();
        if (viewGroup != null) {
            viewGroup.setClipChildren(!this.dk);
        }
        gse gseVar = this.xi;
        if (gseVar != null) {
            Context context3 = gseVar.f18677a;
            dlv dlvVar = gseVar.f18679c;
            bel belVar = gseVar.f18681e;
            if (belVar != null && dlvVar != null) {
                HashMap hashMap = belVar.f11382d;
                ArrayList arrayList = new ArrayList();
                Paint paint2 = null;
                paint2 = null;
                paint2 = null;
                if (hashMap != null && !hashMap.isEmpty()) {
                    for (Map.Entry entry2 : hashMap.entrySet()) {
                        if (entry2 != null) {
                            String str2 = (String) entry2.getKey();
                            String c5 = aiu.b(str2).c();
                            c5.getClass();
                            switch (c5.hashCode()) {
                                case 104431:
                                    if (c5.equals("int")) {
                                        c3 = 0;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case 97526364:
                                    if (c5.equals("float")) {
                                        c3 = 1;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case 106845584:
                                    if (c5.equals("point")) {
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
                                    paint = paint2;
                                    r72 = new evl(context3, dlvVar, str2, (TreeMap) entry2.getValue(), 1);
                                    break;
                                case 1:
                                    paint = paint2;
                                    r72 = new evl(context3, dlvVar, str2, (TreeMap) entry2.getValue(), 0);
                                    break;
                                case 2:
                                    bgx bgxVar = new bgx(context3, dlvVar, str2, (Map) entry2.getValue());
                                    bgxVar.f11554a = new ArrayList();
                                    Paint paint3 = paint2;
                                    r72 = bgxVar;
                                    paint = paint3;
                                    break;
                                default:
                                    paint = paint2;
                                    r72 = paint2;
                                    break;
                            }
                            if (r72 != 0) {
                                arrayList.addAll(r72.b());
                            }
                            paint2 = paint;
                        }
                        paint2 = paint2;
                    }
                }
                Paint paint4 = paint2;
                JSONObject jSONObject2 = belVar.f11379a;
                if (jSONObject2 != null) {
                    String optString = jSONObject2.optString("type");
                    optString.getClass();
                    switch (optString.hashCode()) {
                        case -1881872635:
                            if (optString.equals("stretch")) {
                                c2 = 0;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case -930826704:
                            if (optString.equals("ripple")) {
                                c2 = 1;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case -920177947:
                            if (optString.equals("rub_in")) {
                                c2 = 2;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 109407595:
                            if (optString.equals("shine")) {
                                c2 = 3;
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
                            fpv fpvVar = new fpv(dlvVar, jSONObject2);
                            fpvVar.r = true;
                            fpvVar.s = true;
                            Paint paint5 = new Paint();
                            fpvVar.p = paint5;
                            paint5.setAntiAlias(true);
                            dlvVar.kk().setLayerType(2, paint4);
                            fpvVar.l = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);
                            fpvVar.k = new Path();
                            fpvVar.n = new Path();
                            fpvVar.q = new Path();
                            r7 = fpvVar;
                            break;
                        case 1:
                            fio fioVar = new fio(dlvVar, jSONObject2);
                            Paint paint6 = new Paint();
                            fioVar.n = paint6;
                            paint6.setAntiAlias(true);
                            r7 = fioVar;
                            break;
                        case 2:
                            eqz eqzVar = new eqz(dlvVar, jSONObject2);
                            View kk = dlvVar.kk();
                            eqzVar.r = kk;
                            Paint paint7 = new Paint();
                            eqzVar.j = paint7;
                            paint7.setAntiAlias(true);
                            kk.setLayerType(2, paint4);
                            eqzVar.q = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);
                            eqzVar.p = new Paint();
                            eqzVar.m = new Matrix();
                            r7 = eqzVar;
                            break;
                        case 3:
                            dfr dfrVar = new dfr(dlvVar, jSONObject2);
                            dfrVar.u = true;
                            Paint paint8 = new Paint();
                            dfrVar.s = paint8;
                            paint8.setAntiAlias(true);
                            dfrVar.t = new Path();
                            dfrVar.w = dlvVar.r();
                            dfrVar.p = new Path();
                            r7 = dfrVar;
                            break;
                        default:
                            r7 = paint4;
                            break;
                    }
                    gseVar.f18680d = r7;
                    if (r7 != 0) {
                        arrayList.addAll(r7.g());
                    }
                }
                View kk2 = dlvVar.kk();
                if (kk2 != null) {
                    ffr ffrVar = belVar.f11383e;
                    if (ffrVar != null) {
                        kk2.post(new efr(5, kk2, ffrVar, false ? 1 : 0));
                    }
                    ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(kk2, (PropertyValuesHolder[]) arrayList.toArray(new PropertyValuesHolder[0]));
                    int i3 = belVar.f11385g;
                    gseVar.f18678b = i3 < 0 ? -1 : i3 == 0 ? 1 : i3 - 1;
                    ofPropertyValuesHolder.setDuration(belVar.f11384f);
                    int i4 = gseVar.f18678b;
                    if (i4 != -2) {
                        ofPropertyValuesHolder.setRepeatCount(i4);
                    }
                    ofPropertyValuesHolder.setStartDelay(belVar.f11381c);
                    String str3 = belVar.f11380b;
                    int hashCode = str3.hashCode();
                    if (hashCode != -1408024454) {
                        if (hashCode == -1039745817) {
                            str3.equals("normal");
                        }
                    } else if (str3.equals("alternate")) {
                        i = 2;
                        ofPropertyValuesHolder.setRepeatMode(i);
                        str = belVar.h;
                        switch (str.hashCode()) {
                            case -1965072618:
                                break;
                            case -1102672091:
                                if (str.equals("linear")) {
                                    c4 = 3;
                                    break;
                                }
                                c4 = 65535;
                                break;
                            case -787702915:
                                if (str.equals("ease_out")) {
                                    c4 = 2;
                                    break;
                                }
                                c4 = 65535;
                                break;
                            case 1065009829:
                                if (str.equals("ease_in_out")) {
                                    c4 = 1;
                                    break;
                                }
                                c4 = 65535;
                                break;
                            default:
                                c4 = 65535;
                                break;
                        }
                        ofPropertyValuesHolder.setInterpolator(c4 == 0 ? c4 != 1 ? c4 != 2 ? new LinearInterpolator() : new DecelerateInterpolator() : new AccelerateDecelerateInterpolator() : new AccelerateInterpolator());
                        gseVar.f18682f = ofPropertyValuesHolder;
                    }
                    i = 1;
                    ofPropertyValuesHolder.setRepeatMode(i);
                    str = belVar.h;
                    switch (str.hashCode()) {
                        case -1965072618:
                            break;
                        case -1102672091:
                            break;
                        case -787702915:
                            break;
                        case 1065009829:
                            break;
                    }
                    ofPropertyValuesHolder.setInterpolator(c4 == 0 ? c4 != 1 ? c4 != 2 ? new LinearInterpolator() : new DecelerateInterpolator() : new AccelerateDecelerateInterpolator() : new AccelerateInterpolator());
                    gseVar.f18682f = ofPropertyValuesHolder;
                }
            }
        }
        if (this.tl == null || !dq(22)) {
            return;
        }
        this.tl.dq(this.bf.get(22), this, this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void p(int i) {
        if (!ji()) {
            ViewGroup.LayoutParams layoutParams = this.ia.getLayoutParams();
            layoutParams.width = i;
            this.ia.setLayoutParams(layoutParams);
            return;
        }
        View view = this.ia;
        if (view instanceof aau) {
            ((aau) view).dq(i);
            return;
        }
        ViewParent viewParent = (ViewGroup) view.getParent();
        if (viewParent instanceof aau) {
            ((aau) viewParent).dq(this.ia, i);
        }
    }

    public float q() {
        return this.xv;
    }

    public float r() {
        return this.gx;
    }

    @Override // g.eun
    public void s() {
        if (this.ae == null || this.fp) {
            return;
        }
        this.fp = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void s(int i) {
        if (!ji()) {
            ViewGroup.LayoutParams layoutParams = this.ia.getLayoutParams();
            layoutParams.height = i;
            this.ia.setLayoutParams(layoutParams);
            return;
        }
        View view = this.ia;
        if (view instanceof aau) {
            ((aau) view).d(i);
            return;
        }
        ViewParent viewParent = (ViewGroup) view.getParent();
        if (viewParent instanceof aau) {
            ((aau) viewParent).d(this.ia, i);
        }
    }

    public void s(String str) {
        this.q = str;
    }

    public float t() {
        KeyEvent.Callback callback = this.ia;
        return callback instanceof aeb ? ((aeb) callback).getStretch() : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    public int u() {
        return (int) this.fw;
    }

    public void vf() {
        fwp fwpVar = this.xx;
        if (fwpVar != null) {
            fwpVar.i();
        }
    }

    public dsk wn() {
        return this.py;
    }

    public void wp() {
        ((com.bytedance.sdk.openadsdk.core.ugeno.p) fzn.j().f17730e).dq(this.ig, this.nh, new fnq(1, this));
    }
}
