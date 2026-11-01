package g;

import android.os.RemoteException;
import com.google.android.gms.ads.AdActivity;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbtd;
import com.google.android.gms.internal.ads.zzbtf;
import com.google.android.gms.internal.ads.zzbti;
import com.google.android.gms.internal.ads.zzbuj;
import com.google.android.gms.internal.ads.zzbul;

/* loaded from: classes3.dex */
public final class avs extends bir {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AdActivity f10939a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ph f10940b;

    public avs(ph phVar, AdActivity adActivity) {
        this.f10939a = adActivity;
        this.f10940b = phVar;
    }

    @Override // g.bir
    public final /* bridge */ /* synthetic */ Object e() {
        ph.h(this.f10939a, "ad_overlay");
        return null;
    }

    @Override // g.bir
    public final Object f(drf drfVar) {
        return drfVar.zzn(new bpp(this.f10939a));
    }

    @Override // g.bir
    public final Object g() {
        AdActivity adActivity = this.f10939a;
        zzbcn.zza(adActivity);
        boolean booleanValue = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkp)).booleanValue();
        ph phVar = this.f10940b;
        if (!booleanValue) {
            return ((zzbtd) phVar.f19810b).zza(adActivity);
        }
        try {
            try {
                return zzbtf.zzI(zzbti.zzb(kj.p(adActivity).v("com.google.android.gms.ads.ChimeraAdOverlayCreatorImpl")).zze(new bpp(adActivity)));
            } catch (Exception e2) {
                throw new eof(e2);
            }
        } catch (RemoteException e3) {
            e = e3;
            zzbul zza = zzbuj.zza(adActivity.getApplicationContext());
            phVar.f19812d = zza;
            zza.zzh(e, "ClientApiBroker.createAdOverlay");
            return null;
        } catch (eof e4) {
            e = e4;
            zzbul zza2 = zzbuj.zza(adActivity.getApplicationContext());
            phVar.f19812d = zza2;
            zza2.zzh(e, "ClientApiBroker.createAdOverlay");
            return null;
        } catch (NullPointerException e5) {
            e = e5;
            zzbul zza22 = zzbuj.zza(adActivity.getApplicationContext());
            phVar.f19812d = zza22;
            zza22.zzh(e, "ClientApiBroker.createAdOverlay");
            return null;
        }
    }
}
