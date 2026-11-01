package g;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzayd;
import com.google.android.gms.internal.ads.zzfek;
import com.google.android.gms.internal.ads.zzfeq;

/* loaded from: classes3.dex */
public final class giz implements dhb {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzayd f18226a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f18227b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ IInterface f18228c;

    public /* synthetic */ giz(zzayd zzaydVar, IInterface iInterface, int i) {
        this.f18227b = i;
        this.f18228c = iInterface;
        this.f18226a = zzaydVar;
    }

    @Override // g.dhb
    public final void onAdMetadataChanged() {
        switch (this.f18227b) {
            case 0:
                if (((zzfek) this.f18226a).h != null) {
                    try {
                        ((gag) this.f18228c).zze();
                        break;
                    } catch (RemoteException e2) {
                        agd.g("#007 Could not call remote method.", e2);
                        return;
                    }
                }
                break;
            default:
                if (((zzfeq) this.f18226a).f7842b != null) {
                    try {
                        acd acdVar = (acd) ((gb) this.f18228c);
                        acdVar.s(acdVar.r(), 1);
                        break;
                    } catch (RemoteException e3) {
                        agd.g("#007 Could not call remote method.", e3);
                    }
                }
                break;
        }
    }
}
