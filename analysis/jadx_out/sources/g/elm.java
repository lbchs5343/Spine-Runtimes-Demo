package g;

import com.google.android.gms.internal.ads.zzcoq;
import com.google.android.gms.internal.ads.zzcor;
import com.google.android.gms.internal.ads.zzcta;
import com.google.android.gms.internal.ads.zzcuz;
import com.google.android.gms.internal.ads.zzcvs;
import com.google.android.gms.internal.ads.zzcvw;
import com.google.android.gms.internal.ads.zzdcf;
import com.google.android.gms.internal.ads.zzdov;
import com.google.android.gms.internal.ads.zzdow;
import com.google.android.gms.internal.ads.zzdta;
import com.google.android.gms.internal.ads.zzejg;
import com.google.android.gms.internal.ads.zzfbr;
import com.google.android.gms.internal.ads.zzfco;
import com.google.android.gms.internal.ads.zzfgu;
import com.google.android.gms.internal.ads.zzhgf;

/* loaded from: classes3.dex */
public final class elm implements zzcoq, zzdov {

    /* renamed from: a, reason: collision with root package name */
    public zzfbr f15764a;

    /* renamed from: b, reason: collision with root package name */
    public zzdcf f15765b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f15766c;

    /* renamed from: d, reason: collision with root package name */
    public zzcvw f15767d;

    /* renamed from: e, reason: collision with root package name */
    public final bxr f15768e;

    /* renamed from: f, reason: collision with root package name */
    public zzfco f15769f;

    public /* synthetic */ elm(bxr bxrVar, int i) {
        this.f15766c = i;
        this.f15768e = bxrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcvs
    public final /* synthetic */ zzcvs zza(zzfbr zzfbrVar) {
        switch (this.f15766c) {
            case 0:
                this.f15764a = zzfbrVar;
                break;
            default:
                this.f15764a = zzfbrVar;
                break;
        }
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcvs
    public final /* synthetic */ zzcvs zzb(zzfco zzfcoVar) {
        switch (this.f15766c) {
            case 0:
                this.f15769f = zzfcoVar;
                break;
            default:
                this.f15769f = zzfcoVar;
                break;
        }
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcoq
    public /* bridge */ /* synthetic */ zzcoq zzc(zzdcf zzdcfVar) {
        this.f15765b = zzdcfVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdov
    /* renamed from: zzc, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ zzdov mo4zzc(zzdcf zzdcfVar) {
        this.f15765b = zzdcfVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcoq
    public /* bridge */ /* synthetic */ zzcoq zzd(zzcvw zzcvwVar) {
        this.f15767d = zzcvwVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdov
    /* renamed from: zzd, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ zzdov mo5zzd(zzcvw zzcvwVar) {
        this.f15767d = zzcvwVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcoq
    public zzcor zze() {
        zzhgf.zzc(this.f15765b, zzdcf.class);
        zzhgf.zzc(this.f15767d, zzcvw.class);
        return new bhu(this.f15768e, new zzcta(), new zzfgu(), new zzcuz(), new zzdta(), this.f15765b, this.f15767d, zzejg.zza(), this.f15769f, this.f15764a);
    }

    @Override // com.google.android.gms.internal.ads.zzdov
    /* renamed from: zze, reason: collision with other method in class */
    public zzdow mo6zze() {
        zzhgf.zzc(this.f15765b, zzdcf.class);
        zzhgf.zzc(this.f15767d, zzcvw.class);
        return new com.google.android.gms.internal.ads.al(this.f15768e, new zzcta(), new zzfgu(), new zzcuz(), new zzdta(), this.f15765b, this.f15767d, zzejg.zza(), this.f15769f, this.f15764a);
    }

    @Override // com.google.android.gms.internal.ads.zzcvs
    public final /* bridge */ /* synthetic */ Object zzh() {
        switch (this.f15766c) {
            case 0:
                return zze();
            default:
                return mo6zze();
        }
    }
}
