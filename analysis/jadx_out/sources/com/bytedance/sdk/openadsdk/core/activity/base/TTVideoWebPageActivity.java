package com.bytedance.sdk.openadsdk.core.activity.base;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.bykv.vk.openvk.component.video.api.p.ox;
import com.bytedance.sdk.component.utils.ia;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.utils.k;
import com.bytedance.sdk.component.utils.q;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.core.c;
import com.bytedance.sdk.openadsdk.core.d;
import com.bytedance.sdk.openadsdk.core.d.dq.d.mn;
import com.bytedance.sdk.openadsdk.core.dislike.ui.dq;
import com.bytedance.sdk.openadsdk.core.h;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.ir.iw;
import com.bytedance.sdk.openadsdk.core.ir.n;
import com.bytedance.sdk.openadsdk.core.jy.dq;
import com.bytedance.sdk.openadsdk.core.jy.p;
import com.bytedance.sdk.openadsdk.core.multipro.d.dq;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.o.ox.jy;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.ji;
import com.bytedance.sdk.openadsdk.core.r.nh;
import com.bytedance.sdk.openadsdk.core.r.op;
import com.bytedance.sdk.openadsdk.core.r.s;
import com.bytedance.sdk.openadsdk.core.r.u;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.bytedance.sdk.openadsdk.res.layout.TTViewStub;
import com.bytedance.sdk.openadsdk.widget.RoundImageView;
import com.bytedance.sdk.openadsdk.widget.TTProgressBar;
import g.abn;
import g.awf;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class TTVideoWebPageActivity extends Activity implements ox.InterfaceC0004ox, p {
    private TextView bl;
    private dq by;

    /* renamed from: c, reason: collision with root package name */
    private Button f2456c;
    private int cd;
    private TTProgressBar ce;
    private boolean cv;

    /* renamed from: d, reason: collision with root package name */
    protected NativeVideoTsView f2457d;
    private com.bytedance.sdk.openadsdk.core.q.d.dq dc;
    com.bytedance.sdk.openadsdk.core.dislike.ui.dq dq;
    private com.bytedance.sdk.openadsdk.core.q.ox.ox ds;
    private com.bytedance.sdk.openadsdk.core.o.d.ox er;

    /* renamed from: f, reason: collision with root package name */
    private String f2459f;
    private c fw;
    private RelativeLayout gh;
    private int gx;
    private Activity ha;
    private TextView ia;
    private TextView ig;
    private TextView ir;
    private ImageView iw;
    private RelativeLayout ji;
    private String jy;
    private j k;
    private TextView kk;
    private long le;
    private TextView mn;
    private LinearLayout mp;
    private RoundImageView n;
    private String nh;
    private TextView no;
    private TextView o;
    private TextView op;
    protected ox ox;
    private SSWebView p;
    private Context q;
    private FrameLayout r;
    private ImageView s;
    private TTViewStub u;
    private com.bytedance.sdk.openadsdk.core.ig.p uh;
    private com.bytedance.sdk.openadsdk.core.q.p vw;
    private com.bytedance.sdk.openadsdk.ig.ox xz;
    private int i = -1;
    private int wp = 0;

    /* renamed from: e, reason: collision with root package name */
    private int f2458e = 0;
    private int kx = 0;
    private int h = 0;
    private final Map<String, com.bytedance.sdk.openadsdk.core.o.d.ox> wn = awf.ab();
    private boolean j = false;
    private boolean vf = false;
    private boolean ob = true;
    private boolean l = false;
    private String t = null;
    private AtomicBoolean yy = new AtomicBoolean(true);
    private JSONArray v = null;
    private String jw = "立即下载";
    private com.bytedance.sdk.openadsdk.core.o.d.dq fd = new com.bytedance.sdk.openadsdk.core.o.d.dq() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTVideoWebPageActivity.16
        @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
        public void d(long j, long j2, String str, String str2) {
            TTVideoWebPageActivity.this.d("暂停");
            if (j > 0) {
                dq.C0166dq.dq(TTVideoWebPageActivity.this.jy, 2, (int) ((j2 * 100) / j));
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
        public void dq() {
            TTVideoWebPageActivity tTVideoWebPageActivity = TTVideoWebPageActivity.this;
            tTVideoWebPageActivity.d(tTVideoWebPageActivity.mp());
            dq.C0166dq.dq(TTVideoWebPageActivity.this.jy, 1, 0);
        }

        @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
        public void dq(long j, long j2, String str, String str2) {
            TTVideoWebPageActivity.this.d("下载中...");
            if (j > 0) {
                dq.C0166dq.dq(TTVideoWebPageActivity.this.jy, 3, (int) ((j2 * 100) / j));
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
        public void dq(long j, String str, String str2) {
            TTVideoWebPageActivity.this.d("点击安装");
            dq.C0166dq.dq(TTVideoWebPageActivity.this.jy, 5, 100);
        }

        @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
        public void dq(String str, String str2) {
            TTVideoWebPageActivity.this.d("点击打开");
            dq.C0166dq.dq(TTVideoWebPageActivity.this.jy, 6, 100);
        }

        @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
        public void ox(long j, long j2, String str, String str2) {
            TTVideoWebPageActivity.this.d("下载失败");
            if (j > 0) {
                dq.C0166dq.dq(TTVideoWebPageActivity.this.jy, 4, (int) ((j2 * 100) / j));
            }
        }
    };
    private com.bytedance.sdk.openadsdk.core.d.dq bu = null;
    private final ox.d ws = new ox.d() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTVideoWebPageActivity.5
        @Override // com.bykv.vk.openvk.component.video.api.p.ox.d
        public void dq(boolean z) {
            TTVideoWebPageActivity.this.j = z;
            if (TTVideoWebPageActivity.this.isFinishing()) {
                return;
            }
            if (!z) {
                ce.dq((View) TTVideoWebPageActivity.this.p, 0);
                ce.dq((View) TTVideoWebPageActivity.this.gh, 0);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) TTVideoWebPageActivity.this.r.getLayoutParams();
                marginLayoutParams.width = TTVideoWebPageActivity.this.kx;
                marginLayoutParams.height = TTVideoWebPageActivity.this.h;
                marginLayoutParams.leftMargin = TTVideoWebPageActivity.this.f2458e;
                marginLayoutParams.topMargin = TTVideoWebPageActivity.this.wp;
                TTVideoWebPageActivity.this.r.setLayoutParams(marginLayoutParams);
                return;
            }
            ce.dq((View) TTVideoWebPageActivity.this.p, 8);
            ce.dq((View) TTVideoWebPageActivity.this.gh, 8);
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) TTVideoWebPageActivity.this.r.getLayoutParams();
            TTVideoWebPageActivity.this.f2458e = marginLayoutParams2.leftMargin;
            TTVideoWebPageActivity.this.wp = marginLayoutParams2.topMargin;
            TTVideoWebPageActivity.this.kx = marginLayoutParams2.width;
            TTVideoWebPageActivity.this.h = marginLayoutParams2.height;
            marginLayoutParams2.width = -1;
            marginLayoutParams2.height = -1;
            marginLayoutParams2.topMargin = 0;
            marginLayoutParams2.leftMargin = 0;
            TTVideoWebPageActivity.this.r.setLayoutParams(marginLayoutParams2);
        }
    };
    private boolean ij = false;
    private final k.dq xi = new k.dq() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTVideoWebPageActivity.7
        @Override // com.bytedance.sdk.component.utils.k.dq
        public void dq(Context context, Intent intent, boolean z, int i) {
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                if (TTVideoWebPageActivity.this.gx == 0 && i != 0 && TTVideoWebPageActivity.this.p != null && TTVideoWebPageActivity.this.t != null) {
                    ia.d().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTVideoWebPageActivity.7.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (TTVideoWebPageActivity.this.p != null) {
                                TTVideoWebPageActivity.this.p.dq(TTVideoWebPageActivity.this.t);
                            }
                        }
                    });
                }
                NativeVideoTsView nativeVideoTsView = TTVideoWebPageActivity.this.f2457d;
                if (nativeVideoTsView != null && nativeVideoTsView.getNativeVideoController() != null && !TTVideoWebPageActivity.this.wp() && TTVideoWebPageActivity.this.gx != i) {
                    ((com.bytedance.sdk.openadsdk.core.video.nativevideo.ox) TTVideoWebPageActivity.this.f2457d.getNativeVideoController()).dq(context, i);
                }
                TTVideoWebPageActivity.this.gx = i;
            }
        }
    };

    private int cd() {
        NativeVideoTsView nativeVideoTsView = this.f2457d;
        if (nativeVideoTsView == null || nativeVideoTsView.getNativeVideoController() == null) {
            return 0;
        }
        return this.f2457d.getNativeVideoController().jy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(j jVar) {
        if (jVar == null) {
            return;
        }
        iw.dq(this.q, jVar.fx(), jVar.ip(), new iw.dq() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTVideoWebPageActivity.14
            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void d() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void dq() {
                TTVideoWebPageActivity.this.i();
            }

            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void ox() {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(final String str) {
        Button button;
        if (TextUtils.isEmpty(str) || (button = this.f2456c) == null) {
            return;
        }
        button.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTVideoWebPageActivity.17
            @Override // java.lang.Runnable
            public void run() {
                if (TTVideoWebPageActivity.this.f2456c == null || TTVideoWebPageActivity.this.isFinishing()) {
                    return;
                }
                TTVideoWebPageActivity.this.f2456c.setText(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(int i) {
        if (j.ox(this.k)) {
            ce.dq((View) this.iw, 4);
        } else if (j.ox(this.k)) {
            ce.dq((View) this.iw, i);
        }
    }

    private void dq(ox oxVar) {
        ig.p("mutilproces", "initFeedNaitiveControllerData-isComplete=" + oxVar.r() + ",position=" + oxVar.no() + ",totalPlayDuration=" + (oxVar.ig() + oxVar.q()) + ",duration=" + oxVar.q());
        com.bytedance.sdk.component.mn.dq dq = n.dq("sp_multi_native_video_data");
        dq.dq("key_video_is_update_flag", true);
        dq.dq("key_video_isfromvideodetailpage", true);
        dq.dq("key_native_video_complete", oxVar.r());
        dq.dq("key_video_current_play_position", oxVar.no());
        dq.dq("key_video_total_play_duration", oxVar.ig() + oxVar.q());
        dq.dq("key_video_duration", oxVar.q());
    }

    private void dq(j jVar) {
        LinearLayout linearLayout = this.mp;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
            return;
        }
        if (jVar == null) {
            return;
        }
        String ip = jVar.ip();
        if (TextUtils.isEmpty(ip)) {
            LinearLayout linearLayout2 = this.mp;
            if (linearLayout2 != null) {
                linearLayout2.setVisibility(8);
                return;
            }
            return;
        }
        try {
            if (TextUtils.isEmpty(ip)) {
                return;
            }
            s s = d.s(new JSONObject(ip));
            if (s == null) {
                LinearLayout linearLayout3 = this.mp;
                if (linearLayout3 != null) {
                    linearLayout3.setVisibility(8);
                    return;
                }
                return;
            }
            if (TextUtils.isEmpty(s.ig())) {
                LinearLayout linearLayout4 = this.mp;
                if (linearLayout4 != null) {
                    linearLayout4.setVisibility(8);
                    return;
                }
                return;
            }
            LinearLayout linearLayout5 = this.mp;
            if (linearLayout5 != null) {
                linearLayout5.setVisibility(0);
            }
            String s2 = s.s();
            String mn = s.mn();
            String mp = s.mp();
            if (TextUtils.isEmpty(mp)) {
                mp = jy.d(jVar);
            }
            if (this.kk != null) {
                this.kk.setText(String.format(r.dq(this.q, "tt_open_app_detail_developer"), mn));
            }
            if (this.o != null) {
                this.o.setText(String.format(r.dq(this.q, "tt_open_landing_page_app_name"), mp, s2));
            }
        } catch (Throwable unused) {
        }
    }

    public static boolean dq(Intent intent) {
        if (intent == null) {
            return false;
        }
        try {
            if (intent.getComponent() == null) {
                return false;
            }
            return TTVideoWebPageActivity.class.getName().equals(intent.getComponent().getClassName());
        } catch (Throwable unused) {
            return false;
        }
    }

    private boolean e() {
        j jVar = this.k;
        if (jVar == null) {
            return false;
        }
        int by = jVar.by();
        return this.cd == 1 && "embeded_ad_landingpage".equals(this.nh) && (by == 1 || by == 2);
    }

    private void f() {
        if (j.d(this.k)) {
            try {
                if (this instanceof TTVideoScrollWebPageActivity) {
                    this.f2457d = new NativeVideoTsView(this.q, this.k, true, true);
                } else {
                    this.f2457d = new NativeVideoTsView(this.q, this.k, true, false);
                }
                if (this.f2457d.getNativeVideoController() != null) {
                    this.f2457d.getNativeVideoController().dq(false);
                    if (this.by != null) {
                        this.f2457d.getNativeVideoController().ox(this.by.dq);
                    }
                }
                this.f2457d.setVideoAdInteractionListener(this);
                if (!this.l) {
                    this.le = 0L;
                }
                if (this.by != null && this.f2457d.getNativeVideoController() != null) {
                    this.f2457d.getNativeVideoController().ox(this.by.mn);
                    this.f2457d.getNativeVideoController().p(this.by.s);
                }
                if (this.f2457d.getNativeVideoController() != null) {
                    this.f2457d.getNativeVideoController().dq(false);
                    this.f2457d.getNativeVideoController().dq(this.ws);
                    this.f2457d.setIsQuiet(wp.d().p(com.bytedance.sdk.openadsdk.core.ir.c.kk(this.k)));
                }
                if (this.f2457d.dq(this.le, this.ob, wp())) {
                    this.r.setVisibility(0);
                    this.r.removeAllViews();
                    this.r.addView(this.f2457d);
                }
                if (wp()) {
                    this.f2457d.p(true);
                }
                this.ox = this.f2457d.getNativeVideoController();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (q.ox(this.ha.getApplicationContext()) == 0) {
                try {
                    Activity activity = this.ha;
                    Toast.makeText(activity, r.dq(activity, "tt_no_network"), 0).show();
                } catch (Exception unused) {
                }
            }
        }
    }

    private long fw() {
        NativeVideoTsView nativeVideoTsView = this.f2457d;
        if (nativeVideoTsView == null || nativeVideoTsView.getNativeVideoController() == null) {
            return 0L;
        }
        return this.f2457d.getNativeVideoController().q();
    }

    private void gh() {
        j jVar = this.k;
        if (jVar == null || jVar.y() != 4) {
            return;
        }
        ce.dq((View) this.ji, 0);
        String lk = !TextUtils.isEmpty(this.k.lk()) ? this.k.lk() : !TextUtils.isEmpty(this.k.gl()) ? this.k.gl() : !TextUtils.isEmpty(this.k.w()) ? this.k.w() : "";
        ji wq = this.k.wq();
        if (wq != null && wq.dq() != null) {
            ce.dq((View) this.n, 0);
            ce.dq((View) this.bl, 4);
            com.bytedance.sdk.openadsdk.ia.d.dq(wq).dq(this.n);
        } else if (!TextUtils.isEmpty(lk)) {
            ce.dq((View) this.n, 4);
            ce.dq((View) this.bl, 0);
            this.bl.setText(lk.substring(0, 1));
        }
        if (this.op != null && !TextUtils.isEmpty(lk)) {
            this.op.setText(lk);
        }
        if (!TextUtils.isEmpty(this.k.tu())) {
            this.ir.setText(this.k.tu());
        }
        ce.dq((View) this.op, 0);
        if (e()) {
            ce.dq((View) this.ir, 8);
        } else {
            ce.dq((View) this.ir, 0);
        }
    }

    private void h() {
        com.bytedance.sdk.openadsdk.core.q.ox.ox oxVar = this.ds;
        if (oxVar != null) {
            oxVar.ox();
            this.ds = null;
        }
        com.bytedance.sdk.openadsdk.core.q.p pVar = this.vw;
        if (pVar != null) {
            pVar.dq();
            this.vw = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"ClickableViewAccessibility"})
    public void i() {
        int cd = com.bytedance.sdk.openadsdk.core.r.r.cd(this.k);
        j jVar = this.k;
        if (jVar != null) {
            if (jVar.y() == 4 || cd != 0) {
                com.bytedance.sdk.openadsdk.core.o.d.ox dq = com.bytedance.sdk.openadsdk.core.o.s.dq((Context) this.ha, this.k, this.nh, false);
                this.er = dq;
                dq.dq(this.ha);
                com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = this.er;
                if (oxVar instanceof com.bytedance.sdk.openadsdk.core.o.ox.ia) {
                    ((com.bytedance.sdk.openadsdk.core.o.ox.ia) oxVar).ox(true);
                    ((com.bytedance.sdk.openadsdk.core.o.ox.ia) this.er).no().dq(false);
                }
                com.bytedance.sdk.openadsdk.core.d.dq dqVar = new com.bytedance.sdk.openadsdk.core.d.dq(this.ha, this.k, "embeded_ad_landingpage", this.cd);
                this.bu = dqVar;
                ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).ox(true);
                ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) this.bu.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(true);
                ((mn) this.bu.dq(mn.class)).d(true);
                this.er.dq(this.k, false);
                ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) this.bu.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this.er);
            }
        }
    }

    private void ig() {
        j jVar = this.k;
        if (jVar == null || jVar.y() != 4) {
            return;
        }
        this.u.setVisibility(0);
        Button button = (Button) findViewById(2114387734);
        this.f2456c = button;
        if (button != null) {
            d(mp());
            if (this.er != null) {
                if (TextUtils.isEmpty(this.nh)) {
                    com.bytedance.sdk.openadsdk.core.ir.c.dq(this.cd);
                }
                this.er.dq(this.fd, false);
            }
            this.f2456c.setOnClickListener(this.bu);
            this.f2456c.setOnTouchListener(this.bu);
        }
    }

    private void jy() {
        j jVar = this.k;
        if (jVar == null || this.gh == null || !jVar.p()) {
            return;
        }
        this.gh.setVisibility(8);
    }

    private void k() {
        if (this.k == null) {
            return;
        }
        JSONArray ox = ox(this.t);
        int kk = com.bytedance.sdk.openadsdk.core.ir.c.kk(this.k);
        int ia = com.bytedance.sdk.openadsdk.core.ir.c.ia(this.k);
        h<com.bytedance.sdk.openadsdk.core.ig.dq> dq = wp.dq();
        if (ox == null || dq == null || kk <= 0 || ia <= 0) {
            return;
        }
        nh nhVar = new nh();
        nhVar.iw = ox;
        com.bytedance.sdk.openadsdk.f.d.ox.d ds = this.k.ds();
        if (ds == null) {
            return;
        }
        dq.dq(com.bytedance.sdk.openadsdk.core.ir.h.d(ds).ox(6).dq(), nhVar, ia, new h.d() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTVideoWebPageActivity.8
            @Override // com.bytedance.sdk.openadsdk.core.h.d
            public void dq(int i, String str, com.bytedance.sdk.openadsdk.core.r.d dVar) {
                TTVideoWebPageActivity.this.dq(0);
                dVar.dq(i);
                com.bytedance.sdk.openadsdk.core.r.d.dq(dVar);
            }

            @Override // com.bytedance.sdk.openadsdk.core.h.d
            public void dq(com.bytedance.sdk.openadsdk.core.r.dq dqVar, com.bytedance.sdk.openadsdk.core.r.d dVar) {
                if (dqVar != null) {
                    try {
                        TTVideoWebPageActivity.this.yy.set(false);
                        TTVideoWebPageActivity.this.fw.dq(dqVar.ox());
                    } catch (Exception unused) {
                        TTVideoWebPageActivity.this.dq(0);
                    }
                }
            }
        });
    }

    private void kx() {
        String dq = u.dq(this.k);
        if (u.d(this.k)) {
            this.ds = com.bytedance.sdk.openadsdk.core.q.ox.dq.dq().dq(dq, u.p(this.k));
        }
        com.bytedance.sdk.openadsdk.core.q.ox.ox oxVar = this.ds;
        if (oxVar != null) {
            oxVar.dq(false, this.k);
        }
        this.vw = new com.bytedance.sdk.openadsdk.core.q.p(dq);
    }

    private void le() {
        if (this.p == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.k);
        c cVar = new c(this.ha);
        this.fw = cVar;
        cVar.p(this.cv);
        this.fw.d(this.p).dq(this.k).ox(arrayList).d(this.jy).ox(this.f2459f).d(jy.dq(this.k)).ox(this.cd).dq(this.p).dq(true).p(com.bytedance.sdk.openadsdk.core.ir.c.f(this.k));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String mp() {
        j jVar = this.k;
        if (jVar != null && !TextUtils.isEmpty(jVar.tu())) {
            this.jw = this.k.tu();
        }
        return this.jw;
    }

    private JSONArray ox(String str) {
        int i;
        JSONArray jSONArray = this.v;
        if (jSONArray != null && jSONArray.length() > 0) {
            return this.v;
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int indexOf = str.indexOf("?id=");
        int indexOf2 = str.indexOf("&");
        if (indexOf == -1 || indexOf2 == -1 || (i = indexOf + 4) >= indexOf2) {
            return null;
        }
        String substring = str.substring(i, indexOf2);
        if (TextUtils.isEmpty(substring)) {
            return null;
        }
        JSONArray jSONArray2 = new JSONArray();
        jSONArray2.put(substring);
        return jSONArray2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox(j jVar) {
        if (jVar == null) {
            return;
        }
        iw.dq(this.q, jVar.fx(), new iw.dq() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTVideoWebPageActivity.15
            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void d() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void dq() {
                TTVideoWebPageActivity.this.i();
            }

            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void ox() {
            }
        }, jVar.ip());
    }

    private void q() {
        this.ce = (TTProgressBar) findViewById(2114387928);
        this.u = (TTViewStub) findViewById(2114387956);
        this.p = (SSWebView) findViewById(2114387738);
        this.s = (ImageView) findViewById(2114387708);
        j jVar = this.k;
        if (jVar != null && jVar.ez() != null) {
            this.k.ez().dq("landing_page");
        }
        ImageView imageView = this.s;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTVideoWebPageActivity.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (ce.dq(TTVideoWebPageActivity.this.p)) {
                        return;
                    }
                    TTVideoWebPageActivity.this.onBackPressed();
                }
            });
        }
        ImageView imageView2 = (ImageView) findViewById(2114387707);
        this.iw = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTVideoWebPageActivity.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTVideoWebPageActivity.this.dq("detail_skip");
                    TTVideoWebPageActivity.this.finish();
                }
            });
        }
        TextView textView = (TextView) findViewById(2114387630);
        this.ia = textView;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTVideoWebPageActivity.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTVideoWebPageActivity.this.mn();
                }
            });
        }
        this.mn = (TextView) findViewById(2114387952);
        this.kk = (TextView) findViewById(2114387891);
        this.o = (TextView) findViewById(2114387750);
        this.no = (TextView) findViewById(2114387650);
        this.ig = (TextView) findViewById(2114387615);
        this.mp = (LinearLayout) findViewById(2114387895);
        this.r = (FrameLayout) findViewById(2114387711);
        this.gh = (RelativeLayout) findViewById(2114387949);
        this.ji = (RelativeLayout) findViewById(2114387658);
        this.bl = (TextView) findViewById(2114387957);
        this.op = (TextView) findViewById(2114387769);
        this.ir = (TextView) findViewById(2114387689);
        this.n = (RoundImageView) findViewById(2114387667);
        gh();
        jy();
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void r() {
        j jVar = this.k;
        if (jVar == null || jVar.y() != 4) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.o.d.ox dq = com.bytedance.sdk.openadsdk.core.o.s.dq((Context) this.ha, this.k, this.nh, false);
        this.er = dq;
        dq.dq(this.ha);
        this.er.dq(jy.dq(this.k));
        com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = this.er;
        if (oxVar instanceof com.bytedance.sdk.openadsdk.core.o.ox.ia) {
            ((com.bytedance.sdk.openadsdk.core.o.ox.ia) oxVar).ox(true);
        }
        com.bytedance.sdk.openadsdk.core.d.dq dqVar = new com.bytedance.sdk.openadsdk.core.d.dq(this.ha, this.k, "embeded_ad_landingpage", this.cd);
        this.bu = dqVar;
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).ox(true);
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) this.bu.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(true);
        ((mn) this.bu.dq(mn.class)).d(true);
        this.ir.setOnClickListener(this.bu);
        this.ir.setOnTouchListener(this.bu);
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) this.bu.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this.er);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean wp() {
        NativeVideoTsView nativeVideoTsView = this.f2457d;
        if (nativeVideoTsView == null || nativeVideoTsView.getNativeVideoController() == null) {
            return true;
        }
        return this.f2457d.getNativeVideoController().r();
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox.InterfaceC0004ox
    public void K_() {
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox.InterfaceC0004ox
    public void L_() {
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox.InterfaceC0004ox
    public void M_() {
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox.InterfaceC0004ox
    public void N_() {
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox.InterfaceC0004ox
    public void dq(long j, long j2) {
        if (e()) {
            no.ia().dq(j);
        }
    }

    public void dq(String str) {
        NativeVideoTsView nativeVideoTsView = this.f2457d;
        com.bytedance.sdk.openadsdk.core.ig.ox.dq(this.k, "embeded_ad", str, fw(), cd(), (nativeVideoTsView == null || nativeVideoTsView.getNativeVideoController() == null) ? null : com.bytedance.sdk.openadsdk.core.ir.c.dq(this.k, this.f2457d.getNativeVideoController().ig(), this.f2457d.getNativeVideoController().fw()));
    }

    @Override // com.bytedance.sdk.openadsdk.core.jy.p
    public void dq(boolean z, JSONArray jSONArray) {
        if (!z || jSONArray == null || jSONArray.length() <= 0) {
            return;
        }
        this.v = jSONArray;
        k();
    }

    public void ia() {
        com.bytedance.sdk.openadsdk.core.dislike.ui.dq dqVar = new com.bytedance.sdk.openadsdk.core.dislike.ui.dq(this.ha, this.k.ez(), this.nh, true);
        this.dq = dqVar;
        com.bytedance.sdk.openadsdk.core.dislike.ox.dq(this.ha, dqVar, this.k);
        this.dq.dq(new dq.InterfaceC0156dq() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTVideoWebPageActivity.9
            @Override // com.bytedance.sdk.openadsdk.core.dislike.ui.dq.InterfaceC0156dq
            public void d() {
                if (TTVideoWebPageActivity.this.o()) {
                    TTVideoWebPageActivity.this.ox.ia();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.dislike.ui.dq.InterfaceC0156dq
            public void dq() {
                if (TTVideoWebPageActivity.this.kk()) {
                    TTVideoWebPageActivity.this.ox.iw();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.dislike.ui.dq.InterfaceC0156dq
            public void dq(int i, String str, boolean z) {
                if (TTVideoWebPageActivity.this.o()) {
                    TTVideoWebPageActivity.this.ox.ia();
                }
            }
        });
    }

    public void iw() {
        try {
            k.dq(this.xi);
        } catch (Exception unused) {
        }
    }

    public boolean kk() {
        ox oxVar = this.ox;
        return (oxVar == null || oxVar.fw() == null || !this.ox.fw().mp()) ? false : true;
    }

    public void mn() {
        if (isFinishing() || this.k == null) {
            return;
        }
        if (this.dq == null) {
            ia();
        }
        this.dq.dq();
    }

    public boolean no() {
        com.bytedance.sdk.openadsdk.core.dislike.ui.dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.ox();
        }
        return false;
    }

    public boolean o() {
        ox oxVar = this.ox;
        return (oxVar == null || oxVar.fw() == null || !this.ox.fw().q()) ? false : true;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        NativeVideoTsView nativeVideoTsView;
        if ((j.ox(this.k) || op.dq(this.k)) && ce.dq(this.p)) {
            return;
        }
        if (!this.j || (nativeVideoTsView = this.f2457d) == null || nativeVideoTsView.getNativeVideoController() == null) {
            dq("detail_back");
            super.onBackPressed();
        } else {
            ((com.bykv.vk.openvk.component.video.api.p.dq) this.f2457d.getNativeVideoController()).s(null, null);
            this.j = false;
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ig();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.ha = this;
        try {
            getWindow().addFlags(16777216);
        } catch (Throwable unused) {
        }
        try {
            wp.dq(this.ha);
        } catch (Throwable unused2) {
        }
        long currentTimeMillis = System.currentTimeMillis();
        this.gx = q.ox(getApplicationContext());
        setContentView(com.bytedance.sdk.openadsdk.res.s.wn(this.ha));
        this.q = this.ha;
        Intent intent = getIntent();
        this.jy = intent.getStringExtra(MediationConstant.EXTRA_ADID);
        this.f2459f = intent.getStringExtra("log_extra");
        this.cd = intent.getIntExtra(abn.EXTRA_SOURCE, -1);
        this.cv = intent.getBooleanExtra("is_outer_click", false);
        String stringExtra = intent.getStringExtra(abn.EXTRA_TITLE);
        this.nh = intent.getStringExtra("event_tag");
        this.l = intent.getBooleanExtra("video_is_auto_play", true);
        if (bundle != null && bundle.getLong("video_play_position") > 0) {
            this.le = bundle.getLong("video_play_position", 0L);
        }
        String stringExtra2 = intent.getStringExtra("multi_process_data");
        j dq = com.bytedance.sdk.openadsdk.core.ir.c.dq(intent);
        this.k = dq;
        if (dq != null) {
            this.i = dq.gv();
            kx();
        }
        if (stringExtra2 != null) {
            try {
                this.by = com.bytedance.sdk.openadsdk.core.multipro.d.dq.dq(new JSONObject(stringExtra2));
            } catch (Exception unused3) {
            }
            com.bytedance.sdk.openadsdk.core.multipro.d.dq dqVar = this.by;
            if (dqVar != null) {
                this.le = dqVar.mn;
            }
        }
        if (bundle != null) {
            String string = bundle.getString("material_meta");
            if (this.k == null) {
                try {
                    this.k = d.dq(new JSONObject(string));
                } catch (Throwable unused4) {
                }
            }
            long j = bundle.getLong("video_play_position");
            if (j > 0) {
                this.le = j;
            }
        }
        String stringExtra3 = intent.getStringExtra(abn.EXTRA_URL);
        this.t = stringExtra3;
        this.t = com.bytedance.sdk.openadsdk.core.ir.c.d(this.k, stringExtra3);
        q();
        dq(this.k);
        r();
        le();
        dq(4);
        if (this.p != null) {
            com.bytedance.sdk.openadsdk.core.widget.dq.d.dq(this.q).dq(true).d(false).dq(this.p);
            com.bytedance.sdk.openadsdk.core.ig.p p = new com.bytedance.sdk.openadsdk.core.ig.p(this.k, this.p).d(true).d(currentTimeMillis).p(this.p.getWebViewCreateDuration());
            this.uh = p;
            com.bytedance.sdk.openadsdk.core.q.p pVar = this.vw;
            p.dq(pVar == null ? null : pVar.dq);
            j jVar = this.k;
            if (jVar != null && jVar.ha() == 1 && wp.d().er() == 1 && ((q.p(this.q) || wp.d().l() != 1) && com.bytedance.sdk.openadsdk.ig.ox.dq())) {
                this.xz = com.bytedance.sdk.openadsdk.ig.ox.dq(this.k, this.t);
            }
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("adid", this.jy);
            jSONObject.put(abn.EXTRA_URL, this.t);
            jSONObject.put("web_title", stringExtra);
            jSONObject.put("is_multi_process", com.bytedance.sdk.openadsdk.core.multipro.d.ox());
            jSONObject.put("event_tag", this.nh);
        } catch (JSONException unused5) {
        }
        this.uh.dq(jSONObject);
        this.p.setWebViewClient(new com.bytedance.sdk.openadsdk.core.widget.dq.p(this.q, this.fw, this.jy, this.uh, this.xz) { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTVideoWebPageActivity.1
            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                try {
                    if (TTVideoWebPageActivity.this.ce == null || TTVideoWebPageActivity.this.isFinishing()) {
                        return;
                    }
                    TTVideoWebPageActivity.this.ce.setVisibility(8);
                } catch (Throwable unused6) {
                }
            }

            /* JADX WARN: Code restructure failed: missing block: B:4:0x0022, code lost:
            
                return r0;
             */
            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.p, android.webkit.WebViewClient
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
                WebResourceResponse webResourceResponse = null;
                if (webResourceRequest != null) {
                    try {
                        if (com.bytedance.sdk.openadsdk.core.q.p.dq(webResourceRequest.getMethod()) && TTVideoWebPageActivity.this.vw != null) {
                            webResourceResponse = TTVideoWebPageActivity.this.vw.dq(webResourceRequest);
                        }
                    } catch (Throwable unused6) {
                        return super.shouldInterceptRequest(webView, webResourceRequest);
                    }
                }
                return super.shouldInterceptRequest(webView, webResourceRequest);
            }
        });
        SSWebView sSWebView = this.p;
        if (sSWebView != null) {
            com.bytedance.sdk.openadsdk.core.ir.r.dq(sSWebView, com.bytedance.sdk.openadsdk.core.op.f3334d, j.p(this.k));
            this.p.setMixedContentMode(0);
        }
        this.p.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.dq.ox(this.fw, this.uh) { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTVideoWebPageActivity.10
            @Override // com.bytedance.sdk.openadsdk.core.widget.dq.ox, android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i) {
                super.onProgressChanged(webView, i);
                if (TTVideoWebPageActivity.this.ce == null || TTVideoWebPageActivity.this.isFinishing()) {
                    return;
                }
                if (i == 100 && TTVideoWebPageActivity.this.ce.isShown()) {
                    TTVideoWebPageActivity.this.ce.setVisibility(8);
                } else {
                    TTVideoWebPageActivity.this.ce.setProgress(i);
                }
            }
        });
        this.p.setDownloadListener(new DownloadListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTVideoWebPageActivity.11
            @Override // android.webkit.DownloadListener
            public void onDownloadStart(String str, String str2, String str3, String str4, long j2) {
                if (TTVideoWebPageActivity.this.wn.containsKey(str)) {
                    com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = (com.bytedance.sdk.openadsdk.core.o.d.ox) TTVideoWebPageActivity.this.wn.get(str);
                    if (oxVar != null) {
                        oxVar.d(com.bytedance.sdk.openadsdk.core.ir.c.gh(TTVideoWebPageActivity.this.k), false);
                        return;
                    }
                    return;
                }
                if (TTVideoWebPageActivity.this.k != null && TTVideoWebPageActivity.this.k.wq() != null) {
                    j unused6 = TTVideoWebPageActivity.this.k;
                }
                com.bytedance.sdk.openadsdk.core.o.d.ox dq2 = com.bytedance.sdk.openadsdk.core.o.s.dq(TTVideoWebPageActivity.this.ha, str, TTVideoWebPageActivity.this.k, TTVideoWebPageActivity.this.nh);
                dq2.dq(jy.dq(TTVideoWebPageActivity.this.k));
                TTVideoWebPageActivity.this.wn.put(str, dq2);
                dq2.d(com.bytedance.sdk.openadsdk.core.ir.c.gh(TTVideoWebPageActivity.this.k), false);
            }
        });
        TextView textView = this.mn;
        if (textView != null) {
            if (TextUtils.isEmpty(stringExtra)) {
                stringExtra = r.dq(this.ha, "tt_web_title_default");
            }
            textView.setText(stringExtra);
        }
        TextView textView2 = this.no;
        if (textView2 != null) {
            textView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTVideoWebPageActivity.12
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTVideoWebPageActivity tTVideoWebPageActivity = TTVideoWebPageActivity.this;
                    tTVideoWebPageActivity.d(tTVideoWebPageActivity.k);
                }
            });
        }
        TextView textView3 = this.ig;
        if (textView3 != null) {
            textView3.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTVideoWebPageActivity.13
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTVideoWebPageActivity tTVideoWebPageActivity = TTVideoWebPageActivity.this;
                    tTVideoWebPageActivity.ox(tTVideoWebPageActivity.k);
                }
            });
        }
        s();
        f();
        ig();
        com.bytedance.sdk.openadsdk.core.ig.ox.dq(this.k, getClass().getName());
        this.p.setVisibility(0);
        this.uh.ox(System.currentTimeMillis());
        com.bytedance.sdk.openadsdk.core.q.d.dq dqVar2 = new com.bytedance.sdk.openadsdk.core.q.d.dq(this.p, this.t, this.k);
        this.dc = dqVar2;
        dqVar2.dq();
        com.bytedance.sdk.openadsdk.core.ig.ox.d(this.k);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        ViewGroup viewGroup;
        super.onDestroy();
        iw();
        com.bytedance.sdk.openadsdk.core.ig.p pVar = this.uh;
        if (pVar != null) {
            pVar.iw();
        }
        try {
            if (getWindow() != null && (viewGroup = (ViewGroup) getWindow().getDecorView()) != null) {
                viewGroup.removeAllViews();
            }
        } catch (Throwable unused) {
        }
        h();
        SSWebView sSWebView = this.p;
        if (sSWebView != null) {
            com.bytedance.sdk.openadsdk.core.j.dq(this.q, sSWebView);
            com.bytedance.sdk.openadsdk.core.j.dq(this.p);
        }
        this.p = null;
        com.bytedance.sdk.openadsdk.ig.ox oxVar = this.xz;
        if (oxVar != null) {
            oxVar.d();
        }
        com.bytedance.sdk.openadsdk.core.o.d.ox oxVar2 = this.er;
        if (oxVar2 != null) {
            oxVar2.kk();
        }
        Map<String, com.bytedance.sdk.openadsdk.core.o.d.ox> map = this.wn;
        if (map != null) {
            for (Map.Entry<String, com.bytedance.sdk.openadsdk.core.o.d.ox> entry : map.entrySet()) {
                if (entry.getValue() != null) {
                    entry.getValue().kk();
                }
            }
            this.wn.clear();
        }
        c cVar = this.fw;
        if (cVar != null) {
            cVar.u();
        }
        NativeVideoTsView nativeVideoTsView = this.f2457d;
        if (nativeVideoTsView != null && nativeVideoTsView.getNativeVideoController() != null) {
            this.f2457d.getNativeVideoController().o();
        }
        NativeVideoTsView nativeVideoTsView2 = this.f2457d;
        if (nativeVideoTsView2 != null) {
            nativeVideoTsView2.gh();
            this.f2457d = null;
        }
        this.k = null;
        com.bytedance.sdk.openadsdk.core.ig.p pVar2 = this.uh;
        if (pVar2 != null) {
            pVar2.s();
        }
        com.bytedance.sdk.openadsdk.core.q.d.dq dqVar = this.dc;
        if (dqVar != null) {
            dqVar.d();
        }
    }

    @Override // android.app.Activity
    public void onPause() {
        NativeVideoTsView nativeVideoTsView;
        NativeVideoTsView nativeVideoTsView2;
        super.onPause();
        try {
            if (!this.vf && !no()) {
                this.vf = true;
                this.ox.iw();
            }
        } catch (Throwable th) {
            ig.p("TTVideoWebPageActivity", "onPause throw Exception :" + th.getMessage());
        }
        c cVar = this.fw;
        if (cVar != null) {
            cVar.ir();
        }
        Map<String, com.bytedance.sdk.openadsdk.core.o.d.ox> map = this.wn;
        if (map != null) {
            for (Map.Entry<String, com.bytedance.sdk.openadsdk.core.o.d.ox> entry : map.entrySet()) {
                if (entry.getValue() != null) {
                    entry.getValue();
                }
            }
        }
        if (wp() || ((nativeVideoTsView2 = this.f2457d) != null && nativeVideoTsView2.getNativeVideoController() != null && this.f2457d.getNativeVideoController().r())) {
            com.bytedance.sdk.component.mn.dq dq = n.dq("sp_multi_native_video_data");
            dq.dq("key_video_is_update_flag", true);
            dq.dq("key_native_video_complete", true);
            dq.dq("key_video_isfromvideodetailpage", true);
        }
        if (wp() || (nativeVideoTsView = this.f2457d) == null || nativeVideoTsView.getNativeVideoController() == null) {
            return;
        }
        dq(this.f2457d.getNativeVideoController());
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.ob = false;
        if (this.vf && o() && !no()) {
            this.vf = false;
            this.ox.ia();
        }
        c cVar = this.fw;
        if (cVar != null) {
            cVar.op();
            this.fw.dq(new SSWebView.d() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTVideoWebPageActivity.6
                @Override // com.bytedance.sdk.component.widget.SSWebView.d
                public void dq(int i) {
                    TTVideoWebPageActivity.this.fw.dq(i);
                }
            });
        }
        com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = this.er;
        if (oxVar != null) {
            oxVar.ia();
        }
        Map<String, com.bytedance.sdk.openadsdk.core.o.d.ox> map = this.wn;
        if (map != null) {
            for (Map.Entry<String, com.bytedance.sdk.openadsdk.core.o.d.ox> entry : map.entrySet()) {
                if (entry.getValue() != null) {
                    entry.getValue().ia();
                }
            }
        }
        com.bytedance.sdk.openadsdk.core.ig.p pVar = this.uh;
        if (pVar != null) {
            pVar.ox();
        }
        k();
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        j jVar = this.k;
        bundle.putString("material_meta", jVar != null ? jVar.ve().toString() : null);
        bundle.putLong("video_play_position", this.le);
        bundle.putBoolean("is_complete", wp());
        long j = this.le;
        NativeVideoTsView nativeVideoTsView = this.f2457d;
        if (nativeVideoTsView != null && nativeVideoTsView.getNativeVideoController() != null) {
            j = this.f2457d.getNativeVideoController().no();
        }
        bundle.putLong("video_play_position", j);
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        com.bytedance.sdk.openadsdk.core.ig.p pVar = this.uh;
        if (pVar != null) {
            pVar.p();
        }
    }

    public void s() {
        k.dq(this.xi, this.q);
    }
}
