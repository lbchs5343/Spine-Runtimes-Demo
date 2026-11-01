package g;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzbpc;
import com.google.android.gms.internal.ads.zzbzj;

/* loaded from: classes3.dex */
public final class bun extends bir {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f12231a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzbpc f12232b;

    public bun(Context context, zzbpc zzbpcVar) {
        this.f12231a = context;
        this.f12232b = zzbpcVar;
    }

    @Override // g.bir
    public final /* bridge */ /* synthetic */ Object e() {
        return null;
    }

    @Override // g.bir
    public final Object f(drf drfVar) {
        return drfVar.h(new bpp(this.f12231a), this.f12232b, 243799000);
    }

    @Override // g.bir
    public final Object g() {
        Context context = this.f12231a;
        bpp bppVar = new bpp(context);
        try {
            try {
                return zzbzj.zzb(kj.p(context).v("com.google.android.gms.ads.DynamiteSignalGeneratorCreatorImpl")).zze(bppVar, this.f12232b, 243799000);
            } catch (RemoteException | eof | NullPointerException unused) {
                return null;
            }
        } catch (Exception e2) {
            throw new eof(e2);
        }
    }
}
