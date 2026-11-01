package g;

import android.os.Bundle;
import android.util.Pair;
import com.google.android.gms.internal.ads.zzbce;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzdsr;
import com.google.android.gms.internal.ads.zzgdo;
import com.google.android.gms.internal.ads.zzgee;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public final class eig implements zzgee, zzgdo {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ der f15586a;

    public /* synthetic */ eig(der derVar) {
        this.f15586a = derVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdo
    public dcy zza() {
        der derVar = this.f15586a;
        return (dcy) derVar.aq(derVar.ae, null, bme.BANNER.name(), null, null, new Bundle()).ai.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zza(Throwable th) {
        ti.f20033a.f20034ab.zzw(th, "SignalGeneratorImpl.initializeWebViewForSignalCollection");
        der derVar = this.f15586a;
        zzdsr zzdsrVar = derVar.r;
        Pair pair = new Pair("sgf_reason", th.getMessage());
        Pair pair2 = new Pair("se", "query_g");
        Pair pair3 = new Pair("ad_format", bme.BANNER.name());
        Pair pair4 = new Pair("rtype", Integer.toString(6));
        Pair pair5 = new Pair("scar", "true");
        AtomicInteger atomicInteger = derVar.o;
        dzm.z(zzdsrVar, "sgf", pair, pair2, pair3, pair4, pair5, new Pair("sgi_rn", Integer.toString(atomicInteger.get())));
        agd.f("Failed to initialize webview for loading SDKCore. ", th);
        zzbce zzbceVar = zzbcn.zzjn;
        edt edtVar = edt.f15376a;
        if (!((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue() || derVar.ac.get() || atomicInteger.getAndIncrement() >= ((Integer) edtVar.f15379d.zza(zzbcn.zzjo)).intValue()) {
            return;
        }
        derVar.as();
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zzb(Object obj) {
        agd.c("Initialized webview successfully for SDKCore.");
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzjn)).booleanValue()) {
            der derVar = this.f15586a;
            dzm.z(derVar.r, "sgs", new Pair("se", "query_g"), new Pair("ad_format", bme.BANNER.name()), new Pair("rtype", Integer.toString(6)), new Pair("scar", "true"), new Pair("sgi_rn", Integer.toString(derVar.o.get())));
            derVar.ac.set(true);
        }
    }
}
