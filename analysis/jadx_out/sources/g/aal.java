package g;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzbaw;
import com.google.android.gms.internal.ads.zzbax;
import com.google.android.gms.internal.ads.zzbbh;
import com.google.android.gms.internal.ads.zzcaj;
import g.aal;
import g.agd;
import g.gcw;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class aal implements bjb {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbbh f9854a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzbax f9855b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ cok f9856c;

    public aal(zzbbh zzbbhVar, zzbax zzbaxVar, cok cokVar) {
        this.f9855b = zzbaxVar;
        this.f9856c = cokVar;
        this.f9854a = zzbbhVar;
    }

    @Override // g.bjb
    public final void onConnected(Bundle bundle) {
        synchronized (this.f9854a.f4685c) {
            try {
                zzbbh zzbbhVar = this.f9854a;
                if (zzbbhVar.f4684b) {
                    return;
                }
                zzbbhVar.f4684b = true;
                final zzbaw zzbawVar = zzbbhVar.f4683a;
                if (zzbawVar == null) {
                    return;
                }
                final dcy zza = zzcaj.zza.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbbc
                    @Override // java.lang.Runnable
                    public final void run() {
                        aal aalVar = aal.this;
                        zzbaw zzbawVar2 = zzbawVar;
                        try {
                            zzbaz zzq = zzbawVar2.zzq();
                            zzbau zzg = zzbawVar2.zzp() ? zzq.zzg(aalVar.f9855b) : zzq.zzf(aalVar.f9855b);
                            if (!zzg.zze()) {
                                aalVar.f9856c.zzd(new RuntimeException("No entry contents."));
                                zzbbh.d(aalVar.f9854a);
                                return;
                            }
                            gcw gcwVar = new gcw(aalVar, zzg.zzc());
                            int read = gcwVar.read();
                            if (read == -1) {
                                throw new IOException("Unable to read from cache.");
                            }
                            gcwVar.unread(read);
                            aalVar.f9856c.zzc(zzbbj.zzb(gcwVar, zzg.zzd(), zzg.zzg(), zzg.zza(), zzg.zzf()));
                        } catch (RemoteException e2) {
                            e = e2;
                            agd.f("Unable to obtain a cache service instance.", e);
                            aalVar.f9856c.zzd(e);
                            zzbbh.d(aalVar.f9854a);
                        } catch (IOException e3) {
                            e = e3;
                            agd.f("Unable to obtain a cache service instance.", e);
                            aalVar.f9856c.zzd(e);
                            zzbbh.d(aalVar.f9854a);
                        }
                    }
                });
                this.f9856c.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbbd
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (aal.this.f9856c.isCancelled()) {
                            zza.cancel(true);
                        }
                    }
                }, zzcaj.zzf);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // g.bjb
    public final void onConnectionSuspended(int i) {
    }
}
