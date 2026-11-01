package g;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.LocaleList;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.google.android.gms.internal.ads.zzad;
import com.google.android.gms.internal.ads.zzbw;
import com.google.android.gms.internal.ads.zzen;
import com.google.android.gms.internal.ads.zzfzd;
import com.google.android.gms.internal.ads.zzgaz;
import com.google.android.gms.internal.ads.zzlo;
import com.google.android.gms.internal.ads.zzxc;
import com.google.android.gms.internal.ads.zzxp;
import com.google.android.gms.internal.ads.zzyb;
import j$.util.Objects;

/* loaded from: classes3.dex */
public final class bdq extends cbw implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public final zzxp f11333a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f11334b;

    /* renamed from: c, reason: collision with root package name */
    public final int f11335c;

    /* renamed from: d, reason: collision with root package name */
    public final String f11336d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f11337e;

    /* renamed from: f, reason: collision with root package name */
    public final int f11338f;

    /* renamed from: g, reason: collision with root package name */
    public final int f11339g;
    public final int h;
    public final int i;
    public final boolean j;
    public final int k;
    public final int l;
    public final int m;
    public final boolean n;
    public final int o;
    public final int p;
    public final boolean q;
    public final boolean r;

    /* JADX WARN: Multi-variable type inference failed */
    public bdq(int i, zzbw zzbwVar, int i2, zzxp zzxpVar, int i3, boolean z, zzxc zzxcVar) {
        super(i, zzbwVar, i2);
        int i4;
        int i5;
        String[] strArr;
        int i6;
        boolean z2;
        LocaleList locales;
        String languageTags;
        this.f11333a = zzxpVar;
        int i7 = 1;
        int i8 = true != zzxpVar.zzL ? 16 : 24;
        this.f11336d = zzyb.j(this.w.zzd);
        this.n = zzlo.zza(i3, false);
        int i9 = 0;
        while (true) {
            int size = zzxpVar.zzn.size();
            i4 = he.UNDEFINED_ITEM_ID;
            if (i9 >= size) {
                i9 = he.UNDEFINED_ITEM_ID;
                i5 = 0;
                break;
            } else {
                i5 = zzyb.i(this.w, (String) zzxpVar.zzn.get(i9), false);
                if (i5 > 0) {
                    break;
                } else {
                    i9++;
                }
            }
        }
        this.i = i9;
        this.f11339g = i5;
        int i10 = this.w.zzf;
        this.h = (i10 == 0 || i10 != 0) ? Integer.bitCount(0) : he.UNDEFINED_ITEM_ID;
        zzad zzadVar = this.w;
        int i11 = zzadVar.zzf;
        this.q = i11 == 0 || (i11 & 1) != 0;
        this.f11334b = 1 == (zzadVar.zze & 1);
        this.p = zzadVar.zzC;
        this.m = zzadVar.zzD;
        this.k = zzadVar.zzj;
        this.r = zzxcVar.zza(zzadVar);
        Configuration configuration = Resources.getSystem().getConfiguration();
        if (zzen.zza >= 24) {
            locales = configuration.getLocales();
            languageTags = locales.toLanguageTags();
            strArr = languageTags.split(",", -1);
        } else {
            strArr = new String[]{configuration.locale.toLanguageTag()};
        }
        for (int i12 = 0; i12 < strArr.length; i12++) {
            strArr[i12] = zzen.zzE(strArr[i12]);
        }
        int i13 = 0;
        while (true) {
            if (i13 >= strArr.length) {
                i13 = he.UNDEFINED_ITEM_ID;
                i6 = 0;
                break;
            } else {
                i6 = zzyb.i(this.w, strArr[i13], false);
                if (i6 > 0) {
                    break;
                } else {
                    i13++;
                }
            }
        }
        this.o = i13;
        this.f11338f = i6;
        int i14 = 0;
        while (true) {
            if (i14 >= zzxpVar.zzr.size()) {
                break;
            }
            String str = this.w.zzo;
            if (str != null && str.equals(zzxpVar.zzr.get(i14))) {
                i4 = i14;
                break;
            }
            i14++;
        }
        this.f11335c = i4;
        this.j = (i3 & MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500) == 128;
        this.f11337e = (i3 & 64) == 64;
        zzxp zzxpVar2 = this.f11333a;
        if (!zzlo.zza(i3, zzxpVar2.zzN) || (!(z2 = this.r) && !zzxpVar2.zzG)) {
            i7 = 0;
        } else if (zzlo.zza(i3, false) && z2 && this.w.zzj != -1 && ((zzxpVar2.zzP || !z) && (i8 & i3) != 0)) {
            i7 = 2;
        }
        this.l = i7;
    }

    @Override // g.cbw
    public final int s() {
        return this.l;
    }

    @Override // g.cbw
    public final /* bridge */ /* synthetic */ boolean t(cbw cbwVar) {
        String str;
        int i;
        bdq bdqVar = (bdq) cbwVar;
        zzad zzadVar = bdqVar.w;
        boolean z = this.f11333a.zzJ;
        zzad zzadVar2 = this.w;
        int i2 = zzadVar2.zzC;
        return i2 != -1 && i2 == zzadVar.zzC && (str = zzadVar2.zzo) != null && TextUtils.equals(str, zzadVar.zzo) && (i = zzadVar2.zzD) != -1 && i == zzadVar.zzD && this.j == bdqVar.j && this.f11337e == bdqVar.f11337e;
    }

    @Override // java.lang.Comparable
    /* renamed from: u, reason: merged with bridge method [inline-methods] */
    public final int compareTo(bdq bdqVar) {
        boolean z = this.n;
        boolean z2 = this.r;
        zzgaz zza = (z2 && z) ? zzyb.f8943a : zzyb.f8943a.zza();
        zzfzd zzc = zzfzd.zzj().zzd(z, bdqVar.n).zzc(Integer.valueOf(this.i), Integer.valueOf(bdqVar.i), zzgaz.zzc().zza()).zzb(this.f11339g, bdqVar.f11339g).zzb(this.h, bdqVar.h).zzd(this.f11334b, bdqVar.f11334b).zzd(this.q, bdqVar.q).zzc(Integer.valueOf(this.o), Integer.valueOf(bdqVar.o), zzgaz.zzc().zza()).zzb(this.f11338f, bdqVar.f11338f).zzd(z2, bdqVar.r).zzc(Integer.valueOf(this.f11335c), Integer.valueOf(bdqVar.f11335c), zzgaz.zzc().zza());
        boolean z3 = this.f11333a.zzy;
        zzfzd zzc2 = zzc.zzd(this.j, bdqVar.j).zzd(this.f11337e, bdqVar.f11337e).zzc(Integer.valueOf(this.p), Integer.valueOf(bdqVar.p), zza).zzc(Integer.valueOf(this.m), Integer.valueOf(bdqVar.m), zza);
        if (Objects.equals(this.f11336d, bdqVar.f11336d)) {
            zzc2 = zzc2.zzc(Integer.valueOf(this.k), Integer.valueOf(bdqVar.k), zza);
        }
        return zzc2.zza();
    }
}
