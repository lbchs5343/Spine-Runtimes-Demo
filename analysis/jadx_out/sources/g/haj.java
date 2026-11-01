package g;

import com.google.android.gms.internal.ads.zzbw;
import com.google.android.gms.internal.ads.zzfzd;
import com.google.android.gms.internal.ads.zzfzo;
import com.google.android.gms.internal.ads.zzgaz;
import com.google.android.gms.internal.ads.zzlo;
import com.google.android.gms.internal.ads.zzxp;
import com.google.android.gms.internal.ads.zzyb;

/* loaded from: classes3.dex */
public final class haj extends cbw implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f19123a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f19124b;

    /* renamed from: c, reason: collision with root package name */
    public final int f19125c;

    /* renamed from: d, reason: collision with root package name */
    public final int f19126d;

    /* renamed from: e, reason: collision with root package name */
    public final int f19127e;

    /* renamed from: f, reason: collision with root package name */
    public final int f19128f;

    /* renamed from: g, reason: collision with root package name */
    public final int f19129g;
    public final boolean h;
    public final boolean i;

    /* JADX WARN: Multi-variable type inference failed */
    public haj(int i, zzbw zzbwVar, int i2, zzxp zzxpVar, int i3, String str) {
        super(i, zzbwVar, i2);
        int i4;
        int i5;
        int i6 = 0;
        this.i = zzlo.zza(i3, false);
        int i7 = this.w.zze;
        int i8 = zzxpVar.zzv;
        this.f19124b = 1 == (i7 & 1);
        this.f19123a = (i7 & 2) != 0;
        zzfzo zzo = zzxpVar.zzt.isEmpty() ? zzfzo.zzo("") : zzxpVar.zzt;
        int i9 = 0;
        while (true) {
            int size = zzo.size();
            i4 = he.UNDEFINED_ITEM_ID;
            if (i9 >= size) {
                i9 = he.UNDEFINED_ITEM_ID;
                i5 = 0;
                break;
            } else {
                i5 = zzyb.i(this.w, (String) zzo.get(i9), false);
                if (i5 > 0) {
                    break;
                } else {
                    i9++;
                }
            }
        }
        this.f19129g = i9;
        this.f19125c = i5;
        int i10 = this.w.zzf;
        int i11 = zzxpVar.zzu;
        zzgaz zzgazVar = zzyb.f8943a;
        i4 = (i10 == 0 || i10 != i11) ? Integer.bitCount(i10 & i11) : i4;
        this.f19127e = i4;
        this.h = (this.w.zzf & 1088) != 0;
        int i12 = zzyb.i(this.w, str, zzyb.j(str) == null);
        this.f19126d = i12;
        boolean z = i5 > 0 || (zzxpVar.zzt.isEmpty() && i4 > 0) || this.f19124b || (this.f19123a && i12 > 0);
        if (zzlo.zza(i3, zzxpVar.zzN) && z) {
            i6 = 1;
        }
        this.f19128f = i6;
    }

    @Override // java.lang.Comparable
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public final int compareTo(haj hajVar) {
        zzfzd zzc = zzfzd.zzj().zzd(this.i, hajVar.i).zzc(Integer.valueOf(this.f19129g), Integer.valueOf(hajVar.f19129g), zzgaz.zzc().zza());
        int i = hajVar.f19125c;
        int i2 = this.f19125c;
        zzfzd zzb = zzc.zzb(i2, i);
        int i3 = hajVar.f19127e;
        int i4 = this.f19127e;
        zzfzd zzb2 = zzb.zzb(i4, i3).zzd(this.f19124b, hajVar.f19124b).zzc(Boolean.valueOf(this.f19123a), Boolean.valueOf(hajVar.f19123a), i2 == 0 ? zzgaz.zzc() : zzgaz.zzc().zza()).zzb(this.f19126d, hajVar.f19126d);
        if (i4 == 0) {
            zzb2 = zzb2.zze(this.h, hajVar.h);
        }
        return zzb2.zza();
    }

    @Override // g.cbw
    public final int s() {
        return this.f19128f;
    }

    @Override // g.cbw
    public final /* bridge */ /* synthetic */ boolean t(cbw cbwVar) {
        return false;
    }
}
