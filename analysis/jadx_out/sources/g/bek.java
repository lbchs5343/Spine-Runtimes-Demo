package g;

import android.graphics.Typeface;

/* loaded from: classes3.dex */
public final class bek extends dzm {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ fso f11377a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ asw f11378b;

    public bek(asw aswVar, fso fsoVar) {
        this.f11378b = aswVar;
        this.f11377a = fsoVar;
    }

    @Override // g.dzm
    public final void c(int i) {
        this.f11378b.f10780d = true;
        this.f11377a.d(i);
    }

    @Override // g.dzm
    public final void d(Typeface typeface) {
        asw aswVar = this.f11378b;
        aswVar.j = Typeface.create(typeface, aswVar.f10781e);
        aswVar.f10780d = true;
        this.f11377a.e(aswVar.j, false);
    }
}
