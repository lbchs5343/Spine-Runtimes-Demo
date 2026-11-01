package com.bytedance.sdk.openadsdk.core.component.splash;

import android.content.Context;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wp;

/* loaded from: classes3.dex */
public class SplashClickBar extends FrameLayout {

    /* renamed from: d, reason: collision with root package name */
    private int f2683d;
    private int dq;
    private int ia;
    private String iw;
    private SplashClickBarBtn kk;
    private boolean mn;
    private int ox;
    private int p;
    private int s;

    public SplashClickBar(Context context, j jVar) {
        super(context);
        dq(context, jVar);
    }

    public void dq(Context context, j jVar) {
        setClipChildren(false);
        SplashClickBarBtn splashClickBarBtn = new SplashClickBarBtn(getContext(), jVar);
        this.kk = splashClickBarBtn;
        addView(splashClickBarBtn);
        this.kk.setClipChildren(false);
    }

    public void dq(com.bytedance.sdk.openadsdk.core.d.dq dqVar) {
        this.kk.dq(dqVar);
    }

    public void dq(j jVar) {
        this.dq = jVar.z();
        this.f2683d = jVar.xi();
        this.ox = jVar.pa();
        this.p = jVar.io();
        this.s = jVar.bu();
        this.iw = jVar.ws();
        this.ia = jVar.m();
        this.mn = jVar.ij();
        SplashClickBarBtn splashClickBarBtn = this.kk;
        if (splashClickBarBtn != null) {
            splashClickBarBtn.setShakeValue(jVar.us());
            this.kk.setDeepShakeValue(jVar.tn());
            this.kk.setWriggleValue(jVar.bs());
            this.kk.setTwistConfig(jVar.rw());
            this.kk.setShakeInteractConf(jVar.hm());
            this.kk.setTwistInteractConf(jVar.aq());
            this.kk.setCalculationTwistMethod(jVar.jo());
            this.kk.setCalculationMethod(jVar.mc());
        }
        this.kk.dq(jVar.sc());
        if (this.s == 1 && this.mn) {
            setVisibility(8);
        } else {
            setVisibility(0);
        }
    }

    public void setBtnLayout(boolean z) {
        int ox;
        int i = this.f2683d + 150;
        if (this.dq <= i && this.ia != 4) {
            this.dq = i;
        }
        int i2 = z ? this.ox : this.p;
        if (i2 < 0) {
            i2 = 0;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.kk.getLayoutParams();
        if (layoutParams == null) {
            return;
        }
        int i3 = this.ia;
        if (i3 != 4) {
            if (i3 == 5) {
                layoutParams.height = -50;
                layoutParams.width = -50;
                ox = ce.ox(getContext(), 10.0f);
            } else if (i3 != 7) {
                layoutParams.height = ce.ox(wp.getContext(), this.f2683d);
                layoutParams.width = ce.ox(wp.getContext(), this.dq);
            } else {
                layoutParams.height = -50;
                layoutParams.width = -50;
                ox = ce.ox(getContext(), 20.0f);
            }
            i2 += ox;
        } else {
            layoutParams.height = -50;
            layoutParams.width = -50;
        }
        layoutParams.bottomMargin = ce.ox(wp.getContext(), i2);
        layoutParams.gravity = 81;
        this.kk.setLayoutParams(layoutParams);
    }
}
