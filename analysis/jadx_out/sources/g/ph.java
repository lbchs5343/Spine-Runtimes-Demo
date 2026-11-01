package g;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.internal.ads.zzbpc;
import com.google.android.gms.internal.ads.zzcpa;
import com.google.android.gms.internal.ads.zzcta;
import com.google.android.gms.internal.ads.zzcuz;
import com.google.android.gms.internal.ads.zzcvs;
import com.google.android.gms.internal.ads.zzcvw;
import com.google.android.gms.internal.ads.zzdcf;
import com.google.android.gms.internal.ads.zzdhe;
import com.google.android.gms.internal.ads.zzdhi;
import com.google.android.gms.internal.ads.zzdhj;
import com.google.android.gms.internal.ads.zzdta;
import com.google.android.gms.internal.ads.zzejg;
import com.google.android.gms.internal.ads.zzfbr;
import com.google.android.gms.internal.ads.zzfco;
import com.google.android.gms.internal.ads.zzfek;
import com.google.android.gms.internal.ads.zzfen;
import com.google.android.gms.internal.ads.zzfeq;
import com.google.android.gms.internal.ads.zzfgu;
import com.google.android.gms.internal.ads.zzhgf;
import com.google.android.gms.internal.ads.zzhgg;

/* loaded from: classes3.dex */
public final class ph implements zzdhi, zzfen {

    /* renamed from: a, reason: collision with root package name */
    public Object f19809a;

    /* renamed from: b, reason: collision with root package name */
    public Object f19810b;

    /* renamed from: c, reason: collision with root package name */
    public Object f19811c;

    /* renamed from: d, reason: collision with root package name */
    public Object f19812d;

    /* renamed from: e, reason: collision with root package name */
    public Object f19813e;

    /* renamed from: f, reason: collision with root package name */
    public Object f19814f;

    /* renamed from: g, reason: collision with root package name */
    public Object f19815g;

    public static void h(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("action", "no_ads_fallback");
        bundle.putString("flow", str);
        cbv cbvVar = cbv.f12612a;
        mx mxVar = cbvVar.f12615d;
        String str2 = cbvVar.f12613b.afmaVersion;
        mxVar.getClass();
        mx.n(context, str2, bundle, new bli(mxVar));
    }

    public fsy i() {
        String str = ((gyk) this.f19813e) == null ? " registrationStatus" : "";
        if (((Long) this.f19810b) == null) {
            str = str.concat(" expiresInSecs");
        }
        if (((Long) this.f19812d) == null) {
            str = awf.c(str, " tokenCreationEpochInSecs");
        }
        if (str.isEmpty()) {
            return new fsy((String) this.f19811c, (gyk) this.f19813e, (String) this.f19814f, (String) this.f19809a, ((Long) this.f19810b).longValue(), ((Long) this.f19812d).longValue(), (String) this.f19815g);
        }
        throw new IllegalStateException("Missing required properties:".concat(str));
    }

    public void j(gyk gykVar) {
        if (gykVar == null) {
            throw new NullPointerException("Null registrationStatus");
        }
        this.f19813e = gykVar;
    }

    public dzg k(Context context, zzbpc zzbpcVar) {
        return (dzg) new gyq(this, context, zzbpcVar).j(context, false);
    }

    @Override // com.google.android.gms.internal.ads.zzcvs
    public /* synthetic */ zzcvs zza(zzfbr zzfbrVar) {
        this.f19814f = zzfbrVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfen
    public zzfek zza() {
        return (zzfek) ((zzhgg) this.f19815g).zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzcvs
    public /* synthetic */ zzcvs zzb(zzfco zzfcoVar) {
        this.f19813e = zzfcoVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfen
    public zzfeq zzb() {
        return (zzfeq) ((zzhgg) this.f19810b).zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzdhi
    public /* bridge */ /* synthetic */ zzdhi zzc(zzcpa zzcpaVar) {
        this.f19815g = zzcpaVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdhi
    public /* bridge */ /* synthetic */ zzdhi zzd(zzdhe zzdheVar) {
        this.f19812d = zzdheVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdhi
    public /* bridge */ /* synthetic */ zzdhi zze(zzdcf zzdcfVar) {
        this.f19809a = zzdcfVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdhi
    public /* bridge */ /* synthetic */ zzdhi zzf(zzcvw zzcvwVar) {
        this.f19810b = zzcvwVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcvs
    /* renamed from: zzg, reason: merged with bridge method [inline-methods] */
    public zzdhj zzh() {
        zzhgf.zzc((zzdcf) this.f19809a, zzdcf.class);
        zzhgf.zzc((zzcvw) this.f19810b, zzcvw.class);
        zzhgf.zzc((zzdhe) this.f19812d, zzdhe.class);
        zzhgf.zzc((zzcpa) this.f19815g, zzcpa.class);
        return new fik((bxr) this.f19811c, (zzcpa) this.f19815g, (zzdhe) this.f19812d, new zzcta(), new zzfgu(), new zzcuz(), new zzdta(), (zzdcf) this.f19809a, (zzcvw) this.f19810b, zzejg.zza(), (zzfco) this.f19813e, (zzfbr) this.f19814f);
    }
}
