package g;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.internal.ads.zzbce;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzcfk;
import com.google.android.gms.internal.ads.zzche;
import com.google.android.gms.internal.ads.zzcpd;
import com.google.android.gms.internal.ads.zzcro;
import com.google.android.gms.internal.ads.zzcrp;
import com.google.android.gms.internal.ads.zzden;
import com.google.android.gms.internal.ads.zzdjj;
import com.google.android.gms.internal.ads.zzfet;
import com.google.android.gms.internal.ads.zzfeu;
import com.google.android.gms.internal.ads.zzffu;
import com.google.android.gms.internal.ads.zzffv;
import com.google.android.gms.internal.ads.zzhfr;
import g.agd;
import g.bpp;
import g.deq;
import g.ezx;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class ezx extends zzcpd {

    /* renamed from: a, reason: collision with root package name */
    public final View f16439a;

    /* renamed from: b, reason: collision with root package name */
    public final zzdjj f16440b;

    /* renamed from: c, reason: collision with root package name */
    public final zzcro f16441c;

    /* renamed from: d, reason: collision with root package name */
    public final zzcfk f16442d;

    /* renamed from: e, reason: collision with root package name */
    public eno f16443e;

    /* renamed from: f, reason: collision with root package name */
    public final zzden f16444f;

    /* renamed from: g, reason: collision with root package name */
    public final zzfeu f16445g;
    public final Context h;
    public final zzhfr i;
    public final Executor j;

    public ezx(zzcrp zzcrpVar, Context context, zzfeu zzfeuVar, View view, zzcfk zzcfkVar, zzcro zzcroVar, zzdjj zzdjjVar, zzden zzdenVar, zzhfr zzhfrVar, Executor executor) {
        super(zzcrpVar);
        this.h = context;
        this.f16439a = view;
        this.f16442d = zzcfkVar;
        this.f16445g = zzfeuVar;
        this.f16441c = zzcroVar;
        this.f16440b = zzdjjVar;
        this.f16444f = zzdenVar;
        this.i = zzhfrVar;
        this.j = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzcpd
    public final int zza() {
        return this.n.zzb.zzb.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzcpd
    public final int zzc() {
        zzbce zzbceVar = zzbcn.zzhy;
        edt edtVar = edt.f15376a;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue() && this.q.zzag) {
            if (!((Boolean) edtVar.f15379d.zza(zzbcn.zzhz)).booleanValue()) {
                return 0;
            }
        }
        return this.n.zzb.zzb.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzcpd
    public final View zzd() {
        return this.f16439a;
    }

    @Override // com.google.android.gms.internal.ads.zzcpd
    public final cbz zze() {
        try {
            return this.f16441c.zza();
        } catch (zzffv unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcpd
    public final zzfeu zzf() {
        eno enoVar = this.f16443e;
        if (enoVar != null) {
            return zzffu.zzb(enoVar);
        }
        zzfet zzfetVar = this.q;
        if (zzfetVar.zzac) {
            for (String str : zzfetVar.zza) {
                if (str == null || !str.contains("FirstParty")) {
                }
            }
            View view = this.f16439a;
            return new zzfeu(view.getWidth(), view.getHeight(), false);
        }
        return (zzfeu) zzfetVar.zzr.get(0);
    }

    @Override // com.google.android.gms.internal.ads.zzcpd
    public final zzfeu zzg() {
        return this.f16445g;
    }

    @Override // com.google.android.gms.internal.ads.zzcpd
    public final void zzh() {
        this.f16444f.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzcpd
    public final void zzi(ViewGroup viewGroup, eno enoVar) {
        zzcfk zzcfkVar;
        if (viewGroup == null || (zzcfkVar = this.f16442d) == null) {
            return;
        }
        zzcfkVar.zzaj(zzche.zzc(enoVar));
        viewGroup.setMinimumHeight(enoVar.zzc);
        viewGroup.setMinimumWidth(enoVar.zzf);
        this.f16443e = enoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcrq
    public final void zzk() {
        this.j.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcpf
            @Override // java.lang.Runnable
            public final void run() {
                ezx ezxVar = ezx.this;
                zzdjj zzdjjVar = ezxVar.f16440b;
                if (zzdjjVar.zze() == null) {
                    return;
                }
                try {
                    zzdjjVar.zze().zze((deq) ezxVar.i.zzb(), new bpp(ezxVar.h));
                } catch (RemoteException e2) {
                    agd.f("RemoteException when notifyAdLoad is called", e2);
                }
            }
        });
        super.zzk();
    }
}
