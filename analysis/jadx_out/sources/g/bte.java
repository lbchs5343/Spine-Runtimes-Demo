package g;

import android.content.Context;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.internal.ads.zzbju;
import com.google.android.gms.internal.ads.zzcao;
import com.google.android.gms.internal.ads.zzcfk;
import com.google.android.gms.internal.ads.zzcoo;
import com.google.android.gms.internal.ads.zzcwz;
import com.google.android.gms.internal.ads.zzdgk;
import com.google.android.gms.internal.ads.zzdgv;
import com.google.android.gms.internal.ads.zzeea;
import com.google.android.gms.internal.ads.zzfet;
import com.google.android.gms.internal.ads.zzfey;
import com.google.android.gms.internal.ads.zzffo;
import com.google.android.gms.internal.ads.zzgei;

/* loaded from: classes3.dex */
public final class bte implements zzdgv {

    /* renamed from: a, reason: collision with root package name */
    public final zzeea f12179a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f12180b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfet f12181c;

    /* renamed from: d, reason: collision with root package name */
    public final zzcfk f12182d;

    /* renamed from: e, reason: collision with root package name */
    public final zzffo f12183e;

    /* renamed from: f, reason: collision with root package name */
    public final akx f12184f;

    /* renamed from: g, reason: collision with root package name */
    public final zzcao f12185g;
    public final zzbju h;

    public bte(akx akxVar, zzcao zzcaoVar, zzfet zzfetVar, zzcfk zzcfkVar, zzffo zzffoVar, boolean z, zzbju zzbjuVar, zzeea zzeeaVar) {
        this.f12184f = akxVar;
        this.f12185g = zzcaoVar;
        this.f12181c = zzfetVar;
        this.f12182d = zzcfkVar;
        this.f12183e = zzffoVar;
        this.f12180b = z;
        this.h = zzbjuVar;
        this.f12179a = zzeeaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgv
    public final void zza(boolean z, Context context, zzcwz zzcwzVar) {
        zzcoo zzcooVar = (zzcoo) zzgei.zzq(this.f12185g);
        zzcfk zzcfkVar = this.f12182d;
        zzcfkVar.zzaq(true);
        zzbju zzbjuVar = this.h;
        boolean z2 = this.f12180b;
        boolean zze = z2 ? zzbjuVar.zze(true) : true;
        boolean zzd = z2 ? zzbjuVar.zzd() : false;
        float zza = z2 ? zzbjuVar.zza() : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        zzfet zzfetVar = this.f12181c;
        fbp fbpVar = new fbp(zze, true, zzd, zza, -1, z, zzfetVar.zzO, false);
        if (zzcwzVar != null) {
            zzcwzVar.zzf();
        }
        bli bliVar = ti.f20033a.u;
        zzdgk zzg = zzcooVar.zzg();
        int i = zzfetVar.zzQ;
        zzffo zzffoVar = this.f12183e;
        if (i == -1) {
            gby gbyVar = zzffoVar.zzj;
            if (gbyVar != null) {
                int i2 = gbyVar.zza;
                if (i2 == 1) {
                    i = 7;
                } else if (i2 == 2) {
                    i = 6;
                }
            }
            agd.c("Error setting app open orientation; no targeting orientation available.");
            i = zzfetVar.zzQ;
        }
        String str = zzfetVar.zzB;
        zzfey zzfeyVar = zzfetVar.zzs;
        bli.q(context, new AdOverlayInfoParcel((evo) null, zzg, (gst) null, zzcfkVar, i, this.f12184f, str, fbpVar, zzfeyVar.zzb, zzfeyVar.zza, zzffoVar.zzf, zzcwzVar, zzfetVar.zzai ? this.f12179a : null), true);
    }
}
