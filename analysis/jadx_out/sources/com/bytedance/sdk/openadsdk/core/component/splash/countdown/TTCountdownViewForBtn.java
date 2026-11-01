package com.bytedance.sdk.openadsdk.core.component.splash.countdown;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.e;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public class TTCountdownViewForBtn extends LinearLayout implements e.dq, d {

    /* renamed from: d, reason: collision with root package name */
    private Context f2695d;
    protected final e dq;
    private int ia;
    private AtomicBoolean iw;
    private int mn;
    private TextView ox;
    private TextView p;
    private dq s;

    public TTCountdownViewForBtn(Context context) {
        super(context);
        this.iw = new AtomicBoolean(true);
        this.dq = new e(Looper.getMainLooper(), this);
        this.mn = 5;
        this.ia = 1;
        this.f2695d = context;
        p();
    }

    private void iw() {
        try {
            if (this.ox == null) {
                return;
            }
            mn();
            int i = this.ia;
            if (i < this.mn + 1) {
                this.ia = i + 1;
                this.dq.sendEmptyMessageDelayed(1, 1000L);
            } else {
                dq dqVar = this.s;
                if (dqVar != null) {
                    dqVar.dq();
                }
            }
        } catch (Exception unused) {
        }
    }

    private void mn() {
        if (this.ox != null) {
            StringBuilder sb = new StringBuilder();
            int i = this.ia;
            int i2 = this.mn;
            sb.append(i <= i2 ? i2 - i : 0);
            sb.append("s");
            this.ox.setText(sb.toString());
        }
    }

    private void p() {
        setOrientation(0);
        setGravity(17);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#99333333"));
        int ox = ce.ox(this.f2695d, 14.0f);
        gradientDrawable.setCornerRadius(ox);
        int i = ox * 2;
        gradientDrawable.setSize(i, i);
        setBackground(gradientDrawable);
        this.ox = new TextView(this.f2695d);
        int ox2 = ce.ox(this.f2695d, 6.0f);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        this.ox.setTextColor(-1);
        this.ox.setTextSize(2, 14.0f);
        addView(this.ox, layoutParams);
        View view = new View(this.f2695d);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.width = ce.ox(this.f2695d, 1.0f);
        layoutParams2.height = ce.ox(this.f2695d, 12.0f);
        layoutParams2.leftMargin = ox2;
        layoutParams2.rightMargin = ox2;
        view.setBackgroundColor(-1);
        addView(view, layoutParams2);
        this.p = new TextView(this.f2695d);
        ViewGroup.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        this.p.setTextColor(-1);
        this.p.setTextSize(2, 14.0f);
        this.p.setText("跳过");
        addView(this.p, layoutParams3);
    }

    private void s() {
        e eVar = this.dq;
        if (eVar != null) {
            eVar.removeMessages(1);
        }
        this.ia = 1;
    }

    public void d() {
        try {
            e eVar = this.dq;
            if (eVar != null) {
                eVar.removeMessages(1);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.countdown.d
    public void dq() {
        s();
        iw();
    }

    @Override // com.bytedance.sdk.component.utils.e.dq
    public void dq(Message message) {
        if (message.what == 1) {
            iw();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.countdown.d
    public View getView() {
        return this;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        s();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        this.iw.set(z);
        if (this.iw.get()) {
            ox();
        } else {
            d();
        }
    }

    public void ox() {
        try {
            iw();
        } catch (Throwable unused) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.countdown.d
    public void setCountDownTime(int i) {
        this.mn = i;
        mn();
        s();
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.countdown.d
    public void setCountdownListener(dq dqVar) {
        this.s = dqVar;
        this.iw.get();
    }
}
