package g;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzbkn;
import com.google.android.gms.internal.ads.zzbkv;
import com.google.android.gms.internal.ads.zzbla;
import com.google.android.gms.internal.ads.zzbpc;

/* loaded from: classes3.dex */
public final class cja extends bir {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ fnd f12965a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f12966b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbpc f12967c;

    public cja(Context context, zzbpc zzbpcVar, fnd fndVar) {
        this.f12966b = context;
        this.f12967c = zzbpcVar;
        this.f12965a = fndVar;
    }

    @Override // g.bir
    public final /* synthetic */ Object e() {
        return new zzbla();
    }

    @Override // g.bir
    public final Object f(drf drfVar) {
        return drfVar.f(new bpp(this.f12966b), this.f12967c, 243799000, new zzbkn(this.f12965a));
    }

    @Override // g.bir
    public final Object g() {
        Context context = this.f12966b;
        bpp bppVar = new bpp(context);
        try {
            try {
                return zzbkv.zzb(kj.p(context).v("com.google.android.gms.ads.DynamiteH5AdsManagerCreatorImpl")).zze(bppVar, this.f12967c, 243799000, new zzbkn(this.f12965a));
            } catch (RemoteException | eof | NullPointerException unused) {
                return null;
            }
        } catch (Exception e2) {
            throw new eof(e2);
        }
    }
}
