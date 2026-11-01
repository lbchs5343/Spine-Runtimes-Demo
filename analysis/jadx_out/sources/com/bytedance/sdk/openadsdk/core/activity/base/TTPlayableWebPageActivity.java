package com.bytedance.sdk.openadsdk.core.activity.base;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bytedance.sdk.component.utils.e;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.core.d;
import com.bytedance.sdk.openadsdk.core.d.iw;
import com.bytedance.sdk.openadsdk.core.fw.ia;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.ir.i;
import com.bytedance.sdk.openadsdk.core.multipro.d.dq;
import com.bytedance.sdk.openadsdk.core.o.ox.jy;
import com.bytedance.sdk.openadsdk.core.playable.mn;
import com.bytedance.sdk.openadsdk.core.playable.ox;
import com.bytedance.sdk.openadsdk.core.playable.s;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.ji;
import com.bytedance.sdk.openadsdk.core.r.l;
import com.bytedance.sdk.openadsdk.core.r.o;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.widget.PlayableLoadingView;
import com.bytedance.sdk.openadsdk.widget.TTRatingBar;
import com.bytedance.sdk.openadsdk.widget.TTRoundRectImageView;
import g.abn;
import java.util.HashMap;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class TTPlayableWebPageActivity extends Activity implements e.dq, s.dq.InterfaceC0181dq {

    /* renamed from: d, reason: collision with root package name */
    protected ia f2453d;
    com.bytedance.sdk.openadsdk.f.d.d.ia dq;

    /* renamed from: e, reason: collision with root package name */
    private dq f2454e;
    private j fw;
    private boolean gh;
    private mn h;
    private ImageView ia;
    private ox ig;
    private TextView iw;
    private boolean ji;
    private s.dq jy;
    private FrameLayout kk;
    private com.bytedance.sdk.openadsdk.core.d.dq kx;
    private View mn;
    private int mp;
    private boolean n;
    private FrameLayout no;
    private LinearLayout o;
    private LinearLayout op;
    private String q;
    private com.bytedance.sdk.openadsdk.core.o.d.ox r;
    private RelativeLayout s;
    private Activity wp;

    /* renamed from: f, reason: collision with root package name */
    private final String f2455f = "embeded_ad";
    private final e cd = new e(Looper.getMainLooper(), this);
    private int i = 0;
    private boolean le = false;
    private boolean k = true;
    private boolean bl = false;
    protected com.bytedance.sdk.openadsdk.core.d.s ox = new com.bytedance.sdk.openadsdk.core.d.s() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTPlayableWebPageActivity.1
        @Override // com.bytedance.sdk.openadsdk.core.d.s
        public void d() {
            if (ce.p(TTPlayableWebPageActivity.this.op)) {
                return;
            }
            TTPlayableWebPageActivity.this.k = false;
            if (TTPlayableWebPageActivity.this.ig.p()) {
                return;
            }
            TTPlayableWebPageActivity.this.s();
        }

        @Override // com.bytedance.sdk.openadsdk.core.d.s
        public void dq() {
            TTPlayableWebPageActivity.this.gh = true;
        }

        @Override // com.bytedance.sdk.openadsdk.core.d.s
        public void dq(j jVar, boolean z) {
            TTPlayableWebPageActivity.this.gh = true;
            if (TTPlayableWebPageActivity.this.r != null) {
                TTPlayableWebPageActivity.this.r.d(z);
                TTPlayableWebPageActivity.this.r.dq(jVar, false);
            }
        }
    };
    protected com.bytedance.sdk.openadsdk.core.fw.mn p = new com.bytedance.sdk.openadsdk.core.fw.mn() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTPlayableWebPageActivity.3
        @Override // com.bytedance.sdk.openadsdk.core.fw.mn
        public void dq(int i) {
            TTPlayableWebPageActivity.this.dq(i <= 0);
        }
    };

    /* renamed from: com.bytedance.sdk.openadsdk.core.activity.base.TTPlayableWebPageActivity$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] dq;

        static {
            int[] iArr = new int[s.d.values().length];
            dq = iArr;
            try {
                iArr[s.d.STATUS_NEW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                dq[s.d.STATUS_LOADING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                dq[s.d.STATUS_FINISH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                dq[s.d.STATUS_ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private void dq(Bundle bundle) {
        Intent intent = getIntent();
        if (intent != null) {
            this.mp = intent.getIntExtra(abn.EXTRA_SOURCE, -1);
            this.n = intent.getBooleanExtra("is_outer_click", false);
            this.q = intent.getStringExtra(abn.EXTRA_URL);
            String stringExtra = intent.getStringExtra("multi_process_data");
            if (stringExtra != null) {
                try {
                    dq dq = dq.dq(new JSONObject(stringExtra));
                    this.f2454e = dq;
                    if (dq.dq) {
                        dq.mn = 0L;
                    }
                } catch (Exception unused) {
                }
            }
        }
        if (intent != null) {
            this.fw = c.dq(intent);
        }
        if (bundle != null) {
            try {
                this.mp = bundle.getInt(abn.EXTRA_SOURCE, -1);
                this.q = bundle.getString(abn.EXTRA_URL);
                String string = bundle.getString("material_meta", null);
                if (!TextUtils.isEmpty(string)) {
                    this.fw = d.dq(new JSONObject(string));
                }
            } catch (Throwable unused2) {
            }
        }
        j jVar = this.fw;
        if (jVar == null) {
            ig.p("TTPWPActivity", "material is null, no data to display");
            finish();
            return;
        }
        if (jVar.ju()) {
            this.q = i.d(this.fw);
        }
        this.q = c.d(this.fw, this.q);
        try {
            com.bytedance.sdk.openadsdk.core.bl.mn d2 = wp.d();
            j jVar2 = this.fw;
            this.le = d2.dq(jVar2, c.kk(jVar2));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void ia() {
        com.bytedance.sdk.openadsdk.core.o.d.ox dq = com.bytedance.sdk.openadsdk.core.o.s.dq((Context) this.wp, this.fw, "embeded_ad", false);
        this.r = dq;
        dq.dq(jy.dq(this.fw));
        com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = this.r;
        if (oxVar instanceof com.bytedance.sdk.openadsdk.core.o.ox.ia) {
            ((com.bytedance.sdk.openadsdk.core.o.ox.ia) oxVar).ox(true);
        }
        com.bytedance.sdk.openadsdk.core.d.dq dqVar = this.kx;
        if (dqVar != null) {
            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(this.r);
        }
        if (l.p(this.fw)) {
            com.bytedance.sdk.openadsdk.core.o.d.ox oxVar2 = this.r;
            if (oxVar2 instanceof com.bytedance.sdk.openadsdk.core.o.ox.ia) {
                ((com.bytedance.sdk.openadsdk.core.o.ox.ia) oxVar2).no().dq(true);
            } else if (oxVar2 instanceof com.bytedance.sdk.openadsdk.core.o.ox.ig) {
                ((com.bytedance.sdk.openadsdk.core.o.ox.ig) oxVar2).d().dq(true);
            }
            this.r.dq(this.fw, false);
        }
        com.bytedance.sdk.openadsdk.core.o.d.ox oxVar3 = this.r;
        if (oxVar3 instanceof com.bytedance.sdk.openadsdk.core.o.ox.ia) {
            ((com.bytedance.sdk.openadsdk.core.o.ox.ia) oxVar3).ia(true);
        }
        this.r.dq(new com.bytedance.sdk.openadsdk.core.o.d.dq() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTPlayableWebPageActivity.4
            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void d(long j, long j2, String str, String str2) {
                TTPlayableWebPageActivity.this.dq(j, j2, 2);
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void dq() {
                TTPlayableWebPageActivity.this.dq(1, 0);
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void dq(long j, long j2, String str, String str2) {
                TTPlayableWebPageActivity.this.dq(j, j2, 3);
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void dq(long j, String str, String str2) {
                TTPlayableWebPageActivity.this.dq(5, 100);
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void dq(String str, String str2) {
                TTPlayableWebPageActivity.this.dq(6, 100);
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void ox(long j, long j2, String str, String str2) {
                TTPlayableWebPageActivity.this.dq(j, j2, 4);
            }
        });
    }

    private void ig() {
        this.bl = true;
        this.cd.removeMessages(2);
        this.ig.d();
        this.ig.d(this.fw, "embeded_ad");
        s();
    }

    private void iw() {
        s.dq dq = s.dq().dq(wp.getContext(), this.fw);
        this.jy = dq;
        if (dq == null) {
            return;
        }
        dq.dq(this);
        com.bytedance.sdk.openadsdk.core.c kk = this.jy.kk();
        if (kk != null) {
            kk.p(this.n);
        }
    }

    private String jy() {
        j jVar = this.fw;
        return jVar == null ? "立即下载" : TextUtils.isEmpty(jVar.tu()) ? this.fw.y() != 4 ? "查看详情" : "立即下载" : this.fw.tu();
    }

    private void kk() {
        this.i = wp.d().o(String.valueOf(c.kk(this.fw)));
        Message obtain = Message.obtain();
        obtain.what = 1;
        obtain.arg1 = this.i;
        this.cd.sendMessage(obtain);
    }

    private void mn() {
        this.h = new mn("embeded_ad", this, this.fw, 1, null, this.no);
    }

    private void mp() {
        if (!l.wp(this.fw)) {
            this.k = true;
        }
        if (!l.e(this.fw)) {
            this.k = true;
        }
        mn mnVar = this.h;
        if (mnVar != null) {
            mnVar.dq();
        }
        ce.dq((View) this.op, 0);
        s();
    }

    private void no() {
        com.bytedance.sdk.openadsdk.core.d.dq dqVar;
        if (this.gh || !l.no(this.fw) || (dqVar = this.kx) == null) {
            return;
        }
        dqVar.dq(null, new o());
    }

    private void o() {
        this.ig = new ox((PlayableLoadingView) findViewById(2114387914), this.fw);
        this.kk = (FrameLayout) findViewById(2114387614);
        this.iw = (TextView) findViewById(2114387800);
        this.o = (LinearLayout) findViewById(2114387967);
        this.s = (RelativeLayout) findViewById(2114387752);
        this.no = (FrameLayout) findViewById(2114387803);
        ce.dq(this.s, new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTPlayableWebPageActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                com.bytedance.sdk.openadsdk.core.ig.ox.ox(TTPlayableWebPageActivity.this.fw, "embeded_ad", "playable_close", (JSONObject) null);
                if (TTPlayableWebPageActivity.this.jy != null) {
                    TTPlayableWebPageActivity.this.jy.ia();
                }
                TTPlayableWebPageActivity.this.finish();
            }
        }, "mIvCloseLayout");
        View findViewById = findViewById(2114387697);
        this.mn = findViewById;
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTPlayableWebPageActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TTPlayableWebPageActivity.this.d();
            }
        });
        ImageView imageView = (ImageView) findViewById(2114387871);
        this.ia = imageView;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTPlayableWebPageActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TTPlayableWebPageActivity.this.le = !r2.le;
                TTPlayableWebPageActivity tTPlayableWebPageActivity = TTPlayableWebPageActivity.this;
                tTPlayableWebPageActivity.dq(tTPlayableWebPageActivity.le);
            }
        });
        this.kx = new com.bytedance.sdk.openadsdk.core.d.dq(this.wp, this.fw, "embeded_ad", this.mp) { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTPlayableWebPageActivity.8
            @Override // com.bytedance.sdk.openadsdk.core.d.d, com.bytedance.sdk.openadsdk.core.d.p
            public void dq(View view, o oVar) {
                super.dq(view, oVar);
                TTPlayableWebPageActivity.this.gh = true;
                HashMap hashMap = new HashMap();
                hashMap.put("playable_url", TTPlayableWebPageActivity.this.q);
                com.bytedance.sdk.openadsdk.core.ig.ox.kk(TTPlayableWebPageActivity.this.fw, this.ox, "click_playable_download_button_loading", hashMap);
            }
        };
        if (this.fw.y() == 4) {
            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) this.kx.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).d(-1);
        }
    }

    private Message ox(int i) {
        Message obtain = Message.obtain();
        obtain.what = 2;
        obtain.arg1 = i;
        return obtain;
    }

    private void q() {
        TTPlayableWebPageActivity tTPlayableWebPageActivity;
        String valueOf;
        this.op = (LinearLayout) findViewById(2114387751);
        ImageView imageView = (TTRoundRectImageView) findViewById(2114387808);
        TextView textView = (TextView) findViewById(2114387701);
        TTRatingBar tTRatingBar = (TTRatingBar) findViewById(2114387922);
        TextView textView2 = (TextView) findViewById(2114387898);
        TextView textView3 = (TextView) findViewById(2114387628);
        TextView textView4 = (TextView) findViewById(2114387753);
        if (tTRatingBar != null) {
            tTRatingBar.setStarEmptyNum(1);
            tTRatingBar.setStarFillNum(4);
            tTRatingBar.setStarImageWidth(ce.ox(this.wp, 16.0f));
            tTRatingBar.setStarImageHeight(ce.ox(this.wp, 16.0f));
            tTRatingBar.setStarImagePadding(ce.ox(this.wp, 4.0f));
            tTRatingBar.dq();
        }
        if (imageView != null) {
            ji wq = this.fw.wq();
            if (wq == null || TextUtils.isEmpty(wq.dq())) {
                imageView.setImageDrawable(r.ox(this.wp, "tt_ad_logo_small"));
            } else {
                com.bytedance.sdk.openadsdk.ia.d.dq(wq).dq(imageView);
            }
        }
        if (textView != null) {
            if (this.fw.gm() == null || TextUtils.isEmpty(this.fw.gm().ox())) {
                textView.setText(this.fw.lk());
            } else {
                textView.setText(this.fw.gm().ox());
            }
        }
        if (textView2 != null) {
            int iw = this.fw.gm() != null ? this.fw.gm().iw() : 6870;
            String dq = r.dq(this.wp, "tt_comment_num_backup");
            if (iw > 10000) {
                valueOf = (iw / 10000) + "万";
            } else {
                valueOf = String.valueOf(iw);
            }
            textView2.setText(String.format(dq, valueOf));
        }
        if (textView4 != null) {
            ce.dq(textView4, this.fw);
        }
        if (textView3 != null) {
            textView3.setText(jy());
            tTPlayableWebPageActivity = this;
            com.bytedance.sdk.openadsdk.core.d.dq dqVar = new com.bytedance.sdk.openadsdk.core.d.dq(this.wp, this.fw, "embeded_ad", this.mp) { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTPlayableWebPageActivity.9
                @Override // com.bytedance.sdk.openadsdk.core.d.d, com.bytedance.sdk.openadsdk.core.d.p
                public void dq(View view, o oVar) {
                    super.dq(view, oVar);
                    TTPlayableWebPageActivity.this.gh = true;
                }
            };
            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).d(-1);
            ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq(tTPlayableWebPageActivity.r);
            textView3.setOnClickListener(dqVar);
        } else {
            tTPlayableWebPageActivity = this;
        }
        if (imageView != null) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) imageView.getLayoutParams();
            layoutParams.setMargins(0, ce.ox(tTPlayableWebPageActivity.wp, 50.0f), 0, 0);
            imageView.setLayoutParams(layoutParams);
        }
    }

    public void d() {
        if (this.fw == null || isFinishing()) {
            return;
        }
        if (this.dq == null) {
            com.bytedance.sdk.openadsdk.core.dislike.ui.dq dqVar = new com.bytedance.sdk.openadsdk.core.dislike.ui.dq(this.wp, this.fw.ez(), "embeded_ad", true);
            this.dq = dqVar;
            com.bytedance.sdk.openadsdk.core.dislike.ox.dq(this.wp, dqVar, this.fw);
        }
        this.dq.dq();
    }

    @Override // com.bytedance.sdk.openadsdk.core.playable.s.dq.InterfaceC0181dq
    public void d(int i) {
        if (l.mn(this.fw)) {
            this.ig.dq(i);
        }
    }

    public void dq() {
        if (this.ig == null) {
            return;
        }
        if (!l.mn(this.fw)) {
            s();
            this.ig.d();
            return;
        }
        this.ig.ox();
        this.ig.dq(this.fw, "embeded_ad");
        this.ig.dq(this.kx);
        if (l.kk(this.fw)) {
            this.cd.sendMessageDelayed(ox(2), ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.playable.s.dq.InterfaceC0181dq
    public void dq(int i) {
        if (i == 0) {
            this.cd.sendMessageDelayed(ox(0), 1000L);
        } else if (i == 1) {
            this.cd.sendMessage(ox(1));
        } else {
            if (i != 3) {
                return;
            }
            this.cd.sendMessage(ox(3));
        }
    }

    public void dq(int i, int i2) {
        if (isFinishing()) {
            return;
        }
        this.jy.dq(i, i2);
    }

    public void dq(long j, long j2, int i) {
        if (!isFinishing() && j > 0) {
            this.jy.dq(i, (int) ((j2 * 100) / j));
        }
    }

    @Override // com.bytedance.sdk.component.utils.e.dq
    public void dq(Message message) {
        int i = message.what;
        if (i == 1) {
            int i2 = message.arg1;
            if (i2 <= 0) {
                ce.dq((View) this.iw, 8);
                ce.dq((View) this.s, 0);
                return;
            }
            ce.dq((View) this.iw, 0);
            ce.dq(this.iw, i2 + "s");
            Message obtain = Message.obtain();
            obtain.what = 1;
            obtain.arg1 = i2 - 1;
            this.cd.sendMessageDelayed(obtain, 1000L);
            return;
        }
        if (i != 2) {
            return;
        }
        int i3 = message.arg1;
        if (i3 == 0) {
            this.jy.dq(i3);
            if (this.ji) {
                this.jy.ox(true);
            }
            ig();
            return;
        }
        if (i3 == 1) {
            if (this.ji) {
                this.jy.ox(true);
            }
            ig();
        } else if (i3 == 2) {
            mp();
            this.jy.dq(message.arg1);
            ig();
        } else {
            if (i3 != 3) {
                return;
            }
            mp();
            ig();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.playable.s.dq.InterfaceC0181dq
    public void dq(SSWebView sSWebView) {
        if (sSWebView != null) {
            try {
                ViewGroup viewGroup = (ViewGroup) sSWebView.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(sSWebView);
                }
            } catch (Exception unused) {
            }
        }
        ViewGroup.LayoutParams layoutParams = sSWebView.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = -1;
            layoutParams.width = -1;
            sSWebView.setLayoutParams(layoutParams);
        }
        this.kk.addView(sSWebView);
        s.dq dqVar = this.jy;
        if (dqVar == null) {
            return;
        }
        int i = AnonymousClass2.dq[dqVar.dq().ordinal()];
        if (i == 1 || i == 2) {
            this.ig.dq(this.jy.d());
        } else if (i == 3) {
            s();
            this.ig.d();
        } else if (i == 4) {
            this.ig.d();
            mp();
        }
        if (this.jy.mn()) {
            dq();
        }
        mn mnVar = this.h;
        if (mnVar != null) {
            dq dqVar2 = this.f2454e;
            mnVar.dq(dqVar2 == null ? 0L : dqVar2.mn, this.le);
        }
        jy.dq(this.fw, (ViewGroup) this.o, (Context) this.wp, "embeded_ad", true, new iw() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTPlayableWebPageActivity.10
            @Override // com.bytedance.sdk.openadsdk.core.d.iw
            public void d() {
                TTPlayableWebPageActivity.this.k = false;
                TTPlayableWebPageActivity.this.s();
            }

            @Override // com.bytedance.sdk.openadsdk.core.d.iw
            public void dq() {
                TTPlayableWebPageActivity.this.k = true;
                TTPlayableWebPageActivity.this.s();
            }
        }, true);
    }

    public void dq(boolean z) {
        try {
            this.le = z;
            this.ia.setImageDrawable(z ? r.ox(this.wp, "tt_mute") : r.ox(this.wp, "tt_unmute"));
            s.dq dqVar = this.jy;
            if (dqVar != null) {
                dqVar.dq(z);
            }
            mn mnVar = this.h;
            if (mnVar != null) {
                mnVar.dq(z);
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.playable.s.dq.InterfaceC0181dq
    public Activity getActivity() {
        return this.wp;
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.wp = this;
        try {
            requestWindowFeature(1);
            getWindow().addFlags(16777216);
            wp.dq(this.wp);
        } catch (Throwable unused) {
        }
        dq(bundle);
        j jVar = this.fw;
        if (jVar == null) {
            return;
        }
        int o = l.o(jVar);
        if (o == 0) {
            setRequestedOrientation(14);
        } else if (o == 1) {
            setRequestedOrientation(1);
        } else if (o == 2) {
            setRequestedOrientation(0);
        }
        setContentView(com.bytedance.sdk.openadsdk.res.s.fd(this));
        o();
        mn();
        ia();
        q();
        kk();
        iw();
        com.bytedance.sdk.openadsdk.core.ig.ox.dq(this.fw, getClass().getName());
        ia iaVar = new ia(getApplicationContext());
        this.f2453d = iaVar;
        iaVar.dq(this.p);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        ViewGroup viewGroup;
        super.onDestroy();
        this.cd.removeCallbacksAndMessages(null);
        try {
            if (getWindow() != null && (viewGroup = (ViewGroup) getWindow().getDecorView()) != null) {
                viewGroup.removeAllViews();
            }
        } catch (Throwable unused) {
        }
        s.dq dqVar = this.jy;
        if (dqVar != null) {
            dqVar.ox();
        }
        no();
        mn mnVar = this.h;
        if (mnVar != null) {
            mnVar.p();
        }
        this.f2453d = null;
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.ji = false;
        s.dq dqVar = this.jy;
        if (dqVar != null) {
            dqVar.p();
        }
        ia iaVar = this.f2453d;
        if (iaVar != null) {
            iaVar.unregisterReceiver();
            this.f2453d.dq((com.bytedance.sdk.openadsdk.core.fw.mn) null);
        }
        mn mnVar = this.h;
        if (mnVar != null) {
            mnVar.d();
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.ji = true;
        s.dq dqVar = this.jy;
        if (dqVar != null) {
            dqVar.d(this.bl);
        }
        ia iaVar = this.f2453d;
        if (iaVar != null) {
            iaVar.dq(this.p);
            this.f2453d.registerReceiver();
            if (this.f2453d.d() == 0) {
                this.le = true;
            }
            dq(this.le);
        }
        mn mnVar = this.h;
        if (mnVar != null) {
            mnVar.ox();
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        try {
            j jVar = this.fw;
            bundle.putString("material_meta", jVar != null ? jVar.ve().toString() : null);
            bundle.putInt(abn.EXTRA_SOURCE, this.mp);
            bundle.putString(abn.EXTRA_URL, this.q);
            bundle.putString("event_tag", "embeded_ad");
        } catch (Throwable unused) {
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        s.dq dqVar = this.jy;
        if (dqVar != null) {
            dqVar.s();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.playable.s.dq.InterfaceC0181dq
    public com.bytedance.sdk.openadsdk.core.d.s ox() {
        return this.ox;
    }

    @Override // com.bytedance.sdk.openadsdk.core.playable.s.dq.InterfaceC0181dq
    public void p() {
        this.kk.removeAllViews();
    }

    public void s() {
        com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = this.r;
        if (oxVar != null) {
            if (oxVar instanceof com.bytedance.sdk.openadsdk.core.o.ox.ia) {
                ((com.bytedance.sdk.openadsdk.core.o.ox.ia) oxVar).no().dq(this.k);
            } else if (oxVar instanceof com.bytedance.sdk.openadsdk.core.o.ox.ig) {
                ((com.bytedance.sdk.openadsdk.core.o.ox.ig) oxVar).d().dq(this.k);
            }
        }
    }
}
