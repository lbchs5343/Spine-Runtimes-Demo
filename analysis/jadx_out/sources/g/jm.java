package g;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.OutOfContextTestingActivity;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbpc;
import com.google.android.gms.internal.ads.zzbuj;

/* loaded from: classes3.dex */
public final class jm extends bir {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ OutOfContextTestingActivity f19493a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzbpc f19494b;

    public jm(OutOfContextTestingActivity outOfContextTestingActivity, zzbpc zzbpcVar) {
        this.f19493a = outOfContextTestingActivity;
        this.f19494b = zzbpcVar;
    }

    @Override // g.bir
    public final /* bridge */ /* synthetic */ Object e() {
        ph.h(this.f19493a, "out_of_context_tester");
        return null;
    }

    @Override // g.bir
    public final Object f(drf drfVar) {
        OutOfContextTestingActivity outOfContextTestingActivity = this.f19493a;
        bpp bppVar = new bpp(outOfContextTestingActivity);
        zzbcn.zza(outOfContextTestingActivity);
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziY)).booleanValue()) {
            return drfVar.c(bppVar, this.f19494b, 243799000);
        }
        return null;
    }

    @Override // g.bir
    public final Object g() {
        bvg bvgVar;
        OutOfContextTestingActivity outOfContextTestingActivity = this.f19493a;
        bpp bppVar = new bpp(outOfContextTestingActivity);
        zzbcn.zza(outOfContextTestingActivity);
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziY)).booleanValue()) {
            try {
                try {
                    IBinder v = kj.p(outOfContextTestingActivity).v("com.google.android.gms.ads.DynamiteOutOfContextTesterCreatorImpl");
                    if (v == null) {
                        bvgVar = null;
                    } else {
                        IInterface queryLocalInterface = v.queryLocalInterface("com.google.android.gms.ads.internal.client.IOutOfContextTesterCreator");
                        bvgVar = queryLocalInterface instanceof bvg ? (bvg) queryLocalInterface : new bvg("com.google.android.gms.ads.internal.client.IOutOfContextTesterCreator", v);
                    }
                    return bvgVar.a(bppVar, this.f19494b);
                } catch (Exception e2) {
                    throw new eof(e2);
                }
            } catch (RemoteException e3) {
                e = e3;
                zzbuj.zza(outOfContextTestingActivity).zzh(e, "ClientApiBroker.getOutOfContextTester");
                return null;
            } catch (eof e4) {
                e = e4;
                zzbuj.zza(outOfContextTestingActivity).zzh(e, "ClientApiBroker.getOutOfContextTester");
                return null;
            } catch (NullPointerException e5) {
                e = e5;
                zzbuj.zza(outOfContextTestingActivity).zzh(e, "ClientApiBroker.getOutOfContextTester");
                return null;
            }
        }
        return null;
    }
}
