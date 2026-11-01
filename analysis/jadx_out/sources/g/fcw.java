package g;

import android.os.Bundle;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.google.android.gms.internal.ads.zzacs;
import com.google.android.gms.internal.ads.zzada;
import com.google.android.gms.internal.ads.zzadb;
import com.google.android.gms.internal.ads.zzadc;
import com.google.android.gms.internal.ads.zzadq;
import com.google.android.gms.internal.ads.zzdb;
import com.google.android.gms.internal.ads.zzen;
import com.google.android.gms.internal.ads.zzyl;
import com.google.android.gms.internal.ads.zzym;

/* loaded from: classes3.dex */
public final class fcw implements arm, zzym {

    /* renamed from: a, reason: collision with root package name */
    public Object f16580a;

    /* renamed from: b, reason: collision with root package name */
    public Object f16581b;

    /* renamed from: d, reason: collision with root package name */
    public long f16582d;

    /* renamed from: e, reason: collision with root package name */
    public long f16583e;

    public fcw(long j) {
        zzdb.zzf(((zzyl) this.f16580a) == null);
        this.f16582d = j;
        this.f16583e = j + 65536;
    }

    public fcw(String str, byte[] bArr, long j, long j2) {
        this.f16580a = str;
        this.f16581b = bArr;
        this.f16582d = j;
        this.f16583e = j2;
    }

    @Override // g.arm
    public long c(zzacs zzacsVar) {
        long j = this.f16583e;
        if (j < 0) {
            return -1L;
        }
        this.f16583e = -1L;
        return -(j + 2);
    }

    public boolean f(long j, boolean z, boolean z2) {
        rd rdVar = (rd) this.f16580a;
        cjv cjvVar = (cjv) this.f16581b;
        cjvVar._e();
        cjvVar.zza();
        ((dkg) blm.f11789a.f11790b.zza()).getClass();
        cyg cygVar = (cyg) cjvVar.z;
        if (!cygVar.f13747e.g(null, gad.j)) {
            gmr gmrVar = cygVar.f13744b;
            cyg.ai(gmrVar);
            fou fouVar = gmrVar.k;
            cygVar.f13743ab.getClass();
            fouVar.g(System.currentTimeMillis());
        } else if (cygVar.as()) {
            gmr gmrVar2 = cygVar.f13744b;
            cyg.ai(gmrVar2);
            fou fouVar2 = gmrVar2.k;
            cygVar.f13743ab.getClass();
            fouVar2.g(System.currentTimeMillis());
        }
        long j2 = j - this.f16582d;
        if (!z && j2 < 1000) {
            bgm bgmVar = cygVar.z;
            cyg.ak(bgmVar);
            bgmVar.f11519c.i(Long.valueOf(j2), "Screen exposed for less than 1000 ms. Event not sent. time");
            return false;
        }
        if (!z2) {
            j2 = j - this.f16583e;
            this.f16583e = j;
        }
        bgm bgmVar2 = cygVar.z;
        cyg.ak(bgmVar2);
        bgmVar2.f11519c.i(Long.valueOf(j2), "Recording user engagement, ms");
        Bundle bundle = new Bundle();
        bundle.putLong("_et", j2);
        boolean j3 = cygVar.f13747e.j();
        bcm bcmVar = cygVar.h;
        cyg.aj(bcmVar);
        dkq.q(bcmVar.u(!j3), bundle, true);
        if (!z2) {
            csp cspVar = cygVar.f13745c;
            cyg.aj(cspVar);
            cspVar.au(LiveConfigKey.AUTO, "_e", bundle);
        }
        this.f16582d = j;
        rdVar.i();
        rdVar.j(3600000L);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzym
    public zzyl zzc() {
        zzyl zzylVar = (zzyl) this.f16580a;
        zzylVar.getClass();
        return zzylVar;
    }

    @Override // com.google.android.gms.internal.ads.zzym
    public zzym zzd() {
        fcw fcwVar = (fcw) this.f16581b;
        if (fcwVar == null || ((zzyl) fcwVar.f16580a) == null) {
            return null;
        }
        return fcwVar;
    }

    @Override // g.arm
    public zzadq zze() {
        zzdb.zzf(this.f16582d != -1);
        return new zzada((zzadc) this.f16580a, this.f16582d);
    }

    @Override // g.arm
    public void zzg(long j) {
        long[] jArr = ((zzadb) this.f16581b).zza;
        this.f16583e = jArr[zzen.zzd(jArr, j, true, true)];
    }
}
