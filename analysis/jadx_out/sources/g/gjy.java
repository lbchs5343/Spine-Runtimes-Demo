package g;

import android.content.Context;
import com.google.android.gms.internal.ads.zzcid;
import com.google.android.gms.internal.ads.zzcpa;
import com.google.android.gms.internal.ads.zzcqg;
import com.google.android.gms.internal.ads.zzcqh;
import com.google.android.gms.internal.ads.zzcri;
import com.google.android.gms.internal.ads.zzcta;
import com.google.android.gms.internal.ads.zzcuz;
import com.google.android.gms.internal.ads.zzcvs;
import com.google.android.gms.internal.ads.zzcvw;
import com.google.android.gms.internal.ads.zzdbm;
import com.google.android.gms.internal.ads.zzdcf;
import com.google.android.gms.internal.ads.zzdhe;
import com.google.android.gms.internal.ads.zzdsm;
import com.google.android.gms.internal.ads.zzdta;
import com.google.android.gms.internal.ads.zzeje;
import com.google.android.gms.internal.ads.zzejg;
import com.google.android.gms.internal.ads.zzelb;
import com.google.android.gms.internal.ads.zzely;
import com.google.android.gms.internal.ads.zzems;
import com.google.android.gms.internal.ads.zzemt;
import com.google.android.gms.internal.ads.zzemy;
import com.google.android.gms.internal.ads.zzfbf;
import com.google.android.gms.internal.ads.zzfbg;
import com.google.android.gms.internal.ads.zzfbi;
import com.google.android.gms.internal.ads.zzfbr;
import com.google.android.gms.internal.ads.zzfco;
import com.google.android.gms.internal.ads.zzffq;
import com.google.android.gms.internal.ads.zzfgu;
import com.google.android.gms.internal.ads.zzhfw;
import com.google.android.gms.internal.ads.zzhfx;
import com.google.android.gms.internal.ads.zzhfy;
import com.google.android.gms.internal.ads.zzhgf;
import com.google.android.gms.internal.ads.zzhgg;

/* loaded from: classes3.dex */
public final class gjy implements zzcqg, zzfbi {

    /* renamed from: a, reason: collision with root package name */
    public Object f18280a;

    /* renamed from: b, reason: collision with root package name */
    public Object f18281b;

    /* renamed from: c, reason: collision with root package name */
    public Object f18282c;

    /* renamed from: d, reason: collision with root package name */
    public final bxr f18283d;

    /* renamed from: e, reason: collision with root package name */
    public Object f18284e;

    /* renamed from: f, reason: collision with root package name */
    public Object f18285f;

    /* renamed from: g, reason: collision with root package name */
    public Object f18286g;
    public Object h;
    public Object i;
    public Object j;

    public /* synthetic */ gjy(bxr bxrVar) {
        this.f18283d = bxrVar;
    }

    public /* synthetic */ gjy(bxr bxrVar, Context context, String str, eno enoVar) {
        this.f18283d = bxrVar;
        this.f18286g = context;
        this.i = enoVar;
        this.f18281b = str;
        zzhfx zza = zzhfy.zza(context);
        this.f18282c = zza;
        zzhfx zza2 = zzhfy.zza(enoVar);
        this.f18284e = zza2;
        zzhgg zzc = zzhfw.zzc(new zzemt(bxrVar.k));
        this.j = zzc;
        zzhgg zzc2 = zzhfw.zzc(zzemy.zza());
        this.f18280a = zzc2;
        zzhgg zzc3 = zzhfw.zzc(zzdbm.zza());
        this.f18285f = zzc3;
        this.h = zzhfw.zzc(new zzfbg(zza, bxrVar.z, zza2, bxrVar.ak, zzc, zzc2, zzffq.zza(), zzc3));
    }

    @Override // com.google.android.gms.internal.ads.zzcvs
    public /* synthetic */ zzcvs zza(zzfbr zzfbrVar) {
        this.i = zzfbrVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfbi
    public zzely zza() {
        zzfbf zzfbfVar = (zzfbf) ((zzhgg) this.h).zzb();
        zzems zzemsVar = (zzems) ((zzhgg) this.j).zzb();
        bxr bxrVar = this.f18283d;
        return new zzely((Context) this.f18286g, (eno) this.i, (String) this.f18281b, zzfbfVar, zzemsVar, zzcid.zzc(bxrVar.bp), (zzdsm) bxrVar.k.zzb());
    }

    @Override // com.google.android.gms.internal.ads.zzcvs
    public /* synthetic */ zzcvs zzb(zzfco zzfcoVar) {
        this.f18286g = zzfcoVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcqg
    public /* bridge */ /* synthetic */ zzcqg zzc(zzcpa zzcpaVar) {
        this.f18285f = zzcpaVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcqg
    public /* bridge */ /* synthetic */ zzcqg zzd(zzdhe zzdheVar) {
        this.h = zzdheVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcqg
    public /* bridge */ /* synthetic */ zzcqg zze(zzelb zzelbVar) {
        this.f18284e = zzelbVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcqg
    public /* bridge */ /* synthetic */ zzcqg zzf(zzdcf zzdcfVar) {
        this.f18281b = zzdcfVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcqg
    public /* bridge */ /* synthetic */ zzcqg zzg(zzcri zzcriVar) {
        this.j = zzcriVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcqg
    public /* bridge */ /* synthetic */ zzcqg zzi(zzcvw zzcvwVar) {
        this.f18282c = zzcvwVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcqg
    public /* bridge */ /* synthetic */ zzcqg zzj(zzeje zzejeVar) {
        this.f18280a = zzejeVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcvs
    /* renamed from: zzk, reason: merged with bridge method [inline-methods] */
    public zzcqh zzh() {
        zzhgf.zzc((zzdcf) this.f18281b, zzdcf.class);
        zzhgf.zzc((zzcvw) this.f18282c, zzcvw.class);
        zzhgf.zzc((zzelb) this.f18284e, zzelb.class);
        zzhgf.zzc((zzcri) this.j, zzcri.class);
        if (((zzeje) this.f18280a) == null) {
            this.f18280a = zzejg.zza();
        }
        zzhgf.zzc((zzcpa) this.f18285f, zzcpa.class);
        zzhgf.zzc((zzdhe) this.h, zzdhe.class);
        return new dku(this.f18283d, (zzcpa) this.f18285f, (zzdhe) this.h, new zzcta(), new zzfgu(), new zzcuz(), new zzdta(), (zzdcf) this.f18281b, (zzcvw) this.f18282c, (zzeje) this.f18280a, (zzelb) this.f18284e, (zzcri) this.j, (zzfco) this.f18286g, (zzfbr) this.i);
    }
}
