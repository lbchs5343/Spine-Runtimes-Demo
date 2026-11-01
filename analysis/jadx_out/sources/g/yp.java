package g;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzbpc;
import com.google.android.gms.internal.ads.zzbtb;

/* loaded from: classes3.dex */
public final class yp extends bir {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f20359a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzbpc f20360b;

    public yp(Context context, zzbpc zzbpcVar) {
        this.f20359a = context;
        this.f20360b = zzbpcVar;
    }

    @Override // g.bir
    public final /* bridge */ /* synthetic */ Object e() {
        return null;
    }

    @Override // g.bir
    public final Object f(drf drfVar) {
        return drfVar.n(new bpp(this.f20359a), this.f20360b, 243799000);
    }

    @Override // g.bir
    public final Object g() {
        Context context = this.f20359a;
        bpp bppVar = new bpp(context);
        try {
            try {
                return zzbtb.zzb(kj.p(context).v("com.google.android.gms.ads.DynamiteOfflineUtilsCreatorImpl")).zze(bppVar, this.f20360b, 243799000);
            } catch (RemoteException | eof | NullPointerException unused) {
                return null;
            }
        } catch (Exception e2) {
            throw new eof(e2);
        }
    }
}
