package g;

import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbtv;
import com.google.android.gms.internal.ads.zzflr;
import com.google.android.gms.internal.ads.zzgee;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class exn implements zzgee {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f16325a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ der f16326b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f16327c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ zzbtv f16328d;

    public /* synthetic */ exn(der derVar, zzbtv zzbtvVar, boolean z, int i) {
        this.f16327c = i;
        this.f16328d = zzbtvVar;
        this.f16325a = z;
        this.f16326b = derVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public final void zza(Throwable th) {
        switch (this.f16327c) {
            case 0:
                try {
                    this.f16328d.zze("Internal error: " + th.getMessage());
                    break;
                } catch (RemoteException e2) {
                    agd.f("", e2);
                    return;
                }
            default:
                try {
                    this.f16328d.zze("Internal error: " + th.getMessage());
                    break;
                } catch (RemoteException e3) {
                    agd.f("", e3);
                }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public final void zzb(Object obj) {
        switch (this.f16327c) {
            case 0:
                der derVar = this.f16326b;
                zzflr zzflrVar = derVar.q;
                ArrayList arrayList = (ArrayList) obj;
                try {
                    this.f16328d.zzf(arrayList);
                    if (!derVar.aj && !this.f16325a) {
                    }
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        Uri uri = (Uri) it.next();
                        if (der.ao(uri, derVar.i, derVar.aa)) {
                            zzflrVar.zzc(der.am(uri, derVar.j, "1").toString(), null);
                        } else {
                            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzhh)).booleanValue()) {
                                zzflrVar.zzc(uri.toString(), null);
                            }
                        }
                    }
                    break;
                } catch (RemoteException e2) {
                    agd.f("", e2);
                    return;
                }
                break;
            default:
                der derVar2 = this.f16326b;
                zzflr zzflrVar2 = derVar2.q;
                ArrayList arrayList2 = derVar2.f14068ab;
                ArrayList arrayList3 = derVar2.ag;
                List<Uri> list = (List) obj;
                try {
                    Iterator it2 = list.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            if (der.ao((Uri) it2.next(), arrayList3, arrayList2)) {
                                derVar2.u.getAndIncrement();
                            }
                        }
                    }
                    this.f16328d.zzf(list);
                    if (!derVar2.af && !this.f16325a) {
                    }
                    for (Uri uri2 : list) {
                        if (der.ao(uri2, arrayList3, arrayList2)) {
                            zzflrVar2.zzc(der.am(uri2, derVar2.j, "1").toString(), null);
                        } else {
                            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzhh)).booleanValue()) {
                                zzflrVar2.zzc(uri2.toString(), null);
                            }
                        }
                    }
                    break;
                } catch (RemoteException e3) {
                    agd.f("", e3);
                }
        }
    }
}
