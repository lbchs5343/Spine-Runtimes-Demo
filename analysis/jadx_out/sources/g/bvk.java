package g;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public abstract class bvk extends ViewGroup {
    public Drawable aa;

    /* renamed from: ab, reason: collision with root package name */
    public int f12270ab;
    public int ac;
    public boolean ad;
    public int[] ae;
    public int af;
    public int ag;
    public int ah;
    public int ai;
    public boolean u;
    public float v;
    public int w;
    public int[] x;
    public int y;
    public int z;

    public bvk(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, 0);
        this.ad = true;
        this.af = -1;
        this.y = 0;
        this.ac = 8388659;
        int[] iArr = acs.f10000f;
        dzh j = dzh.j(context, attributeSet, iArr, 0);
        goi.x(this, context, iArr, attributeSet, (TypedArray) j.f15121f, 0);
        TypedArray typedArray = (TypedArray) j.f15121f;
        int i2 = typedArray.getInt(1, -1);
        if (i2 >= 0) {
            setOrientation(i2);
        }
        int i3 = typedArray.getInt(0, -1);
        if (i3 >= 0) {
            setGravity(i3);
        }
        boolean z = typedArray.getBoolean(2, true);
        if (!z) {
            setBaselineAligned(z);
        }
        this.v = typedArray.getFloat(4, -1.0f);
        this.af = typedArray.getInt(3, -1);
        this.u = typedArray.getBoolean(7, false);
        setDividerDrawable(j.o(5));
        this.ag = typedArray.getInt(8, 0);
        this.w = typedArray.getDimensionPixelSize(6, 0);
        j.af();
    }

    public final void aj(Canvas canvas, int i) {
        this.aa.setBounds(getPaddingLeft() + this.w, i, (getWidth() - getPaddingRight()) - this.w, this.ah + i);
        this.aa.draw(canvas);
    }

    public final void ak(Canvas canvas, int i) {
        this.aa.setBounds(i, getPaddingTop() + this.w, this.z + i, (getHeight() - getPaddingBottom()) - this.w);
        this.aa.draw(canvas);
    }

    public final boolean al(int i) {
        if (i == 0) {
            return (this.ag & 1) != 0;
        }
        if (i == getChildCount()) {
            return (this.ag & 4) != 0;
        }
        if ((this.ag & 2) != 0) {
            for (int i2 = i - 1; i2 >= 0; i2--) {
                if (getChildAt(i2).getVisibility() != 8) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof aob;
    }

    @Override // android.view.View
    public int getBaseline() {
        int i;
        if (this.af < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i2 = this.af;
        if (childCount <= i2) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(i2);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.af == 0) {
                return -1;
            }
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        int i3 = this.y;
        if (this.f12270ab == 1 && (i = this.ac & 112) != 48) {
            if (i == 16) {
                i3 += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.ai) / 2;
            } else if (i == 80) {
                i3 = ((getBottom() - getTop()) - getPaddingBottom()) - this.ai;
            }
        }
        return i3 + ((LinearLayout.LayoutParams) ((aob) childAt.getLayoutParams())).topMargin + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.af;
    }

    public Drawable getDividerDrawable() {
        return this.aa;
    }

    public int getDividerPadding() {
        return this.w;
    }

    public int getDividerWidth() {
        return this.z;
    }

    public int getGravity() {
        return this.ac;
    }

    public int getOrientation() {
        return this.f12270ab;
    }

    public int getShowDividers() {
        return this.ag;
    }

    public int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.v;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int right;
        int left;
        int i;
        if (this.aa == null) {
            return;
        }
        int i2 = 0;
        if (this.f12270ab == 1) {
            int virtualChildCount = getVirtualChildCount();
            while (i2 < virtualChildCount) {
                View childAt = getChildAt(i2);
                if (childAt != null && childAt.getVisibility() != 8 && al(i2)) {
                    aj(canvas, (childAt.getTop() - ((LinearLayout.LayoutParams) ((aob) childAt.getLayoutParams())).topMargin) - this.ah);
                }
                i2++;
            }
            if (al(virtualChildCount)) {
                View childAt2 = getChildAt(virtualChildCount - 1);
                aj(canvas, childAt2 == null ? (getHeight() - getPaddingBottom()) - this.ah : childAt2.getBottom() + ((LinearLayout.LayoutParams) ((aob) childAt2.getLayoutParams())).bottomMargin);
                return;
            }
            return;
        }
        int virtualChildCount2 = getVirtualChildCount();
        boolean z = dnh.f14457a;
        boolean z2 = getLayoutDirection() == 1;
        while (i2 < virtualChildCount2) {
            View childAt3 = getChildAt(i2);
            if (childAt3 != null && childAt3.getVisibility() != 8 && al(i2)) {
                aob aobVar = (aob) childAt3.getLayoutParams();
                ak(canvas, z2 ? childAt3.getRight() + ((LinearLayout.LayoutParams) aobVar).rightMargin : (childAt3.getLeft() - ((LinearLayout.LayoutParams) aobVar).leftMargin) - this.z);
            }
            i2++;
        }
        if (al(virtualChildCount2)) {
            View childAt4 = getChildAt(virtualChildCount2 - 1);
            if (childAt4 != null) {
                aob aobVar2 = (aob) childAt4.getLayoutParams();
                if (z2) {
                    left = childAt4.getLeft() - ((LinearLayout.LayoutParams) aobVar2).leftMargin;
                    i = this.z;
                    right = left - i;
                } else {
                    right = childAt4.getRight() + ((LinearLayout.LayoutParams) aobVar2).rightMargin;
                }
            } else if (z2) {
                right = getPaddingLeft();
            } else {
                left = getWidth() - getPaddingRight();
                i = this.z;
                right = left - i;
            }
            ak(canvas, right);
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0190  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17 = 8;
        if (this.f12270ab == 1) {
            int paddingLeft = getPaddingLeft();
            int i18 = i3 - i;
            int paddingRight = i18 - getPaddingRight();
            int paddingRight2 = (i18 - paddingLeft) - getPaddingRight();
            int virtualChildCount = getVirtualChildCount();
            int i19 = this.ac;
            int i20 = i19 & 112;
            int i21 = 8388615 & i19;
            int paddingTop = i20 != 16 ? i20 != 80 ? getPaddingTop() : ((getPaddingTop() + i4) - i2) - this.ai : getPaddingTop() + (((i4 - i2) - this.ai) / 2);
            int i22 = 0;
            while (i22 < virtualChildCount) {
                View childAt = getChildAt(i22);
                if (childAt != null && childAt.getVisibility() != i17) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    aob aobVar = (aob) childAt.getLayoutParams();
                    int i23 = ((LinearLayout.LayoutParams) aobVar).gravity;
                    if (i23 < 0) {
                        i23 = i21;
                    }
                    int absoluteGravity = Gravity.getAbsoluteGravity(i23, getLayoutDirection()) & 7;
                    if (absoluteGravity == 1) {
                        i14 = ((paddingRight2 - measuredWidth) / 2) + paddingLeft + ((LinearLayout.LayoutParams) aobVar).leftMargin;
                        i15 = ((LinearLayout.LayoutParams) aobVar).rightMargin;
                    } else if (absoluteGravity != 5) {
                        i16 = ((LinearLayout.LayoutParams) aobVar).leftMargin + paddingLeft;
                        if (al(i22)) {
                            paddingTop += this.ah;
                        }
                        int i24 = paddingTop + ((LinearLayout.LayoutParams) aobVar).topMargin;
                        childAt.layout(i16, i24, measuredWidth + i16, i24 + measuredHeight);
                        paddingTop = measuredHeight + ((LinearLayout.LayoutParams) aobVar).bottomMargin + i24;
                    } else {
                        i14 = paddingRight - measuredWidth;
                        i15 = ((LinearLayout.LayoutParams) aobVar).rightMargin;
                    }
                    i16 = i14 - i15;
                    if (al(i22)) {
                    }
                    int i242 = paddingTop + ((LinearLayout.LayoutParams) aobVar).topMargin;
                    childAt.layout(i16, i242, measuredWidth + i16, i242 + measuredHeight);
                    paddingTop = measuredHeight + ((LinearLayout.LayoutParams) aobVar).bottomMargin + i242;
                }
                i22++;
                i17 = 8;
            }
            return;
        }
        boolean z2 = dnh.f14457a;
        boolean z3 = getLayoutDirection() == 1;
        int paddingTop2 = getPaddingTop();
        int i25 = i4 - i2;
        int paddingBottom = i25 - getPaddingBottom();
        int paddingBottom2 = (i25 - paddingTop2) - getPaddingBottom();
        int virtualChildCount2 = getVirtualChildCount();
        int i26 = this.ac;
        int i27 = 8388615 & i26;
        int i28 = i26 & 112;
        boolean z4 = this.ad;
        int[] iArr = this.ae;
        int[] iArr2 = this.x;
        int absoluteGravity2 = Gravity.getAbsoluteGravity(i27, getLayoutDirection());
        int paddingLeft2 = absoluteGravity2 != 1 ? absoluteGravity2 != 5 ? getPaddingLeft() : ((getPaddingLeft() + i3) - i) - this.ai : getPaddingLeft() + (((i3 - i) - this.ai) / 2);
        if (z3) {
            i5 = virtualChildCount2 - 1;
            i6 = -1;
        } else {
            i5 = 0;
            i6 = 1;
        }
        int i29 = 0;
        while (i29 < virtualChildCount2) {
            int i30 = (i6 * i29) + i5;
            View childAt2 = getChildAt(i30);
            if (childAt2 == null) {
                i7 = i5;
            } else {
                i7 = i5;
                if (childAt2.getVisibility() != 8) {
                    int measuredWidth2 = childAt2.getMeasuredWidth();
                    int measuredHeight2 = childAt2.getMeasuredHeight();
                    aob aobVar2 = (aob) childAt2.getLayoutParams();
                    int i31 = paddingLeft2;
                    if (z4) {
                        i8 = paddingTop2;
                        if (((LinearLayout.LayoutParams) aobVar2).height != -1) {
                            i9 = childAt2.getBaseline();
                            i10 = ((LinearLayout.LayoutParams) aobVar2).gravity;
                            if (i10 < 0) {
                                i10 = i28;
                            }
                            i11 = i10 & 112;
                            if (i11 == 16) {
                                if (i11 == 48) {
                                    i12 = i8 + ((LinearLayout.LayoutParams) aobVar2).topMargin;
                                    if (i9 != -1) {
                                        i12 = (iArr[1] - i9) + i12;
                                    }
                                } else if (i11 != 80) {
                                    i12 = i8;
                                } else {
                                    i12 = (paddingBottom - measuredHeight2) - ((LinearLayout.LayoutParams) aobVar2).bottomMargin;
                                    if (i9 != -1) {
                                        i13 = iArr2[2] - (childAt2.getMeasuredHeight() - i9);
                                    }
                                }
                                int i32 = (al(i30) ? i31 + this.z : i31) + ((LinearLayout.LayoutParams) aobVar2).leftMargin;
                                childAt2.layout(i32, i12, i32 + measuredWidth2, i12 + measuredHeight2);
                                paddingLeft2 = measuredWidth2 + ((LinearLayout.LayoutParams) aobVar2).rightMargin + i32;
                                i29++;
                                i5 = i7;
                                paddingTop2 = i8;
                            } else {
                                i12 = ((paddingBottom2 - measuredHeight2) / 2) + i8 + ((LinearLayout.LayoutParams) aobVar2).topMargin;
                                i13 = ((LinearLayout.LayoutParams) aobVar2).bottomMargin;
                            }
                            i12 -= i13;
                            int i322 = (al(i30) ? i31 + this.z : i31) + ((LinearLayout.LayoutParams) aobVar2).leftMargin;
                            childAt2.layout(i322, i12, i322 + measuredWidth2, i12 + measuredHeight2);
                            paddingLeft2 = measuredWidth2 + ((LinearLayout.LayoutParams) aobVar2).rightMargin + i322;
                            i29++;
                            i5 = i7;
                            paddingTop2 = i8;
                        }
                    } else {
                        i8 = paddingTop2;
                    }
                    i9 = -1;
                    i10 = ((LinearLayout.LayoutParams) aobVar2).gravity;
                    if (i10 < 0) {
                    }
                    i11 = i10 & 112;
                    if (i11 == 16) {
                    }
                    i12 -= i13;
                    int i3222 = (al(i30) ? i31 + this.z : i31) + ((LinearLayout.LayoutParams) aobVar2).leftMargin;
                    childAt2.layout(i3222, i12, i3222 + measuredWidth2, i12 + measuredHeight2);
                    paddingLeft2 = measuredWidth2 + ((LinearLayout.LayoutParams) aobVar2).rightMargin + i3222;
                    i29++;
                    i5 = i7;
                    paddingTop2 = i8;
                }
            }
            i8 = paddingTop2;
            i29++;
            i5 = i7;
            paddingTop2 = i8;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:222:0x04f4  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x0538  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0542  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0522  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0145  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        boolean z;
        int baseline;
        int i8;
        int i9;
        int[] iArr;
        int i10;
        int i11;
        boolean z2;
        boolean z3;
        aob aobVar;
        int i12;
        int[] iArr2;
        int i13;
        View view;
        int i14;
        boolean z4;
        boolean z5;
        int max;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        boolean z6;
        int i23;
        int i24;
        int i25;
        View view2;
        boolean z7;
        boolean z8;
        bvk bvkVar = this;
        int i26 = bvkVar.f12270ab;
        int i27 = -2;
        int i28 = 0;
        int i29 = C.ENCODING_PCM_32BIT;
        int i30 = 8;
        if (i26 == 1) {
            bvkVar.ai = 0;
            int virtualChildCount = bvkVar.getVirtualChildCount();
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            int i31 = bvkVar.af;
            boolean z9 = bvkVar.u;
            int i32 = 0;
            int i33 = 0;
            int i34 = 0;
            int i35 = 0;
            float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            boolean z10 = false;
            int i36 = 0;
            boolean z11 = false;
            boolean z12 = true;
            while (i32 < virtualChildCount) {
                int i37 = mode;
                View childAt = bvkVar.getChildAt(i32);
                if (childAt == null) {
                    bvkVar.ai = bvkVar.ai;
                } else if (childAt.getVisibility() != i30) {
                    if (bvkVar.al(i32)) {
                        bvkVar.ai += bvkVar.ah;
                    }
                    aob aobVar2 = (aob) childAt.getLayoutParams();
                    float f3 = ((LinearLayout.LayoutParams) aobVar2).weight;
                    f2 += f3;
                    if (mode2 == i29 && ((LinearLayout.LayoutParams) aobVar2).height == 0 && f3 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        int i38 = bvkVar.ai;
                        bvkVar.ai = Math.max(i38, ((LinearLayout.LayoutParams) aobVar2).topMargin + i38 + ((LinearLayout.LayoutParams) aobVar2).bottomMargin);
                        view2 = childAt;
                        i22 = mode2;
                        i23 = i31;
                        z6 = z9;
                        i24 = i32;
                        i25 = i37;
                        z10 = true;
                    } else {
                        if (((LinearLayout.LayoutParams) aobVar2).height != 0 || f3 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                            i19 = Integer.MIN_VALUE;
                        } else {
                            ((LinearLayout.LayoutParams) aobVar2).height = i27;
                            i19 = 0;
                        }
                        if (f2 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                            i20 = i32;
                            i21 = bvkVar.ai;
                        } else {
                            i20 = i32;
                            i21 = 0;
                        }
                        i22 = mode2;
                        z6 = z9;
                        i23 = i31;
                        i24 = i20;
                        i25 = i37;
                        bvkVar.measureChildWithMargins(childAt, i, 0, i2, i21);
                        if (i19 != Integer.MIN_VALUE) {
                            ((LinearLayout.LayoutParams) aobVar2).height = i19;
                        }
                        int measuredHeight = childAt.getMeasuredHeight();
                        int i39 = bvkVar.ai;
                        view2 = childAt;
                        bvkVar.ai = Math.max(i39, i39 + measuredHeight + ((LinearLayout.LayoutParams) aobVar2).topMargin + ((LinearLayout.LayoutParams) aobVar2).bottomMargin);
                        if (z6) {
                            i35 = Math.max(measuredHeight, i35);
                        }
                    }
                    if (i23 >= 0 && i23 == i24 + 1) {
                        bvkVar.y = bvkVar.ai;
                    }
                    if (i24 < i23 && ((LinearLayout.LayoutParams) aobVar2).weight > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                    }
                    if (i25 == 1073741824 || ((LinearLayout.LayoutParams) aobVar2).width != -1) {
                        z7 = false;
                    } else {
                        z7 = true;
                        z11 = true;
                    }
                    int i40 = ((LinearLayout.LayoutParams) aobVar2).leftMargin + ((LinearLayout.LayoutParams) aobVar2).rightMargin;
                    int measuredWidth = view2.getMeasuredWidth() + i40;
                    i28 = Math.max(i28, measuredWidth);
                    int measuredState = view2.getMeasuredState();
                    boolean z13 = z7;
                    int combineMeasuredStates = View.combineMeasuredStates(i36, measuredState);
                    if (z12) {
                        i36 = combineMeasuredStates;
                        if (((LinearLayout.LayoutParams) aobVar2).width == -1) {
                            z8 = true;
                            if (((LinearLayout.LayoutParams) aobVar2).weight <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                                if (!z13) {
                                    i40 = measuredWidth;
                                }
                                i34 = Math.max(i34, i40);
                            } else {
                                if (!z13) {
                                    i40 = measuredWidth;
                                }
                                i33 = Math.max(i33, i40);
                            }
                            z12 = z8;
                            i32 = i24 + 1;
                            i31 = i23;
                            mode = i25;
                            z9 = z6;
                            mode2 = i22;
                            i27 = -2;
                            i29 = C.ENCODING_PCM_32BIT;
                            i30 = 8;
                        }
                    } else {
                        i36 = combineMeasuredStates;
                    }
                    z8 = false;
                    if (((LinearLayout.LayoutParams) aobVar2).weight <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    }
                    z12 = z8;
                    i32 = i24 + 1;
                    i31 = i23;
                    mode = i25;
                    z9 = z6;
                    mode2 = i22;
                    i27 = -2;
                    i29 = C.ENCODING_PCM_32BIT;
                    i30 = 8;
                }
                i22 = mode2;
                i23 = i31;
                z6 = z9;
                i24 = i32;
                i25 = i37;
                i32 = i24 + 1;
                i31 = i23;
                mode = i25;
                z9 = z6;
                mode2 = i22;
                i27 = -2;
                i29 = C.ENCODING_PCM_32BIT;
                i30 = 8;
            }
            int i41 = mode;
            int i42 = mode2;
            boolean z14 = z9;
            int i43 = i36;
            int i44 = i2;
            if (bvkVar.ai > 0 && bvkVar.al(virtualChildCount)) {
                bvkVar.ai += bvkVar.ah;
            }
            if (z14 && (i42 == Integer.MIN_VALUE || i42 == 0)) {
                bvkVar.ai = 0;
                for (int i45 = 0; i45 < virtualChildCount; i45++) {
                    View childAt2 = bvkVar.getChildAt(i45);
                    if (childAt2 == null) {
                        bvkVar.ai = bvkVar.ai;
                    } else if (childAt2.getVisibility() != 8) {
                        aob aobVar3 = (aob) childAt2.getLayoutParams();
                        int i46 = bvkVar.ai;
                        bvkVar.ai = Math.max(i46, i46 + i35 + ((LinearLayout.LayoutParams) aobVar3).topMargin + ((LinearLayout.LayoutParams) aobVar3).bottomMargin);
                    }
                }
            }
            int paddingBottom = bvkVar.getPaddingBottom() + bvkVar.getPaddingTop() + bvkVar.ai;
            bvkVar.ai = paddingBottom;
            int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingBottom, bvkVar.getSuggestedMinimumHeight()), i44, 0);
            int i47 = (resolveSizeAndState & 16777215) - bvkVar.ai;
            if (z10 || (i47 != 0 && f2 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT)) {
                float f4 = bvkVar.v;
                if (f4 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    f2 = f4;
                }
                bvkVar.ai = 0;
                int i48 = i43;
                int i49 = 0;
                while (i49 < virtualChildCount) {
                    View childAt3 = bvkVar.getChildAt(i49);
                    if (childAt3.getVisibility() == 8) {
                        i16 = i49;
                    } else {
                        aob aobVar4 = (aob) childAt3.getLayoutParams();
                        float f5 = ((LinearLayout.LayoutParams) aobVar4).weight;
                        if (f5 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                            int i50 = (int) ((i47 * f5) / f2);
                            f2 -= f5;
                            i47 -= i50;
                            i16 = i49;
                            int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, bvkVar.getPaddingRight() + bvkVar.getPaddingLeft() + ((LinearLayout.LayoutParams) aobVar4).leftMargin + ((LinearLayout.LayoutParams) aobVar4).rightMargin, ((LinearLayout.LayoutParams) aobVar4).width);
                            if (((LinearLayout.LayoutParams) aobVar4).height == 0) {
                                i18 = C.ENCODING_PCM_32BIT;
                                if (i42 == 1073741824) {
                                    if (i50 <= 0) {
                                        i50 = 0;
                                    }
                                    childAt3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i50, C.ENCODING_PCM_32BIT));
                                    i48 = View.combineMeasuredStates(i48, childAt3.getMeasuredState() & (-256));
                                }
                            } else {
                                i18 = C.ENCODING_PCM_32BIT;
                            }
                            int measuredHeight2 = childAt3.getMeasuredHeight() + i50;
                            if (measuredHeight2 < 0) {
                                measuredHeight2 = 0;
                            }
                            childAt3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(measuredHeight2, i18));
                            i48 = View.combineMeasuredStates(i48, childAt3.getMeasuredState() & (-256));
                        } else {
                            i16 = i49;
                        }
                        int i51 = ((LinearLayout.LayoutParams) aobVar4).leftMargin + ((LinearLayout.LayoutParams) aobVar4).rightMargin;
                        int measuredWidth2 = childAt3.getMeasuredWidth() + i51;
                        i28 = Math.max(i28, measuredWidth2);
                        if (i41 != 1073741824) {
                            i17 = -1;
                            if (((LinearLayout.LayoutParams) aobVar4).width == -1) {
                                measuredWidth2 = i51;
                            }
                        } else {
                            i17 = -1;
                        }
                        i33 = Math.max(i33, measuredWidth2);
                        boolean z15 = z12 && ((LinearLayout.LayoutParams) aobVar4).width == i17;
                        int i52 = bvkVar.ai;
                        bvkVar.ai = Math.max(i52, childAt3.getMeasuredHeight() + i52 + ((LinearLayout.LayoutParams) aobVar4).topMargin + ((LinearLayout.LayoutParams) aobVar4).bottomMargin);
                        z12 = z15;
                    }
                    i49 = i16 + 1;
                }
                bvkVar.ai = bvkVar.getPaddingBottom() + bvkVar.getPaddingTop() + bvkVar.ai;
                i43 = i48;
            } else {
                i33 = Math.max(i33, i34);
                if (z14 && i42 != 1073741824) {
                    for (int i53 = 0; i53 < virtualChildCount; i53++) {
                        View childAt4 = bvkVar.getChildAt(i53);
                        if (childAt4 != null && childAt4.getVisibility() != 8 && ((LinearLayout.LayoutParams) ((aob) childAt4.getLayoutParams())).weight > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                            childAt4.measure(View.MeasureSpec.makeMeasureSpec(childAt4.getMeasuredWidth(), C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(i35, C.ENCODING_PCM_32BIT));
                        }
                    }
                }
            }
            if (z12 || i41 == 1073741824) {
                i33 = i28;
            }
            bvkVar.setMeasuredDimension(View.resolveSizeAndState(Math.max(bvkVar.getPaddingRight() + bvkVar.getPaddingLeft() + i33, bvkVar.getSuggestedMinimumWidth()), i, i43), resolveSizeAndState);
            if (z11) {
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(bvkVar.getMeasuredWidth(), C.ENCODING_PCM_32BIT);
                int i54 = 0;
                while (i54 < virtualChildCount) {
                    View childAt5 = bvkVar.getChildAt(i54);
                    if (childAt5.getVisibility() != 8) {
                        aob aobVar5 = (aob) childAt5.getLayoutParams();
                        if (((LinearLayout.LayoutParams) aobVar5).width == -1) {
                            int i55 = ((LinearLayout.LayoutParams) aobVar5).height;
                            ((LinearLayout.LayoutParams) aobVar5).height = childAt5.getMeasuredHeight();
                            bvkVar.measureChildWithMargins(childAt5, makeMeasureSpec, 0, i44, 0);
                            ((LinearLayout.LayoutParams) aobVar5).height = i55;
                        }
                    }
                    i54++;
                    i44 = i2;
                }
                return;
            }
            return;
        }
        int i56 = i;
        bvkVar.ai = 0;
        int virtualChildCount2 = bvkVar.getVirtualChildCount();
        int mode3 = View.MeasureSpec.getMode(i56);
        int mode4 = View.MeasureSpec.getMode(i2);
        if (bvkVar.ae == null || bvkVar.x == null) {
            bvkVar.ae = new int[4];
            bvkVar.x = new int[4];
        }
        int[] iArr3 = bvkVar.ae;
        int[] iArr4 = bvkVar.x;
        iArr3[3] = -1;
        iArr3[2] = -1;
        iArr3[1] = -1;
        iArr3[0] = -1;
        iArr4[3] = -1;
        iArr4[2] = -1;
        iArr4[1] = -1;
        iArr4[0] = -1;
        boolean z16 = bvkVar.ad;
        boolean z17 = bvkVar.u;
        boolean z18 = mode3 == 1073741824;
        int i57 = 0;
        int i58 = 0;
        int i59 = 0;
        int i60 = 0;
        int i61 = 0;
        int i62 = 0;
        boolean z19 = false;
        boolean z20 = false;
        float f6 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        boolean z21 = true;
        while (i57 < virtualChildCount2) {
            View childAt6 = bvkVar.getChildAt(i57);
            if (childAt6 == null) {
                bvkVar.ai = bvkVar.ai;
                i11 = i57;
                i15 = i59;
                iArr2 = iArr3;
                iArr = iArr4;
                z2 = z16;
                z3 = z17;
            } else {
                int i63 = i58;
                if (childAt6.getVisibility() == 8) {
                    i56 = i;
                    i11 = i57;
                    i15 = i59;
                    iArr = iArr4;
                    z2 = z16;
                    z3 = z17;
                    i58 = i63;
                    iArr2 = iArr3;
                } else {
                    if (bvkVar.al(i57)) {
                        bvkVar.ai += bvkVar.z;
                    }
                    aob aobVar6 = (aob) childAt6.getLayoutParams();
                    float f7 = ((LinearLayout.LayoutParams) aobVar6).weight;
                    f6 += f7;
                    int i64 = i57;
                    if (mode3 == 1073741824 && ((LinearLayout.LayoutParams) aobVar6).width == 0 && f7 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        if (z18) {
                            bvkVar.ai = ((LinearLayout.LayoutParams) aobVar6).leftMargin + ((LinearLayout.LayoutParams) aobVar6).rightMargin + bvkVar.ai;
                        } else {
                            int i65 = bvkVar.ai;
                            bvkVar.ai = Math.max(i65, ((LinearLayout.LayoutParams) aobVar6).leftMargin + i65 + ((LinearLayout.LayoutParams) aobVar6).rightMargin);
                        }
                        if (z16) {
                            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
                            childAt6.measure(makeMeasureSpec2, makeMeasureSpec2);
                            view = childAt6;
                            z2 = z16;
                            z3 = z17;
                            i12 = i63;
                            i11 = i64;
                            aobVar = aobVar6;
                            iArr2 = iArr3;
                            iArr = iArr4;
                            i56 = i;
                            i13 = i59;
                            i10 = i60;
                        } else {
                            view = childAt6;
                            z2 = z16;
                            z3 = z17;
                            i12 = i63;
                            i11 = i64;
                            i14 = C.ENCODING_PCM_32BIT;
                            z20 = true;
                            aobVar = aobVar6;
                            iArr2 = iArr3;
                            iArr = iArr4;
                            i56 = i;
                            i13 = i59;
                            i10 = i60;
                            if (mode4 == i14 && ((LinearLayout.LayoutParams) aobVar).height == -1) {
                                z4 = true;
                                z19 = true;
                            } else {
                                z4 = false;
                            }
                            int i66 = ((LinearLayout.LayoutParams) aobVar).topMargin + ((LinearLayout.LayoutParams) aobVar).bottomMargin;
                            int measuredHeight3 = view.getMeasuredHeight() + i66;
                            i62 = View.combineMeasuredStates(i62, view.getMeasuredState());
                            if (z2) {
                                z5 = z4;
                            } else {
                                int baseline2 = view.getBaseline();
                                z5 = z4;
                                if (baseline2 != -1) {
                                    int i67 = ((LinearLayout.LayoutParams) aobVar).gravity;
                                    if (i67 < 0) {
                                        i67 = bvkVar.ac;
                                    }
                                    int i68 = (((i67 & 112) >> 4) & (-2)) >> 1;
                                    iArr2[i68] = Math.max(iArr2[i68], baseline2);
                                    iArr[i68] = Math.max(iArr[i68], measuredHeight3 - baseline2);
                                }
                            }
                            int max2 = Math.max(i12, measuredHeight3);
                            boolean z22 = !z21 && ((LinearLayout.LayoutParams) aobVar).height == -1;
                            if (((LinearLayout.LayoutParams) aobVar).weight <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                                if (!z5) {
                                    i66 = measuredHeight3;
                                }
                                i60 = Math.max(i10, i66);
                                max = i13;
                            } else {
                                if (!z5) {
                                    i66 = measuredHeight3;
                                }
                                max = Math.max(i13, i66);
                                i60 = i10;
                            }
                            int i69 = max;
                            i58 = max2;
                            i15 = i69;
                            z21 = z22;
                        }
                    } else {
                        if (((LinearLayout.LayoutParams) aobVar6).width != 0 || f7 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                            i9 = Integer.MIN_VALUE;
                        } else {
                            ((LinearLayout.LayoutParams) aobVar6).width = -2;
                            i9 = 0;
                        }
                        iArr = iArr4;
                        i10 = i60;
                        i11 = i64;
                        z2 = z16;
                        z3 = z17;
                        int i70 = i9;
                        aobVar = aobVar6;
                        i12 = i63;
                        i56 = i;
                        iArr2 = iArr3;
                        i13 = i59;
                        bvkVar.measureChildWithMargins(childAt6, i56, f6 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? bvkVar.ai : 0, i2, 0);
                        if (i70 != Integer.MIN_VALUE) {
                            ((LinearLayout.LayoutParams) aobVar).width = i70;
                        }
                        int measuredWidth3 = childAt6.getMeasuredWidth();
                        if (z18) {
                            view = childAt6;
                            bvkVar.ai = ((LinearLayout.LayoutParams) aobVar).leftMargin + measuredWidth3 + ((LinearLayout.LayoutParams) aobVar).rightMargin + bvkVar.ai;
                        } else {
                            view = childAt6;
                            int i71 = bvkVar.ai;
                            bvkVar.ai = Math.max(i71, i71 + measuredWidth3 + ((LinearLayout.LayoutParams) aobVar).leftMargin + ((LinearLayout.LayoutParams) aobVar).rightMargin);
                        }
                        if (z3) {
                            i61 = Math.max(measuredWidth3, i61);
                        }
                    }
                    i14 = C.ENCODING_PCM_32BIT;
                    if (mode4 == i14) {
                    }
                    z4 = false;
                    int i662 = ((LinearLayout.LayoutParams) aobVar).topMargin + ((LinearLayout.LayoutParams) aobVar).bottomMargin;
                    int measuredHeight32 = view.getMeasuredHeight() + i662;
                    i62 = View.combineMeasuredStates(i62, view.getMeasuredState());
                    if (z2) {
                    }
                    int max22 = Math.max(i12, measuredHeight32);
                    if (z21) {
                    }
                    if (((LinearLayout.LayoutParams) aobVar).weight <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    }
                    int i692 = max;
                    i58 = max22;
                    i15 = i692;
                    z21 = z22;
                }
            }
            i59 = i15;
            i57 = i11 + 1;
            iArr3 = iArr2;
            iArr4 = iArr;
            z16 = z2;
            z17 = z3;
        }
        int i72 = i58;
        int[] iArr5 = iArr3;
        int[] iArr6 = iArr4;
        boolean z23 = z16;
        boolean z24 = z17;
        int i73 = i59;
        int i74 = i60;
        if (bvkVar.ai > 0 && bvkVar.al(virtualChildCount2)) {
            bvkVar.ai += bvkVar.z;
        }
        int i75 = iArr5[1];
        int max3 = (i75 == -1 && iArr5[0] == -1 && iArr5[2] == -1 && iArr5[3] == -1) ? i72 : Math.max(i72, Math.max(iArr6[3], Math.max(iArr6[0], Math.max(iArr6[1], iArr6[2]))) + Math.max(iArr5[3], Math.max(iArr5[0], Math.max(i75, iArr5[2]))));
        if (z24 && (mode3 == Integer.MIN_VALUE || mode3 == 0)) {
            bvkVar.ai = 0;
            for (int i76 = 0; i76 < virtualChildCount2; i76++) {
                View childAt7 = bvkVar.getChildAt(i76);
                if (childAt7 == null) {
                    bvkVar.ai = bvkVar.ai;
                } else if (childAt7.getVisibility() != 8) {
                    aob aobVar7 = (aob) childAt7.getLayoutParams();
                    if (z18) {
                        bvkVar.ai = ((LinearLayout.LayoutParams) aobVar7).leftMargin + i61 + ((LinearLayout.LayoutParams) aobVar7).rightMargin + bvkVar.ai;
                    } else {
                        int i77 = bvkVar.ai;
                        bvkVar.ai = Math.max(i77, i77 + i61 + ((LinearLayout.LayoutParams) aobVar7).leftMargin + ((LinearLayout.LayoutParams) aobVar7).rightMargin);
                    }
                }
            }
        }
        int paddingRight = bvkVar.getPaddingRight() + bvkVar.getPaddingLeft() + bvkVar.ai;
        bvkVar.ai = paddingRight;
        int resolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingRight, bvkVar.getSuggestedMinimumWidth()), i56, 0);
        int i78 = (resolveSizeAndState2 & 16777215) - bvkVar.ai;
        if (z20 || (i78 != 0 && f6 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT)) {
            float f8 = bvkVar.v;
            if (f8 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                f6 = f8;
            }
            iArr5[3] = -1;
            iArr5[2] = -1;
            iArr5[1] = -1;
            iArr5[0] = -1;
            iArr6[3] = -1;
            iArr6[2] = -1;
            iArr6[1] = -1;
            iArr6[0] = -1;
            bvkVar.ai = 0;
            max3 = -1;
            int i79 = 0;
            while (i79 < virtualChildCount2) {
                View childAt8 = bvkVar.getChildAt(i79);
                if (childAt8 == null || childAt8.getVisibility() == 8) {
                    i6 = resolveSizeAndState2;
                } else {
                    aob aobVar8 = (aob) childAt8.getLayoutParams();
                    float f9 = ((LinearLayout.LayoutParams) aobVar8).weight;
                    if (f9 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        int i80 = (int) ((i78 * f9) / f6);
                        f6 -= f9;
                        i78 -= i80;
                        i6 = resolveSizeAndState2;
                        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i2, bvkVar.getPaddingBottom() + bvkVar.getPaddingTop() + ((LinearLayout.LayoutParams) aobVar8).topMargin + ((LinearLayout.LayoutParams) aobVar8).bottomMargin, ((LinearLayout.LayoutParams) aobVar8).height);
                        if (((LinearLayout.LayoutParams) aobVar8).width == 0) {
                            i8 = C.ENCODING_PCM_32BIT;
                            if (mode3 == 1073741824) {
                                if (i80 <= 0) {
                                    i80 = 0;
                                }
                                childAt8.measure(View.MeasureSpec.makeMeasureSpec(i80, C.ENCODING_PCM_32BIT), childMeasureSpec2);
                                i62 = View.combineMeasuredStates(i62, childAt8.getMeasuredState() & (-16777216));
                            }
                        } else {
                            i8 = C.ENCODING_PCM_32BIT;
                        }
                        int measuredWidth4 = childAt8.getMeasuredWidth() + i80;
                        if (measuredWidth4 < 0) {
                            measuredWidth4 = 0;
                        }
                        childAt8.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth4, i8), childMeasureSpec2);
                        i62 = View.combineMeasuredStates(i62, childAt8.getMeasuredState() & (-16777216));
                    } else {
                        i6 = resolveSizeAndState2;
                    }
                    if (z18) {
                        bvkVar.ai = childAt8.getMeasuredWidth() + ((LinearLayout.LayoutParams) aobVar8).leftMargin + ((LinearLayout.LayoutParams) aobVar8).rightMargin + bvkVar.ai;
                    } else {
                        int i81 = bvkVar.ai;
                        bvkVar.ai = Math.max(i81, childAt8.getMeasuredWidth() + i81 + ((LinearLayout.LayoutParams) aobVar8).leftMargin + ((LinearLayout.LayoutParams) aobVar8).rightMargin);
                    }
                    boolean z25 = mode4 != 1073741824 && ((LinearLayout.LayoutParams) aobVar8).height == -1;
                    int i82 = ((LinearLayout.LayoutParams) aobVar8).topMargin + ((LinearLayout.LayoutParams) aobVar8).bottomMargin;
                    int measuredHeight4 = childAt8.getMeasuredHeight() + i82;
                    max3 = Math.max(max3, measuredHeight4);
                    if (!z25) {
                        i82 = measuredHeight4;
                    }
                    int max4 = Math.max(i73, i82);
                    if (z21) {
                        i7 = -1;
                        if (((LinearLayout.LayoutParams) aobVar8).height == -1) {
                            z = true;
                            if (!z23 && (baseline = childAt8.getBaseline()) != i7) {
                                int i83 = ((LinearLayout.LayoutParams) aobVar8).gravity;
                                if (i83 < 0) {
                                    i83 = bvkVar.ac;
                                }
                                int i84 = (((i83 & 112) >> 4) & (-2)) >> 1;
                                iArr5[i84] = Math.max(iArr5[i84], baseline);
                                iArr6[i84] = Math.max(iArr6[i84], measuredHeight4 - baseline);
                            }
                            z21 = z;
                            i73 = max4;
                        }
                    } else {
                        i7 = -1;
                    }
                    z = false;
                    if (!z23) {
                    }
                    z21 = z;
                    i73 = max4;
                }
                i79++;
                resolveSizeAndState2 = i6;
            }
            i3 = resolveSizeAndState2;
            i4 = -16777216;
            bvkVar.ai = bvkVar.getPaddingRight() + bvkVar.getPaddingLeft() + bvkVar.ai;
            int i85 = iArr5[1];
            if (i85 != -1 || iArr5[0] != -1 || iArr5[2] != -1 || iArr5[3] != -1) {
                max3 = Math.max(max3, Math.max(iArr6[3], Math.max(iArr6[0], Math.max(iArr6[1], iArr6[2]))) + Math.max(iArr5[3], Math.max(iArr5[0], Math.max(i85, iArr5[2]))));
            }
            i5 = i73;
        } else {
            i5 = Math.max(i73, i74);
            if (z24 && mode3 != 1073741824) {
                for (int i86 = 0; i86 < virtualChildCount2; i86++) {
                    View childAt9 = bvkVar.getChildAt(i86);
                    if (childAt9 != null && childAt9.getVisibility() != 8 && ((LinearLayout.LayoutParams) ((aob) childAt9.getLayoutParams())).weight > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        childAt9.measure(View.MeasureSpec.makeMeasureSpec(i61, C.ENCODING_PCM_32BIT), View.MeasureSpec.makeMeasureSpec(childAt9.getMeasuredHeight(), C.ENCODING_PCM_32BIT));
                    }
                }
            }
            i3 = resolveSizeAndState2;
            i4 = -16777216;
        }
        if (!z21 && mode4 != 1073741824) {
            max3 = i5;
        }
        bvkVar.setMeasuredDimension(i3 | (i62 & i4), View.resolveSizeAndState(Math.max(bvkVar.getPaddingBottom() + bvkVar.getPaddingTop() + max3, bvkVar.getSuggestedMinimumHeight()), i2, i62 << 16));
        if (z19) {
            int makeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(bvkVar.getMeasuredHeight(), C.ENCODING_PCM_32BIT);
            int i87 = 0;
            while (i87 < virtualChildCount2) {
                View childAt10 = bvkVar.getChildAt(i87);
                if (childAt10.getVisibility() != 8) {
                    aob aobVar9 = (aob) childAt10.getLayoutParams();
                    if (((LinearLayout.LayoutParams) aobVar9).height == -1) {
                        int i88 = ((LinearLayout.LayoutParams) aobVar9).width;
                        ((LinearLayout.LayoutParams) aobVar9).width = childAt10.getMeasuredWidth();
                        bvkVar.measureChildWithMargins(childAt10, i56, 0, makeMeasureSpec3, 0);
                        ((LinearLayout.LayoutParams) aobVar9).width = i88;
                    }
                }
                i87++;
                bvkVar = this;
                i56 = i;
            }
        }
    }

    @Override // android.view.ViewGroup
    /* renamed from: q, reason: merged with bridge method [inline-methods] */
    public aob generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof aob ? new aob((aob) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new aob((ViewGroup.MarginLayoutParams) layoutParams) : new aob(layoutParams);
    }

    @Override // android.view.ViewGroup
    /* renamed from: s, reason: merged with bridge method [inline-methods] */
    public aob generateDefaultLayoutParams() {
        int i = this.f12270ab;
        if (i == 0) {
            return new aob(-2, -2);
        }
        if (i == 1) {
            return new aob(-1, -2);
        }
        return null;
    }

    public void setBaselineAligned(boolean z) {
        this.ad = z;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i >= 0 && i < getChildCount()) {
            this.af = i;
            return;
        }
        throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.aa) {
            return;
        }
        this.aa = drawable;
        if (drawable != null) {
            this.z = drawable.getIntrinsicWidth();
            this.ah = drawable.getIntrinsicHeight();
        } else {
            this.z = 0;
            this.ah = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }

    public void setDividerPadding(int i) {
        this.w = i;
    }

    public void setGravity(int i) {
        if (this.ac != i) {
            if ((8388615 & i) == 0) {
                i |= 8388611;
            }
            if ((i & 112) == 0) {
                i |= 48;
            }
            this.ac = i;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & 8388615;
        int i3 = this.ac;
        if ((8388615 & i3) != i2) {
            this.ac = i2 | ((-8388616) & i3);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.u = z;
    }

    public void setOrientation(int i) {
        if (this.f12270ab != i) {
            this.f12270ab = i;
            requestLayout();
        }
    }

    public void setShowDividers(int i) {
        if (i != this.ag) {
            requestLayout();
        }
        this.ag = i;
    }

    public void setVerticalGravity(int i) {
        int i2 = i & 112;
        int i3 = this.ac;
        if ((i3 & 112) != i2) {
            this.ac = i2 | (i3 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f2) {
        this.v = Math.max(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, f2);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    /* renamed from: t, reason: merged with bridge method [inline-methods] */
    public aob generateLayoutParams(AttributeSet attributeSet) {
        return new aob(getContext(), attributeSet);
    }
}
