package g;

import android.content.Context;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbju;
import com.google.android.gms.internal.ads.zzbkj;
import com.google.android.gms.internal.ads.zzcao;
import com.google.android.gms.internal.ads.zzcfk;
import com.google.android.gms.internal.ads.zzcfw;
import com.google.android.gms.internal.ads.zzcha;
import com.google.android.gms.internal.ads.zzchb;
import com.google.android.gms.internal.ads.zzcwz;
import com.google.android.gms.internal.ads.zzdgk;
import com.google.android.gms.internal.ads.zzdgv;
import com.google.android.gms.internal.ads.zzdos;
import com.google.android.gms.internal.ads.zzdpn;
import com.google.android.gms.internal.ads.zzdpr;
import com.google.android.gms.internal.ads.zzdsh;
import com.google.android.gms.internal.ads.zzeea;
import com.google.android.gms.internal.ads.zzfet;
import com.google.android.gms.internal.ads.zzfey;
import com.google.android.gms.internal.ads.zzffo;
import com.google.android.gms.internal.ads.zzgei;

/* loaded from: classes3.dex */
public final class ehr implements zzdgv {

    /* renamed from: a, reason: collision with root package name */
    public final zzbju f15550a;

    /* renamed from: b, reason: collision with root package name */
    public final zzcfk f15551b;

    /* renamed from: c, reason: collision with root package name */
    public final zzeea f15552c;

    /* renamed from: d, reason: collision with root package name */
    public final zzffo f15553d;

    /* renamed from: e, reason: collision with root package name */
    public final zzdsh f15554e;

    /* renamed from: f, reason: collision with root package name */
    public final akx f15555f;

    /* renamed from: g, reason: collision with root package name */
    public final zzfet f15556g;
    public final Context h;
    public final boolean i;
    public final zzdpn j;
    public final zzcao k;

    public ehr(Context context, zzdpn zzdpnVar, zzffo zzffoVar, akx akxVar, zzfet zzfetVar, zzcao zzcaoVar, zzcfk zzcfkVar, zzbju zzbjuVar, boolean z, zzeea zzeeaVar, zzdsh zzdshVar) {
        this.h = context;
        this.j = zzdpnVar;
        this.f15553d = zzffoVar;
        this.f15555f = akxVar;
        this.f15556g = zzfetVar;
        this.k = zzcaoVar;
        this.f15551b = zzcfkVar;
        this.f15550a = zzbjuVar;
        this.i = z;
        this.f15552c = zzeeaVar;
        this.f15554e = zzdshVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgv
    public final void zza(boolean z, Context context, zzcwz zzcwzVar) {
        final zzcfk zzcfkVar = this.f15551b;
        zzdos zzdosVar = (zzdos) zzgei.zzq(this.k);
        try {
            boolean zzaG = zzcfkVar.zzaG();
            Context context2 = this.h;
            zzffo zzffoVar = this.f15553d;
            zzfet zzfetVar = this.f15556g;
            zzbju zzbjuVar = this.f15550a;
            boolean z2 = this.i;
            if (zzaG) {
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzaU)).booleanValue()) {
                    zzcfkVar = this.j.zza(zzffoVar.zze, null, null);
                    zzbkj.zzb(zzcfkVar, zzdosVar.zzg());
                    final zzdpr zzdprVar = new zzdpr();
                    zzdprVar.zza(context2, zzcfkVar.zzF());
                    zzdosVar.zzl().zzi(zzcfkVar, true, z2 ? zzbjuVar : null, this.f15554e.zza());
                    zzcfkVar.zzN().zzB(new zzcha() { // from class: com.google.android.gms.internal.ads.zzejv
                        @Override // com.google.android.gms.internal.ads.zzcha
                        public final void zza(boolean z3, int i, String str, String str2) {
                            zzdpr.this.zzb();
                            zzcfk zzcfkVar2 = zzcfkVar;
                            zzcfkVar2.zzab();
                            zzcfkVar2.zzN().zzr();
                        }
                    });
                    zzcfkVar.zzN().zzI(new zzchb() { // from class: com.google.android.gms.internal.ads.zzejw
                        @Override // com.google.android.gms.internal.ads.zzchb
                        public final void zza() {
                            zzcfk.this.zzaa();
                        }
                    });
                    zzfey zzfeyVar = zzfetVar.zzs;
                    zzcfkVar.zzae(zzfeyVar.zzb, zzfeyVar.zza, null);
                }
            }
            zzcfkVar.zzaq(true);
            boolean zze = z2 ? zzbjuVar.zze(false) : false;
            esy esyVar = ti.f20033a.z;
            fbp fbpVar = new fbp(zze, esy.ap(context2), z2 ? zzbjuVar.zzd() : false, z2 ? zzbjuVar.zza() : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, -1, z, zzfetVar.zzO, zzfetVar.zzP);
            if (zzcwzVar != null) {
                zzcwzVar.zzf();
            }
            zzdgk zzh = zzdosVar.zzh();
            int i = zzfetVar.zzQ;
            String str = zzfetVar.zzB;
            zzfey zzfeyVar2 = zzfetVar.zzs;
            String str2 = zzfeyVar2.zzb;
            String str3 = zzfeyVar2.zza;
            zzeea zzeeaVar = zzfetVar.zzai ? this.f15552c : null;
            zzcfk zzcfkVar2 = zzcfkVar;
            bli.q(context, new AdOverlayInfoParcel((evo) null, zzh, (gst) null, zzcfkVar2, i, this.f15555f, str, fbpVar, str2, str3, zzffoVar.zzf, zzcwzVar, zzeeaVar), true);
        } catch (zzcfw e2) {
            agd.f("", e2);
        }
    }
}
