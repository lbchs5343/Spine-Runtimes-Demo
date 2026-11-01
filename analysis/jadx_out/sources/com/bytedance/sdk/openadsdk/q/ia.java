package com.bytedance.sdk.openadsdk.q;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.ValueCallback;
import android.widget.Toast;
import androidx.core.content.FileProvider;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.abn;
import g.awf;
import g.ekq;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ia {

    /* renamed from: a, reason: collision with root package name */
    private JSONObject f3851a;
    private boolean ae;
    private int ah;

    /* renamed from: b, reason: collision with root package name */
    private String f3852b;
    private Map<String, String> bf;
    private int bl;
    private boolean bn;
    private long bu;
    private String bx;
    private boolean by;

    /* renamed from: c, reason: collision with root package name */
    private long f3853c;
    private com.bytedance.sdk.openadsdk.q.dq cc;
    private boolean cd;
    private long ce;
    private int cv;

    /* renamed from: d, reason: collision with root package name */
    public final String f3854d;
    private int dc;
    private float dk;
    public final String dq;
    private int ds;

    /* renamed from: e, reason: collision with root package name */
    private boolean f3855e;
    private String en;
    private long er;

    /* renamed from: f, reason: collision with root package name */
    private boolean f3856f;
    private int fd;
    private boolean fp;
    private boolean fq;
    private boolean fw;

    /* renamed from: g, reason: collision with root package name */
    private float f3857g;
    private Set<String> gh;
    private List<JSONObject> gl;
    private int gx;
    private long h;
    private boolean ha;
    private JSONObject hf;
    private int hy;
    private String i;
    private final Handler ia;
    private final Handler ig;
    private JSONObject ij;
    private Context io;
    private int ip;
    private long ir;
    private final String iw;
    private long j;
    private long ji;
    private int jn;
    private int jo;
    private int jv;
    private int jw;
    private d jy;
    private boolean k;
    private Runnable kk;
    private String kx;
    private String l;
    private boolean le;
    private String lk;
    private com.bytedance.sdk.component.mp.dq m;
    private ox mc;
    private final String mn;
    private Runnable mp;
    private long n;
    private String nh;
    private Runnable no;
    private String nt;
    private String ny;
    private Runnable o;
    private String ob;
    private boolean oh;
    private long op;
    public final String ox;
    public final String p;
    private dq pa;
    private boolean py;
    private Runnable q;
    private String qz;
    private String r;
    private boolean rp;
    public final String s;
    private int sc;
    private float sy;
    private int t;
    private String tl;
    private ViewTreeObserver.OnGlobalLayoutListener tu;
    private String tv;
    private long u;
    private int uh;
    private String ux;
    private int v;
    private String vf;
    private String vw;
    private int w;
    private iw wi;
    private long wn;
    private boolean wp;
    private String wq;
    private long ws;
    private JSONObject x;
    private int xi;
    private String xj;
    private WeakReference<View> xv;
    private int xx;
    private int xz;
    private int y;
    private int yo;
    private int yy;
    private int z;
    private int zi;

    public enum dq {
        LAND_PAGE,
        FEED,
        OTHER,
        FEED_AWEME
    }

    private ia(Context context, com.bytedance.sdk.component.mp.dq dqVar, ox oxVar, com.bytedance.sdk.openadsdk.q.dq dqVar2, dq dqVar3, boolean z) {
        this.iw = "playable_stuck_check_ping";
        this.mn = "playable_apply_media_permission_callback";
        this.ia = new Handler(Looper.getMainLooper());
        this.ig = new Handler(Looper.getMainLooper());
        this.f3856f = true;
        this.fw = true;
        this.cd = true;
        this.dq = "PL_sdk_playable_global_viewable";
        this.f3854d = "PL_sdk_page_screen_blank";
        this.ox = "PL_sdk_playable_destroy_analyze_summary";
        this.p = "PL_sdk_playable_hardware_dialog_cancel";
        this.s = "PL_sdk_playable_hardware_dialog_setting";
        this.gh = new HashSet(Arrays.asList("adInfo", "appInfo", "subscribe_app_ad", "download_app_ad"));
        this.r = null;
        this.i = "embeded_ad";
        this.le = true;
        this.k = true;
        this.wp = true;
        this.f3855e = false;
        this.kx = "";
        this.h = 10L;
        this.ji = 10L;
        this.bl = 700;
        this.n = 0L;
        this.op = 0L;
        this.ir = -1L;
        this.u = -1L;
        this.f3853c = -1L;
        this.ce = -1L;
        this.er = -1L;
        this.wn = -1L;
        this.j = -1L;
        this.nh = "";
        this.vf = "";
        this.ob = "";
        this.l = "";
        this.t = 0;
        this.gx = 0;
        this.by = false;
        this.uh = 0;
        this.xz = -1;
        this.yy = 0;
        this.v = 0;
        this.ds = 0;
        this.vw = null;
        this.ha = false;
        this.cv = 0;
        this.dc = 0;
        this.jw = 0;
        this.fd = 0;
        this.bu = 0L;
        this.ws = 0L;
        this.xi = -2;
        this.z = 0;
        this.jo = 0;
        this.yo = 0;
        this.hf = new JSONObject();
        this.bf = new HashMap();
        this.x = new JSONObject();
        this.ny = "";
        this.dk = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.sy = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.rp = false;
        this.oh = false;
        this.py = false;
        this.gl = new ArrayList();
        this.tu = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.bytedance.sdk.openadsdk.q.ia.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                try {
                    View view = (View) ia.this.xv.get();
                    if (view == null) {
                        return;
                    }
                    ia.this.d(view);
                } catch (Throwable th) {
                    mn.dq("PlayablePlugin", "onSizeChanged error", th);
                }
            }
        };
        this.xi = 0;
        this.pa = dqVar3;
        this.m = dqVar;
        kk.dq(dqVar);
        if (!z) {
            dq(dqVar.getView());
        }
        dq(context, oxVar, dqVar2);
    }

    private ia(Context context, com.bytedance.sdk.component.mp.dq dqVar, ox oxVar, com.bytedance.sdk.openadsdk.q.dq dqVar2, Set<String> set, dq dqVar3, boolean z) {
        this(context, dqVar, oxVar, dqVar2, dqVar3, z);
        this.gh = set;
    }

    private void ce() {
        this.jy = new d(this, this.bl);
        this.kk = new Runnable() { // from class: com.bytedance.sdk.openadsdk.q.ia.3
            @Override // java.lang.Runnable
            public void run() {
                if (ia.this.k) {
                    ia.this.k = false;
                    ia.this.ia.removeCallbacks(ia.this.o);
                    ia.this.dq(2, "容器加载超时");
                }
            }
        };
        this.o = new Runnable() { // from class: com.bytedance.sdk.openadsdk.q.ia.4
            @Override // java.lang.Runnable
            public void run() {
                if (ia.this.k) {
                    ia.this.k = false;
                    ia.this.ia.removeCallbacks(ia.this.kk);
                    ia.this.dq(3, "JSSDK加载超时");
                }
            }
        };
        this.mp = new Runnable() { // from class: com.bytedance.sdk.openadsdk.q.ia.5
            @Override // java.lang.Runnable
            public void run() {
                System.currentTimeMillis();
                if (ia.this.m != null) {
                    ia.this.m.dq("javascript:typeof playable_callJS === 'function' && playable_callJS()", new ValueCallback<String>() { // from class: com.bytedance.sdk.openadsdk.q.ia.5.1
                        @Override // android.webkit.ValueCallback
                        /* renamed from: dq, reason: merged with bridge method [inline-methods] */
                        public void onReceiveValue(String str) {
                            if (ia.this.jy != null) {
                                ia.this.jy.dq(System.currentTimeMillis());
                            }
                        }
                    });
                }
                if (ia.this.ig != null) {
                    ia.this.ig.postDelayed(this, 500L);
                }
            }
        };
        this.q = new Runnable() { // from class: com.bytedance.sdk.openadsdk.q.ia.6
            @Override // java.lang.Runnable
            public void run() {
                System.currentTimeMillis();
                ia.this.dq("playable_stuck_check_ping", new JSONObject());
                if (ia.this.ig != null) {
                    ia.this.ig.postDelayed(this, 500L);
                }
            }
        };
        this.no = new Runnable() { // from class: com.bytedance.sdk.openadsdk.q.ia.7
            @Override // java.lang.Runnable
            public void run() {
                if (ia.this.ws <= 0) {
                    ia.this.d(1, "点击热区卡死");
                } else {
                    if (ia.this.ws - ia.this.bu > ia.this.bl) {
                        ia.this.d(1, "点击热区卡死");
                        return;
                    }
                    ia.this.n();
                    ia.this.bu = 0L;
                    ia.this.ws = 0L;
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(View view) {
        if (view == null) {
            return;
        }
        try {
            if (this.jo == view.getWidth() && this.yo == view.getHeight()) {
                return;
            }
            this.jo = view.getWidth();
            this.yo = view.getHeight();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(MediaFormat.KEY_WIDTH, this.jo);
            jSONObject.put(MediaFormat.KEY_HEIGHT, this.yo);
            dq("resize", jSONObject);
            this.hf = jSONObject;
        } catch (Throwable th) {
            mn.dq("PlayablePlugin", "resetViewDataJsonByView error", th);
        }
    }

    public static ia dq(Context context, com.bytedance.sdk.component.mp.dq dqVar, ox oxVar, com.bytedance.sdk.openadsdk.q.dq dqVar2, Set<String> set, dq dqVar3, boolean z) {
        if (dqVar == null || oxVar == null || dqVar2 == null) {
            return null;
        }
        return new ia(context, dqVar, oxVar, dqVar2, set, dqVar3, z);
    }

    private void dq(Context context, ox oxVar, com.bytedance.sdk.openadsdk.q.dq dqVar) {
        this.r = UUID.randomUUID().toString();
        this.io = context;
        this.cc = dqVar;
        this.mc = oxVar;
        o.dq(dqVar);
        this.wi = new iw(this);
        ce();
    }

    private void er() {
        String str;
        if (this.x == null || (str = this.bx) == null || str.contains("/cid_")) {
            return;
        }
        String optString = this.x.optString("cid");
        if (TextUtils.isEmpty(optString)) {
            return;
        }
        String host = Uri.parse(this.bx).getHost();
        if (TextUtils.isEmpty(host)) {
            this.bx = awf.f(this.bx, "/cid_", optString, new StringBuilder());
        } else {
            this.bx = this.bx.replace(host, awf.i(host, "/cid_", optString));
        }
    }

    public static /* synthetic */ int ig(ia iaVar) {
        int i = iaVar.t;
        iaVar.t = i + 1;
        return i;
    }

    public static /* synthetic */ int mp(ia iaVar) {
        int i = iaVar.gx;
        iaVar.gx = i + 1;
        return i;
    }

    private boolean no(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.contains("/union-fe/playable/") || str.contains("/union-fe-sg/playable/") || str.contains("/union-fe-i18n/playable/");
    }

    private void ox(int i, String str) {
        com.bytedance.sdk.openadsdk.q.dq dqVar = this.cc;
        if (dqVar != null) {
            dqVar.dq(i, str);
        }
    }

    private String p(String str, String str2) {
        String queryParameter;
        String queryParameter2;
        if (TextUtils.isEmpty(this.tv) && !TextUtils.isEmpty(this.ny)) {
            Uri parse = Uri.parse(this.ny);
            String host = parse.getHost();
            if ("lynxview".equalsIgnoreCase(host) || (host != null && host.contains("lynxview"))) {
                queryParameter = parse.getQueryParameter("surl");
                queryParameter2 = parse.getQueryParameter("playable_hash");
            } else {
                queryParameter = "";
                queryParameter2 = "";
            }
            Uri.Builder appendQueryParameter = new Uri.Builder().scheme(parse.getScheme()).authority(host).appendQueryParameter("surl", queryParameter);
            if (!TextUtils.isEmpty(queryParameter2)) {
                appendQueryParameter.appendQueryParameter("playable_hash", queryParameter2);
            }
            this.tv = appendQueryParameter.toString();
        }
        return this.tv;
    }

    private String s(String str, String str2) {
        String format = String.format("rubeex://playable-minigamelite?id=%1s&schema=%2s", str, Uri.encode(str2));
        this.bx = format;
        return format;
    }

    private void s(String str, JSONObject jSONObject) {
        try {
            int i = this.xi;
            if (i == 0) {
                if (this.pa != dq.LAND_PAGE && !no(this.bx)) {
                    er();
                }
                jSONObject.put("playable_url", this.bx);
            } else {
                if (i != 3 && i != 4) {
                    if (i == 1 || i == 2) {
                        jSONObject.put("playable_url", p(this.ux, this.en));
                    }
                }
                jSONObject.put("playable_url", s(this.qz, this.lk));
            }
            jSONObject.put("playable_render_type", this.xi);
            if (this.cc != null) {
                if (this.xi == 0 && (this.pa != dq.LAND_PAGE || no(this.bx))) {
                    this.cc.dq(jSONObject);
                } else if (this.xi != 0) {
                    this.cc.dq(jSONObject);
                }
            }
        } catch (JSONException unused) {
        }
    }

    private void wn() {
        Runnable runnable;
        Runnable runnable2;
        this.jy.dq(System.currentTimeMillis());
        Handler handler = this.ig;
        if (handler != null) {
            int i = this.xi;
            if (i == 0 && (runnable2 = this.mp) != null) {
                handler.post(runnable2);
            } else if ((i == 1 || i == 2) && (runnable = this.q) != null) {
                handler.post(runnable);
            }
            this.jy.dq(500);
        }
    }

    public void bl() {
        this.ia.removeCallbacks(this.kk);
        this.ia.removeCallbacks(this.o);
        try {
            JSONObject jSONObject = new JSONObject();
            if (this.f3853c > 0) {
                jSONObject.put("playable_jssdk_load_success_duration", System.currentTimeMillis() - this.f3853c);
            } else {
                jSONObject.put("playable_jssdk_load_success_duration", 0L);
            }
            ox("PL_sdk_jssdk_load_success", jSONObject);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public String c() {
        return "function playable_callJS(){return \"Android调用了JS的callJS方法\";}";
    }

    public JSONObject cd() {
        if (this.hf.isNull(MediaFormat.KEY_WIDTH)) {
            View view = this.xv.get();
            if (view == null) {
                return this.hf;
            }
            d(view);
        }
        return this.hf;
    }

    public ia d(int i) {
        this.xi = i;
        return this;
    }

    public ia d(long j) {
        if (j <= 0) {
            this.ji = 10L;
            return this;
        }
        this.ji = j;
        return this;
    }

    public ia d(String str) {
        this.tl = str;
        return this;
    }

    public ia d(boolean z) {
        this.bn = z;
        return this;
    }

    public JSONObject d() {
        return this.f3851a;
    }

    public void d(int i, String str) {
        this.xz = i;
        if (this.ij == null) {
            this.ij = new JSONObject();
        }
        try {
            this.ij.put("playable_stuck_type", i);
            this.ij.put("playable_stuck_reason", str);
            if (this.wn > 0) {
                this.ij.put("playable_stuck_duration", System.currentTimeMillis() - this.wn);
            } else {
                this.ij.put("playable_stuck_duration", 0L);
            }
        } catch (Throwable unused) {
        }
        ox("PL_sdk_page_stuck", this.ij);
        op();
        if (this.cc == null || i != 2) {
            return;
        }
        this.ij = new JSONObject();
    }

    public void d(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            Toast.makeText(this.io, "照片保存失败", 0).show();
            return;
        }
        Bitmap d2 = s.d(str2);
        if (d2 == null) {
            Toast.makeText(this.io, "照片保存失败", 0).show();
        } else {
            MediaStore.Images.Media.insertImage(this.io.getContentResolver(), d2, str, "");
            Toast.makeText(this.io, "照片已保存到相册", 0).show();
        }
    }

    public void d(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        s(str, jSONObject);
    }

    public void d(JSONObject jSONObject) {
        int i = 0;
        if (jSONObject != null) {
            i = jSONObject.optInt("resource_type", 0);
            s.ox = jSONObject.optInt("video_min_duration", 1);
            s.p = jSONObject.optInt("video_max_duration", 20);
            s.s = Math.min(jSONObject.optLong("video_max_size", 15360L), 15360L);
        }
        if (this.cc != null) {
            dq(i);
        }
    }

    public Intent dq(int i) {
        Intent intent = new Intent("android.intent.action.PICK");
        if (i == 0) {
            intent.setType("*/*");
            return intent;
        }
        if (i == 1) {
            intent.setType("image/*");
            return intent;
        }
        if (i == 2) {
            intent.setType("video/mp4");
            return intent;
        }
        intent.setType("*/*");
        return intent;
    }

    public ia dq(long j) {
        if (j <= 0) {
            this.h = 10L;
            return this;
        }
        this.h = j;
        return this;
    }

    public ia dq(String str) {
        this.f3852b = str;
        return this;
    }

    public ia dq(String str, String str2) {
        this.bf.put(str, str2);
        return this;
    }

    public ia dq(boolean z) {
        this.ae = z;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("endcard_mute", this.ae);
            dq("volumeChange", jSONObject);
            return this;
        } catch (Throwable th) {
            mn.dq("PlayablePlugin", "setIsMute error", th);
            return this;
        }
    }

    public Map<String, String> dq() {
        return this.bf;
    }

    public void dq(int i, String str) {
        op();
        ox(i, str);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("playable_code", i);
            jSONObject.put("playable_msg", str);
        } catch (Throwable th) {
            mn.dq("PlayablePlugin", "reportRenderFatal error", th);
        }
        ox("PL_sdk_global_faild", jSONObject);
    }

    public void dq(int i, String str, String str2) {
        this.z = -1;
        this.nt = str2;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("playable_code", i);
            jSONObject.put("playable_msg", str);
            jSONObject.put("playable_fail_url", str2);
        } catch (Throwable th) {
            mn.dq("PlayablePlugin", "onWebReceivedError error", th);
        }
        ox("PL_sdk_html_load_error", jSONObject);
        if (this.k) {
            this.k = false;
            this.ia.removeCallbacks(this.kk);
            this.ia.removeCallbacks(this.o);
            dq(1, "容器加载失败");
        }
    }

    public void dq(View view) {
        if (view == null) {
            return;
        }
        try {
            this.xv = new WeakReference<>(view);
            d(view);
            view.getViewTreeObserver().addOnGlobalLayoutListener(this.tu);
        } catch (Throwable th) {
            mn.dq("PlayablePlugin", "setViewForScreenSize error", th);
        }
    }

    public void dq(String str, JSONObject jSONObject) {
        ox oxVar = this.mc;
        if (oxVar != null) {
            oxVar.dq(str, jSONObject);
        }
    }

    public void dq(JSONObject jSONObject) {
        if (this.cc != null) {
            jy();
        }
    }

    public void dq(boolean z, String str, int i) {
        if (z) {
            this.z = -1;
            this.nt = str;
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("playable_code", i);
                jSONObject.put("playable_msg", "url load error");
                jSONObject.put("playable_fail_url", str);
            } catch (Throwable th) {
                mn.dq("PlayablePlugin", "onWebReceivedHttpError error", th);
            }
            ox("PL_sdk_html_load_error", jSONObject);
            if (this.k) {
                this.k = false;
                this.ia.removeCallbacks(this.kk);
                this.ia.removeCallbacks(this.o);
                dq(1, "容器加载失败");
            }
        }
    }

    public void e() {
        if (this.cc != null) {
            dq dqVar = dq.LAND_PAGE;
        }
    }

    public String f() {
        com.bytedance.sdk.openadsdk.q.dq dqVar;
        if (TextUtils.isEmpty(this.ob) && (dqVar = this.cc) != null) {
            this.ob = dqVar.p().toString();
        }
        return this.ob;
    }

    public com.bytedance.sdk.openadsdk.q.dq fw() {
        return this.cc;
    }

    public Context getContext() {
        return this.io;
    }

    public JSONObject gh() {
        return this.x;
    }

    public void h() {
        try {
            JSONObject jSONObject = new JSONObject();
            if (this.er > 0) {
                jSONObject.put("playable_material_first_frame_show_duration", System.currentTimeMillis() - this.er);
            } else {
                jSONObject.put("playable_material_first_frame_show_duration", 0L);
            }
            if (this.f3853c > 0) {
                jSONObject.put("playable_material_first_frame_load_duration", System.currentTimeMillis() - this.f3853c);
            } else {
                jSONObject.put("playable_material_first_frame_load_duration", 0L);
            }
            ox("PL_sdk_material_first_frame_show", jSONObject);
        } catch (JSONException unused) {
        }
    }

    public void i() {
        com.bytedance.sdk.openadsdk.q.dq dqVar = this.cc;
        if (dqVar != null) {
            dqVar.dq();
        }
    }

    public void ia(String str) {
        com.bytedance.sdk.component.mp.dq dqVar;
        this.z = 2;
        this.nt = str;
        JSONObject jSONObject = new JSONObject();
        try {
            long currentTimeMillis = System.currentTimeMillis();
            this.ce = currentTimeMillis;
            long j = this.f3853c;
            jSONObject.put("playable_html_load_start_duration", j != -1 ? currentTimeMillis - j : 0L);
        } catch (Throwable th) {
            mn.dq("PlayablePlugin", "reportUrlLoadFinish error", th);
        }
        ox("PL_sdk_html_load_finish", jSONObject);
        this.ia.removeCallbacks(this.kk);
        try {
            if (this.xi == 0) {
                if (this.f3856f && (dqVar = this.m) != null) {
                    this.f3856f = false;
                    dqVar.dq(c(), new ValueCallback<String>() { // from class: com.bytedance.sdk.openadsdk.q.ia.9
                        @Override // android.webkit.ValueCallback
                        public /* bridge */ /* synthetic */ void onReceiveValue(String str2) {
                        }
                    });
                }
                n();
            }
        } catch (Throwable th2) {
            mn.dq("PlayablePlugin", "crashMonitor error", th2);
        }
    }

    public void ia(JSONObject jSONObject) {
        d(2, jSONObject != null ? jSONObject.optString("error_msg", "素材直接调用端上异常兜底蒙层") : "素材直接调用端上异常兜底蒙层");
    }

    public boolean ia() {
        return this.fp;
    }

    public JSONObject ig() {
        try {
            boolean dq2 = s.dq(this.io, "android.permission.CAMERA");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(ekq.EXTRA_PERMISSION_RESULT, dq2);
            return jSONObject;
        } catch (Throwable th) {
            mn.dq("PlayablePlugin", "getCameraPermission error", th);
            return new JSONObject();
        }
    }

    public void ir() {
        this.jo = 0;
        this.yo = 0;
        this.f3857g = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        this.zi = 0;
        this.sc = 0;
        this.hy = 0;
        this.ip = 0;
        this.ah = 0;
        this.xx = 0;
        this.jv = 0;
        this.jn = 0;
        this.w = 0;
        this.y = 0;
    }

    public ia iw(String str) {
        Uri parse;
        String scheme;
        int indexOf;
        String decode;
        this.ny = str;
        try {
            parse = Uri.parse(str);
            scheme = parse.getScheme();
        } catch (Throwable unused) {
        }
        if (!"http".equalsIgnoreCase(scheme) && !"https".equalsIgnoreCase(scheme)) {
            String host = parse.getHost();
            if (!"webview".equalsIgnoreCase(host) && (host == null || !host.contains("webview"))) {
                if ("lynxview".equalsIgnoreCase(host) || (host != null && host.contains("lynxview"))) {
                    if (this.xi == -1) {
                        d(2);
                    } else {
                        d(1);
                    }
                }
                this.bx = str;
                return this;
            }
            d(0);
            String queryParameter = parse.getQueryParameter(abn.EXTRA_URL);
            if (!TextUtils.isEmpty(queryParameter) && (decode = Uri.decode(queryParameter)) != null) {
                int indexOf2 = decode.indexOf("?");
                str = indexOf2 != -1 ? decode.substring(0, indexOf2) : decode;
            }
            this.bx = str;
            return this;
        }
        d(0);
        if (str != null && (indexOf = str.indexOf("?")) != -1) {
            str = str.substring(0, indexOf);
        }
        this.bx = str;
        return this;
    }

    public String iw() {
        return this.wq;
    }

    public void iw(JSONObject jSONObject) {
        if (jSONObject != null) {
            this.vw = jSONObject.optString("section");
        }
    }

    public void ji() {
        d dVar;
        this.ws = System.currentTimeMillis();
        int i = this.xi;
        if ((i == 1 || i == 2) && (dVar = this.jy) != null) {
            dVar.dq(System.currentTimeMillis());
        }
    }

    public Intent jy() {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        File dq2 = s.dq();
        if (dq2 == null) {
            return null;
        }
        intent.putExtra("output", FileProvider.getUriForFile(this.io, this.io.getPackageName() + ".playable.fileProvider", dq2));
        return intent;
    }

    public void k() {
        this.xz = 2;
    }

    public JSONObject kk() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("send_click", this.fq);
            return jSONObject;
        } catch (Throwable th) {
            mn.dq("PlayablePlugin", "getPlayableClickStatus error", th);
            return new JSONObject();
        }
    }

    public JSONObject kk(JSONObject jSONObject) {
        if (jSONObject == null) {
            return new JSONObject();
        }
        int optInt = jSONObject.optInt("type", 0);
        return optInt != 1 ? optInt != 2 ? optInt != 3 ? new JSONObject() : mp() : ig() : no();
    }

    public void kk(String str) {
        this.ia.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.q.ia.10
            @Override // java.lang.Runnable
            public void run() {
                ia.ig(ia.this);
            }
        });
    }

    public void kx() {
        if (this.cc != null) {
            dq dqVar = dq.LAND_PAGE;
        }
    }

    public void le() {
        try {
            JSONObject jSONObject = new JSONObject();
            if (this.er > 0) {
                jSONObject.put("playable_material_interactable_duration", System.currentTimeMillis() - this.er);
            } else {
                jSONObject.put("playable_material_interactable_duration", 0L);
            }
            if (this.f3853c > 0) {
                long currentTimeMillis = System.currentTimeMillis() - this.f3853c;
                this.j = currentTimeMillis;
                jSONObject.put("playable_material_interactable_load_duration", currentTimeMillis);
            } else {
                jSONObject.put("playable_material_interactable_load_duration", 0L);
            }
            ox("PL_sdk_material_interactable", jSONObject);
        } catch (JSONException unused) {
        }
    }

    public void mn(String str) {
        int i;
        int i2;
        this.z = 1;
        JSONObject jSONObject = new JSONObject();
        try {
            long currentTimeMillis = System.currentTimeMillis();
            this.f3853c = currentTimeMillis;
            long j = this.u;
            jSONObject.put("playable_page_show_duration", j != -1 ? currentTimeMillis - j : 0L);
        } catch (Throwable th) {
            mn.dq("PlayablePlugin", "reportUrlLoadStart error", th);
        }
        ox("PL_sdk_html_load_start", jSONObject);
        if (this.le && ((i = this.xi) == 0 || i == 1 || i == 2)) {
            this.ia.postDelayed(this.kk, this.h * 1000);
            if (no(this.bx) || (i2 = this.xi) == 1 || i2 == 2) {
                this.ia.postDelayed(this.o, this.ji * 1000);
            }
            this.le = false;
        }
        if (this.fw) {
            try {
                StringBuffer stringBuffer = new StringBuffer();
                StringBuffer stringBuffer2 = new StringBuffer();
                StringBuffer stringBuffer3 = new StringBuffer();
                if (s.dq(this.io, s.ig)) {
                    stringBuffer.append("Microphone_");
                    stringBuffer2.append("1");
                    if (s.d(this.io, "android.permission.RECORD_AUDIO")) {
                        stringBuffer3.append("1");
                    } else {
                        stringBuffer3.append("0");
                    }
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                if (s.dq(this.io, s.no)) {
                    stringBuffer.append("Magetometer_");
                    stringBuffer2.append("1");
                    stringBuffer3.append("1");
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                if (s.dq(this.io, s.o)) {
                    stringBuffer.append("Accelerometer_");
                    stringBuffer2.append("1");
                    stringBuffer3.append("1");
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                if (s.dq(this.io, s.kk)) {
                    stringBuffer.append("Gyro_");
                    stringBuffer2.append("1");
                    stringBuffer3.append("1");
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                if (s.dq(this.io, s.ia)) {
                    stringBuffer.append("Camera_");
                    stringBuffer2.append("1");
                    if (s.d(this.io, "android.permission.CAMERA")) {
                        stringBuffer3.append("1");
                    } else {
                        stringBuffer3.append("0");
                    }
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                if (s.dq(this.io, s.mn)) {
                    stringBuffer.append("Photo");
                    stringBuffer2.append("1");
                    if (s.dq(this.io)) {
                        stringBuffer3.append("1");
                    } else {
                        stringBuffer3.append("0");
                    }
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("playable_available_hardware_name", stringBuffer.toString());
                jSONObject2.put("playable_available_hardware_code", stringBuffer2.toString());
                jSONObject2.put("playable_available_hardware_auth_code", stringBuffer3.toString());
                ox("PL_sdk_hardware_detect", jSONObject2);
                this.fw = false;
            } catch (Throwable th2) {
                mn.dq("PlayablePlugin", "Hardware detect error", th2);
            }
        }
    }

    public void mn(JSONObject jSONObject) {
        this.ij = jSONObject;
        this.ds++;
        op();
        this.ia.removeCallbacks(this.no);
        if (this.wp) {
            this.wn = System.currentTimeMillis();
            this.bu = System.currentTimeMillis();
            this.ws = 0L;
            int i = this.xi;
            if (i == 0) {
                com.bytedance.sdk.component.mp.dq dqVar = this.m;
                if (dqVar != null) {
                    dqVar.dq("javascript:typeof playable_callJS === 'function' && playable_callJS()", new ValueCallback<String>() { // from class: com.bytedance.sdk.openadsdk.q.ia.8
                        @Override // android.webkit.ValueCallback
                        /* renamed from: dq, reason: merged with bridge method [inline-methods] */
                        public void onReceiveValue(String str) {
                            ia.this.ws = System.currentTimeMillis();
                        }
                    });
                }
            } else if (i == 1 || i == 2) {
                dq("playable_stuck_check_ping", new JSONObject());
            }
            this.ia.postDelayed(this.no, this.bl);
        }
    }

    public boolean mn() {
        return this.ae;
    }

    public JSONObject mp() {
        boolean dq2;
        boolean dq3;
        try {
            boolean z = true;
            if (Build.VERSION.SDK_INT >= 33) {
                dq2 = s.dq(this.io, "android.permission.READ_MEDIA_IMAGES");
                dq3 = true;
            } else {
                dq2 = s.dq(this.io, "android.permission.READ_EXTERNAL_STORAGE");
                dq3 = s.dq(this.io, "android.permission.WRITE_EXTERNAL_STORAGE");
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("isHasRead", dq2);
            jSONObject.put("isHasWrite", dq3);
            if (!dq2 || !dq3) {
                z = false;
            }
            jSONObject.put(ekq.EXTRA_PERMISSION_RESULT, z);
            return jSONObject;
        } catch (Throwable th) {
            mn.dq("PlayablePlugin", "getCameraPermission error", th);
            return new JSONObject();
        }
    }

    public void n() {
        if (this.wp) {
            this.wn = System.currentTimeMillis();
            if (this.pa == dq.FEED_AWEME) {
                if (this.fp && this.z == 3) {
                    d dVar = this.jy;
                    if (dVar != null && dVar.d()) {
                        wn();
                        return;
                    } else {
                        if (this.jy == null) {
                            this.jy = new d(this, this.bl);
                            wn();
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            if (this.fp && this.z == 2) {
                d dVar2 = this.jy;
                if (dVar2 != null && dVar2.d()) {
                    wn();
                } else if (this.jy == null) {
                    this.jy = new d(this, this.bl);
                    wn();
                }
            }
        }
    }

    public JSONObject no() {
        try {
            boolean dq2 = s.dq(this.io, "android.permission.RECORD_AUDIO");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(ekq.EXTRA_PERMISSION_RESULT, dq2);
            return jSONObject;
        } catch (Throwable th) {
            mn.dq("PlayablePlugin", "getCameraPermission error", th);
            return new JSONObject();
        }
    }

    public void no(JSONObject jSONObject) {
        if (jSONObject != null) {
            boolean optBoolean = jSONObject.optBoolean("success", true);
            if (optBoolean) {
                this.z = 3;
                n();
            } else {
                this.z = -2;
            }
            if (optBoolean || !this.k) {
                return;
            }
            this.k = false;
            this.ia.removeCallbacks(this.kk);
            this.ia.removeCallbacks(this.o);
            dq(4, "素材渲染失败");
        }
    }

    public Set<String> o() {
        Set<String> dq2 = this.wi.dq();
        Set<String> set = this.gh;
        if (set == null || set.size() <= 0) {
            return dq2;
        }
        HashSet hashSet = new HashSet();
        for (String str : dq2) {
            if (!this.gh.contains(str)) {
                hashSet.add(str);
            }
        }
        return hashSet;
    }

    public JSONObject o(JSONObject jSONObject) {
        if (jSONObject == null) {
            return new JSONObject();
        }
        int optInt = jSONObject.optInt("type", 0);
        JSONObject jSONObject2 = new JSONObject();
        try {
            if (optInt != 1) {
                if (optInt == 2) {
                    if (Build.VERSION.SDK_INT >= 23) {
                        jSONObject2.put(ekq.EXTRA_PERMISSION_RESULT, s.d(this.io, "android.permission.CAMERA"));
                        return jSONObject2;
                    }
                    jSONObject2.put(ekq.EXTRA_PERMISSION_RESULT, false);
                    return jSONObject2;
                }
                if (optInt == 3) {
                    if (Build.VERSION.SDK_INT >= 23) {
                        jSONObject2.put(ekq.EXTRA_PERMISSION_RESULT, s.dq(this.io));
                        return jSONObject2;
                    }
                    jSONObject2.put(ekq.EXTRA_PERMISSION_RESULT, false);
                    return jSONObject2;
                }
            } else {
                if (Build.VERSION.SDK_INT >= 23) {
                    jSONObject2.put(ekq.EXTRA_PERMISSION_RESULT, s.d(this.io, "android.permission.RECORD_AUDIO"));
                    return jSONObject2;
                }
                jSONObject2.put(ekq.EXTRA_PERMISSION_RESULT, false);
            }
        } catch (JSONException unused) {
        }
        return jSONObject2;
    }

    public void o(String str) {
        this.ia.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.q.ia.2
            @Override // java.lang.Runnable
            public void run() {
                ia.mp(ia.this);
            }
        });
    }

    public void op() {
        try {
            d dVar = this.jy;
            if (dVar != null) {
                dVar.dq();
            }
            Handler handler = this.ig;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
        } catch (Throwable unused) {
        }
    }

    public ia ox(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("playable_style", str);
            this.f3851a = jSONObject;
            return this;
        } catch (Throwable th) {
            mn.dq("PlayablePlugin", "setPlayableStyle error", th);
            return this;
        }
    }

    public ia ox(boolean z) {
        if (this.fp != z) {
            this.fp = z;
            JSONObject jSONObject = new JSONObject();
            try {
                if (!this.fp) {
                    jSONObject.put("playable_background_show_type", this.dc);
                }
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            ox(this.fp ? "PL_sdk_viewable_true" : "PL_sdk_viewable_false", jSONObject);
            if (this.u == -1 && this.fp) {
                this.u = System.currentTimeMillis();
                ox("PL_sdk_page_show", (JSONObject) null);
            }
            if (this.u != -1 && !this.fp && !this.rp) {
                this.rp = true;
            }
            if (this.fp) {
                this.ir = System.currentTimeMillis();
            } else if (this.ir != -1) {
                this.n += System.currentTimeMillis() - this.ir;
                this.ir = -1L;
            }
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("viewStatus", this.fp);
                dq("viewableChange", jSONObject2);
            } catch (Throwable th) {
                mn.dq("PlayablePlugin", "setViewable error", th);
            }
            if (this.fp) {
                n();
            } else {
                op();
            }
        }
        return this;
    }

    public String ox() {
        return this.tl;
    }

    public void ox(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            Toast.makeText(this.io, "视频保存失败", 0).show();
            return;
        }
        File dq2 = s.dq(str, str2);
        if (dq2 == null || !dq2.exists()) {
            Toast.makeText(this.io, "视频保存失败", 0).show();
            return;
        }
        Uri fromFile = Uri.fromFile(dq2);
        Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
        intent.setData(fromFile);
        this.io.sendBroadcast(intent);
        Toast.makeText(this.io, "视频已保存到相册", 0).show();
    }

    public void ox(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            if (!this.by && this.gx > 0) {
                this.by = true;
            }
            jSONObject.put("playable_event", str);
            jSONObject.put("playable_ts", System.currentTimeMillis());
            jSONObject.put("playable_viewable", this.fp);
            jSONObject.put("playable_session_id", this.r);
            int i = this.xi;
            if (i == 0) {
                if (this.pa != dq.LAND_PAGE && !no(this.bx)) {
                    er();
                }
                jSONObject.put("playable_url", this.bx);
            } else {
                if (i != 3 && i != 4) {
                    if (i == 1 || i == 2) {
                        jSONObject.put("playable_url", p(this.ux, this.en));
                    }
                }
                jSONObject.put("playable_url", s(this.qz, this.lk));
            }
            jSONObject.put("playable_full_url", this.ny);
            jSONObject.put("playable_replay_count", this.uh);
            jSONObject.put("playable_is_prerender", this.bn);
            jSONObject.put("playable_is_preload", this.by);
            jSONObject.put("playable_render_type", this.xi);
            jSONObject.put("playable_scenes_type", this.pa.ordinal());
            String str2 = "";
            jSONObject.put("playable_gecko_key", TextUtils.isEmpty(this.ux) ? "" : this.ux);
            if (!TextUtils.isEmpty(this.en)) {
                str2 = this.en;
            }
            jSONObject.put("playable_gecko_channel", str2);
            jSONObject.put("playable_sdk_version", "6.5.1");
            jSONObject.put("playable_minigamelite_id", this.qz);
            jSONObject.put("playable_minigamelite_schema", this.lk);
            jSONObject.put("playable_is_debug", this.oh);
            jSONObject.put("playable_retry_count", this.yy);
            jSONObject.put("playable_enter_from", this.v);
            jSONObject.put("playable_sequence", this.ds);
            jSONObject.put("playable_current_section", this.vw);
            jSONObject.put("is_playable_finish", this.ha);
            jSONObject.put("playable_card_session", this.nh);
            jSONObject.put("playable_video_session", this.vf);
            jSONObject.put("playable_network_type", f());
            jSONObject.put("playable_lynx_version", this.kx);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("ad_extra_data", jSONObject);
            jSONObject2.put(TTDownloadField.TT_TAG, this.i);
            jSONObject2.put("nt", 4);
            jSONObject2.put("category", "umeng");
            jSONObject2.put("is_ad_event", "1");
            jSONObject2.put(TTDownloadField.TT_REFER, "playable");
            jSONObject2.put("value", this.x.opt("cid"));
            jSONObject2.put("log_extra", this.x.opt("log_extra"));
            int i2 = this.xi;
            if (i2 != -1 && i2 != -2) {
                if (this.cc != null) {
                    List<JSONObject> list = this.gl;
                    if (list != null && !list.isEmpty()) {
                        Iterator<JSONObject> it = this.gl.iterator();
                        while (it.hasNext()) {
                            JSONObject optJSONObject = it.next().optJSONObject("ad_extra_data");
                            if (optJSONObject != null) {
                                optJSONObject.put("playable_render_type", this.xi);
                                optJSONObject.put("playable_url", this.bx);
                            }
                            this.cc.dq(optJSONObject);
                        }
                        this.gl.clear();
                    }
                    if (this.xi == 0 && (this.pa != dq.LAND_PAGE || no(this.bx))) {
                        this.cc.dq(jSONObject);
                        return;
                    } else {
                        if (this.xi != 0) {
                            this.cc.dq(jSONObject);
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            if (this.gl == null) {
                this.gl = new ArrayList();
            }
            this.gl.add(jSONObject2);
        } catch (Throwable th) {
            mn.dq("PlayablePlugin", "reportEvent error", th);
        }
    }

    public void ox(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.q.dq dqVar = this.cc;
        if (dqVar == null || dqVar.d(jSONObject) || jSONObject == null) {
            return;
        }
        String optString = jSONObject.optString("resource_base64");
        if (TextUtils.isEmpty(optString)) {
            return;
        }
        int optInt = jSONObject.optInt("resource_type", -1);
        String optString2 = jSONObject.optString("resource_name", "playable_media");
        if (optInt == 1) {
            d(optString2, optString);
        } else if (optInt == 2) {
            ox(optString2, optString);
        }
    }

    public ia p(String str) {
        this.xj = str;
        return this;
    }

    public ia p(boolean z) {
        this.fq = z;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("send_click", this.fq);
            dq("change_playable_click", jSONObject);
            return this;
        } catch (Throwable th) {
            mn.dq("PlayablePlugin", "setPlayableClick error", th);
            return this;
        }
    }

    public String p() {
        return this.f3852b;
    }

    public JSONObject p(String str, JSONObject jSONObject) {
        System.currentTimeMillis();
        JSONObject dq2 = this.wi.dq(str, jSONObject);
        if (mn.dq()) {
            System.currentTimeMillis();
        }
        return dq2;
    }

    public void p(JSONObject jSONObject) {
        if (this.cc != null) {
            try {
                jSONObject.optBoolean("isPrevent", false);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public JSONObject q() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("scene_type", this.pa.ordinal());
            jSONObject.put("safe_area_top_height", this.dk);
            jSONObject.put("safe_area_bottom_height", this.sy);
            jSONObject.put("playable_enter_from", this.v);
            jSONObject.put("playable_retry_count", this.yy);
            jSONObject.put("playable_card_session", this.nh);
            jSONObject.put("playable_video_session", this.vf);
            jSONObject.put("playable_network_type", f());
            jSONObject.put("aweme_id", this.l);
            return jSONObject;
        } catch (Throwable th) {
            mn.dq("PlayablePlugin", "playableInfo error", th);
            return new JSONObject();
        }
    }

    public JSONObject r() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("devicePixelRatio", this.f3857g);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(MediaFormat.KEY_WIDTH, this.zi);
            jSONObject2.put(MediaFormat.KEY_HEIGHT, this.sc);
            jSONObject.put("screen", jSONObject2);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("x", this.ip);
            jSONObject3.put("y", this.hy);
            jSONObject3.put(MediaFormat.KEY_WIDTH, this.ah);
            jSONObject3.put(MediaFormat.KEY_HEIGHT, this.xx);
            jSONObject.put("webview", jSONObject3);
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("x", this.jn);
            jSONObject4.put("y", this.jv);
            jSONObject4.put(MediaFormat.KEY_WIDTH, this.w);
            jSONObject4.put(MediaFormat.KEY_HEIGHT, this.y);
            jSONObject.put("visible", jSONObject4);
            return jSONObject;
        } catch (Throwable th) {
            mn.dq("PlayablePlugin", "getViewport error", th);
            return jSONObject;
        }
    }

    public ia s(String str) {
        this.wq = str;
        return this;
    }

    public ia s(JSONObject jSONObject) {
        this.x = jSONObject;
        return this;
    }

    public ia s(boolean z) {
        this.wp = z;
        return this;
    }

    public String s() {
        return this.xj;
    }

    public void u() {
        if (this.py) {
            return;
        }
        this.py = true;
        this.op = 0L;
        this.fw = true;
        ir();
        try {
            View view = this.xv.get();
            if (view != null) {
                view.getViewTreeObserver().removeOnGlobalLayoutListener(this.tu);
            }
        } catch (Throwable unused) {
        }
        try {
            this.wi.d();
        } catch (Throwable unused2) {
        }
        try {
            d dVar = this.jy;
            if (dVar != null) {
                dVar.dq();
                this.jy = null;
            }
            Handler handler = this.ig;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
        } catch (Throwable unused3) {
        }
        try {
            if (!TextUtils.isEmpty(this.bx)) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("playable_all_times", this.t);
                jSONObject.put("playable_hit_times", this.gx);
                int i = this.t;
                if (i > 0) {
                    jSONObject.put("playable_hit_ratio", this.gx / (i * 1.0d));
                } else {
                    jSONObject.put("playable_hit_ratio", 0);
                }
                ox("PL_sdk_preload_times", jSONObject);
            }
        } catch (Throwable unused4) {
        }
        try {
            if (!TextUtils.isEmpty(this.bx)) {
                if (this.ir != -1) {
                    this.n += System.currentTimeMillis() - this.ir;
                    this.ir = -1L;
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("playable_user_play_duration", this.n);
                ox("PL_sdk_user_play_duration", jSONObject2);
            }
        } catch (Throwable unused5) {
        }
        this.ia.removeCallbacks(this.kk);
        this.ia.removeCallbacks(this.o);
        this.ia.removeCallbacksAndMessages(null);
    }

    public void wp() {
        this.ha = true;
    }
}
