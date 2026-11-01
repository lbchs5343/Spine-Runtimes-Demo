package g;

import android.content.res.ColorStateList;
import android.graphics.Paint;

/* loaded from: classes.dex */
public final class atx extends rq {

    /* renamed from: d, reason: collision with root package name */
    public float f10839d;

    /* renamed from: e, reason: collision with root package name */
    public float f10840e;

    /* renamed from: f, reason: collision with root package name */
    public float f10841f;

    /* renamed from: g, reason: collision with root package name */
    public dsg f10842g;
    public Paint.Cap h;
    public float i;
    public dsg j;
    public Paint.Join k;
    public float l;
    public float m;
    public float n;

    public float getFillAlpha() {
        return this.f10839d;
    }

    public int getFillColor() {
        return this.j.f14707d;
    }

    public float getStrokeAlpha() {
        return this.n;
    }

    public int getStrokeColor() {
        return this.f10842g.f14707d;
    }

    public float getStrokeWidth() {
        return this.i;
    }

    public float getTrimPathEnd() {
        return this.m;
    }

    public float getTrimPathOffset() {
        return this.f10840e;
    }

    public float getTrimPathStart() {
        return this.l;
    }

    @Override // g.dtb
    public final boolean o() {
        return this.j.t() || this.f10842g.t();
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0027  */
    @Override // g.dtb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean p(int[] iArr) {
        boolean z;
        dsg dsgVar;
        dsg dsgVar2 = this.j;
        boolean z2 = true;
        if (dsgVar2.t()) {
            ColorStateList colorStateList = (ColorStateList) dsgVar2.f14705b;
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (colorForState != dsgVar2.f14707d) {
                dsgVar2.f14707d = colorForState;
                z = true;
                dsgVar = this.f10842g;
                if (dsgVar.t()) {
                    ColorStateList colorStateList2 = (ColorStateList) dsgVar.f14705b;
                    int colorForState2 = colorStateList2.getColorForState(iArr, colorStateList2.getDefaultColor());
                    if (colorForState2 != dsgVar.f14707d) {
                        dsgVar.f14707d = colorForState2;
                        return z | z2;
                    }
                }
                z2 = false;
                return z | z2;
            }
        }
        z = false;
        dsgVar = this.f10842g;
        if (dsgVar.t()) {
        }
        z2 = false;
        return z | z2;
    }

    public void setFillAlpha(float f2) {
        this.f10839d = f2;
    }

    public void setFillColor(int i) {
        this.j.f14707d = i;
    }

    public void setStrokeAlpha(float f2) {
        this.n = f2;
    }

    public void setStrokeColor(int i) {
        this.f10842g.f14707d = i;
    }

    public void setStrokeWidth(float f2) {
        this.i = f2;
    }

    public void setTrimPathEnd(float f2) {
        this.m = f2;
    }

    public void setTrimPathOffset(float f2) {
        this.f10840e = f2;
    }

    public void setTrimPathStart(float f2) {
        this.l = f2;
    }
}
