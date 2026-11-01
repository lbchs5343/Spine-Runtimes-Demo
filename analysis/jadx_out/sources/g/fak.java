package g;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;

/* loaded from: classes.dex */
public final class fak extends androidx.recyclerview.widget.i {
    public final /* synthetic */ bnj y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fak(bnj bnjVar, Context context) {
        super(context);
        this.y = bnjVar;
    }

    @Override // androidx.recyclerview.widget.i
    public final void q(View view, androidx.recyclerview.widget.c cVar) {
        bnj bnjVar = this.y;
        int[] i = bnjVar.i(bnjVar.f11874b.getLayoutManager(), view);
        int i2 = i[0];
        int i3 = i[1];
        int ceil = (int) Math.ceil(s(Math.max(Math.abs(i2), Math.abs(i3))) / 0.3356d);
        if (ceil > 0) {
            cVar.f262c = i2;
            cVar.f264e = i3;
            cVar.f265f = ceil;
            cVar.f261b = this.k;
            cVar.f263d = true;
        }
    }

    @Override // androidx.recyclerview.widget.i
    public final float r(DisplayMetrics displayMetrics) {
        return 100.0f / displayMetrics.densityDpi;
    }

    @Override // androidx.recyclerview.widget.i
    public final int s(int i) {
        return Math.min(100, super.s(i));
    }
}
