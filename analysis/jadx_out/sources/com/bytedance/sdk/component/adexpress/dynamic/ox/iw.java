package com.bytedance.sdk.component.adexpress.dynamic.ox;

import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class iw {

    /* renamed from: a, reason: collision with root package name */
    private int f1754a;
    private int ae;
    private int ah;

    /* renamed from: b, reason: collision with root package name */
    private int f1755b;
    private boolean bf;
    private double bl;
    private long bn = -1;
    private int bu;
    private boolean bx;
    private boolean by;

    /* renamed from: c, reason: collision with root package name */
    private String f1756c;
    private int cc;
    private String cd;
    private boolean ce;
    private JSONObject cv;

    /* renamed from: d, reason: collision with root package name */
    private float f1757d;
    private int dc;
    private String dk;
    private float dq;
    private boolean ds;

    /* renamed from: e, reason: collision with root package name */
    private boolean f1758e;
    private List<String> en;
    private int er;

    /* renamed from: f, reason: collision with root package name */
    private String f1759f;
    private int fd;
    private int fp;
    private String fq;
    private String fw;

    /* renamed from: g, reason: collision with root package name */
    private JSONObject f1760g;
    private String gh;
    private int gx;
    private int h;
    private String ha;
    private int hf;
    private int hy;
    private String i;
    private float ia;
    private double ig;
    private int ij;
    private String io;
    private int ip;
    private String ir;
    private float iw;
    private int j;
    private double ji;
    private boolean jn;
    private int jo;
    private int jv;
    private boolean jw;
    private String jy;
    private String k;
    private float kk;
    private int kx;
    private int l;
    private String le;
    private String lk;
    private boolean m;
    private List<dq> mc;
    private float mn;
    private String mp;
    private String n;
    private int nh;
    private double no;
    private double nt;
    private JSONObject ny;
    private float o;
    private double ob;
    private String oh;
    private String op;
    private float ox;
    private float p;
    private String pa;
    private String q;
    private boolean qz;
    private String r;
    private String rp;
    private boolean s;
    private int sc;
    private boolean sy;
    private boolean t;
    private boolean tl;
    private JSONObject tv;
    private String u;
    private int uh;
    private String ux;
    private boolean v;
    private int vf;
    private boolean vw;
    private String w;
    private int wi;
    private int wn;
    private String wp;
    private int wq;
    private int ws;
    private int x;
    private int xi;
    private boolean xj;
    private int xv;
    private String xx;
    private String xz;
    private boolean y;
    private int yo;
    private boolean yy;
    private int z;
    private int zi;

    public static iw dq(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        iw iwVar = new iw();
        iwVar.d(jSONObject.optString("adType", "embeded"));
        iwVar.jy(jSONObject.optString("clickArea", "creative"));
        iwVar.f(jSONObject.optString("clickTigger", "click"));
        iwVar.ox(jSONObject.optString("fontFamily", "PingFangSC"));
        iwVar.p(jSONObject.optString("textAlign", "left"));
        iwVar.s(jSONObject.optString("color", "#999999"));
        iwVar.iw(jSONObject.optString("bgColor", "transparent"));
        iwVar.mn(jSONObject.optString("bgImgUrl", ""));
        iwVar.ji(jSONObject.optString("bgImgData", ""));
        iwVar.ia(jSONObject.optString("borderColor", "#000000"));
        iwVar.kk(jSONObject.optString("borderStyle", "solid"));
        iwVar.o(jSONObject.optString("heightMode", LiveConfigKey.AUTO));
        iwVar.no(jSONObject.optString("widthMode", "fixed"));
        iwVar.ig(jSONObject.optString("interactText", ""));
        iwVar.ox(jSONObject.optBoolean("isShowBgControl", false));
        iwVar.mp(jSONObject.optString("interactBgColor", ""));
        JSONObject optJSONObject = jSONObject.optJSONObject("interactPosition");
        if (optJSONObject != null) {
            iwVar.mn(optJSONObject.optInt("translateY", 0));
            iwVar.ia(optJSONObject.optInt("translateX", 0));
            iwVar.p(optJSONObject.optDouble("scaleX", 0.0d));
            iwVar.s(optJSONObject.optDouble("scaleY", 0.0d));
        }
        iwVar.q(jSONObject.optString("interactType", ""));
        iwVar.s(jSONObject.optInt("interactSlideDirection", -1));
        iwVar.fw(jSONObject.optString("justifyHorizontal", "space-around"));
        iwVar.cd(jSONObject.optString("justifyVertical", "flex-start"));
        iwVar.d(jSONObject.optDouble("timingStart"));
        iwVar.ox(jSONObject.optDouble("timingEnd"));
        iwVar.p((float) jSONObject.optDouble(MediaFormat.KEY_WIDTH, 0.0d));
        iwVar.ox((float) jSONObject.optDouble(MediaFormat.KEY_HEIGHT, 0.0d));
        iwVar.dq((float) jSONObject.optDouble("borderRadius", 0.0d));
        iwVar.d((float) jSONObject.optDouble("borderSize", 0.0d));
        iwVar.d(jSONObject.optBoolean("interactValidate", false));
        iwVar.kk((float) jSONObject.optDouble("fontSize", 0.0d));
        iwVar.s((float) jSONObject.optDouble("paddingBottom", 0.0d));
        iwVar.iw((float) jSONObject.optDouble("paddingLeft", 0.0d));
        iwVar.mn((float) jSONObject.optDouble("paddingRight", 0.0d));
        iwVar.ia((float) jSONObject.optDouble("paddingTop", 0.0d));
        iwVar.p(jSONObject.optBoolean("lineFeed", false));
        iwVar.kk(jSONObject.optInt("lineCount", 0));
        iwVar.iw(jSONObject.optDouble("lineHeight", 1.2d));
        iwVar.q(jSONObject.optInt("letterSpacing", 0));
        iwVar.s(jSONObject.optBoolean("isDataFixed", false));
        iwVar.jy(jSONObject.optInt("fontWeight"));
        iwVar.iw(jSONObject.optBoolean("lineLimit"));
        iwVar.f(jSONObject.optInt("position"));
        iwVar.gh(jSONObject.optString("align"));
        iwVar.mn(jSONObject.optBoolean("useLeft"));
        iwVar.ia(jSONObject.optBoolean("useRight"));
        iwVar.kk(jSONObject.optBoolean("useTop"));
        iwVar.o(jSONObject.optBoolean("useBottom"));
        iwVar.r(jSONObject.optString("data"));
        iwVar.d(jSONObject.optJSONObject("i18n"));
        iwVar.ig(jSONObject.optInt("marginLeft"));
        iwVar.mp(jSONObject.optInt("marginRight"));
        iwVar.o(jSONObject.optInt("marginTop"));
        iwVar.no(jSONObject.optInt("marginBottom"));
        iwVar.fw(jSONObject.optInt("tagMaxCount"));
        iwVar.no(jSONObject.optBoolean("allowTextFlow"));
        iwVar.cd(jSONObject.optInt("textFlowType"));
        iwVar.gh(jSONObject.optInt("textFlowDuration"));
        iwVar.r(jSONObject.optInt("left"));
        iwVar.i(jSONObject.optInt("right"));
        iwVar.le(jSONObject.optInt("top"));
        iwVar.k(jSONObject.optInt("bottom"));
        iwVar.i(jSONObject.optString("alignItems", "flex-start"));
        iwVar.le(jSONObject.optString("direction", ""));
        iwVar.dq(jSONObject.optBoolean("loop", false));
        iwVar.wp(jSONObject.optInt("zIndex"));
        iwVar.bl(jSONObject.optInt("interactVisibleTime"));
        iwVar.e(jSONObject.optInt("interactHiddenTime"));
        iwVar.mp(jSONObject.optBoolean("interactEnableMask"));
        iwVar.q(jSONObject.optBoolean("interactWontHide"));
        iwVar.dq(jSONObject.optString("bgGradient"));
        iwVar.op(jSONObject.optInt("areaType"));
        iwVar.ir(jSONObject.optInt("interactSlideThreshold", 0));
        iwVar.ce(jSONObject.optInt("interactBottomDistance", com.bytedance.sdk.component.adexpress.p.dq() ? 0 : 120));
        iwVar.cd(jSONObject.optBoolean("openPlayableLandingPage", false));
        iwVar.ox(jSONObject.optJSONObject(MediaFormat.KEY_VIDEO));
        iwVar.p(jSONObject.optJSONObject("image"));
        iwVar.u(jSONObject.optInt("borderShadowExtent"));
        iwVar.jy(jSONObject.optBoolean("bgGauseBlur"));
        iwVar.c(jSONObject.optInt("bgGauseBlurRadius"));
        iwVar.f(jSONObject.optBoolean("showTimeProgress", false));
        iwVar.fw(jSONObject.optBoolean("showPlayButton", false));
        iwVar.dq(jSONObject.optDouble("bgColorCg", 0.0d));
        iwVar.iw(jSONObject.optInt("bgMaterialCenterCalcColor", 0));
        iwVar.d(jSONObject.optInt("borderTopLeftRadius", 0));
        iwVar.dq(jSONObject.optInt("borderTopRightRadius", 0));
        iwVar.p(jSONObject.optInt("borderBottomLeftRadius", 0));
        iwVar.ox(jSONObject.optInt("borderBottomRightRadius", 0));
        iwVar.s(jSONObject.optJSONObject("interactI18n"));
        iwVar.wp(jSONObject.optString("imageObjectFit"));
        iwVar.e(jSONObject.optString("interactTitle"));
        iwVar.n(jSONObject.optInt("interactTextPositionTop"));
        iwVar.k(jSONObject.optString("imageLottieTosPath"));
        iwVar.ig(jSONObject.optBoolean("animationsLoop"));
        iwVar.kx(jSONObject.optInt("lottieAppNameMaxLength"));
        iwVar.ji(jSONObject.optInt("lottieAdDescMaxLength"));
        iwVar.h(jSONObject.optInt("lottieAdTitleMaxLength"));
        iwVar.h(jSONObject.optString("imageFlipSlideType"));
        iwVar.gh(jSONObject.optBoolean("isClickEventIntercept"));
        if (jSONObject.has("filterColor")) {
            ArrayList arrayList = new ArrayList();
            JSONArray optJSONArray = jSONObject.optJSONArray("filterColor");
            if (optJSONArray != null) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    arrayList.add(optJSONArray.optString(i));
                }
                iwVar.d(arrayList);
            }
        }
        try {
            JSONArray optJSONArray2 = jSONObject.optJSONArray("animations");
            if (optJSONArray2 != null) {
                ArrayList arrayList2 = new ArrayList();
                for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                    JSONObject jSONObject2 = optJSONArray2.getJSONObject(i2);
                    dq dqVar = new dq();
                    dqVar.ox(jSONObject2.optString("animationType"));
                    dqVar.dq(jSONObject2.optDouble("animationDuration"));
                    dqVar.d(jSONObject2.optDouble("animationScaleX"));
                    dqVar.ox(jSONObject2.optDouble("animationScaleY"));
                    dqVar.p(jSONObject2.optString("animationTimeFunction"));
                    dqVar.p(jSONObject2.optDouble("animationDelay"));
                    dqVar.iw(jSONObject2.optInt("animationIterationCount"));
                    dqVar.s(jSONObject2.optString("animationDirection"));
                    dqVar.s(jSONObject2.optDouble("animationInterval"));
                    dqVar.dq(jSONObject2.optInt("animationBorderWidth"));
                    dqVar.dq(jSONObject2.optLong("key"));
                    dqVar.d(jSONObject2.optInt("animationEffectWidth"));
                    dqVar.ox(jSONObject2.optInt("animationSwing", 1));
                    dqVar.p(jSONObject2.optInt("animationTranslateX"));
                    dqVar.s(jSONObject2.optInt("animationTranslateY"));
                    dqVar.d(jSONObject2.optString("animationRippleBackgroundColor"));
                    dqVar.dq(jSONObject2.optString("animationScaleDirection"));
                    dqVar.mn(jSONObject2.optInt("animationFadeStart"));
                    dqVar.ia(jSONObject2.optInt("animationFadeEnd"));
                    dqVar.iw(jSONObject2.optString("animationFillMode"));
                    dqVar.kk(jSONObject2.optInt("animationBounceHeight"));
                    if (iwVar.gh() > 0.0d) {
                        dqVar.p(dqVar.q() + iwVar.gh());
                    }
                    arrayList2.add(dqVar);
                }
                iwVar.dq(arrayList2);
            }
            if (jSONObject.has("triggerSlideMinDistance")) {
                iwVar.kx(jSONObject.optString("triggerSlideDirection", "0"));
                iwVar.dq(jSONObject.optLong("triggerSlideMinDistance", 0L));
            }
            return iwVar;
        } catch (Exception e2) {
            e2.printStackTrace();
            return iwVar;
        }
    }

    private void dq(iw iwVar, JSONObject jSONObject) {
        String next;
        if (iwVar == null || jSONObject == null) {
            return;
        }
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            next = keys.next();
            next.getClass();
            switch (next) {
                case "isShowBgControl":
                    iwVar.ox(jSONObject.optBoolean(next, false));
                    break;
                case "clickArea":
                    iwVar.jy(jSONObject.optString(next));
                    break;
                case "triggerSlideDirection":
                    iwVar.kx(jSONObject.optString(next));
                    break;
                case "bgImgUrl":
                    iwVar.mn(jSONObject.optString(next));
                    break;
                case "lineCount":
                    iwVar.kk(jSONObject.optInt(next));
                    break;
                case "openPlayableLandingPage":
                    iwVar.cd(jSONObject.optBoolean(next));
                    break;
                case "lineLimit":
                    iwVar.iw(jSONObject.optBoolean(next));
                    break;
                case "interactBgColor":
                    iwVar.mp(jSONObject.optString(next));
                    break;
                case "paddingLeft":
                    iwVar.iw((float) jSONObject.optDouble(next));
                    break;
                case "adType":
                    iwVar.d(jSONObject.optString(next));
                    break;
                case "bottom":
                    iwVar.k(jSONObject.optInt(next));
                    break;
                case "fontFamily":
                    iwVar.ox(jSONObject.optString(next));
                    break;
                case "height":
                    iwVar.ox((float) jSONObject.optDouble(next));
                    break;
                case "textAlign":
                    iwVar.p(jSONObject.optString(next));
                    break;
                case "alignItems":
                    iwVar.i(jSONObject.optString(next));
                    break;
                case "interactValidate":
                    iwVar.d(jSONObject.optBoolean(next));
                    break;
                case "marginTop":
                    iwVar.o(jSONObject.optInt(next));
                    break;
                case "useBottom":
                    iwVar.o(jSONObject.optBoolean(next));
                    break;
                case "triggerSlideMinDistance":
                    iwVar.dq(jSONObject.optLong(next));
                    break;
                case "direction":
                    iwVar.le(jSONObject.optString(next));
                    break;
                case "tagMaxCount":
                    iwVar.fw(jSONObject.optInt(next));
                    break;
                case "interactHiddenTime":
                    iwVar.e(jSONObject.optInt(next));
                    break;
                case "useTop":
                    iwVar.kk(jSONObject.optBoolean(next));
                    break;
                case "fontWeight":
                    iwVar.jy(jSONObject.optInt(next));
                    break;
                case "zIndex":
                    iwVar.wp(jSONObject.optInt(next));
                    break;
                case "timingStart":
                    iwVar.d(jSONObject.optDouble(next));
                    break;
                case "lineHeight":
                    iwVar.iw(jSONObject.optDouble(next));
                    break;
                case "textFlowDuration":
                    iwVar.gh(jSONObject.optInt(next));
                    break;
                case "useRight":
                    iwVar.ia(jSONObject.optBoolean(next));
                    break;
                case "marginBottom":
                    iwVar.no(jSONObject.optInt(next));
                    break;
                case "bgColor":
                    iwVar.iw(jSONObject.optString(next));
                    break;
                case "isClickEventIntercept":
                    iwVar.q(jSONObject.optBoolean(next));
                    break;
                case "useLeft":
                    iwVar.mn(jSONObject.optBoolean(next));
                    break;
                case "widthMode":
                    iwVar.no(jSONObject.optString(next));
                    break;
                case "top":
                    iwVar.le(jSONObject.optInt(next));
                    break;
                case "data":
                    iwVar.r(jSONObject.optString(next));
                    break;
                case "left":
                    iwVar.r(jSONObject.optInt(next));
                    break;
                case "loop":
                    iwVar.dq(jSONObject.optBoolean(next));
                    break;
                case "paddingTop":
                    iwVar.ia((float) jSONObject.optDouble(next));
                    break;
                case "align":
                    iwVar.gh(jSONObject.optString(next));
                    break;
                case "color":
                    iwVar.s(jSONObject.optString(next));
                    break;
                case "right":
                    iwVar.i(jSONObject.optInt(next));
                    break;
                case "width":
                    iwVar.p((float) jSONObject.optDouble(next));
                    break;
                case "timingEnd":
                    iwVar.ox(jSONObject.optDouble(next));
                    break;
                case "paddingBottom":
                    iwVar.s((float) jSONObject.optDouble(next));
                    break;
                case "allowTextFlow":
                    iwVar.no(jSONObject.optBoolean(next));
                    break;
                case "interactWontHide":
                    iwVar.q(jSONObject.optBoolean(next));
                    break;
                case "fontSize":
                    iwVar.kk((float) jSONObject.optDouble(next));
                    break;
                case "justifyVertical":
                    iwVar.cd(jSONObject.optString(next));
                    break;
                case "interactVisibleTime":
                    iwVar.bl(jSONObject.optInt(next));
                    break;
                case "paddingRight":
                    iwVar.mn((float) jSONObject.optDouble(next));
                    break;
                case "borderColor":
                    iwVar.ia(jSONObject.optString(next));
                    break;
                case "borderStyle":
                    iwVar.kk(jSONObject.optString(next));
                    break;
                case "position":
                    iwVar.f(jSONObject.optInt(next));
                    break;
                case "isDataFixed":
                    iwVar.s(jSONObject.optBoolean(next));
                    break;
                case "marginRight":
                    iwVar.mp(jSONObject.optInt(next));
                    break;
                case "justifyHorizontal":
                    iwVar.fw(jSONObject.optString(next));
                    break;
                case "interactPosition":
                    JSONObject optJSONObject = jSONObject.optJSONObject(next);
                    if (optJSONObject == null) {
                        break;
                    } else {
                        iwVar.mn(optJSONObject.optInt("translateY", 0));
                        iwVar.ia(optJSONObject.optInt("translateX", 0));
                        iwVar.p(optJSONObject.optDouble("scaleX", 0.0d));
                        iwVar.s(optJSONObject.optDouble("scaleY", 0.0d));
                        break;
                    }
                case "lineFeed":
                    iwVar.p(jSONObject.optBoolean(next));
                    break;
                case "interactText":
                    iwVar.ig(jSONObject.optString(next));
                    break;
                case "interactType":
                    iwVar.q(jSONObject.optString(next));
                    break;
                case "borderRadius":
                    iwVar.dq((float) jSONObject.optDouble(next));
                    break;
                case "clickTigger":
                    iwVar.f(jSONObject.optString(next));
                    break;
                case "heightMode":
                    iwVar.o(jSONObject.optString(next));
                    break;
                case "textFlowType":
                    iwVar.cd(jSONObject.optInt(next));
                    break;
                case "borderSize":
                    iwVar.d((float) jSONObject.optDouble(next));
                    break;
                case "marginLeft":
                    iwVar.ig(jSONObject.optInt(next));
                    break;
                case "letterSpacing":
                    iwVar.q(jSONObject.optInt(next));
                    break;
            }
        }
    }

    private void ji(String str) {
        this.oh = str;
    }

    public int a() {
        return this.jv;
    }

    public void ae() {
        dq(this, this.tv);
    }

    public boolean ah() {
        return this.xj;
    }

    public String b() {
        return this.w;
    }

    public int bf() {
        return this.ae;
    }

    public String bl() {
        return this.k;
    }

    public void bl(int i) {
        this.cc = i;
    }

    public String bn() {
        return ("flip".equals(this.ux) || "slide".equals(this.ux)) ? this.ux : "slide";
    }

    public boolean bu() {
        return this.vw;
    }

    public boolean bx() {
        return this.jn;
    }

    public int by() {
        return this.nh;
    }

    public double c() {
        return this.ji;
    }

    public void c(int i) {
        this.f1755b = i;
    }

    public int cc() {
        return this.z;
    }

    public float cd() {
        return this.o;
    }

    public void cd(int i) {
        this.fd = i;
    }

    public void cd(String str) {
        this.f1756c = str;
    }

    public void cd(boolean z) {
        this.bx = z;
    }

    public double ce() {
        return this.bl;
    }

    public void ce(int i) {
        this.x = i;
    }

    public String cv() {
        return this.xz;
    }

    public int d() {
        return this.sc;
    }

    public void d(double d2) {
        this.no = d2;
    }

    public void d(float f2) {
        this.f1757d = f2;
    }

    public void d(int i) {
        this.hy = i;
    }

    public void d(String str) {
        this.mp = str;
    }

    public void d(List<String> list) {
        this.en = list;
    }

    public void d(JSONObject jSONObject) {
        this.cv = jSONObject;
    }

    public void d(boolean z) {
        this.s = z;
    }

    public boolean dc() {
        return this.yy;
    }

    public List<dq> dk() {
        return this.mc;
    }

    public void dq(double d2) {
        this.nt = d2;
    }

    public void dq(float f2) {
        this.dq = f2;
    }

    public void dq(int i) {
        this.sc = i;
    }

    public void dq(long j) {
        this.bn = j;
    }

    public void dq(String str) {
        this.lk = str;
    }

    public void dq(List<dq> list) {
        this.mc = list;
    }

    public void dq(boolean z) {
        this.m = z;
    }

    public boolean dq() {
        return this.m;
    }

    public int ds() {
        return this.gx;
    }

    public String e() {
        return this.oh;
    }

    public void e(int i) {
        this.wi = i;
    }

    public void e(String str) {
        this.rp = str;
    }

    public String er() {
        return this.n;
    }

    public float f() {
        return this.ia;
    }

    public void f(int i) {
        this.uh = i;
    }

    public void f(String str) {
        this.ir = str;
    }

    public void f(boolean z) {
        this.xj = z;
    }

    public boolean fd() {
        return this.ds;
    }

    public void fp() {
        dq(this, this.ny);
    }

    public long fq() {
        return this.bn;
    }

    public float fw() {
        return this.kk;
    }

    public void fw(int i) {
        this.dc = i;
    }

    public void fw(String str) {
        this.u = str;
    }

    public void fw(boolean z) {
        this.bf = z;
    }

    public int g() {
        return this.jo;
    }

    public double gh() {
        return this.no;
    }

    public void gh(int i) {
        this.bu = i;
    }

    public void gh(String str) {
        this.xz = str;
    }

    public void gh(boolean z) {
        this.qz = z;
    }

    public int gx() {
        return this.j;
    }

    public String h() {
        return this.i;
    }

    public void h(int i) {
        this.ae = i;
    }

    public void h(String str) {
        this.ux = str;
    }

    public int ha() {
        return this.uh;
    }

    public int hf() {
        return this.wi;
    }

    public boolean hy() {
        return this.tl;
    }

    public String i() {
        return this.jy;
    }

    public void i(int i) {
        this.ij = i;
    }

    public void i(String str) {
        this.pa = str;
    }

    public double ia() {
        return this.nt;
    }

    public void ia(float f2) {
        this.kk = f2;
    }

    public void ia(int i) {
        this.h = i;
    }

    public void ia(String str) {
        this.gh = str;
    }

    public void ia(boolean z) {
        this.v = z;
    }

    public float ig() {
        return this.f1757d;
    }

    public void ig(int i) {
        this.nh = i;
    }

    public void ig(String str) {
        this.k = str;
    }

    public void ig(boolean z) {
        this.y = z;
    }

    public JSONObject ij() {
        return this.cv;
    }

    public int io() {
        return this.bu;
    }

    public int ip() {
        return this.f1755b;
    }

    public int ir() {
        return this.kx;
    }

    public void ir(int i) {
        this.yo = i;
    }

    public JSONObject iw() {
        return this.f1760g;
    }

    public void iw(double d2) {
        this.ob = d2;
    }

    public void iw(float f2) {
        this.mn = f2;
    }

    public void iw(int i) {
        this.zi = i;
    }

    public void iw(String str) {
        this.fw = str;
    }

    public void iw(boolean z) {
        this.by = z;
    }

    public String j() {
        return this.ir;
    }

    public String ji() {
        return this.le;
    }

    public void ji(int i) {
        this.fp = i;
    }

    public String jn() {
        return this.dk;
    }

    public String jo() {
        return this.io;
    }

    public int jv() {
        return this.x;
    }

    public boolean jw() {
        return this.v;
    }

    public float jy() {
        return this.mn;
    }

    public void jy(int i) {
        this.gx = i;
    }

    public void jy(String str) {
        this.op = str;
    }

    public void jy(boolean z) {
        this.tl = z;
    }

    public String k() {
        return this.fw;
    }

    public void k(int i) {
        this.z = i;
    }

    public void k(String str) {
        this.w = str;
    }

    public int kk() {
        return this.zi;
    }

    public void kk(float f2) {
        this.o = f2;
    }

    public void kk(int i) {
        this.er = i;
    }

    public void kk(String str) {
        this.r = str;
    }

    public void kk(boolean z) {
        this.ds = z;
    }

    public String kx() {
        return this.gh;
    }

    public void kx(int i) {
        this.wq = i;
    }

    public void kx(String str) {
        this.fq = str;
    }

    public int l() {
        return this.er;
    }

    public String le() {
        return this.f1759f;
    }

    public void le(int i) {
        this.xi = i;
    }

    public void le(String str) {
        this.io = str;
    }

    public int m() {
        return this.ws;
    }

    public String mc() {
        return this.pa;
    }

    public int mn() {
        return this.f1754a;
    }

    public void mn(float f2) {
        this.ia = f2;
    }

    public void mn(int i) {
        this.kx = i;
    }

    public void mn(String str) {
        this.cd = str;
    }

    public void mn(boolean z) {
        this.yy = z;
    }

    public void mp(int i) {
        this.vf = i;
    }

    public void mp(String str) {
        this.wp = str;
    }

    public void mp(boolean z) {
        this.jn = z;
    }

    public boolean mp() {
        return this.s;
    }

    public String n() {
        return this.wp;
    }

    public void n(int i) {
        this.jv = i;
    }

    public String nh() {
        return this.u;
    }

    public float no() {
        return this.dq;
    }

    public void no(int i) {
        this.j = i;
    }

    public void no(String str) {
        this.le = str;
    }

    public void no(boolean z) {
        this.jw = z;
    }

    public int nt() {
        return this.cc;
    }

    public String ny() {
        return this.xx;
    }

    public String o() {
        return this.lk;
    }

    public void o(int i) {
        this.wn = i;
    }

    public void o(String str) {
        this.i = str;
    }

    public void o(boolean z) {
        this.vw = z;
    }

    public boolean ob() {
        return this.ce;
    }

    public List<String> oh() {
        return this.en;
    }

    public void op(int i) {
        this.jo = i;
    }

    public boolean op() {
        return this.f1758e;
    }

    public int ox() {
        return this.hy;
    }

    public void ox(double d2) {
        this.ig = d2;
    }

    public void ox(float f2) {
        this.ox = f2;
    }

    public void ox(int i) {
        this.ip = i;
    }

    public void ox(String str) {
        this.q = str;
    }

    public void ox(JSONObject jSONObject) {
        this.tv = jSONObject;
    }

    public void ox(boolean z) {
        this.f1758e = z;
    }

    public int p() {
        return this.ip;
    }

    public void p(double d2) {
        this.ji = d2;
    }

    public void p(float f2) {
        this.p = f2;
    }

    public void p(int i) {
        this.ah = i;
    }

    public void p(String str) {
        this.jy = str;
    }

    public void p(JSONObject jSONObject) {
        this.ny = jSONObject;
    }

    public void p(boolean z) {
        this.ce = z;
    }

    public int pa() {
        return this.fd;
    }

    public float q() {
        return this.iw;
    }

    public void q(int i) {
        this.l = i;
    }

    public void q(String str) {
        this.n = str;
    }

    public void q(boolean z) {
        this.sy = z;
    }

    public double r() {
        return this.ig;
    }

    public void r(int i) {
        this.ws = i;
    }

    public void r(String str) {
        this.ha = str;
    }

    public String rp() {
        return this.fq;
    }

    public int s() {
        return this.ah;
    }

    public void s(double d2) {
        this.bl = d2;
    }

    public void s(float f2) {
        this.iw = f2;
    }

    public void s(int i) {
        this.f1754a = i;
    }

    public void s(String str) {
        this.f1759f = str;
    }

    public void s(JSONObject jSONObject) {
        this.f1760g = jSONObject;
    }

    public void s(boolean z) {
        this.t = z;
    }

    public int sc() {
        return this.hf;
    }

    public int sy() {
        List<dq> list = this.mc;
        if (list == null) {
            return 0;
        }
        for (dq dqVar : list) {
            if ("translate".equals(dqVar.kk()) && dqVar.mn() < 0) {
                return -dqVar.mn();
            }
        }
        return 0;
    }

    public int t() {
        return this.wn;
    }

    public boolean tl() {
        return this.y;
    }

    public boolean tv() {
        return this.sy;
    }

    public int u() {
        return this.h;
    }

    public void u(int i) {
        this.hf = i;
    }

    public int uh() {
        return this.vf;
    }

    public boolean ux() {
        return this.qz;
    }

    public boolean v() {
        return this.t;
    }

    public String vf() {
        return this.f1756c;
    }

    public boolean vw() {
        return this.by;
    }

    public boolean w() {
        return this.bx;
    }

    public int wi() {
        return this.xi;
    }

    public String wn() {
        return this.op;
    }

    public String wp() {
        return this.cd;
    }

    public void wp(int i) {
        this.xv = i;
    }

    public void wp(String str) {
        this.xx = str;
    }

    public String wq() {
        return this.rp;
    }

    public String ws() {
        return this.ha;
    }

    public int x() {
        return this.fp;
    }

    public int xi() {
        return this.dc;
    }

    public int xj() {
        return this.wq;
    }

    public int xv() {
        return this.ij;
    }

    public boolean xx() {
        return this.bf;
    }

    public double xz() {
        return this.ob;
    }

    public JSONObject y() {
        return this.ny;
    }

    public int yo() {
        return this.xv;
    }

    public int yy() {
        return this.l;
    }

    public boolean z() {
        return this.jw;
    }

    public int zi() {
        return this.yo;
    }
}
