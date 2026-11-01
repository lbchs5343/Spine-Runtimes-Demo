package com.bytedance.sdk.openadsdk.core.activity.base;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.e;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.dislike.ox;
import com.bytedance.sdk.openadsdk.core.dislike.ui.dq;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.o.ox.s;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.uh;
import com.bytedance.sdk.openadsdk.core.ugeno.kk;
import com.bytedance.sdk.openadsdk.core.ugeno.o.d;
import com.bytedance.sdk.openadsdk.core.ugeno.o.p;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.res.layout.TTViewStub;
import g.abn;
import g.awf;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class TTNativePageActivity extends Activity implements e.dq {

    /* renamed from: d, reason: collision with root package name */
    private static WeakReference<s> f2448d;
    private Activity cd;
    dq dq;

    /* renamed from: e, reason: collision with root package name */
    private boolean f2449e;

    /* renamed from: f, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.core.ig.s f2450f;
    private FrameLayout gh;
    private int h;
    private d i;
    private TTViewStub ia;
    private ImageView ig;
    private TextView iw;
    private int ji;
    private j jy;
    private boolean k;
    private TTViewStub kk;
    private boolean kx;
    private com.bytedance.sdk.openadsdk.core.ugeno.p.dq le;
    private Context mn;
    private int mp;
    private long n;
    private TTViewStub no;
    private TTViewStub o;
    private ImageView ox;
    private ImageView p;
    private String q;
    private p r;
    private TextView s;
    private FrameLayout wp;
    private AtomicBoolean fw = new AtomicBoolean(true);
    private boolean bl = true;
    private final e op = new e(Looper.getMainLooper(), this);
    private String ir = "立即下载";

    private void d(int i) {
        if (ig()) {
            ce.dq((View) this.p, 4);
        } else {
            if (this.p == null || !ig()) {
                return;
            }
            ce.dq((View) this.p, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(int i) {
        WeakReference<s> weakReference;
        Intent intent = getIntent();
        if (intent == null) {
            return;
        }
        if (!intent.getBooleanExtra("is_replace_dialog", false) || (weakReference = f2448d) == null || weakReference.get() == null) {
            Intent intent2 = (j.d(this.jy) && c.s(this.jy)) ? new Intent(this, (Class<?>) TTVideoWebPageActivity.class) : new Intent(this, (Class<?>) TTWebPageActivity.class);
            intent2.putExtras(intent);
            try {
                com.bytedance.sdk.component.utils.d.dq(this.cd, intent2, null);
            } catch (Throwable th) {
                ig.d("TTNativePageActivity", th);
            }
        } else {
            f2448d.get().iw(false);
            f2448d.get().d(c.gh(this.jy), false);
            f2448d = null;
        }
        finish();
    }

    public static void dq(s sVar) {
        f2448d = new WeakReference<>(sVar);
    }

    private com.bytedance.sdk.openadsdk.core.multipro.d.dq ia() {
        String stringExtra = getIntent().getStringExtra("multi_process_data");
        if (TextUtils.isEmpty(stringExtra)) {
            return null;
        }
        try {
            return com.bytedance.sdk.openadsdk.core.multipro.d.dq.dq(new JSONObject(stringExtra));
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private boolean ig() {
        return j.ox(this.jy);
    }

    private void iw() {
        this.kx = uh.gh(this.jy);
        boolean cd = uh.cd(this.jy);
        this.f2449e = cd;
        if (this.kx) {
            if (!com.bytedance.sdk.openadsdk.core.mn.p.p) {
                this.f2449e = false;
            } else if (cd) {
                this.kx = false;
            }
        }
    }

    private void kk() {
        com.bytedance.sdk.openadsdk.core.ugeno.mn.dq gh = this.jy.gh();
        if (gh == null) {
            return;
        }
        int p = gh.p();
        if (p == 2) {
            p pVar = new p(this.mn, this.gh, this.f2450f, this.jy, this.q, this.mp);
            this.r = pVar;
            pVar.mp();
            return;
        }
        if (p == 3) {
            d dVar = new d(this.mn, this.gh, this.f2450f, this.jy, this.q, this.mp);
            this.i = dVar;
            dVar.d(false);
            this.i.mp();
            if (TextUtils.equals(gh.dq(), "3")) {
                return;
            }
            final ImageView imageView = new ImageView(this.mn);
            float ox = ce.ox(this.mn, 18.0f);
            float ox2 = ce.ox(this.mn, 18.0f);
            int i = (int) ox;
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i, i);
            layoutParams.gravity = 53;
            int i2 = (int) ox2;
            layoutParams.setMargins(i2, i2, i2, i2);
            this.wp.addView(imageView, layoutParams);
            imageView.setImageDrawable(r.ox(this.mn, "tt_unmute"));
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTNativePageActivity.this.k = !r2.k;
                    imageView.setImageDrawable(TTNativePageActivity.this.k ? r.ox(TTNativePageActivity.this.mn, "tt_mute") : r.ox(TTNativePageActivity.this.mn, "tt_unmute"));
                    TTNativePageActivity.this.i.ox(TTNativePageActivity.this.k);
                }
            });
        }
    }

    private void mn() {
        if (!kk.ia(this.jy)) {
            kk();
            return;
        }
        com.bytedance.sdk.openadsdk.core.ugeno.p.dq dqVar = new com.bytedance.sdk.openadsdk.core.ugeno.p.dq(this, this.gh, this.f2450f, this.jy, this.q, this.mp, ia());
        this.le = dqVar;
        dqVar.dq(new com.bytedance.sdk.openadsdk.core.ugeno.s.dq() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity.1
            @Override // com.bytedance.sdk.openadsdk.core.ugeno.s.dq
            public void dq(int i) {
                TTNativePageActivity.this.dq(i);
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.s.dq
            public void dq(View view) {
            }
        });
        this.le.dq();
    }

    private void mp() {
        this.h = 0;
        if (this.f2449e) {
            this.h = com.bytedance.sdk.openadsdk.core.mn.p.dq;
        } else if (this.kx && !com.bytedance.sdk.openadsdk.core.mn.p.p) {
            this.h = uh.q(this.jy);
        }
        ox(this.h);
        if (this.h > 0 && !this.op.hasMessages(10)) {
            if (this.f2449e) {
                this.op.sendEmptyMessageDelayed(10, 1000L);
            } else if (this.kx) {
                this.op.sendEmptyMessageDelayed(10, 1000L);
            }
        }
    }

    private boolean no() {
        return this.f2449e || this.kx;
    }

    private void o() {
        TTViewStub tTViewStub;
        this.wp = (FrameLayout) findViewById(2114387637);
        this.gh = (FrameLayout) findViewById(2114387723);
        this.no = (TTViewStub) findViewById(2114387956);
        this.ia = (TTViewStub) findViewById(2114387775);
        this.kk = (TTViewStub) findViewById(2114387797);
        TTViewStub tTViewStub2 = (TTViewStub) findViewById(2114387939);
        this.o = tTViewStub2;
        if (this.f2449e || this.kx) {
            if (tTViewStub2 != null) {
                tTViewStub2.setVisibility(0);
            }
            this.ig = (ImageView) findViewById(2114387848);
        } else {
            int r = no.ia().r();
            if (r == 0) {
                TTViewStub tTViewStub3 = this.ia;
                if (tTViewStub3 != null) {
                    tTViewStub3.setVisibility(0);
                }
            } else if (r == 1 && (tTViewStub = this.kk) != null) {
                tTViewStub.setVisibility(0);
            }
        }
        ImageView imageView = (ImageView) findViewById(2114387708);
        this.ox = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTNativePageActivity.this.finish();
                }
            });
        }
        ImageView imageView2 = (ImageView) findViewById(2114387707);
        this.p = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTNativePageActivity.this.finish();
                }
            });
        }
        this.s = (TextView) findViewById(2114387952);
        TextView textView = (TextView) findViewById(2114387630);
        this.iw = textView;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTNativePageActivity.this.dq();
                }
            });
        }
    }

    private void ox(int i) {
        if (i <= 0) {
            if (this.f2449e) {
                ce.dq(this.s, "领取成功");
                return;
            } else {
                if (this.kx) {
                    ce.dq((View) this.ig, 8);
                    ce.dq(this.s, "恭喜你！福利已领取");
                    return;
                }
                return;
            }
        }
        if (this.f2449e) {
            ce.dq(this.s, i + "s后可领取奖励");
            return;
        }
        if (this.kx) {
            SpannableString spannableString = new SpannableString(awf.b(i, "浏览 ", "秒 获得更多福利"));
            spannableString.setSpan(new ForegroundColorSpan(-65536), spannableString.length() - 4, spannableString.length(), 17);
            ce.dq(this.s, spannableString);
        }
    }

    private void s() {
        j jVar = this.jy;
        if (jVar == null || jVar.gh() == null || this.jy.gh().p() != 3) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.playable.p.dq().dq(this.jy);
    }

    public void d() {
        dq dqVar = new dq(this.cd, this.jy.ez(), this.q, true);
        this.dq = dqVar;
        ox.dq(this.cd, dqVar, this.jy);
        this.dq.dq(new dq.InterfaceC0156dq() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity.7
            @Override // com.bytedance.sdk.openadsdk.core.dislike.ui.dq.InterfaceC0156dq
            public void d() {
                TTNativePageActivity.this.p();
            }

            @Override // com.bytedance.sdk.openadsdk.core.dislike.ui.dq.InterfaceC0156dq
            public void dq() {
                TTNativePageActivity.this.ox();
            }

            @Override // com.bytedance.sdk.openadsdk.core.dislike.ui.dq.InterfaceC0156dq
            public void dq(int i, String str, boolean z) {
                TTNativePageActivity.this.p();
            }
        });
    }

    public void dq() {
        if (this.jy == null || isFinishing()) {
            return;
        }
        if (this.dq == null) {
            d();
        }
        this.dq.dq();
    }

    @Override // com.bytedance.sdk.component.utils.e.dq
    public void dq(Message message) {
        if (message.what == 10 && no()) {
            int i = this.ji + 1;
            this.ji = i;
            if (this.f2449e) {
                com.bytedance.sdk.openadsdk.core.mn.p.f3170d = i;
            }
            int max = Math.max(0, this.h - i);
            ox(max);
            if (max <= 0 && this.kx) {
                com.bytedance.sdk.openadsdk.core.mn.p.p = true;
            }
            this.op.sendEmptyMessageDelayed(10, 1000L);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setRequestedOrientation(1);
        this.cd = this;
        this.mn = this;
        getWindow().addFlags(1024);
        try {
            wp.dq(this.cd);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        setContentView(com.bytedance.sdk.openadsdk.res.s.er(this.mn));
        this.n = System.currentTimeMillis();
        Intent intent = getIntent();
        this.mp = intent.getIntExtra(abn.EXTRA_SOURCE, -1);
        String stringExtra = intent.getStringExtra(abn.EXTRA_TITLE);
        this.q = intent.getStringExtra("event_tag");
        this.jy = c.dq(intent);
        s();
        iw();
        o();
        j jVar = this.jy;
        if (jVar != null && jVar.ez() != null) {
            this.jy.ez().dq("landing_page");
        }
        com.bytedance.sdk.openadsdk.core.ig.s sVar = new com.bytedance.sdk.openadsdk.core.ig.s(this.jy);
        this.f2450f = sVar;
        sVar.dq(true);
        this.f2450f.dq();
        if (this.jy != null) {
            mn();
        }
        TextView textView = this.s;
        if (textView != null && !this.f2449e && !this.kx) {
            if (TextUtils.isEmpty(stringExtra)) {
                stringExtra = r.dq(this.cd, "tt_web_title_default");
            }
            textView.setText(stringExtra);
        }
        d(4);
        com.bytedance.sdk.openadsdk.core.ig.ox.dq(this.jy, getClass().getName());
        if (this.f2449e || this.kx) {
            mp();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        ViewGroup viewGroup;
        super.onDestroy();
        try {
            if (getWindow() != null && (viewGroup = (ViewGroup) getWindow().getDecorView()) != null) {
                viewGroup.removeAllViews();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        com.bytedance.sdk.openadsdk.core.ugeno.p.dq dqVar = this.le;
        if (dqVar != null) {
            dqVar.p();
        }
        d dVar = this.i;
        if (dVar != null) {
            dVar.f();
        }
        com.bytedance.sdk.openadsdk.core.ig.s sVar = this.f2450f;
        if (sVar != null) {
            sVar.p();
        }
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        com.bytedance.sdk.openadsdk.core.ugeno.p.dq dqVar = this.le;
        if (dqVar != null) {
            dqVar.d();
        }
        ox();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        com.bytedance.sdk.openadsdk.core.ig.s sVar = this.f2450f;
        if (sVar != null) {
            sVar.ox();
        }
        p();
        com.bytedance.sdk.openadsdk.core.ugeno.p.dq dqVar = this.le;
        if (dqVar != null) {
            dqVar.ox();
        }
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        com.bytedance.sdk.openadsdk.core.ig.s sVar = this.f2450f;
        if (sVar != null) {
            sVar.dq(0);
        }
        if (this.bl) {
            this.bl = false;
            final JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("start", this.n);
                jSONObject.put("end", System.currentTimeMillis());
                com.bytedance.sdk.openadsdk.s.dq.dq(jSONObject, this.jy);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            com.bytedance.sdk.openadsdk.core.ig.ox.dq(this.jy, "landingpage", "agg_stay_page", new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity.6
                @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
                public void dq(JSONObject jSONObject2) throws JSONException {
                    jSONObject2.put("ad_extra_data", jSONObject);
                }
            });
        }
    }

    public void ox() {
        if (no()) {
            this.op.removeMessages(10);
        }
    }

    public void p() {
        if (!no() || this.op.hasMessages(10)) {
            return;
        }
        this.op.sendEmptyMessageDelayed(10, 1000L);
    }
}
