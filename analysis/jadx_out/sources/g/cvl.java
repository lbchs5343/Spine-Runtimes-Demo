package g;

import android.content.Context;
import android.os.RemoteException;
import android.widget.FrameLayout;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbgb;
import com.google.android.gms.internal.ads.zzbge;
import com.google.android.gms.internal.ads.zzbhx;
import com.google.android.gms.internal.ads.zzbuj;
import com.google.android.gms.internal.ads.zzbul;

/* loaded from: classes3.dex */
public final class cvl extends bir {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f13586a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ph f13587b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ dii f13588c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ FrameLayout f13589d;

    public cvl(ph phVar, dii diiVar, FrameLayout frameLayout, Context context) {
        this.f13588c = diiVar;
        this.f13589d = frameLayout;
        this.f13586a = context;
        this.f13587b = phVar;
    }

    @Override // g.bir
    public final Object e() {
        ph.h(this.f13586a, "native_ad_view_delegate");
        return new fsm();
    }

    @Override // g.bir
    public final Object f(drf drfVar) {
        return drfVar.b(new bpp(this.f13588c), new bpp(this.f13589d));
    }

    @Override // g.bir
    public final Object g() {
        Context context = this.f13586a;
        zzbcn.zza(context);
        boolean booleanValue = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkp)).booleanValue();
        FrameLayout frameLayout = this.f13589d;
        dii diiVar = this.f13588c;
        ph phVar = this.f13587b;
        if (!booleanValue) {
            return ((zzbhx) phVar.f19809a).zza(context, diiVar, frameLayout);
        }
        try {
            try {
                return zzbgb.zzdA(zzbge.zzb(kj.p(context).v("com.google.android.gms.ads.ChimeraNativeAdViewDelegateCreatorImpl")).zze(new bpp(context), new bpp(diiVar), new bpp(frameLayout), 243799000));
            } catch (Exception e2) {
                throw new eof(e2);
            }
        } catch (RemoteException e3) {
            e = e3;
            zzbul zza = zzbuj.zza(context);
            phVar.f19812d = zza;
            zza.zzh(e, "ClientApiBroker.createNativeAdViewDelegate");
            return null;
        } catch (eof e4) {
            e = e4;
            zzbul zza2 = zzbuj.zza(context);
            phVar.f19812d = zza2;
            zza2.zzh(e, "ClientApiBroker.createNativeAdViewDelegate");
            return null;
        } catch (NullPointerException e5) {
            e = e5;
            zzbul zza22 = zzbuj.zza(context);
            phVar.f19812d = zza22;
            zza22.zzh(e, "ClientApiBroker.createNativeAdViewDelegate");
            return null;
        }
    }
}
