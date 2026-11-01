package g;

import android.animation.ValueAnimator;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public final class cf {

    /* renamed from: a, reason: collision with root package name */
    public final csr f12766a;

    /* renamed from: b, reason: collision with root package name */
    public final View f12767b;

    /* renamed from: c, reason: collision with root package name */
    public final TextView f12768c;

    /* renamed from: e, reason: collision with root package name */
    public final String f12770e;

    /* renamed from: f, reason: collision with root package name */
    public final csr f12771f;
    public final View i;
    public boolean j;

    /* renamed from: d, reason: collision with root package name */
    public final Handler f12769d = new Handler(Looper.getMainLooper());

    /* renamed from: g, reason: collision with root package name */
    public final cgn f12772g = new cgn();
    public final byd h = new byd(6, this);

    /* JADX WARN: Type inference failed for: r0v2, types: [g.csr] */
    /* JADX WARN: Type inference failed for: r1v3, types: [g.csr] */
    public cf(View view) {
        final int i = 0;
        this.f12771f = new Runnable(this) { // from class: g.csr

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ cf f13448b;

            {
                this.f13448b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i) {
                    case 0:
                        cf cfVar = this.f13448b;
                        cgn cgnVar = cfVar.f12772g;
                        long uptimeMillis = SystemClock.uptimeMillis();
                        if (cgnVar.f12846a > 0 && uptimeMillis - cgnVar.f12847b >= 1200) {
                            cgnVar.f12846a = 0;
                            cgnVar.f12847b = 0L;
                        }
                        cfVar.l();
                        break;
                    default:
                        this.f13448b.i.setPressed(false);
                        break;
                }
            }
        };
        View findViewById = view.findViewById(R.id.guide_demo_row);
        this.i = findViewById;
        final int i2 = 1;
        this.f12766a = new Runnable(this) { // from class: g.csr

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ cf f13448b;

            {
                this.f13448b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i2) {
                    case 0:
                        cf cfVar = this.f13448b;
                        cgn cgnVar = cfVar.f12772g;
                        long uptimeMillis = SystemClock.uptimeMillis();
                        if (cgnVar.f12846a > 0 && uptimeMillis - cgnVar.f12847b >= 1200) {
                            cgnVar.f12846a = 0;
                            cgnVar.f12847b = 0L;
                        }
                        cfVar.l();
                        break;
                    default:
                        this.f13448b.i.setPressed(false);
                        break;
                }
            }
        };
        this.f12767b = view.findViewById(R.id.guide_demo_pulse);
        this.f12768c = (TextView) view.findViewById(R.id.guide_demo_message);
        String j = fnp.j(findViewById.getContext());
        this.f12770e = j;
        ((TextView) view.findViewById(R.id.guide_demo_item)).setText(j);
        dyd.ap(findViewById);
        final int i3 = 0;
        findViewById.setOnClickListener(new View.OnClickListener(this) { // from class: g.fgf

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ cf f16740b;

            {
                this.f16740b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                switch (i3) {
                    case 0:
                        cf cfVar = this.f16740b;
                        cfVar.f12769d.removeCallbacks(cfVar.h);
                        cgn cgnVar = cfVar.f12772g;
                        if (cgnVar.f12846a == 7) {
                            cgnVar.f12846a = 0;
                            cgnVar.f12847b = 0L;
                        }
                        cfVar.k(false);
                        break;
                    default:
                        this.f16740b.m(0L);
                        break;
                }
            }
        });
        final int i4 = 1;
        view.findViewById(R.id.guide_demo_replay).setOnClickListener(new View.OnClickListener(this) { // from class: g.fgf

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ cf f16740b;

            {
                this.f16740b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                switch (i4) {
                    case 0:
                        cf cfVar = this.f16740b;
                        cfVar.f12769d.removeCallbacks(cfVar.h);
                        cgn cgnVar = cfVar.f12772g;
                        if (cgnVar.f12846a == 7) {
                            cgnVar.f12846a = 0;
                            cgnVar.f12847b = 0L;
                        }
                        cfVar.k(false);
                        break;
                    default:
                        this.f16740b.m(0L);
                        break;
                }
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0053, code lost:
    
        if (r14 != false) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void k(boolean z) {
        boolean areAnimatorsEnabled;
        if (this.j) {
            Handler handler = this.f12769d;
            csr csrVar = this.f12771f;
            handler.removeCallbacks(csrVar);
            long uptimeMillis = SystemClock.uptimeMillis();
            cgn cgnVar = this.f12772g;
            if (cgnVar.f12846a > 0 && uptimeMillis - cgnVar.f12847b >= 1200) {
                cgnVar.f12846a = 0;
                cgnVar.f12847b = 0L;
            }
            if (cgnVar.f12846a == 7) {
                cgnVar.f12846a = 0;
                cgnVar.f12847b = 0L;
            }
            cgnVar.f12846a++;
            cgnVar.f12847b = uptimeMillis;
            handler.postDelayed(csrVar, 1200L);
            if (z) {
                this.i.setPressed(true);
                handler.postDelayed(this.f12766a, 100L);
            }
            if (Build.VERSION.SDK_INT >= 26) {
                areAnimatorsEnabled = ValueAnimator.areAnimatorsEnabled();
            }
            View view = this.f12767b;
            view.animate().cancel();
            view.setScaleX(0.45f);
            view.setScaleY(0.45f);
            view.setAlpha(0.35f);
            view.animate().scaleX(1.5f).scaleY(1.5f).alpha(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT).setDuration(240L).start();
            l();
        }
    }

    public final void l() {
        cgn cgnVar = this.f12772g;
        int i = cgnVar.f12846a;
        String str = this.f12770e;
        View view = this.i;
        this.f12768c.setText((i <= 0 || i == 7) ? view.getResources().getString(R.string.dev_guide_demo_hint, str) : view.getResources().getString(R.string.dev_guide_demo_progress, str, Integer.valueOf(cgnVar.f12846a)));
    }

    public final void m(long j) {
        boolean areAnimatorsEnabled;
        n();
        this.j = true;
        cgn cgnVar = this.f12772g;
        cgnVar.f12846a = 0;
        cgnVar.f12847b = 0L;
        l();
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.i.getContext().getSystemService("accessibility");
        if (Build.VERSION.SDK_INT >= 26) {
            areAnimatorsEnabled = ValueAnimator.areAnimatorsEnabled();
            if (!areAnimatorsEnabled) {
                return;
            }
        }
        if (accessibilityManager == null || !accessibilityManager.isTouchExplorationEnabled()) {
            this.f12769d.postDelayed(this.h, j);
        }
    }

    public final void n() {
        this.j = false;
        this.f12769d.removeCallbacksAndMessages(null);
        View view = this.f12767b;
        view.animate().cancel();
        view.setAlpha(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        this.i.setPressed(false);
        cgn cgnVar = this.f12772g;
        cgnVar.f12846a = 0;
        cgnVar.f12847b = 0L;
        l();
    }
}
