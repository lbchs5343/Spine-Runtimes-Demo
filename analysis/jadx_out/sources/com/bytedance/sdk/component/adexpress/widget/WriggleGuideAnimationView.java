package com.bytedance.sdk.component.adexpress.widget;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.dynamic.ox.o;
import com.bytedance.sdk.component.utils.i;
import g.gkb;

/* loaded from: classes.dex */
public class WriggleGuideAnimationView extends LinearLayout {

    /* renamed from: d, reason: collision with root package name */
    private i f1828d;
    private TextView dq;
    private boolean ia;
    private gkb iw;
    private o mn;
    private TextView ox;
    private dq p;
    private LinearLayout s;

    public interface dq {
        void dq();
    }

    public WriggleGuideAnimationView(Context context, View view, o oVar, boolean z) {
        super(context);
        this.mn = oVar;
        this.ia = z;
        dq(context, view);
    }

    private void dq(Context context, View view) {
        setClipChildren(false);
        addView(view);
        this.s = (LinearLayout) findViewById(2097610722);
        this.dq = (TextView) findViewById(2097610719);
        this.ox = (TextView) findViewById(2097610718);
        gkb gkbVar = (gkb) findViewById(2097610706);
        this.iw = gkbVar;
        gkbVar.setAnimation("lottie_json/twist_multi_angle.json");
        this.iw.setImageAssetsFolder("images/");
        this.iw.dq(true);
    }

    public void dq() {
        postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.widget.WriggleGuideAnimationView.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WriggleGuideAnimationView.this.iw.dq();
                } catch (Throwable unused) {
                }
            }
        }, 500L);
    }

    public TextView getTopTextView() {
        return this.dq;
    }

    public LinearLayout getWriggleLayout() {
        return this.s;
    }

    public View getWriggleProgressIv() {
        return this.iw;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isShown()) {
            if (this.f1828d == null) {
                this.f1828d = new i(getContext().getApplicationContext(), 2, this.ia);
            }
            this.f1828d.dq(new i.dq() { // from class: com.bytedance.sdk.component.adexpress.widget.WriggleGuideAnimationView.2
                @Override // com.bytedance.sdk.component.utils.i.dq
                public void dq(int i) {
                    if (i == 2 && WriggleGuideAnimationView.this.isShown() && WriggleGuideAnimationView.this.p != null) {
                        WriggleGuideAnimationView.this.p.dq();
                    }
                }
            });
            if (this.mn != null) {
                this.f1828d.d(r0.ox());
                this.f1828d.d(this.mn.s());
                this.f1828d.dq(this.mn.iw());
                this.f1828d.d(this.mn.ia());
            }
            this.f1828d.dq();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        i iVar = this.f1828d;
        if (iVar != null) {
            iVar.d();
        }
        try {
            gkb gkbVar = this.iw;
            if (gkbVar != null) {
                gkbVar.iw();
            }
        } catch (Exception unused) {
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        i iVar = this.f1828d;
        if (iVar != null) {
            if (z) {
                iVar.dq();
            } else {
                iVar.d();
            }
        }
    }

    public void setOnShakeViewListener(dq dqVar) {
        this.p = dqVar;
    }

    public void setShakeText(String str) {
        this.ox.setText(str);
    }
}
