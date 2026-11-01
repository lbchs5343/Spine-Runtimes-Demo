package g;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;

/* loaded from: classes3.dex */
public final class bdh extends gsp {
    public AssetManager _bo;

    /* renamed from: a, reason: collision with root package name */
    public final Context f11316a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f11317b = new Object();

    public bdh(Context context) {
        this.f11316a = context;
    }

    @Override // g.gsp
    public final boolean d(fpu fpuVar) {
        Uri uri = fpuVar.f17212a;
        return "file".equals(uri.getScheme()) && !uri.getPathSegments().isEmpty() && "android_asset".equals(uri.getPathSegments().get(0));
    }

    @Override // g.gsp
    public final fkn e(fpu fpuVar, int i) {
        if (this._bo == null) {
            synchronized (this.f11317b) {
                try {
                    if (this._bo == null) {
                        this._bo = this.f11316a.getAssets();
                    }
                } finally {
                }
            }
        }
        return new fkn(baf.bk(this._bo.open(fpuVar.f17212a.toString().substring(22))), gye.DISK);
    }
}
