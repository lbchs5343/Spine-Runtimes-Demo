package g;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbkq;
import com.google.android.gms.internal.ads.zzdtn;
import com.google.android.gms.internal.ads.zzdts;
import com.google.android.gms.internal.ads.zzdtt;
import com.google.android.gms.internal.ads.zzdtu;
import com.google.android.gms.internal.ads.zzdtw;
import com.google.android.gms.internal.ads.zzhfw;
import com.google.android.gms.internal.ads.zzhfx;
import com.google.android.gms.internal.ads.zzhfy;
import com.google.android.gms.internal.ads.zzhgg;

/* loaded from: classes3.dex */
public final class gud implements zzdtw {

    /* renamed from: a, reason: collision with root package name */
    public final gud f18755a = this;

    /* renamed from: b, reason: collision with root package name */
    public final zzhfx f18756b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f18757c;

    /* renamed from: d, reason: collision with root package name */
    public final zzhfx f18758d;

    /* renamed from: e, reason: collision with root package name */
    public final zzbkq f18759e;

    /* renamed from: f, reason: collision with root package name */
    public final bxr f18760f;

    /* renamed from: g, reason: collision with root package name */
    public final zzhgg f18761g;

    public /* synthetic */ gud(bxr bxrVar, Context context, zzbkq zzbkqVar) {
        this.f18760f = bxrVar;
        this.f18757c = context;
        this.f18759e = zzbkqVar;
        zzhfx zza = zzhfy.zza(this);
        this.f18756b = zza;
        zzhfx zza2 = zzhfy.zza(zzbkqVar);
        this.f18758d = zza2;
        this.f18761g = zzhfw.zzc(new zzdtu(zza, new zzdts(zza2)));
    }

    @Override // com.google.android.gms.internal.ads.zzdtw
    public final zzdtn zzb() {
        return new duw(this.f18760f, this.f18755a);
    }

    @Override // com.google.android.gms.internal.ads.zzdtw
    public final zzdtt zzd() {
        return (zzdtt) this.f18761g.zzb();
    }
}
