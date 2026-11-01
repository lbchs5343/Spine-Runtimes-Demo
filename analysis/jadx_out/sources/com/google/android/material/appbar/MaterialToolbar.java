package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.C;
import g.acr;
import g.aqn;
import g.ddm;
import g.dzm;
import g.egh;
import g.eyt;
import g.git;
import g.kj;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes3.dex */
public class MaterialToolbar extends Toolbar {
    public static final ImageView.ScaleType[] bq = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};
    public Integer br;
    public boolean bs;
    public boolean bt;
    public ImageView.ScaleType bu;
    public Boolean bv;

    public MaterialToolbar(Context context, AttributeSet attributeSet) {
        super(egh.ax(context, attributeSet, R.attr.toolbarStyle, R.style.Widget_MaterialComponents_Toolbar), attributeSet, 0);
        Context context2 = getContext();
        TypedArray bd = eyt.bd(context2, attributeSet, git.f18216ab, R.attr.toolbarStyle, R.style.Widget_MaterialComponents_Toolbar, new int[0]);
        if (bd.hasValue(2)) {
            setNavigationIconTint(bd.getColor(2, -1));
        }
        this.bt = bd.getBoolean(4, false);
        this.bs = bd.getBoolean(3, false);
        int i = bd.getInt(1, -1);
        if (i >= 0) {
            ImageView.ScaleType[] scaleTypeArr = bq;
            if (i < scaleTypeArr.length) {
                this.bu = scaleTypeArr[i];
            }
        }
        if (bd.hasValue(0)) {
            this.bv = Boolean.valueOf(bd.getBoolean(0, false));
        }
        bd.recycle();
        Drawable background = getBackground();
        ColorStateList valueOf = background == null ? ColorStateList.valueOf(0) : acr.bw(background);
        if (valueOf != null) {
            ddm ddmVar = new ddm();
            ddmVar.en(valueOf);
            ddmVar.ef(context2);
            ddmVar.ec(getElevation());
            setBackground(ddmVar);
        }
    }

    public final void bw(TextView textView, Pair pair) {
        int measuredWidth = getMeasuredWidth();
        int measuredWidth2 = textView.getMeasuredWidth();
        int i = (measuredWidth / 2) - (measuredWidth2 / 2);
        int i2 = measuredWidth2 + i;
        int max = Math.max(Math.max(((Integer) pair.first).intValue() - i, 0), Math.max(i2 - ((Integer) pair.second).intValue(), 0));
        if (max > 0) {
            i += max;
            i2 -= max;
            textView.measure(View.MeasureSpec.makeMeasureSpec(i2 - i, C.ENCODING_PCM_32BIT), textView.getMeasuredHeightAndState());
        }
        textView.layout(i, textView.getTop(), i2, textView.getBottom());
    }

    public ImageView.ScaleType getLogoScaleType() {
        return this.bu;
    }

    public Integer getNavigationIconTint() {
        return this.br;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable background = getBackground();
        if (background instanceof ddm) {
            kj.j(this, (ddm) background);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        ImageView imageView;
        Drawable drawable;
        super.onLayout(z, i, i2, i3, i4);
        int i5 = 0;
        ImageView imageView2 = null;
        if (this.bt || this.bs) {
            ArrayList x = kj.x(this, getTitle());
            boolean isEmpty = x.isEmpty();
            aqn aqnVar = kj.f19549g;
            TextView textView = isEmpty ? null : (TextView) Collections.min(x, aqnVar);
            ArrayList x2 = kj.x(this, getSubtitle());
            TextView textView2 = x2.isEmpty() ? null : (TextView) Collections.max(x2, aqnVar);
            if (textView != null || textView2 != null) {
                int measuredWidth = getMeasuredWidth();
                int i6 = measuredWidth / 2;
                int paddingLeft = getPaddingLeft();
                int paddingRight = measuredWidth - getPaddingRight();
                for (int i7 = 0; i7 < getChildCount(); i7++) {
                    View childAt = getChildAt(i7);
                    if (childAt.getVisibility() != 8 && childAt != textView && childAt != textView2) {
                        if (childAt.getRight() < i6 && childAt.getRight() > paddingLeft) {
                            paddingLeft = childAt.getRight();
                        }
                        if (childAt.getLeft() > i6 && childAt.getLeft() < paddingRight) {
                            paddingRight = childAt.getLeft();
                        }
                    }
                }
                Pair pair = new Pair(Integer.valueOf(paddingLeft), Integer.valueOf(paddingRight));
                if (this.bt && textView != null) {
                    bw(textView, pair);
                }
                if (this.bs && textView2 != null) {
                    bw(textView2, pair);
                }
            }
        }
        Drawable logo = getLogo();
        if (logo != null) {
            while (true) {
                if (i5 >= getChildCount()) {
                    break;
                }
                View childAt2 = getChildAt(i5);
                if ((childAt2 instanceof ImageView) && (drawable = (imageView = (ImageView) childAt2).getDrawable()) != null && drawable.getConstantState() != null && drawable.getConstantState().equals(logo.getConstantState())) {
                    imageView2 = imageView;
                    break;
                }
                i5++;
            }
        }
        if (imageView2 != null) {
            Boolean bool = this.bv;
            if (bool != null) {
                imageView2.setAdjustViewBounds(bool.booleanValue());
            }
            ImageView.ScaleType scaleType = this.bu;
            if (scaleType != null) {
                imageView2.setScaleType(scaleType);
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f2) {
        super.setElevation(f2);
        Drawable background = getBackground();
        if (background instanceof ddm) {
            ((ddm) background).ec(f2);
        }
    }

    public void setLogoAdjustViewBounds(boolean z) {
        Boolean bool = this.bv;
        if (bool == null || bool.booleanValue() != z) {
            this.bv = Boolean.valueOf(z);
            requestLayout();
        }
    }

    public void setLogoScaleType(ImageView.ScaleType scaleType) {
        if (this.bu != scaleType) {
            this.bu = scaleType;
            requestLayout();
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null && this.br != null) {
            drawable = dzm.aw(drawable.mutate());
            drawable.setTint(this.br.intValue());
        }
        super.setNavigationIcon(drawable);
    }

    public void setNavigationIconTint(int i) {
        this.br = Integer.valueOf(i);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    public void setSubtitleCentered(boolean z) {
        if (this.bs != z) {
            this.bs = z;
            requestLayout();
        }
    }

    public void setTitleCentered(boolean z) {
        if (this.bt != z) {
            this.bt = z;
            requestLayout();
        }
    }
}
