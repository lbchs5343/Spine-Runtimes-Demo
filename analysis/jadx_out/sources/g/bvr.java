package g;

import com.google.android.gms.internal.ads.zzdex;
import com.google.android.gms.internal.ads.zzdsh;
import java.util.HashSet;

/* loaded from: classes3.dex */
public final class bvr implements zzdex {

    /* renamed from: a, reason: collision with root package name */
    public final String f12280a;

    /* renamed from: b, reason: collision with root package name */
    public final zzdsh f12281b;

    /* renamed from: c, reason: collision with root package name */
    public final bgq f12282c;

    public bvr(zzdsh zzdshVar, bgq bgqVar, String str) {
        this.f12281b = zzdshVar;
        this.f12282c = bgqVar;
        this.f12280a = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdex
    public final void zze(ggs ggsVar) {
        if (ggsVar == null) {
            return;
        }
        bgq bgqVar = this.f12282c;
        String str = this.f12280a;
        zzdsh zzdshVar = this.f12281b;
        String str2 = ggsVar.f18123e;
        synchronized (bgqVar) {
            ti.f20033a.v.getClass();
            bgqVar.f11533c.put(str, new ckv(Long.valueOf(System.currentTimeMillis()), str2, new HashSet()));
            bgqVar.p();
            bgqVar.k(zzdshVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdex
    public final void zzf(String str) {
    }
}
