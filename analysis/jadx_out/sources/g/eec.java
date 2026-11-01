package g;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.TextureView;
import com.google.android.gms.internal.ads.zzabg;
import com.google.android.gms.internal.ads.zzad;
import com.google.android.gms.internal.ads.zzci;
import com.google.android.gms.internal.ads.zzdp;
import com.google.android.gms.internal.ads.zzds;
import com.google.android.gms.internal.ads.zzhp;
import com.google.android.gms.internal.ads.zzhu;
import com.google.android.gms.internal.ads.zzhx;
import com.google.android.gms.internal.ads.zzhy;
import com.google.android.gms.internal.ads.zzpn;
import com.google.android.gms.internal.ads.zzpo;
import com.google.android.gms.internal.ads.zztp;
import com.google.android.gms.internal.ads.zzwu;

/* loaded from: classes3.dex */
public final class eec implements SurfaceHolder.Callback, TextureView.SurfaceTextureListener, zzabg, zzpn, zzwu, zztp, zzhu, zzhp {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ij f15392a;

    public /* synthetic */ eec(ij ijVar) {
        this.f15392a = ijVar;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        Surface surface = new Surface(surfaceTexture);
        ij ijVar = this.f15392a;
        ijVar.au(surface);
        ijVar.f19426c = surface;
        ijVar.ay(i, i2);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        ij ijVar = this.f15392a;
        ijVar.au(null);
        ijVar.ay(0, 0);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        this.f15392a.ay(i, i2);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        this.f15392a.ay(i2, i3);
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.f15392a.ay(0, 0);
    }

    @Override // com.google.android.gms.internal.ads.zzpn
    public final void zza(Exception exc) {
        this.f15392a.j.zzv(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzpn
    public final void zzb(String str, long j, long j2) {
        this.f15392a.j.zzw(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzpn
    public final void zzc(String str) {
        this.f15392a.j.zzx(str);
    }

    @Override // com.google.android.gms.internal.ads.zzpn
    public final void zzd(zzhx zzhxVar) {
        this.f15392a.j.zzy(zzhxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzpn
    public final void zze(zzhx zzhxVar) {
        this.f15392a.j.zzz(zzhxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzpn
    public final void zzf(zzad zzadVar, zzhy zzhyVar) {
        this.f15392a.j.zzA(zzadVar, zzhyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzpn
    public final void zzg(long j) {
        this.f15392a.j.zzB(j);
    }

    @Override // com.google.android.gms.internal.ads.zzpn
    public final void zzh(Exception exc) {
        this.f15392a.j.zzC(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzpn
    public final void zzi(zzpo zzpoVar) {
        this.f15392a.j.zzD(zzpoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzpn
    public final void zzj(zzpo zzpoVar) {
        this.f15392a.j.zzE(zzpoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzpn
    public final void zzk(int i, long j, long j2) {
        this.f15392a.j.zzF(i, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzabg
    public final void zzl(int i, long j) {
        this.f15392a.j.zzG(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzabg
    public final void zzm(Object obj, long j) {
        ij ijVar = this.f15392a;
        ijVar.j.zzH(obj, j);
        if (ijVar.h == obj) {
            zzds zzdsVar = ijVar.f19425ab;
            zzdsVar.zzd(26, new zzdp() { // from class: com.google.android.gms.internal.ads.zzjq
                @Override // com.google.android.gms.internal.ads.zzdp
                public final void zza(Object obj2) {
                }
            });
            zzdsVar.zzc();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpn
    public final void zzn(final boolean z) {
        ij ijVar = this.f15392a;
        if (ijVar.q == z) {
            return;
        }
        ijVar.q = z;
        zzds zzdsVar = ijVar.f19425ab;
        zzdsVar.zzd(23, new zzdp() { // from class: com.google.android.gms.internal.ads.zzjo
            @Override // com.google.android.gms.internal.ads.zzdp
            public final void zza(Object obj) {
                ((zzbm) obj).zzn(z);
            }
        });
        zzdsVar.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzabg
    public final void zzo(Exception exc) {
        this.f15392a.j.zzJ(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzabg
    public final void zzp(String str, long j, long j2) {
        this.f15392a.j.zzK(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzabg
    public final void zzq(String str) {
        this.f15392a.j.zzL(str);
    }

    @Override // com.google.android.gms.internal.ads.zzabg
    public final void zzr(zzhx zzhxVar) {
        this.f15392a.j.zzM(zzhxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzabg
    public final void zzs(zzhx zzhxVar) {
        this.f15392a.j.zzN(zzhxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzabg
    public final void zzt(long j, int i) {
        this.f15392a.j.zzO(j, i);
    }

    @Override // com.google.android.gms.internal.ads.zzabg
    public final void zzu(zzad zzadVar, zzhy zzhyVar) {
        this.f15392a.j.zzP(zzadVar, zzhyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzabg
    public final void zzv(final zzci zzciVar) {
        zzds zzdsVar = this.f15392a.f19425ab;
        zzdsVar.zzd(25, new zzdp() { // from class: com.google.android.gms.internal.ads.zzjp
            @Override // com.google.android.gms.internal.ads.zzdp
            public final void zza(Object obj) {
                ((zzbm) obj).zzr(zzci.this);
            }
        });
        zzdsVar.zzc();
    }
}
