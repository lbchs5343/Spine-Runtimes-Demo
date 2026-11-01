package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.widget.CircleLongPressView;
import com.bytedance.sdk.component.adexpress.widget.ClickSlideUpShakeView;
import com.bytedance.sdk.component.adexpress.widget.RippleView;
import com.bytedance.sdk.component.adexpress.widget.ShakeAnimationView;
import com.bytedance.sdk.component.adexpress.widget.WriggleGuideAnimationView;

/* loaded from: classes.dex */
public class InteractViewContainer extends FrameLayout implements ia {

    /* renamed from: d, reason: collision with root package name */
    private DynamicBaseWidget f1730d;
    private Context dq;
    private View.OnTouchListener ia;
    private com.bytedance.sdk.component.adexpress.d.mp ig;
    private String iw;
    private int kk;
    private RippleView mn;
    private com.bytedance.sdk.component.adexpress.dynamic.ox.o no;
    private boolean o;
    private com.bytedance.sdk.component.adexpress.dynamic.ox.mn ox;
    private View p;
    private mn s;

    public InteractViewContainer(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.ox.mn mnVar) {
        super(context);
        this.dq = context;
        this.f1730d = dynamicBaseWidget;
        this.ox = mnVar;
        mn();
    }

    public InteractViewContainer(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.ox.mn mnVar, com.bytedance.sdk.component.adexpress.dynamic.ox.o oVar, com.bytedance.sdk.component.adexpress.d.mp mpVar) {
        super(context);
        this.dq = context;
        this.f1730d = dynamicBaseWidget;
        this.ox = mnVar;
        this.no = oVar;
        this.ig = mpVar;
        mn();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0117, code lost:
    
        if (r2.equals("2") == false) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void dq(ViewGroup viewGroup) {
        char c2 = 2;
        if (this.p == null) {
            return;
        }
        String str = this.iw;
        str.getClass();
        switch (str.hashCode()) {
            case 48:
                if (str.equals("0")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 49:
                if (str.equals("1")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 50:
                break;
            case 53:
                if (str.equals("5")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 54:
                if (str.equals("6")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 55:
                if (str.equals("7")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case 56:
                if (str.equals("8")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case 57:
                if (str.equals("9")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case 1567:
                if (str.equals("10")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            case 1568:
                if (str.equals("11")) {
                    c2 = '\t';
                    break;
                }
                c2 = 65535;
                break;
            case 1569:
                if (str.equals("12")) {
                    c2 = '\n';
                    break;
                }
                c2 = 65535;
                break;
            case 1570:
                if (str.equals("13")) {
                    c2 = 11;
                    break;
                }
                c2 = 65535;
                break;
            case 1571:
                if (str.equals("14")) {
                    c2 = '\f';
                    break;
                }
                c2 = 65535;
                break;
            case 1573:
                if (str.equals("16")) {
                    c2 = '\r';
                    break;
                }
                c2 = 65535;
                break;
            case 1574:
                if (str.equals("17")) {
                    c2 = 14;
                    break;
                }
                c2 = 65535;
                break;
            case 1575:
                if (str.equals("18")) {
                    c2 = 15;
                    break;
                }
                c2 = 65535;
                break;
            case 1598:
                if (str.equals("20")) {
                    c2 = 16;
                    break;
                }
                c2 = 65535;
                break;
            case 1600:
                if (str.equals("22")) {
                    c2 = 17;
                    break;
                }
                c2 = 65535;
                break;
            case 1601:
                if (str.equals("23")) {
                    c2 = 18;
                    break;
                }
                c2 = 65535;
                break;
            case 1602:
                if (str.equals("24")) {
                    c2 = 19;
                    break;
                }
                c2 = 65535;
                break;
            case 1603:
                if (str.equals("25")) {
                    c2 = 20;
                    break;
                }
                c2 = 65535;
                break;
            case 1607:
                if (str.equals("29")) {
                    c2 = 21;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
                this.ia = new com.bytedance.sdk.component.adexpress.dynamic.interact.dq.s(this, this.kk);
                setBackgroundColor(Color.parseColor("#80000000"));
                break;
            case 1:
            case 4:
                if (!this.ox.ha() || TextUtils.isEmpty(this.ox.cv())) {
                    setBackgroundColor(Color.parseColor("#80000000"));
                }
                this.ia = new com.bytedance.sdk.component.adexpress.dynamic.interact.dq.iw(this);
                break;
            case 2:
            case 5:
                setBackgroundColor(Color.parseColor("#80000000"));
                this.ia = new com.bytedance.sdk.component.adexpress.dynamic.interact.dq.d(this, this);
                break;
            case 3:
                if (!this.ox.ha() || TextUtils.isEmpty(this.ox.cv())) {
                    setBackgroundColor(Color.parseColor("#80000000"));
                } else {
                    setBackgroundColor(com.bytedance.sdk.component.adexpress.dynamic.ox.mn.dq(this.ox.cv()));
                }
                this.ia = new com.bytedance.sdk.component.adexpress.dynamic.interact.dq.ox(this);
                this.p.setTag(2);
                break;
            case 6:
            case '\t':
                this.f1730d.setClipChildren(false);
                this.f1730d.setClipChildren(false);
                ViewGroup viewGroup2 = (ViewGroup) this.f1730d.getParent();
                if (viewGroup2 != null) {
                    viewGroup2.setClipChildren(false);
                    viewGroup2.setClipToPadding(false);
                }
                this.ia = new com.bytedance.sdk.component.adexpress.dynamic.interact.dq.iw(this);
                break;
            case 7:
            case 14:
                this.p.setTag(2);
                break;
            case '\b':
                this.ia = new com.bytedance.sdk.component.adexpress.dynamic.interact.dq.p(this, this.kk, this.o);
                break;
            case '\n':
                this.ia = new com.bytedance.sdk.component.adexpress.dynamic.interact.dq.ox(this);
                this.p.setTag(2);
                break;
            case 11:
            case 19:
                if (!this.iw.equals("24") || !com.bytedance.sdk.component.adexpress.p.dq()) {
                    this.ia = new com.bytedance.sdk.component.adexpress.dynamic.interact.dq.s(this, this.kk);
                    break;
                } else {
                    this.f1730d.setClipChildren(false);
                    this.ia = new com.bytedance.sdk.component.adexpress.dynamic.interact.dq.iw(this);
                    break;
                }
                break;
            case '\f':
                this.ia = new com.bytedance.sdk.component.adexpress.dynamic.interact.dq.d(this, this);
                break;
            case '\r':
                View view = this.p;
                if (view != null && (view instanceof ShakeAnimationView) && ((ShakeAnimationView) view).getShakeLayout() != null) {
                    ((ShakeAnimationView) this.p).getShakeLayout().setTag(2);
                }
                this.p.setTag(2);
                break;
            case 15:
                View view2 = this.p;
                if (view2 != null && (view2 instanceof WriggleGuideAnimationView) && ((WriggleGuideAnimationView) view2).getWriggleLayout() != null) {
                    ((WriggleGuideAnimationView) this.p).getWriggleLayout().setTag(2);
                }
                this.p.setTag(2);
                break;
            case 16:
                this.ia = new com.bytedance.sdk.component.adexpress.dynamic.interact.dq.dq(this, this.kk, viewGroup);
                break;
            case 17:
                if (!com.bytedance.sdk.component.adexpress.p.dq()) {
                    this.ia = new com.bytedance.sdk.component.adexpress.dynamic.interact.dq.mn(this, this.kk, viewGroup);
                    break;
                } else {
                    this.ia = new com.bytedance.sdk.component.adexpress.dynamic.interact.dq.ia(this, this.o);
                    break;
                }
            case 18:
                if (com.bytedance.sdk.component.adexpress.p.dq()) {
                    this.ia = new com.bytedance.sdk.component.adexpress.dynamic.interact.dq.iw(this);
                    break;
                }
                break;
            case 20:
                if (com.bytedance.sdk.component.adexpress.p.dq()) {
                    this.ia = new com.bytedance.sdk.component.adexpress.dynamic.interact.dq.ia(this, this.o);
                    break;
                }
                break;
            case 21:
                View view3 = this.p;
                if (view3 != null && (view3 instanceof ClickSlideUpShakeView) && ((ClickSlideUpShakeView) view3).getShakeView() != null) {
                    ((ClickSlideUpShakeView) this.p).getShakeView().setTag(2);
                }
                this.ia = new com.bytedance.sdk.component.adexpress.dynamic.interact.dq.s(this, this.kk);
                break;
        }
        View.OnTouchListener onTouchListener = this.ia;
        if (onTouchListener != null) {
            setOnTouchListener(onTouchListener);
        }
        if (ia()) {
            this.p.setTag(2);
            setOnClickListener((View.OnClickListener) this.f1730d.getDynamicClickListener());
        }
    }

    private boolean dq(String str) {
        return TextUtils.equals(str, "24") || TextUtils.equals(str, "23") || TextUtils.equals(str, "25") || TextUtils.equals(str, "22") || TextUtils.equals(str, "1");
    }

    private boolean ia() {
        return (this.ox.vw() || TextUtils.equals("9", this.iw) || TextUtils.equals("16", this.iw) || TextUtils.equals("17", this.iw) || TextUtils.equals("18", this.iw) || TextUtils.equals("20", this.iw) || TextUtils.equals("29", this.iw) || TextUtils.equals("10", this.iw)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void kk() {
        if (this.ia != null) {
            setOnClickListener((View.OnClickListener) this.f1730d.getDynamicClickListener());
            performClick();
            if (this.ox.xv()) {
                return;
            }
            setVisibility(8);
        }
    }

    private void mn() {
        setBackgroundColor(0);
        setClipChildren(false);
        setClipToPadding(false);
        this.iw = this.ox.vf();
        this.kk = this.ox.t();
        this.o = this.ox.vw();
        mn dq = kk.dq(this.dq, this.f1730d, this.ox, this.no, this.ig);
        this.s = dq;
        if (dq != null) {
            this.p = dq.ox();
            if (this.ox.ob()) {
                setBackgroundColor(Color.parseColor("#50000000"));
            }
            if (TextUtils.equals(this.iw, "6")) {
                if (!this.ox.ha() || TextUtils.isEmpty(this.ox.cv())) {
                    this.mn = new RippleView(this.dq, Color.parseColor("#99000000"));
                } else {
                    this.mn = new RippleView(this.dq, com.bytedance.sdk.component.adexpress.dynamic.ox.mn.dq(this.ox.cv()));
                }
                FrameLayout frameLayout = new FrameLayout(this.dq);
                frameLayout.addView(this.mn, new FrameLayout.LayoutParams(-1, -1));
                frameLayout.setClipChildren(true);
                addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
                post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.interact.InteractViewContainer.1
                    @Override // java.lang.Runnable
                    public void run() {
                        InteractViewContainer.this.mn.d();
                    }
                });
            }
            if (dq(this.iw) && com.bytedance.sdk.component.adexpress.p.dq()) {
                int parseColor = Color.parseColor("#99000000");
                if (this.ox.ha() && !TextUtils.isEmpty(this.ox.cv())) {
                    try {
                        parseColor = com.bytedance.sdk.component.adexpress.dynamic.ox.mn.dq(this.ox.cv());
                    } catch (Exception unused) {
                    }
                }
                View view = new View(this.dq);
                view.setBackgroundColor(parseColor);
                addView(view, new FrameLayout.LayoutParams(-1, -1));
            }
            addView(this.s.ox());
            dq(this.s.ox());
            setVisibility(0);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.ia
    public void d() {
        if (ia()) {
            setOnClickListener((View.OnClickListener) this.f1730d.getDynamicClickListener());
            performClick();
            if (this.ox.xv()) {
                return;
            }
            setVisibility(8);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.ia
    public void dq() {
        if (!TextUtils.equals(this.iw, "6")) {
            if (TextUtils.equals(this.iw, "20")) {
                postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.interact.InteractViewContainer.3
                    @Override // java.lang.Runnable
                    public void run() {
                        InteractViewContainer.this.kk();
                    }
                }, 400L);
                return;
            } else {
                kk();
                return;
            }
        }
        RippleView rippleView = this.mn;
        if (rippleView != null) {
            rippleView.ox();
            postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.interact.InteractViewContainer.2
                @Override // java.lang.Runnable
                public void run() {
                    InteractViewContainer.this.kk();
                }
            }, 300L);
        }
    }

    public void iw() {
        if (this.p != null && TextUtils.equals(this.iw, "2")) {
            View view = this.p;
            if (view instanceof CircleLongPressView) {
                ((CircleLongPressView) view).p();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            mn mnVar = this.s;
            if (mnVar != null) {
                mnVar.d();
            }
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.ig.d(e2.getMessage());
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.ia instanceof com.bytedance.sdk.component.adexpress.dynamic.interact.dq.ox) {
            return true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void ox() {
        mn mnVar = this.s;
        if (mnVar != null) {
            mnVar.dq();
        }
    }

    public void p() {
        mn mnVar = this.s;
        if (mnVar != null) {
            mnVar.d();
        }
    }

    public void s() {
        if (this.p != null && TextUtils.equals(this.iw, "2")) {
            View view = this.p;
            if (view instanceof CircleLongPressView) {
                ((CircleLongPressView) view).ox();
            }
        }
    }
}
