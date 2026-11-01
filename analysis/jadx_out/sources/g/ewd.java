package g;

import android.view.View;

/* loaded from: classes.dex */
public final /* synthetic */ class ewd implements View.OnLayoutChangeListener {
    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        float f2 = view.getResources().getDisplayMetrics().density;
        int max = Math.max(0, ((i3 - i) - Math.round(f2 * 720.0f)) / 2) + Math.round(12.0f * f2);
        if (view.getPaddingLeft() != max) {
            view.setPadding(max, view.getPaddingTop(), max, view.getPaddingBottom());
        }
    }
}
