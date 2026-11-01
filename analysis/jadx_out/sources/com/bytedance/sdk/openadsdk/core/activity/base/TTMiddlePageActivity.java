package com.bytedance.sdk.openadsdk.core.activity.base;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.ig.ox;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.ir.h;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressVideoView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.k;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.f.d.d.jy;
import com.bytedance.sdk.openadsdk.f.d.ox.d;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class TTMiddlePageActivity extends Activity {

    /* renamed from: d, reason: collision with root package name */
    private jy f2447d;
    private LinearLayout dq;
    private boolean iw = false;
    private Activity mn;
    private j ox;
    private d p;
    private com.bytedance.sdk.openadsdk.core.d.d s;

    private d d(j jVar) {
        float f2;
        if (jVar == null || jVar.dn() == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(c.kk(jVar));
        String sb2 = sb.toString();
        float p = ce.p(this.mn, ce.p((Context) r1));
        try {
            f2 = ce.no(getApplicationContext());
        } catch (Throwable unused) {
            f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }
        int k = jVar.ds() != null ? jVar.ds().k() : 0;
        Activity activity = this.mn;
        return h.dq(k, sb2, p, ce.p(activity, ce.s((Context) activity) - f2));
    }

    public static boolean d(Context context, j jVar) {
        if (context == null || !dq(jVar)) {
            return false;
        }
        String jSONObject = jVar.ve().toString();
        Intent intent = new Intent(context, (Class<?>) TTMiddlePageActivity.class);
        intent.putExtra("middle_page_material_meta", jSONObject);
        com.bytedance.sdk.component.utils.d.dq(context, intent, null);
        return true;
    }

    public static boolean dq(Context context, j jVar) {
        if (jVar != null && context != null) {
            boolean z = jVar.ri() == 1;
            j.dq g2 = jVar.g();
            if (z && g2 != null) {
                String jSONObject = jVar.ve().toString();
                Intent intent = new Intent(context, (Class<?>) TTMiddlePageActivity.class);
                intent.putExtra("middle_page_material_meta", jSONObject);
                com.bytedance.sdk.component.utils.d.dq(context, intent, null);
                return true;
            }
        }
        return false;
    }

    public static boolean dq(j jVar) {
        if (jVar == null) {
            return false;
        }
        return (jVar.ri() == 2) && jVar.g() != null;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        com.bytedance.sdk.openadsdk.core.c jsObject;
        super.onCreate(bundle);
        this.mn = this;
        LinearLayout linearLayout = new LinearLayout(this.mn);
        linearLayout.setOrientation(1);
        linearLayout.setId(2114387714);
        linearLayout.setBackgroundColor(-16777216);
        setContentView(linearLayout, new ViewGroup.LayoutParams(-1, -1));
        Intent intent = getIntent();
        if (intent != null) {
            try {
                j dq = com.bytedance.sdk.openadsdk.core.d.dq(new JSONObject(intent.getStringExtra("middle_page_material_meta")));
                this.ox = dq;
                d d2 = d(dq);
                this.p = d2;
                this.f2447d = new k(this.mn, this.ox, d2);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        jy jyVar = this.f2447d;
        if (jyVar == null) {
            finish();
            return;
        }
        View dq2 = jyVar.dq();
        if (dq2 == null) {
            finish();
            return;
        }
        this.dq = (LinearLayout) findViewById(2114387714);
        if (dq2 instanceof NativeExpressVideoView) {
            this.s = ((NativeExpressVideoView) dq2).getClickListener();
        } else if (dq2 instanceof NativeExpressView) {
            this.s = ((NativeExpressView) dq2).getClickListener();
        }
        j jVar = this.ox;
        if (jVar != null && jVar.ri() == 2 && (dq2 instanceof NativeExpressView) && (jsObject = ((NativeExpressView) dq2).getJsObject()) != null) {
            jsObject.dq(this.p);
        }
        this.f2447d.dq(true);
        this.dq.removeAllViews();
        this.dq.addView(dq2);
        this.f2447d.dq(new com.bytedance.sdk.openadsdk.e.dq.d.dq.d(null) { // from class: com.bytedance.sdk.openadsdk.core.activity.base.TTMiddlePageActivity.1
            @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.d
            public void d(View view, int i) {
            }

            @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.d
            public void dq(View view, float f2, float f3) {
                if (TTMiddlePageActivity.this.isFinishing() || TTMiddlePageActivity.this.ox == null) {
                    return;
                }
                ox.ox(TTMiddlePageActivity.this.ox, "feed_video_middle_page", "middle_page_show");
            }

            @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.d
            public void dq(View view, int i) {
            }

            @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.d
            public void dq(View view, String str, int i) {
                if (TTMiddlePageActivity.this.iw) {
                    return;
                }
                if (TTMiddlePageActivity.this.ox != null && TTMiddlePageActivity.this.ox.ri() == 1 && TTMiddlePageActivity.this.s != null) {
                    TTMiddlePageActivity.this.iw = true;
                    com.bytedance.sdk.openadsdk.core.d.dq.dq.d dVar = (com.bytedance.sdk.openadsdk.core.d.dq.dq.d) TTMiddlePageActivity.this.s.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class);
                    if (dVar != null) {
                        dVar.ox().ox();
                    }
                }
                TTMiddlePageActivity.this.finish();
            }
        });
        this.f2447d.p();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        jy jyVar = this.f2447d;
        if (jyVar != null) {
            jyVar.s();
            this.f2447d = null;
        }
        if (this.ox != null) {
            this.ox = null;
        }
    }
}
