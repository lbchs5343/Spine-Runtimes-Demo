package g;

import android.content.Context;
import android.os.Bundle;
import android.util.Pair;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzcaj;
import com.google.android.gms.internal.ads.zzdsr;
import com.google.android.gms.internal.ads.zzges;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class sq {

    /* renamed from: a, reason: collision with root package name */
    public final zzdsr f19999a;

    /* renamed from: b, reason: collision with root package name */
    public final ExecutorService f20000b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f20001c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f20002d = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    public final Context f20003e;

    public sq(Context context, zzdsr zzdsrVar, zzges zzgesVar) {
        this.f20003e = context;
        this.f19999a = zzdsrVar;
        this.f20000b = zzgesVar;
    }

    public final void f(gai gaiVar, Pair pair, boolean z) {
        gaiVar.f17792b.set(true);
        emr emrVar = gaiVar.f17793c;
        if (emrVar != null) {
            ((emg) pair.first).e(emrVar);
        } else {
            ((emg) pair.first).d(gaiVar.f17794d);
        }
        Pair pair2 = new Pair("se", "query_g");
        Pair pair3 = new Pair("ad_format", bme.BANNER.name());
        Pair pair4 = new Pair("rtype", Integer.toString(6));
        Pair pair5 = new Pair("scar", "true");
        ti.f20033a.v.getClass();
        dzm.z(this.f19999a, "sgpcr", pair2, pair3, pair4, pair5, new Pair("lat_ms", Long.toString(System.currentTimeMillis() - ((Long) pair.second).longValue())), new Pair("sgpc_h", Boolean.toString(z)), new Pair("sgpc_rs", Boolean.toString(emrVar != null)));
    }

    public final synchronized void g(boolean z, boolean z2) {
        Throwable th;
        int i;
        try {
            try {
                Bundle bundle = new Bundle();
                bundle.putString("query_info_type", "requester_type_6");
                bundle.putBoolean("accept_3p_cookie", z);
                HashMap hashMap = this.f20001c;
                Boolean valueOf = Boolean.valueOf(z);
                gai gaiVar = (gai) hashMap.get(valueOf);
                if (!z2 || gaiVar == null) {
                    i = 0;
                } else {
                    try {
                        i = gaiVar.f17791a + 1;
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                }
                gai gaiVar2 = (gai) this.f20001c.get(valueOf);
                ii iiVar = new ii(this, z, i, gaiVar2 == null ? null : Boolean.valueOf(gaiVar2.f17792b.get()), this.f19999a);
                dcq dcqVar = new dcq(3);
                dcqVar.h(bundle);
                awn awnVar = new awn(dcqVar);
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkK)).booleanValue()) {
                    this.f20000b.submit(new cao(this, awnVar, iiVar, 5));
                } else {
                    emr.t(this.f20003e, bme.BANNER, awnVar, iiVar);
                }
            } catch (Throwable th3) {
                th = th3;
                th = th;
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003b A[Catch: all -> 0x0030, TryCatch #0 {all -> 0x0030, blocks: (B:3:0x0001, B:5:0x0011, B:9:0x0027, B:11:0x002b, B:14:0x0037, B:16:0x003b, B:17:0x0054, B:20:0x005e, B:26:0x0080, B:27:0x0084, B:29:0x008a, B:33:0x0048, B:35:0x0032), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007f A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0080 A[Catch: all -> 0x0030, TryCatch #0 {all -> 0x0030, blocks: (B:3:0x0001, B:5:0x0011, B:9:0x0027, B:11:0x002b, B:14:0x0037, B:16:0x003b, B:17:0x0054, B:20:0x005e, B:26:0x0080, B:27:0x0084, B:29:0x008a, B:33:0x0048, B:35:0x0032), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0048 A[Catch: all -> 0x0030, TryCatch #0 {all -> 0x0030, blocks: (B:3:0x0001, B:5:0x0011, B:9:0x0027, B:11:0x002b, B:14:0x0037, B:16:0x003b, B:17:0x0054, B:20:0x005e, B:26:0x0080, B:27:0x0084, B:29:0x008a, B:33:0x0048, B:35:0x0032), top: B:2:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void h(final boolean z, gai gaiVar) {
        List list;
        try {
            HashMap hashMap = this.f20001c;
            Boolean valueOf = Boolean.valueOf(z);
            gai gaiVar2 = (gai) hashMap.get(valueOf);
            final boolean z2 = true;
            if (gaiVar2 != null) {
                ti.f20033a.v.getClass();
                if (!(gaiVar2.f17795e <= System.currentTimeMillis())) {
                    if (gaiVar2.f17793c != null) {
                        if (gaiVar.f17793c != null) {
                        }
                        int intValue = (gaiVar.f17793c == null ? (Integer) edt.f15376a.f15379d.zza(zzbcn.zzjA) : (Integer) edt.f15376a.f15379d.zza(zzbcn.zzjB)).intValue();
                        if (gaiVar.f17793c == null) {
                            z2 = false;
                        }
                        zzcaj.zzd.schedule(new Runnable() { // from class: g.qm
                            @Override // java.lang.Runnable
                            public final void run() {
                                sq.this.g(z, z2);
                            }
                        }, intValue, TimeUnit.SECONDS);
                        list = (List) this.f20002d.get(valueOf);
                        this.f20002d.put(valueOf, new ArrayList());
                        if (list == null) {
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                f(gaiVar, (Pair) it.next(), false);
                            }
                        }
                    }
                }
            }
            this.f20001c.put(valueOf, gaiVar);
            int intValue2 = (gaiVar.f17793c == null ? (Integer) edt.f15376a.f15379d.zza(zzbcn.zzjA) : (Integer) edt.f15376a.f15379d.zza(zzbcn.zzjB)).intValue();
            if (gaiVar.f17793c == null) {
            }
            zzcaj.zzd.schedule(new Runnable() { // from class: g.qm
                @Override // java.lang.Runnable
                public final void run() {
                    sq.this.g(z, z2);
                }
            }, intValue2, TimeUnit.SECONDS);
            list = (List) this.f20002d.get(valueOf);
            this.f20002d.put(valueOf, new ArrayList());
            if (list == null) {
            }
        } finally {
        }
    }

    public final synchronized void i(Object obj, emg emgVar) {
        try {
            try {
                ti.f20033a.v.getClass();
                Pair pair = new Pair(emgVar, Long.valueOf(System.currentTimeMillis()));
                zzcaj.zze.execute(new eax(this, obj, pair, 11, false));
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    public final void j(boolean z) {
        Boolean valueOf = Boolean.valueOf(z);
        HashMap hashMap = this.f20002d;
        if (hashMap.containsKey(valueOf)) {
            return;
        }
        hashMap.put(valueOf, new ArrayList());
        this.f20000b.submit(new asy(this, 2, z));
    }
}
