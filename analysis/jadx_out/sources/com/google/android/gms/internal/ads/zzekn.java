package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import g.dcy;
import g.ja;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class zzekn implements zzefb {

    /* renamed from: a, reason: collision with root package name */
    public final zzges f7166a;

    /* renamed from: b, reason: collision with root package name */
    public final zzefd f7167b;

    /* renamed from: c, reason: collision with root package name */
    public final zzefh f7168c;

    /* renamed from: d, reason: collision with root package name */
    public final zzfjr f7169d;

    public zzekn(zzfjr zzfjrVar, zzges zzgesVar, zzefd zzefdVar, zzefh zzefhVar) {
        this.f7169d = zzfjrVar;
        this.f7166a = zzgesVar;
        this.f7168c = zzefhVar;
        this.f7167b = zzefdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzefb
    public final dcy zza(final zzfff zzfffVar, final zzfet zzfetVar) {
        final zzefe zzefeVar;
        Iterator it = zzfetVar.zzt.iterator();
        while (true) {
            if (!it.hasNext()) {
                zzefeVar = null;
                break;
            }
            try {
                zzefeVar = this.f7167b.zza((String) it.next(), zzfetVar.zzv);
                break;
            } catch (zzffv unused) {
            }
        }
        if (zzefeVar == null) {
            return zzgei.zzg(new zzeid("Unable to instantiate mediation adapter class."));
        }
        zzcao zzcaoVar = new zzcao();
        zzefeVar.zzc.zza(new ja(zzefeVar, zzcaoVar));
        if (zzfetVar.zzM) {
            Bundle bundle = zzfffVar.zza.zza.zzd.zzm;
            Bundle bundle2 = bundle.getBundle(AdMobAdapter.class.getName());
            if (bundle2 == null) {
                bundle2 = new Bundle();
                bundle.putBundle(AdMobAdapter.class.getName(), bundle2);
            }
            bundle2.putBoolean("render_test_ad_label", true);
        }
        return zzfjb.zzd(new zzfiw() { // from class: com.google.android.gms.internal.ads.zzekk
            @Override // com.google.android.gms.internal.ads.zzfiw
            public final void zza() {
                zzekn zzeknVar = zzekn.this;
                zzeknVar.f7168c.zzb(zzfffVar, zzfetVar, zzefeVar);
            }
        }, this.f7166a, zzfjl.ADAPTER_LOAD_AD_SYN, this.f7169d).zzb(zzfjl.ADAPTER_LOAD_AD_ACK).zzd(zzcaoVar).zzb(zzfjl.ADAPTER_WRAP_ADAPTER).zze(new zzfiv() { // from class: com.google.android.gms.internal.ads.zzekl
            @Override // com.google.android.gms.internal.ads.zzfiv
            public final Object zza(Object obj) {
                zzekn zzeknVar = zzekn.this;
                return zzeknVar.f7168c.zza(zzfffVar, zzfetVar, zzefeVar);
            }
        }).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzefb
    public final boolean zzb(zzfff zzfffVar, zzfet zzfetVar) {
        return !zzfetVar.zzt.isEmpty();
    }
}
