package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import g.agd;
import g.akx;
import g.bli;
import g.dcy;
import g.dxb;
import g.etg;
import g.ti;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzegq implements zzefb {

    /* renamed from: a, reason: collision with root package name */
    public final zzfes f6935a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f6936b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdgn f6937c;

    /* renamed from: d, reason: collision with root package name */
    public final Executor f6938d;

    public zzegq(Context context, Executor executor, zzdgn zzdgnVar, zzfes zzfesVar) {
        this.f6936b = context;
        this.f6937c = zzdgnVar;
        this.f6938d = executor;
        this.f6935a = zzfesVar;
    }

    @Override // com.google.android.gms.internal.ads.zzefb
    public final dcy zza(final zzfff zzfffVar, final zzfet zzfetVar) {
        String str;
        try {
            str = zzfetVar.zzv.getString("tab_url");
        } catch (Exception unused) {
            str = null;
        }
        final Uri parse = str != null ? Uri.parse(str) : null;
        return zzgei.zzn(zzgei.zzh(null), new zzgdp() { // from class: com.google.android.gms.internal.ads.zzego
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                zzegq zzegqVar = zzegq.this;
                Uri uri = parse;
                zzfff zzfffVar2 = zzfffVar;
                zzfet zzfetVar2 = zzfetVar;
                zzegqVar.getClass();
                try {
                    Intent intent = (Intent) new dxb().h().f16634c;
                    intent.setData(uri);
                    etg etgVar = new etg(intent, null);
                    final zzcao zzcaoVar = new zzcao();
                    zzdfk zze = zzegqVar.f6937c.zze(new zzcsg(zzfffVar2, zzfetVar2, null), new zzdfn(new zzdgv() { // from class: com.google.android.gms.internal.ads.zzegp
                        @Override // com.google.android.gms.internal.ads.zzdgv
                        public final void zza(boolean z, Context context, zzcwz zzcwzVar) {
                            zzcao zzcaoVar2 = zzcao.this;
                            try {
                                bli bliVar = ti.f20033a.u;
                                bli.q(context, (AdOverlayInfoParcel) zzcaoVar2.get(), true);
                            } catch (Exception unused2) {
                            }
                        }
                    }, null));
                    zzcaoVar.zzc(new AdOverlayInfoParcel(etgVar, null, zze.zza(), null, new akx(0, 0, false), null, null));
                    zzegqVar.f6935a.zza();
                    return zzgei.zzh(zze.zzg());
                } catch (Throwable th) {
                    agd.f("Error in CustomTabsAdRenderer", th);
                    throw th;
                }
            }
        }, this.f6938d);
    }

    @Override // com.google.android.gms.internal.ads.zzefb
    public final boolean zzb(zzfff zzfffVar, zzfet zzfetVar) {
        String str;
        Context context = this.f6936b;
        if (!(context instanceof Activity) || !zzbdo.zzg(context)) {
            return false;
        }
        try {
            str = zzfetVar.zzv.getString("tab_url");
        } catch (Exception unused) {
            str = null;
        }
        return !TextUtils.isEmpty(str);
    }
}
