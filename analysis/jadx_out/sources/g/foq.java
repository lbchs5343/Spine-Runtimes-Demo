package g;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.google.android.gms.internal.ads.zzfna;
import com.google.android.gms.internal.ads.zzfnr;
import com.google.android.gms.internal.ads.zzfob;
import com.google.android.gms.internal.ads.zzfod;
import com.google.android.gms.internal.ads.zzfoe;
import com.google.android.gms.internal.ads.zzfon;
import com.google.android.gms.internal.ads.zzfoo;
import com.google.android.gms.internal.ads.zzfou;
import com.google.android.gms.internal.ads.zzfov;
import com.google.android.gms.internal.ads.zzfoz;
import com.google.android.gms.internal.ads.zzfpa;
import com.google.android.gms.internal.ads.zzfpb;
import com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final /* synthetic */ class foq implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f17153c;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ foq f17152b = new foq(0);

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ foq f17151a = new foq(1);

    public /* synthetic */ foq(int i) {
        this.f17153c = i;
    }

    private final void d() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        CountDownLatch countDownLatch;
        switch (this.f17153c) {
            case 0:
                duh.f14824b.incrementAndGet();
                return;
            case 1:
                duh.f14824b.incrementAndGet();
                return;
            case 2:
                throw null;
            case 3:
                NativeCrashHandler.getInstance().unBlockSigquit(true);
                return;
            case 4:
                NativeCrashHandler.getInstance().unBlockSigquit(false);
                return;
            case 5:
                try {
                    eq.f15968d = MessageDigest.getInstance("MD5");
                    countDownLatch = eq.f15966b;
                } catch (NoSuchAlgorithmException unused) {
                    countDownLatch = eq.f15966b;
                } catch (Throwable th) {
                    eq.f15966b.countDown();
                    throw th;
                }
                countDownLatch.countDown();
                return;
            case 6:
                Looper.myLooper().quit();
                return;
            case 7:
                zzfpb zzd = zzfpb.zzd();
                zzd.getClass();
                ArrayList arrayList = zzd.h;
                zzfoe zzfoeVar = zzd.k;
                zzfov zzfovVar = zzd.f8129g;
                zzfou zzfouVar = zzd.f8128f;
                zzd.j.clear();
                for (zzfna zzfnaVar : zzfnr.zza().zzb()) {
                }
                zzd.i = System.nanoTime();
                zzfouVar.zzi();
                long nanoTime = System.nanoTime();
                zzfod zza = zzfoeVar.zza();
                if (zzfouVar.zze().size() > 0) {
                    Iterator it = zzfouVar.zze().iterator();
                    while (it.hasNext()) {
                        String str = (String) it.next();
                        JSONObject zza2 = zza.zza(null);
                        View zza3 = zzfouVar.zza(str);
                        zzfod zzb = zzfoeVar.zzb();
                        String zzc = zzfouVar.zzc(str);
                        if (zzc != null) {
                            JSONObject zza4 = zzb.zza(zza3);
                            zzfon.zzb(zza4, str);
                            try {
                                zza4.put("notVisibleReason", zzc);
                            } catch (JSONException e2) {
                                zzfoo.zza("Error with setting not visible reason", e2);
                            }
                            zzfon.zzc(zza2, zza4);
                        }
                        zzfon.zzf(zza2);
                        HashSet hashSet = new HashSet();
                        hashSet.add(str);
                        zzfovVar.zzc(zza2, hashSet, nanoTime);
                    }
                }
                if (zzfouVar.zzf().size() > 0) {
                    JSONObject zza5 = zza.zza(null);
                    zza.zzb(null, zza5, zzd, true, false);
                    zzfon.zzf(zza5);
                    zzfovVar.zzd(zza5, zzfouVar.zzf(), nanoTime);
                } else {
                    zzfovVar.zzb();
                }
                zzfouVar.zzg();
                long nanoTime2 = System.nanoTime() - zzd.i;
                if (arrayList.size() > 0) {
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        zzfpa zzfpaVar = (zzfpa) it2.next();
                        TimeUnit.NANOSECONDS.toMillis(nanoTime2);
                        zzfpaVar.zzb();
                        if (zzfpaVar instanceof zzfoz) {
                            ((zzfoz) zzfpaVar).zza();
                        }
                    }
                }
                zzfob.zza().zzc();
                return;
            case 8:
                Handler handler = zzfpb.f8125c;
                if (handler != null) {
                    handler.post(zzfpb.f8126d);
                    zzfpb.f8125c.postDelayed(zzfpb.f8124b, 200L);
                    return;
                }
                return;
            default:
                return;
        }
    }
}
