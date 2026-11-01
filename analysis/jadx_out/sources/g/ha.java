package g;

import android.os.SystemClock;
import com.bykv.vk.component.ttvideo.utils.AVErrorInfo;
import com.google.android.gms.internal.ads.zzbls;
import com.google.android.gms.internal.ads.zzcao;
import com.google.android.gms.internal.ads.zzdup;
import com.google.android.gms.internal.ads.zzfka;
import com.google.android.gms.internal.ads.zzfko;

/* loaded from: classes3.dex */
public final class ha extends zzbls {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ long f19093a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzfka f19094b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzcao f19095c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f19096d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f19097e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ zzdup f19098f;

    public ha(zzdup zzdupVar, Object obj, zzcao zzcaoVar, String str, long j, zzfka zzfkaVar) {
        this.f19096d = obj;
        this.f19097e = str;
        this.f19093a = j;
        this.f19094b = zzfkaVar;
        this.f19095c = zzcaoVar;
        this.f19098f = zzdupVar;
    }

    @Override // com.google.android.gms.internal.ads.zzblt
    public final void zze(String str) {
        synchronized (this.f19096d) {
            zzdup zzdupVar = this.f19098f;
            String str2 = this.f19097e;
            ti.f20033a.v.getClass();
            zzdupVar.s(str2, (int) (SystemClock.elapsedRealtime() - this.f19093a), str, false);
            this.f19098f.f6523f.zzb(this.f19097e, AVErrorInfo.ERROR);
            this.f19098f.f6520c.zzb(this.f19097e, AVErrorInfo.ERROR);
            zzfko zzfkoVar = this.f19098f.j;
            zzfka zzfkaVar = this.f19094b;
            zzfkaVar.zzc(str);
            zzfkaVar.zzg(false);
            zzfkoVar.zzb(zzfkaVar.zzm());
            this.f19095c.zzc(Boolean.FALSE);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzblt
    public final void zzf() {
        synchronized (this.f19096d) {
            zzdup zzdupVar = this.f19098f;
            String str = this.f19097e;
            ti.f20033a.v.getClass();
            zzdupVar.s(str, (int) (SystemClock.elapsedRealtime() - this.f19093a), "", true);
            this.f19098f.f6523f.zzd(this.f19097e);
            this.f19098f.f6520c.zzd(this.f19097e);
            zzfko zzfkoVar = this.f19098f.j;
            zzfka zzfkaVar = this.f19094b;
            zzfkaVar.zzg(true);
            zzfkoVar.zzb(zzfkaVar.zzm());
            this.f19095c.zzc(Boolean.TRUE);
        }
    }
}
