package g;

import android.widget.ImageView;

/* loaded from: classes3.dex */
public final class fgs {

    /* renamed from: a, reason: collision with root package name */
    public final String f16751a;

    /* renamed from: b, reason: collision with root package name */
    public final fgs f16752b;

    /* renamed from: c, reason: collision with root package name */
    public final akf f16753c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f16754d;

    /* renamed from: e, reason: collision with root package name */
    public final fpu f16755e;

    /* renamed from: f, reason: collision with root package name */
    public final bvu f16756f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f16757g;

    public fgs(akf akfVar, ImageView imageView, fpu fpuVar, String str) {
        this.f16753c = akfVar;
        this.f16755e = fpuVar;
        this.f16756f = imageView == null ? null : new bvu(this, imageView, akfVar.f10375c);
        this.f16751a = str;
        this.f16752b = this;
    }

    public final Object h() {
        bvu bvuVar = this.f16756f;
        if (bvuVar == null) {
            return null;
        }
        return bvuVar.get();
    }
}
