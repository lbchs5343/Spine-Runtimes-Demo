package g;

import android.media.MediaCodecInfo;
import com.google.android.gms.internal.ads.zzab;
import com.google.android.gms.internal.ads.zzad;
import com.google.android.gms.internal.ads.zzen;
import com.google.android.gms.internal.ads.zzsq;
import com.google.android.gms.internal.ads.zzta;
import com.google.android.gms.internal.ads.zztf;
import com.google.android.gms.internal.ads.zztl;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class bkn {
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0077, code lost:
    
        r6 = ((com.google.android.gms.internal.ads.zzsq) r4.get(r5)).zzd.getVideoCapabilities().getSupportedPerformancePoints();
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x008f, code lost:
    
        g.avm.i();
        r4 = g.avm.m();
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x009b, code lost:
    
        if (r5 >= r6.size()) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x009d, code lost:
    
        r2 = g.avm.e(r6.get(r5)).covers(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00a9, code lost:
    
        if (r2 == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00ac, code lost:
    
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00b2, code lost:
    
        if (r7 != 1) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00b1, code lost:
    
        r7 = 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d2) {
        List supportedPerformancePoints;
        boolean z;
        int i3;
        List supportedPerformancePoints2;
        boolean covers;
        supportedPerformancePoints = videoCapabilities.getSupportedPerformancePoints();
        if (supportedPerformancePoints != null && !supportedPerformancePoints.isEmpty()) {
            MediaCodecInfo.VideoCapabilities.PerformancePoint o = avm.o(i, i2, (int) d2);
            int i4 = 0;
            while (true) {
                char c2 = 2;
                z = true;
                if (i4 >= supportedPerformancePoints.size()) {
                    i3 = 1;
                    break;
                }
                covers = avm.e(supportedPerformancePoints.get(i4)).covers(o);
                if (covers) {
                    i3 = 2;
                    break;
                }
                i4++;
            }
            if (i3 == 1 && aky.f10422b == null) {
                if (zzen.zza < 35) {
                    try {
                        zzab zzabVar = new zzab();
                        zzabVar.zzZ("video/avc");
                        zzad zzaf = zzabVar.zzaf();
                        if (zzaf.zzo != null) {
                            List zze = zztl.zze(zzta.zza, zzaf, false, false);
                            int i5 = 0;
                            while (true) {
                                if (i5 < zze.size()) {
                                    if (((zzsq) zze.get(i5)).zzd != null && ((zzsq) zze.get(i5)).zzd.getVideoCapabilities() != null && supportedPerformancePoints2 != null && !supportedPerformancePoints2.isEmpty()) {
                                        break;
                                    }
                                    i5++;
                                } else {
                                    break;
                                }
                            }
                        }
                    } catch (zztf unused) {
                    }
                    aky.f10422b = Boolean.valueOf(z);
                    if (!z) {
                    }
                }
                z = false;
                aky.f10422b = Boolean.valueOf(z);
                if (!z) {
                }
            }
            return i3;
        }
        return 0;
    }
}
