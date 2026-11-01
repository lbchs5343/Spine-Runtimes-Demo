package g;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzbuj;

/* loaded from: classes3.dex */
public final /* synthetic */ class axd implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11016a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ cgp f11017b;

    public /* synthetic */ axd(cgp cgpVar, int i) {
        this.f11016a = i;
        this.f11017b = cgpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f11016a) {
            case 0:
                cgp cgpVar = this.f11017b;
                try {
                    ctl ctlVar = cgpVar.f12849a;
                    ctlVar.getClass();
                    try {
                        deq deqVar = (deq) ctlVar.k;
                        if (deqVar != null) {
                            deqVar.zzB();
                            break;
                        }
                    } catch (RemoteException e2) {
                        agd.g("#007 Could not call remote method.", e2);
                        return;
                    }
                } catch (IllegalStateException e3) {
                    zzbuj.zza(cgpVar.getContext()).zzh(e3, "BaseAdView.resume");
                    return;
                }
                break;
            case 1:
                cgp cgpVar2 = this.f11017b;
                try {
                    ctl ctlVar2 = cgpVar2.f12849a;
                    ctlVar2.getClass();
                    try {
                        deq deqVar2 = (deq) ctlVar2.k;
                        if (deqVar2 != null) {
                            deqVar2.zzx();
                            break;
                        }
                    } catch (RemoteException e4) {
                        agd.g("#007 Could not call remote method.", e4);
                        return;
                    }
                } catch (IllegalStateException e5) {
                    zzbuj.zza(cgpVar2.getContext()).zzh(e5, "BaseAdView.destroy");
                    return;
                }
                break;
            default:
                cgp cgpVar3 = this.f11017b;
                try {
                    ctl ctlVar3 = cgpVar3.f12849a;
                    ctlVar3.getClass();
                    try {
                        deq deqVar3 = (deq) ctlVar3.k;
                        if (deqVar3 != null) {
                            deqVar3.zzz();
                            break;
                        }
                    } catch (RemoteException e6) {
                        agd.g("#007 Could not call remote method.", e6);
                        return;
                    }
                } catch (IllegalStateException e7) {
                    zzbuj.zza(cgpVar3.getContext()).zzh(e7, "BaseAdView.pause");
                }
                break;
        }
    }
}
