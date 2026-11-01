package g;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;

/* loaded from: classes.dex */
public final class ggx implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ fnq f18133a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f18134b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Bitmap f18135c;

    public /* synthetic */ ggx(fnq fnqVar, Bitmap bitmap, int i) {
        this.f18134b = i;
        this.f18133a = fnqVar;
        this.f18135c = bitmap;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f18134b) {
            case 0:
                ((dlv) this.f18133a.f17099f).dq(new BitmapDrawable(this.f18135c));
                break;
            default:
                ((dlv) this.f18133a.f17099f).dq(new BitmapDrawable(this.f18135c));
                break;
        }
    }
}
