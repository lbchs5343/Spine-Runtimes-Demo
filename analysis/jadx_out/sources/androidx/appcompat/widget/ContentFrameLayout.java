package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.widget.FrameLayout;
import com.bykv.vk.component.ttvideo.player.C;
import g.byf;
import g.csq;
import g.dre;
import g.eaz;
import g.elx;
import g.esf;
import g.fnq;
import g.ftn;
import g.fxu;

/* loaded from: classes.dex */
public class ContentFrameLayout extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public byf f96a;

    /* renamed from: b, reason: collision with root package name */
    public final Rect f97b;

    /* renamed from: c, reason: collision with root package name */
    public TypedValue f98c;

    /* renamed from: d, reason: collision with root package name */
    public TypedValue f99d;

    /* renamed from: e, reason: collision with root package name */
    public TypedValue f100e;

    /* renamed from: f, reason: collision with root package name */
    public TypedValue f101f;

    /* renamed from: g, reason: collision with root package name */
    public TypedValue f102g;
    public TypedValue h;

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f97b = new Rect();
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f100e == null) {
            this.f100e = new TypedValue();
        }
        return this.f100e;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.h == null) {
            this.h = new TypedValue();
        }
        return this.h;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f98c == null) {
            this.f98c = new TypedValue();
        }
        return this.f98c;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.f99d == null) {
            this.f99d = new TypedValue();
        }
        return this.f99d;
    }

    public TypedValue getMinWidthMajor() {
        if (this.f101f == null) {
            this.f101f = new TypedValue();
        }
        return this.f101f;
    }

    public TypedValue getMinWidthMinor() {
        if (this.f102g == null) {
            this.f102g = new TypedValue();
        }
        return this.f102g;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        byf byfVar = this.f96a;
        if (byfVar != null) {
            byfVar.getClass();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        esf esfVar;
        super.onDetachedFromWindow();
        byf byfVar = this.f96a;
        if (byfVar != null) {
            dre dreVar = (dre) ((fnq) byfVar).f17099f;
            eaz eazVar = dreVar.be;
            if (eazVar != null) {
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) eazVar;
                actionBarOverlayLayout.ah();
                ActionMenuView actionMenuView = ((fxu) actionBarOverlayLayout.r).h.f115ab;
                if (actionMenuView != null && (esfVar = actionMenuView.f82b) != null) {
                    esfVar.ah();
                    csq csqVar = esfVar.k;
                    if (csqVar != null && csqVar.n()) {
                        csqVar.f12458g.dismiss();
                    }
                }
            }
            if (dreVar.bn != null) {
                dreVar.au.getDecorView().removeCallbacks(dreVar.bh);
                if (dreVar.bn.isShowing()) {
                    try {
                        dreVar.bn.dismiss();
                    } catch (IllegalArgumentException unused) {
                    }
                }
                dreVar.bn = null;
            }
            elx elxVar = dreVar.al;
            if (elxVar != null) {
                elxVar.e();
            }
            ftn ftnVar = dreVar.cv(0).f19184a;
            if (ftnVar != null) {
                ftnVar.at(true);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ac A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:46:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b3  */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onMeasure(int i, int i2) {
        int i3;
        boolean z;
        int i4;
        int measuredWidth;
        TypedValue typedValue;
        int i5;
        int i6;
        float fraction;
        int i7;
        int i8;
        float fraction2;
        int i9;
        int i10;
        float fraction3;
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        boolean z2 = true;
        boolean z3 = displayMetrics.widthPixels < displayMetrics.heightPixels;
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        Rect rect = this.f97b;
        if (mode == Integer.MIN_VALUE) {
            TypedValue typedValue2 = z3 ? this.f99d : this.f98c;
            if (typedValue2 != null && (i9 = typedValue2.type) != 0) {
                if (i9 == 5) {
                    fraction3 = typedValue2.getDimension(displayMetrics);
                } else if (i9 == 6) {
                    int i11 = displayMetrics.widthPixels;
                    fraction3 = typedValue2.getFraction(i11, i11);
                } else {
                    i10 = 0;
                    if (i10 > 0) {
                        i3 = View.MeasureSpec.makeMeasureSpec(Math.min(i10 - (rect.left + rect.right), View.MeasureSpec.getSize(i)), C.ENCODING_PCM_32BIT);
                        z = true;
                        if (mode2 == Integer.MIN_VALUE) {
                            TypedValue typedValue3 = z3 ? this.f100e : this.h;
                            if (typedValue3 != null && (i7 = typedValue3.type) != 0) {
                                if (i7 == 5) {
                                    fraction2 = typedValue3.getDimension(displayMetrics);
                                } else if (i7 == 6) {
                                    int i12 = displayMetrics.heightPixels;
                                    fraction2 = typedValue3.getFraction(i12, i12);
                                } else {
                                    i8 = 0;
                                    if (i8 > 0) {
                                        i4 = View.MeasureSpec.makeMeasureSpec(Math.min(i8 - (rect.top + rect.bottom), View.MeasureSpec.getSize(i2)), C.ENCODING_PCM_32BIT);
                                        super.onMeasure(i3, i4);
                                        measuredWidth = getMeasuredWidth();
                                        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, C.ENCODING_PCM_32BIT);
                                        if (!z && mode == Integer.MIN_VALUE) {
                                            typedValue = !z3 ? this.f102g : this.f101f;
                                            if (typedValue != null && (i5 = typedValue.type) != 0) {
                                                if (i5 != 5) {
                                                    fraction = typedValue.getDimension(displayMetrics);
                                                } else if (i5 == 6) {
                                                    int i13 = displayMetrics.widthPixels;
                                                    fraction = typedValue.getFraction(i13, i13);
                                                } else {
                                                    i6 = 0;
                                                    if (i6 > 0) {
                                                        i6 -= rect.left + rect.right;
                                                    }
                                                    if (measuredWidth < i6) {
                                                        makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i6, C.ENCODING_PCM_32BIT);
                                                        if (z2) {
                                                            return;
                                                        }
                                                        super.onMeasure(makeMeasureSpec, i4);
                                                        return;
                                                    }
                                                }
                                                i6 = (int) fraction;
                                                if (i6 > 0) {
                                                }
                                                if (measuredWidth < i6) {
                                                }
                                            }
                                        }
                                        z2 = false;
                                        if (z2) {
                                        }
                                    }
                                }
                                i8 = (int) fraction2;
                                if (i8 > 0) {
                                }
                            }
                        }
                        i4 = i2;
                        super.onMeasure(i3, i4);
                        measuredWidth = getMeasuredWidth();
                        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredWidth, C.ENCODING_PCM_32BIT);
                        if (!z) {
                            if (!z3) {
                            }
                            if (typedValue != null) {
                                if (i5 != 5) {
                                }
                                i6 = (int) fraction;
                                if (i6 > 0) {
                                }
                                if (measuredWidth < i6) {
                                }
                            }
                        }
                        z2 = false;
                        if (z2) {
                        }
                    }
                }
                i10 = (int) fraction3;
                if (i10 > 0) {
                }
            }
        }
        i3 = i;
        z = false;
        if (mode2 == Integer.MIN_VALUE) {
        }
        i4 = i2;
        super.onMeasure(i3, i4);
        measuredWidth = getMeasuredWidth();
        int makeMeasureSpec22 = View.MeasureSpec.makeMeasureSpec(measuredWidth, C.ENCODING_PCM_32BIT);
        if (!z) {
        }
        z2 = false;
        if (z2) {
        }
    }

    public void setAttachListener(byf byfVar) {
        this.f96a = byfVar;
    }
}
