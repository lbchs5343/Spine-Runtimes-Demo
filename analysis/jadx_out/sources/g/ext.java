package g;

import android.content.Context;
import com.google.android.gms.internal.ads.zzemt;
import com.google.android.gms.internal.ads.zzenb;
import com.google.android.gms.internal.ads.zzfbh;
import com.google.android.gms.internal.ads.zzfbi;
import com.google.android.gms.internal.ads.zzfcx;
import com.google.android.gms.internal.ads.zzfcy;
import com.google.android.gms.internal.ads.zzfcz;
import com.google.android.gms.internal.ads.zzfdx;
import com.google.android.gms.internal.ads.zzffq;
import com.google.android.gms.internal.ads.zzhfw;
import com.google.android.gms.internal.ads.zzhfx;
import com.google.android.gms.internal.ads.zzhfy;
import com.google.android.gms.internal.ads.zzhgf;
import com.google.android.gms.internal.ads.zzhgg;

/* loaded from: classes3.dex */
public final class ext implements zzfbh, zzfcy {

    /* renamed from: a, reason: collision with root package name */
    public eno f16339a;

    /* renamed from: b, reason: collision with root package name */
    public final bxr f16340b;

    /* renamed from: c, reason: collision with root package name */
    public Context f16341c;

    /* renamed from: d, reason: collision with root package name */
    public String f16342d;

    public /* synthetic */ ext(bxr bxrVar) {
        this.f16340b = bxrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfbh
    public /* bridge */ /* synthetic */ zzfbh zza(eno enoVar) {
        enoVar.getClass();
        this.f16339a = enoVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfcy
    /* renamed from: zza, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ zzfcy mo7zza(eno enoVar) {
        enoVar.getClass();
        this.f16339a = enoVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfbh
    public /* bridge */ /* synthetic */ zzfbh zzb(String str) {
        str.getClass();
        this.f16342d = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfcy
    /* renamed from: zzb, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ zzfcy mo8zzb(String str) {
        str.getClass();
        this.f16342d = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfbh
    public /* bridge */ /* synthetic */ zzfbh zzc(Context context) {
        context.getClass();
        this.f16341c = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfcy
    /* renamed from: zzc, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ zzfcy mo9zzc(Context context) {
        context.getClass();
        this.f16341c = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfbh
    public zzfbi zzd() {
        zzhgf.zzc(this.f16341c, Context.class);
        zzhgf.zzc(this.f16342d, String.class);
        zzhgf.zzc(this.f16339a, eno.class);
        return new gjy(this.f16340b, this.f16341c, this.f16342d, this.f16339a);
    }

    @Override // com.google.android.gms.internal.ads.zzfcy
    /* renamed from: zzd, reason: collision with other method in class */
    public zzfcz mo10zzd() {
        zzhgf.zzc(this.f16341c, Context.class);
        zzhgf.zzc(this.f16342d, String.class);
        zzhgf.zzc(this.f16339a, eno.class);
        Context context = this.f16341c;
        String str = this.f16342d;
        eno enoVar = this.f16339a;
        fzm fzmVar = new fzm();
        zzhfx zza = zzhfy.zza(context);
        fzmVar.f17723e = zza;
        zzhfx zza2 = zzhfy.zza(enoVar);
        fzmVar.f17724f = zza2;
        zzhfx zza3 = zzhfy.zza(str);
        fzmVar.f17720b = zza3;
        bxr bxrVar = this.f16340b;
        zzhgg zzc = zzhfw.zzc(new zzemt(bxrVar.k));
        fzmVar.f17721c = zzc;
        zzhgg zzc2 = zzhfw.zzc(new zzfdx(bxrVar.cr));
        fzmVar.f17722d = zzc2;
        zzhgg zzc3 = zzhfw.zzc(new zzfcx(zza, bxrVar.z, bxrVar.ak, zzc, zzc2, zzffq.zza()));
        fzmVar.f17725g = zzc3;
        fzmVar.f17719a = zzhfw.zzc(new zzenb(zza, zza2, zza3, zzc3, zzc, zzc2, bxrVar.f12396ab, bxrVar.cc, bxrVar.k));
        return fzmVar;
    }
}
