package g;

import android.content.Context;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.internal.ads.zzbju;
import com.google.android.gms.internal.ads.zzcao;
import com.google.android.gms.internal.ads.zzcfk;
import com.google.android.gms.internal.ads.zzcwz;
import com.google.android.gms.internal.ads.zzdfk;
import com.google.android.gms.internal.ads.zzdgk;
import com.google.android.gms.internal.ads.zzdgv;
import com.google.android.gms.internal.ads.zzeea;
import com.google.android.gms.internal.ads.zzfet;
import com.google.android.gms.internal.ads.zzfey;
import com.google.android.gms.internal.ads.zzffo;
import com.google.android.gms.internal.ads.zzgei;

/* loaded from: classes3.dex */
public final class guf implements zzdgv {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f18762a;

    /* renamed from: b, reason: collision with root package name */
    public final zzbju f18763b;

    /* renamed from: c, reason: collision with root package name */
    public final zzcao f18764c;

    /* renamed from: d, reason: collision with root package name */
    public final zzfet f18765d;

    /* renamed from: e, reason: collision with root package name */
    public final zzcfk f18766e;

    /* renamed from: f, reason: collision with root package name */
    public final Context f18767f;

    /* renamed from: g, reason: collision with root package name */
    public final zzeea f18768g;
    public final akx h;
    public final zzffo i;

    public guf(Context context, akx akxVar, zzcao zzcaoVar, zzfet zzfetVar, zzcfk zzcfkVar, zzffo zzffoVar, boolean z, zzbju zzbjuVar, zzeea zzeeaVar) {
        this.f18767f = context;
        this.h = akxVar;
        this.f18764c = zzcaoVar;
        this.f18765d = zzfetVar;
        this.f18766e = zzcfkVar;
        this.i = zzffoVar;
        this.f18763b = zzbjuVar;
        this.f18762a = z;
        this.f18768g = zzeeaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgv
    public final void zza(boolean z, Context context, zzcwz zzcwzVar) {
        zzdfk zzdfkVar = (zzdfk) zzgei.zzq(this.f18764c);
        zzcfk zzcfkVar = this.f18766e;
        zzcfkVar.zzaq(true);
        zzbju zzbjuVar = this.f18763b;
        boolean z2 = this.f18762a;
        boolean zze = z2 ? zzbjuVar.zze(false) : false;
        esy esyVar = ti.f20033a.z;
        boolean ap = esy.ap(this.f18767f);
        boolean zzd = z2 ? zzbjuVar.zzd() : false;
        float zza = z2 ? zzbjuVar.zza() : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        zzfet zzfetVar = this.f18765d;
        fbp fbpVar = new fbp(zze, ap, zzd, zza, -1, z, zzfetVar.zzO, false);
        if (zzcwzVar != null) {
            zzcwzVar.zzf();
        }
        zzdgk zzh = zzdfkVar.zzh();
        int i = zzfetVar.zzQ;
        String str = zzfetVar.zzB;
        zzfey zzfeyVar = zzfetVar.zzs;
        bli.q(context, new AdOverlayInfoParcel((evo) null, zzh, (gst) null, zzcfkVar, i, this.h, str, fbpVar, zzfeyVar.zzb, zzfeyVar.zza, this.i.zzf, zzcwzVar, zzfetVar.zzai ? this.f18768g : null), true);
    }
}
