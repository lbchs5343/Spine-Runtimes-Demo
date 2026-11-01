package g;

import android.content.Context;
import com.google.android.gms.internal.ads.zzchq;
import com.google.android.gms.internal.ads.zzclg;
import com.google.android.gms.internal.ads.zzdrf;
import com.google.android.gms.internal.ads.zzdrh;
import com.google.android.gms.internal.ads.zzdrj;
import com.google.android.gms.internal.ads.zzdrl;
import com.google.android.gms.internal.ads.zzdrm;
import com.google.android.gms.internal.ads.zzdsm;
import com.google.android.gms.internal.ads.zzeun;
import com.google.android.gms.internal.ads.zzewc;
import com.google.android.gms.internal.ads.zzexr;
import com.google.android.gms.internal.ads.zzeyi;
import com.google.android.gms.internal.ads.zzeyo;
import com.google.android.gms.internal.ads.zzeyp;
import com.google.android.gms.internal.ads.zzeyq;
import com.google.android.gms.internal.ads.zzfin;
import com.google.android.gms.internal.ads.zzfjl;
import com.google.android.gms.internal.ads.zzfjr;
import com.google.android.gms.internal.ads.zzfjt;
import com.google.android.gms.internal.ads.zzfju;
import com.google.android.gms.internal.ads.zzfkl;
import com.google.android.gms.internal.ads.zzfkm;
import com.google.android.gms.internal.ads.zzges;
import com.google.android.gms.internal.ads.zzhfw;
import com.google.android.gms.internal.ads.zzhga;
import com.google.android.gms.internal.ads.zzhgb;
import com.google.android.gms.internal.ads.zzhgg;
import com.google.android.gms.internal.ads.zzhgk;
import com.google.android.gms.internal.ads.zzhgl;
import java.util.HashSet;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class bby extends zzexr {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgg f11247a;

    /* renamed from: b, reason: collision with root package name */
    public final zzhgg f11248b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhgg f11249c;

    /* renamed from: d, reason: collision with root package name */
    public final zzeyo f11250d;

    /* renamed from: e, reason: collision with root package name */
    public final zzhgg f11251e;

    /* renamed from: f, reason: collision with root package name */
    public final zzhgg f11252f;

    /* renamed from: g, reason: collision with root package name */
    public final bxr f11253g;
    public final zzhgg h;
    public final zzhgg i;

    public /* synthetic */ bby(bxr bxrVar, zzeyo zzeyoVar) {
        this.f11253g = bxrVar;
        this.f11250d = zzeyoVar;
        zzeyq zzeyqVar = new zzeyq(zzeyoVar);
        zzhgg zzc = zzhfw.zzc(zzdrh.zza());
        this.h = zzc;
        zzhgg zzc2 = zzhfw.zzc(zzdrf.zza());
        this.f11248b = zzc2;
        zzhgg zzc3 = zzhfw.zzc(zzdrj.zza());
        this.f11249c = zzc3;
        zzhgg zzc4 = zzhfw.zzc(zzdrl.zza());
        this.f11251e = zzc4;
        zzhga zzc5 = zzhgb.zzc(4);
        zzc5.zzb(zzfjl.GMS_SIGNALS, zzc);
        zzc5.zzb(zzfjl.BUILD_URL, zzc2);
        zzc5.zzb(zzfjl.HTTP, zzc3);
        zzc5.zzb(zzfjl.PRE_PROCESS, zzc4);
        zzhgg zzc6 = zzhfw.zzc(new zzdrm(zzeyqVar, bxrVar.bk, zzfin.zza(), zzc5.zzc()));
        this.i = zzc6;
        zzhgk zza = zzhgl.zza(0, 1);
        zza.zza(zzc6);
        this.f11247a = zzhfw.zzc(new zzfjt(zzfin.zza(), bxrVar.ay, new zzfju(zza.zzc())));
        this.f11252f = zzhfw.zzc(new zzfkm(bxrVar.ap));
    }

    @Override // com.google.android.gms.internal.ads.zzexr
    public final zzewc zza() {
        bxr bxrVar = this.f11253g;
        Context zzc = zzchq.zzc(bxrVar.bp);
        zzeyi zzeyiVar = new zzeyi(zzclg.zza(), zzfin.zzc(), zzeyp.zza(this.f11250d));
        zzges zzc2 = zzfin.zzc();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) bxrVar.ay.zzb();
        zzfkl zzfklVar = (zzfkl) this.f11252f.zzb();
        zzdsm zzdsmVar = (zzdsm) bxrVar.k.zzb();
        HashSet hashSet = new HashSet();
        hashSet.add(new zzeun(zzeyiVar, 0L, scheduledExecutorService));
        return new zzewc(zzc, zzc2, hashSet, zzfklVar, zzdsmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzexr
    public final zzfjr zzb() {
        return (zzfjr) this.f11247a.zzb();
    }
}
