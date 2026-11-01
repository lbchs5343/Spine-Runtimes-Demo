package g;

import com.google.android.gms.internal.ads.zzcbj;
import com.google.android.gms.internal.ads.zzcbk;

/* loaded from: classes3.dex */
public final class amx implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10498a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzcbj f10499b;

    public /* synthetic */ amx(zzcbj zzcbjVar, int i) {
        this.f10498a = i;
        this.f10499b = zzcbjVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f10498a) {
            case 0:
                zzcbk zzcbkVar = this.f10499b.f5141c;
                if (zzcbkVar != null) {
                    zzcbkVar.zza();
                    break;
                }
                break;
            case 1:
                zzcbk zzcbkVar2 = this.f10499b.f5141c;
                if (zzcbkVar2 != null) {
                    zzcbkVar2.zzh();
                    break;
                }
                break;
            case 2:
                zzcbj zzcbjVar = this.f10499b;
                zzcbk zzcbkVar3 = zzcbjVar.f5141c;
                if (zzcbkVar3 != null) {
                    zzcbkVar3.zzd();
                    zzcbjVar.f5141c.zzi();
                    break;
                }
                break;
            case 3:
                zzcbj zzcbjVar2 = this.f10499b;
                zzcbk zzcbkVar4 = zzcbjVar2.f5141c;
                if (zzcbkVar4 != null) {
                    if (!zzcbjVar2.o) {
                        zzcbkVar4.zzg();
                        zzcbjVar2.o = true;
                    }
                    zzcbjVar2.f5141c.zze();
                    break;
                }
                break;
            default:
                zzcbk zzcbkVar5 = this.f10499b.f5141c;
                if (zzcbkVar5 != null) {
                    zzcbkVar5.zzd();
                    break;
                }
                break;
        }
    }
}
