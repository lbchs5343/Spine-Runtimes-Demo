package g;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* loaded from: classes3.dex */
public final class ehw extends dwo {
    public final RectF r;

    public ehw(cjg cjgVar, RectF rectF) {
        super(cjgVar);
        this.r = rectF;
    }

    public ehw(ehw ehwVar) {
        super(ehwVar);
        this.r = ehwVar.r;
    }

    @Override // g.dwo, android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        fym fymVar = new fym(this);
        fymVar.f17642b = this;
        fymVar.invalidateSelf();
        return fymVar;
    }
}
