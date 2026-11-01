package g;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.material.textfield.TextInputLayout;

/* loaded from: classes3.dex */
public final class chp extends bhb {

    /* renamed from: a, reason: collision with root package name */
    public AutoCompleteTextView f12883a;
    public ValueAnimator ai;
    public final TimeInterpolator aj;
    public ValueAnimator ak;

    /* renamed from: b, reason: collision with root package name */
    public final bsw f12884b;

    /* renamed from: c, reason: collision with root package name */
    public long f12885c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f12886d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f12887e;

    /* renamed from: f, reason: collision with root package name */
    public final int f12888f;

    /* renamed from: g, reason: collision with root package name */
    public final int f12889g;
    public AccessibilityManager h;
    public boolean i;
    public final ld m;
    public final ecn r;

    /* JADX WARN: Type inference failed for: r0v2, types: [g.bsw] */
    public chp(zq zqVar) {
        super(zqVar);
        this.m = new ld(4, this);
        this.r = new ecn(this, 1);
        this.f12884b = new AccessibilityManager.TouchExplorationStateChangeListener() { // from class: g.bsw
            @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
            public final void onTouchExplorationStateChanged(boolean z) {
                chp chpVar = chp.this;
                AutoCompleteTextView autoCompleteTextView = chpVar.f12883a;
                if (autoCompleteTextView == null || dyd.aw(autoCompleteTextView)) {
                    return;
                }
                chpVar.v.setImportantForAccessibility(z ? 2 : 1);
            }
        };
        this.f12885c = Long.MAX_VALUE;
        this.f12889g = egh.bf(zqVar.getContext(), R.attr.motionDurationShort3, 67);
        this.f12888f = egh.bf(zqVar.getContext(), R.attr.motionDurationShort3, 50);
        this.aj = egh.r(zqVar.getContext(), R.attr.motionEasingLinearInterpolator, gtk.f18727b);
    }

    @Override // g.bhb
    public final void ab(AccessibilityEvent accessibilityEvent) {
        if (!this.h.isEnabled() || dyd.aw(this.f12883a)) {
            return;
        }
        boolean z = (accessibilityEvent.getEventType() == 32768 || accessibilityEvent.getEventType() == 8) && this.f12886d && !this.f12883a.isPopupShowing();
        if (accessibilityEvent.getEventType() == 1 || z) {
            al();
            this.i = true;
            this.f12885c = SystemClock.uptimeMillis();
        }
    }

    @Override // g.bhb
    public final void ac(fnz fnzVar) {
        AccessibilityNodeInfo accessibilityNodeInfo = fnzVar.f17119b;
        if (!dyd.aw(this.f12883a)) {
            fnzVar.j(Spinner.class.getName());
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 26 ? accessibilityNodeInfo.isShowingHintText() : fnzVar.g(4)) {
            if (i >= 26) {
                accessibilityNodeInfo.setHintText(null);
            } else {
                accessibilityNodeInfo.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY", null);
            }
        }
    }

    @Override // g.bhb
    public final boolean ad() {
        return this.f12886d;
    }

    @Override // g.bhb
    public final boolean ae(int i) {
        return i != 0;
    }

    @Override // g.bhb
    public final boolean ag() {
        return this.f12887e;
    }

    public final void al() {
        if (this.f12883a == null) {
            return;
        }
        long uptimeMillis = SystemClock.uptimeMillis() - this.f12885c;
        if (uptimeMillis < 0 || uptimeMillis > 300) {
            this.i = false;
        }
        if (this.i) {
            this.i = false;
            return;
        }
        am(!this.f12886d);
        if (!this.f12886d) {
            this.f12883a.dismissDropDown();
        } else {
            this.f12883a.requestFocus();
            this.f12883a.showDropDown();
        }
    }

    public final void am(boolean z) {
        if (this.f12886d != z) {
            this.f12886d = z;
            this.ak.cancel();
            this.ai.start();
        }
    }

    @Override // g.bhb
    public final int j() {
        return R.drawable.mtrl_dropdown_arrow;
    }

    @Override // g.bhb
    public final View.OnFocusChangeListener k() {
        return this.r;
    }

    @Override // g.bhb
    public final void l() {
        if (this.h.isTouchExplorationEnabled() && dyd.aw(this.f12883a) && !this.v.hasFocus()) {
            this.f12883a.dismissDropDown();
        }
        this.f12883a.post(new fvi(13, this));
    }

    @Override // g.bhb
    public final View.OnClickListener n() {
        return this.m;
    }

    @Override // g.bhb
    public final void o() {
        AutoCompleteTextView autoCompleteTextView = this.f12883a;
        if (autoCompleteTextView != null) {
            autoCompleteTextView.setOnTouchListener(null);
            this.f12883a.setOnDismissListener(null);
        }
    }

    @Override // g.bhb
    public final void q(EditText editText) {
        if (!(editText instanceof AutoCompleteTextView)) {
            throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
        }
        AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
        this.f12883a = autoCompleteTextView;
        autoCompleteTextView.setOnTouchListener(new gup(1, this));
        this.f12883a.setOnDismissListener(new AutoCompleteTextView.OnDismissListener() { // from class: g.dsi
            @Override // android.widget.AutoCompleteTextView.OnDismissListener
            public final void onDismiss() {
                chp chpVar = chp.this;
                chpVar.i = true;
                chpVar.f12885c = SystemClock.uptimeMillis();
                chpVar.am(false);
            }
        });
        this.f12883a.setThreshold(0);
        TextInputLayout textInputLayout = this.w;
        textInputLayout.setErrorIconDrawable((Drawable) null);
        if (!dyd.aw(editText) && this.h.isTouchExplorationEnabled()) {
            this.v.setImportantForAccessibility(2);
        }
        textInputLayout.setEndIconVisible(true);
    }

    @Override // g.bhb
    public final int s() {
        return R.string.exposed_dropdown_menu_content_description;
    }

    @Override // g.bhb
    public final void u() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
        TimeInterpolator timeInterpolator = this.aj;
        ofFloat.setInterpolator(timeInterpolator);
        ofFloat.setDuration(this.f12889g);
        int i = 1;
        ofFloat.addUpdateListener(new emn(i, this));
        this.ak = ofFloat;
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        ofFloat2.setInterpolator(timeInterpolator);
        ofFloat2.setDuration(this.f12888f);
        ofFloat2.addUpdateListener(new emn(i, this));
        this.ai = ofFloat2;
        ofFloat2.addListener(new cod(2, this));
        this.h = (AccessibilityManager) this.y.getSystemService("accessibility");
    }

    @Override // g.bhb
    public final AccessibilityManager.TouchExplorationStateChangeListener z() {
        return this.f12884b;
    }
}
