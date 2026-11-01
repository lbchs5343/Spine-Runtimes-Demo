package g;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes3.dex */
public final class cnm extends fji {

    /* renamed from: b, reason: collision with root package name */
    public Drawable f13177b;

    @Override // g.fji
    public final void a(Canvas canvas, RecyclerView recyclerView) {
        Drawable drawable = this.f13177b;
        int paddingLeft = recyclerView.getPaddingLeft();
        int width = recyclerView.getWidth() - recyclerView.getPaddingRight();
        int childCount = recyclerView.getChildCount();
        for (int i = 0; i < childCount - 1; i++) {
            View childAt = recyclerView.getChildAt(i);
            int bottom = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) ((yx) childAt.getLayoutParams())).bottomMargin;
            drawable.setBounds(paddingLeft, bottom, width, drawable.getIntrinsicHeight() + bottom);
            drawable.draw(canvas);
        }
    }

    @Override // g.fji
    public final void g(Rect rect, View view, RecyclerView recyclerView, aqz aqzVar) {
        super.g(rect, view, recyclerView, aqzVar);
        if (recyclerView.getChildAdapterPosition(view) == 0) {
            return;
        }
        rect.top = this.f13177b.getIntrinsicHeight();
    }
}
