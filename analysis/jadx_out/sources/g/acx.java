package g;

import com.google.android.gms.internal.ads.zzcrt;
import com.google.android.gms.internal.ads.zzdjj;
import com.google.android.gms.internal.ads.zzefb;
import com.google.android.gms.internal.ads.zzefc;
import com.google.android.gms.internal.ads.zzehp;
import com.google.android.gms.internal.ads.zzfwh;
import com.google.android.gms.internal.ads.zzhgp;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class acx implements zzcrt {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgp f10017a;

    /* renamed from: b, reason: collision with root package name */
    public final zzdjj f10018b;

    /* renamed from: c, reason: collision with root package name */
    public final Map f10019c;

    /* renamed from: d, reason: collision with root package name */
    public final Map f10020d;

    /* renamed from: e, reason: collision with root package name */
    public final Map f10021e;

    public acx(Map map, Map map2, Map map3, zzhgp zzhgpVar, zzdjj zzdjjVar) {
        this.f10019c = map;
        this.f10020d = map2;
        this.f10021e = map3;
        this.f10017a = zzhgpVar;
        this.f10018b = zzdjjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcrt
    public final zzefb zza(int i, String str) {
        zzefb zza;
        zzefb zzefbVar = (zzefb) this.f10019c.get(str);
        if (zzefbVar != null) {
            return zzefbVar;
        }
        if (i != 1) {
            if (i != 4) {
                return null;
            }
            zzehp zzehpVar = (zzehp) this.f10021e.get(str);
            if (zzehpVar != null) {
                return new zzefc(zzehpVar, new zzfwh() { // from class: com.google.android.gms.internal.ads.zzcrv
                    @Override // com.google.android.gms.internal.ads.zzfwh
                    public final Object apply(Object obj) {
                        return new zzcry((List) obj);
                    }
                });
            }
            zza = (zzefb) this.f10020d.get(str);
            if (zza == null) {
                return null;
            }
        } else if (this.f10018b.zze() == null || (zza = ((zzcrt) this.f10017a.zzb()).zza(i, str)) == null) {
            return null;
        }
        return new zzefc(zza, new zzfwh() { // from class: com.google.android.gms.internal.ads.zzcrw
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object apply(Object obj) {
                return new zzcry((zzcrq) obj);
            }
        });
    }
}
