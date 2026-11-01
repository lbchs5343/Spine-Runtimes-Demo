package g;

import android.content.Context;
import com.google.android.gms.internal.ads.zzezt;
import com.google.android.gms.internal.ads.zzezu;
import com.google.android.gms.internal.ads.zzfcn;
import com.google.android.gms.internal.ads.zzfdx;
import com.google.android.gms.internal.ads.zzfeh;
import com.google.android.gms.internal.ads.zzfel;
import com.google.android.gms.internal.ads.zzfem;
import com.google.android.gms.internal.ads.zzfen;
import com.google.android.gms.internal.ads.zzfer;
import com.google.android.gms.internal.ads.zzffl;
import com.google.android.gms.internal.ads.zzffq;
import com.google.android.gms.internal.ads.zzhfw;
import com.google.android.gms.internal.ads.zzhfx;
import com.google.android.gms.internal.ads.zzhfy;
import com.google.android.gms.internal.ads.zzhgf;
import com.google.android.gms.internal.ads.zzhgg;

/* loaded from: classes3.dex */
public final class ng implements zzezt, zzfem {

    /* renamed from: a, reason: collision with root package name */
    public final bxr f19703a;

    /* renamed from: b, reason: collision with root package name */
    public Context f19704b;

    /* renamed from: c, reason: collision with root package name */
    public String f19705c;

    public /* synthetic */ ng(bxr bxrVar) {
        this.f19703a = bxrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezt
    public /* bridge */ /* synthetic */ zzezt zza(String str) {
        str.getClass();
        this.f19705c = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfem
    /* renamed from: zza, reason: collision with other method in class */
    public /* synthetic */ zzfem mo17zza(String str) {
        this.f19705c = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzezt
    public /* bridge */ /* synthetic */ zzezt zzb(Context context) {
        context.getClass();
        this.f19704b = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfem
    /* renamed from: zzb, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ zzfem mo18zzb(Context context) {
        context.getClass();
        this.f19704b = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzezt
    public zzezu zzc() {
        zzhgf.zzc(this.f19704b, Context.class);
        zzhgf.zzc(this.f19705c, String.class);
        return new fzn(this.f19703a, this.f19704b, this.f19705c);
    }

    @Override // com.google.android.gms.internal.ads.zzfem
    /* renamed from: zzc, reason: collision with other method in class */
    public zzfen mo19zzc() {
        zzhgf.zzc(this.f19704b, Context.class);
        Context context = this.f19704b;
        String str = this.f19705c;
        ph phVar = new ph();
        zzhfx zza = zzhfy.zza(context);
        phVar.f19811c = zza;
        bxr bxrVar = this.f19703a;
        zzfcn zzfcnVar = new zzfcn(zza, bxrVar.cr, bxrVar.aq);
        zzhgg zzc = zzhfw.zzc(new zzfdx(bxrVar.cr));
        phVar.f19813e = zzc;
        zzhgg zzc2 = zzhfw.zzc(zzffl.zza());
        phVar.f19814f = zzc2;
        zzhgg zzc3 = zzhfw.zzc(new zzfeh(zza, bxrVar.z, bxrVar.ak, zzfcnVar, zzc, zzffq.zza(), zzc2));
        phVar.f19809a = zzc3;
        phVar.f19810b = zzhfw.zzc(new zzfer(zzc3, zzc, zzc2));
        zzhfx zzc4 = zzhfy.zzc(str);
        phVar.f19812d = zzc4;
        phVar.f19815g = zzhfw.zzc(new zzfel(zzc4, zzc3, zza, zzc, zzc2, bxrVar.f12396ab, bxrVar.cc, bxrVar.k));
        return phVar;
    }
}
