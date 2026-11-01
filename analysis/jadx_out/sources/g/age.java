package g;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;

/* loaded from: classes3.dex */
public final class age extends gu {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ aap f10176d;

    public age(aap aapVar) {
        this.f10176d = aapVar;
    }

    @Override // g.gu
    public final void b(Drawable drawable) {
        ColorStateList colorStateList = this.f10176d.j;
        if (colorStateList != null) {
            drawable.setTintList(colorStateList);
        }
    }

    @Override // g.gu
    public final void c(Drawable drawable) {
        aap aapVar = this.f10176d;
        ColorStateList colorStateList = aapVar.j;
        if (colorStateList != null) {
            drawable.setTint(colorStateList.getColorForState(aapVar.o, colorStateList.getDefaultColor()));
        }
    }
}
