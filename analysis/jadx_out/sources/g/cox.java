package g;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import android.widget.ListAdapter;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class cox extends cfi implements uw {
    public final Rect ar;
    public brk as;
    public final /* synthetic */ erv at;
    public int au;
    public CharSequence l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cox(erv ervVar, Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.spinnerStyle, 0);
        this.at = ervVar;
        this.ar = new Rect();
        this.v = ervVar;
        this.t = true;
        this.ag.setFocusable(true);
        this.q = new yq(0, this);
    }

    @Override // g.uw
    public final void _cg(CharSequence charSequence) {
        this.l = charSequence;
    }

    public final void av() {
        int i;
        erv ervVar = this.at;
        Rect rect = ervVar.f16061b;
        ui uiVar = this.ag;
        Drawable background = uiVar.getBackground();
        if (background != null) {
            background.getPadding(rect);
            boolean z = dnh.f14457a;
            i = ervVar.getLayoutDirection() == 1 ? rect.right : -rect.left;
        } else {
            i = 0;
            rect.right = 0;
            rect.left = 0;
        }
        int paddingLeft = ervVar.getPaddingLeft();
        int paddingRight = ervVar.getPaddingRight();
        int width = ervVar.getWidth();
        int i2 = ervVar.f16062c;
        if (i2 == -2) {
            int j = ervVar.j(this.as, uiVar.getBackground());
            int i3 = (ervVar.getContext().getResources().getDisplayMetrics().widthPixels - rect.left) - rect.right;
            if (j > i3) {
                j = i3;
            }
            ap(Math.max(j, (width - paddingLeft) - paddingRight));
        } else if (i2 == -1) {
            ap((width - paddingLeft) - paddingRight);
        } else {
            ap(i2);
        }
        boolean z2 = dnh.f14457a;
        this.ao = ervVar.getLayoutDirection() == 1 ? (((width - paddingRight) - this.ad) - this.au) + i : paddingLeft + this.au + i;
    }

    @Override // g.uw
    public final void b(int i, int i2) {
        ViewTreeObserver viewTreeObserver;
        ui uiVar = this.ag;
        boolean isShowing = uiVar.isShowing();
        av();
        this.ag.setInputMethodMode(2);
        show();
        bgv bgvVar = this.x;
        bgvVar.setChoiceMode(1);
        bgvVar.setTextDirection(i);
        bgvVar.setTextAlignment(i2);
        erv ervVar = this.at;
        int selectedItemPosition = ervVar.getSelectedItemPosition();
        bgv bgvVar2 = this.x;
        if (uiVar.isShowing() && bgvVar2 != null) {
            bgvVar2.setListSelectionHidden(false);
            bgvVar2.setSelection(selectedItemPosition);
            if (bgvVar2.getChoiceMode() != 0) {
                bgvVar2.setItemChecked(selectedItemPosition, true);
            }
        }
        if (isShowing || (viewTreeObserver = ervVar.getViewTreeObserver()) == null) {
            return;
        }
        fhv fhvVar = new fhv(1, this);
        viewTreeObserver.addOnGlobalLayoutListener(fhvVar);
        this.ag.setOnDismissListener(new dep(this, fhvVar));
    }

    @Override // g.uw
    public final CharSequence c() {
        return this.l;
    }

    @Override // g.cfi, g.uw
    public final void h(ListAdapter listAdapter) {
        super.h(listAdapter);
        this.as = (brk) listAdapter;
    }

    @Override // g.uw
    public final void j(int i) {
        this.au = i;
    }
}
