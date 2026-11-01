package g;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

/* loaded from: classes3.dex */
public final class dcx extends ArrayAdapter {

    /* renamed from: a, reason: collision with root package name */
    public ColorStateList f13989a;

    /* renamed from: b, reason: collision with root package name */
    public ColorStateList f13990b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ faa f13991c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dcx(faa faaVar, Context context, int i, String[] strArr) {
        super(context, i, strArr);
        this.f13991c = faaVar;
        d();
    }

    public final void d() {
        ColorStateList colorStateList;
        faa faaVar = this.f13991c;
        ColorStateList colorStateList2 = faaVar.h;
        ColorStateList colorStateList3 = null;
        if (colorStateList2 != null) {
            int[] iArr = {R.attr.state_pressed};
            colorStateList = new ColorStateList(new int[][]{iArr, new int[0]}, new int[]{colorStateList2.getColorForState(iArr, 0), 0});
        } else {
            colorStateList = null;
        }
        this.f13990b = colorStateList;
        if (faaVar.i != 0 && faaVar.h != null) {
            int[] iArr2 = {R.attr.state_hovered, -16842919};
            int[] iArr3 = {R.attr.state_selected, -16842919};
            colorStateList3 = new ColorStateList(new int[][]{iArr3, iArr2, new int[0]}, new int[]{afr.f(faaVar.h.getColorForState(iArr3, 0), faaVar.i), afr.f(faaVar.h.getColorForState(iArr2, 0), faaVar.i), faaVar.i});
        }
        this.f13989a = colorStateList3;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i, view, viewGroup);
        if (view2 instanceof TextView) {
            TextView textView = (TextView) view2;
            faa faaVar = this.f13991c;
            Drawable drawable = null;
            if (faaVar.getText().toString().contentEquals(textView.getText()) && faaVar.i != 0) {
                ColorDrawable colorDrawable = new ColorDrawable(faaVar.i);
                if (this.f13990b != null) {
                    colorDrawable.setTintList(this.f13989a);
                    drawable = new RippleDrawable(this.f13990b, colorDrawable, null);
                } else {
                    drawable = colorDrawable;
                }
            }
            textView.setBackground(drawable);
        }
        return view2;
    }
}
