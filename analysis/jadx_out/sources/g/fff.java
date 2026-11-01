package g;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbyj;
import com.google.android.gms.internal.ads.zzbyl;
import com.google.android.gms.internal.ads.zzbym;
import com.google.android.gms.internal.ads.zzbyn;
import com.google.android.gms.internal.ads.zzbyv;
import com.google.android.gms.internal.ads.zzbyw;
import com.google.android.gms.internal.ads.zzbzb;
import com.google.android.gms.internal.ads.zzhfw;
import com.google.android.gms.internal.ads.zzhfx;
import com.google.android.gms.internal.ads.zzhfy;
import com.google.android.gms.internal.ads.zzhgg;

/* loaded from: classes3.dex */
public final class fff extends zzbyw {

    /* renamed from: c, reason: collision with root package name */
    public final zzhgg f16696c;

    /* renamed from: d, reason: collision with root package name */
    public final zzhfx f16697d;

    /* renamed from: e, reason: collision with root package name */
    public final zzhgg f16698e;

    /* renamed from: f, reason: collision with root package name */
    public final zzhfx f16699f;

    /* renamed from: g, reason: collision with root package name */
    public final zzhgg f16700g;
    public final cvb h;
    public final zzhfx i;
    public final zzhfx j;

    public /* synthetic */ fff(Context context, czz czzVar, cmo cmoVar, zzbyv zzbyvVar) {
        this.h = czzVar;
        zzhfx zza = zzhfy.zza(context);
        this.i = zza;
        zzhfx zza2 = zzhfy.zza(cmoVar);
        this.f16697d = zza2;
        this.f16698e = zzhfw.zzc(new zzbyj(zza, zza2));
        zzhfx zza3 = zzhfy.zza(czzVar);
        this.f16699f = zza3;
        zzhfx zza4 = zzhfy.zza(zzbyvVar);
        this.j = zza4;
        zzhgg zzc = zzhfw.zzc(new zzbyl(zza3, zza2, zza4));
        this.f16696c = zzc;
        this.f16700g = zzhfw.zzc(new zzbzb(zza, new zzbyn(zza3, zzc)));
    }

    @Override // com.google.android.gms.internal.ads.zzbyw
    public final zzbym b() {
        return new zzbym(this.h, (dst) this.f16696c.zzb());
    }
}
