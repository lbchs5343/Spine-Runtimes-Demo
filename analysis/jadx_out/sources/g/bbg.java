package g;

import android.graphics.drawable.Drawable;

/* loaded from: classes3.dex */
public final class bbg extends gu {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f11219d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ gqz f11220e;

    public /* synthetic */ bbg(gqz gqzVar, int i) {
        this.f11219d = i;
        this.f11220e = gqzVar;
    }

    @Override // g.gu
    public final void b(Drawable drawable) {
        switch (this.f11219d) {
            case 0:
                gqz gqzVar = this.f11220e;
                gqzVar.setIndeterminate(false);
                gqzVar.b(gqzVar.m);
                break;
            default:
                gqz gqzVar2 = this.f11220e;
                if (!gqzVar2.n) {
                    gqzVar2.setVisibility(gqzVar2.f18620d);
                    break;
                }
                break;
        }
    }
}
