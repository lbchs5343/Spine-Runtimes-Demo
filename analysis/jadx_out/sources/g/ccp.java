package g;

import android.app.Service;
import android.database.sqlite.SQLiteDatabase;
import android.os.SystemClock;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzdt;
import com.google.android.gms.internal.ads.zzdxv;
import com.google.android.gms.internal.ads.zzfff;
import com.google.android.gms.internal.ads.zzfiv;
import com.google.android.gms.internal.ads.zzfka;
import com.google.android.gms.internal.ads.zzgee;
import com.google.android.gms.internal.ads.zzpr;
import com.google.android.gms.internal.ads.zzpx;
import com.google.android.gms.internal.ads.zzqw;
import java.util.regex.Matcher;

/* loaded from: classes3.dex */
public final class ccp implements zzgee, kq, zzpx {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f12645b;

    /* renamed from: d, reason: collision with root package name */
    public final Object f12646d;

    public /* synthetic */ ccp(int i, Object obj) {
        this.f12645b = i;
        this.f12646d = obj;
    }

    private final void f(Throwable th) {
    }

    @Override // g.kq
    public hcu a(Class cls) {
        for (int i = 0; i < 2; i++) {
            kq kqVar = ((kq[]) this.f12646d)[i];
            if (kqVar.c(cls)) {
                return kqVar.a(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // g.kq
    public boolean c(Class cls) {
        for (int i = 0; i < 2; i++) {
            if (((kq[]) this.f12646d)[i].c(cls)) {
                return true;
            }
        }
        return false;
    }

    public bgm e() {
        bgm bgmVar = cyg.al((Service) this.f12646d, null, null).z;
        cyg.ak(bgmVar);
        return bgmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzpx
    public void zza(long j) {
        zzdt.zzf("DefaultAudioSink", "Ignoring impossibly large audio latency: " + j);
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zza(Throwable th) {
        switch (this.f12645b) {
            case 0:
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzgc)).booleanValue()) {
                    Matcher matcher = zzdxv.f6648a.matcher(th.getMessage());
                    if (matcher.matches()) {
                        ((zzdxv) this.f12646d).f6650c.zzi(Integer.parseInt(matcher.group(1)));
                        break;
                    }
                }
                break;
            case 1:
                agd.d("Failed to get offline buffered ping database: ".concat(String.valueOf(th.getMessage())));
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpx
    public void zzb(long j) {
        zzpr zzprVar = ((zzqw) this.f12646d).r;
        if (zzprVar != null) {
            ((fge) zzprVar).f16738a.f8864f.zzv(j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zzb(Object obj) {
        switch (this.f12645b) {
            case 0:
                zzdxv zzdxvVar = (zzdxv) this.f12646d;
                zzfff zzfffVar = (zzfff) obj;
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzgc)).booleanValue()) {
                    zzdxvVar.f6650c.zzi(zzfffVar.zzb.zzb.zzf);
                    zzdxvVar.f6650c.zzj(zzfffVar.zzb.zzb.zzg);
                    break;
                }
                break;
            case 1:
                try {
                    ((zzfiv) this.f12646d).zza((SQLiteDatabase) obj);
                    break;
                } catch (Exception e2) {
                    agd.d("Error executing function on offline buffered ping database: ".concat(String.valueOf(e2.getMessage())));
                    return;
                }
            default:
                ((zzfka) this.f12646d).zzi();
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpx
    public void zzc(long j, long j2, long j3, long j4) {
        zzqw zzqwVar = (zzqw) this.f12646d;
        long bg = zzqwVar.bg();
        long bj = zzqwVar.bj();
        StringBuilder l = awf.l(j, "Spurious audio timestamp (frame position mismatch): ", ", ");
        l.append(j2);
        l.append(", ");
        l.append(j3);
        l.append(", ");
        l.append(j4);
        l.append(", ");
        l.append(bg);
        l.append(", ");
        l.append(bj);
        zzdt.zzf("DefaultAudioSink", l.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzpx
    public void zzd(long j, long j2, long j3, long j4) {
        zzqw zzqwVar = (zzqw) this.f12646d;
        long bg = zzqwVar.bg();
        long bj = zzqwVar.bj();
        StringBuilder l = awf.l(j, "Spurious audio timestamp (system clock mismatch): ", ", ");
        l.append(j2);
        l.append(", ");
        l.append(j3);
        l.append(", ");
        l.append(j4);
        l.append(", ");
        l.append(bg);
        l.append(", ");
        l.append(bj);
        zzdt.zzf("DefaultAudioSink", l.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzpx
    public void zze(int i, long j) {
        zzqw zzqwVar = (zzqw) this.f12646d;
        if (zzqwVar.r != null) {
            ((fge) zzqwVar.r).f16738a.f8864f.zzx(i, j, SystemClock.elapsedRealtime() - zzqwVar.aj);
        }
    }
}
