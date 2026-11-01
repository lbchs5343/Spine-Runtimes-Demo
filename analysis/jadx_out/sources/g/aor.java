package g;

import android.graphics.Typeface;

/* loaded from: classes3.dex */
public final class aor extends fso {

    /* renamed from: a, reason: collision with root package name */
    public final Typeface f10580a;

    /* renamed from: b, reason: collision with root package name */
    public final fc f10581b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f10582c;

    public aor(fc fcVar, Typeface typeface) {
        this.f10580a = typeface;
        this.f10581b = fcVar;
    }

    @Override // g.fso
    public final void d(int i) {
        if (this.f10582c) {
            return;
        }
        hdh hdhVar = (hdh) this.f10581b.f16548e;
        if (hdhVar.br(this.f10580a)) {
            hdhVar.bx(false);
        }
    }

    @Override // g.fso
    public final void e(Typeface typeface, boolean z) {
        if (this.f10582c) {
            return;
        }
        hdh hdhVar = (hdh) this.f10581b.f16548e;
        if (hdhVar.br(typeface)) {
            hdhVar.bx(false);
        }
    }
}
