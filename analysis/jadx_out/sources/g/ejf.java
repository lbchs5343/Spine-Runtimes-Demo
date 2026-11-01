package g;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class ejf extends fji {

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f15643b = {R.attr.listDivider};

    /* renamed from: c, reason: collision with root package name */
    public Drawable f15644c;

    /* renamed from: d, reason: collision with root package name */
    public final int f15645d;

    /* renamed from: e, reason: collision with root package name */
    public final Rect f15646e = new Rect();

    public ejf(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f15643b);
        this.f15644c = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("Invalid orientation. It should be either HORIZONTAL or VERTICAL");
        }
        this.f15645d = i;
    }

    @Override // g.fji
    public final void a(Canvas canvas, RecyclerView recyclerView) {
        int height;
        int i;
        int width;
        int i2;
        if (recyclerView.getLayoutManager() == null || this.f15644c == null) {
            return;
        }
        int i3 = this.f15645d;
        int i4 = 0;
        Rect rect = this.f15646e;
        if (i3 == 1) {
            canvas.save();
            if (recyclerView.getClipToPadding()) {
                i2 = recyclerView.getPaddingLeft();
                width = recyclerView.getWidth() - recyclerView.getPaddingRight();
                canvas.clipRect(i2, recyclerView.getPaddingTop(), width, recyclerView.getHeight() - recyclerView.getPaddingBottom());
            } else {
                width = recyclerView.getWidth();
                i2 = 0;
            }
            int childCount = recyclerView.getChildCount();
            while (i4 < childCount) {
                View childAt = recyclerView.getChildAt(i4);
                recyclerView.getDecoratedBoundsWithMargins(childAt, rect);
                int round = Math.round(childAt.getTranslationY()) + rect.bottom;
                this.f15644c.setBounds(i2, round - this.f15644c.getIntrinsicHeight(), width, round);
                this.f15644c.draw(canvas);
                i4++;
            }
            canvas.restore();
            return;
        }
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            i = recyclerView.getPaddingTop();
            height = recyclerView.getHeight() - recyclerView.getPaddingBottom();
            canvas.clipRect(recyclerView.getPaddingLeft(), i, recyclerView.getWidth() - recyclerView.getPaddingRight(), height);
        } else {
            height = recyclerView.getHeight();
            i = 0;
        }
        int childCount2 = recyclerView.getChildCount();
        while (i4 < childCount2) {
            View childAt2 = recyclerView.getChildAt(i4);
            recyclerView.getLayoutManager().ek(childAt2, rect);
            int round2 = Math.round(childAt2.getTranslationX()) + rect.right;
            this.f15644c.setBounds(round2 - this.f15644c.getIntrinsicWidth(), i, round2, height);
            this.f15644c.draw(canvas);
            i4++;
        }
        canvas.restore();
    }

    @Override // g.fji
    public final void g(Rect rect, View view, RecyclerView recyclerView, aqz aqzVar) {
        Drawable drawable = this.f15644c;
        if (drawable == null) {
            rect.set(0, 0, 0, 0);
        } else if (this.f15645d == 1) {
            rect.set(0, 0, 0, drawable.getIntrinsicHeight());
        } else {
            rect.set(0, 0, drawable.getIntrinsicWidth(), 0);
        }
    }
}
