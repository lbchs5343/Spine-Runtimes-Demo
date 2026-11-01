package g;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbel;
import com.google.android.gms.internal.ads.zzblp;
import com.google.android.gms.internal.ads.zzblx;
import com.google.android.gms.internal.ads.zzbly;
import com.google.android.gms.internal.ads.zzboy;
import com.google.android.gms.internal.ads.zzbpc;
import com.google.android.gms.internal.ads.zzfxd;
import j$.util.Optional;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class bza {

    /* renamed from: a, reason: collision with root package name */
    public static bza f12480a;

    /* renamed from: b, reason: collision with root package name */
    public static final HashSet f12481b = new HashSet(Arrays.asList(bme.APP_OPEN_AD, bme.INTERSTITIAL, bme.REWARDED));

    /* renamed from: c, reason: collision with root package name */
    public apq f12482c;
    public dzg j;

    /* renamed from: f, reason: collision with root package name */
    public final Object f12485f = new Object();
    public final Object i = new Object();

    /* renamed from: e, reason: collision with root package name */
    public boolean f12484e = false;

    /* renamed from: g, reason: collision with root package name */
    public boolean f12486g = false;
    public final Object k = new Object();
    public bah h = new bah(new ArrayList(), ddh.DEFAULT);

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f12483d = new ArrayList();

    public static bza l() {
        bza bzaVar;
        synchronized (bza.class) {
            try {
                if (f12480a == null) {
                    f12480a = new bza();
                }
                bzaVar = f12480a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return bzaVar;
    }

    public static Optional m(ghd ghdVar) {
        String str = ghdVar.zza;
        bme b2 = bme.b(ghdVar.zzb);
        if (b2 == null) {
            return Optional.empty();
        }
        aeh aehVar = ghdVar.zzc;
        dcq dcqVar = new dcq(3);
        gxk gxkVar = (gxk) dcqVar.f13976f;
        List list = aehVar.zze;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                gxkVar.f18949f.add((String) it.next());
            }
        }
        gxkVar.j.putAll(aehVar.zzm);
        for (String str2 : aehVar.zzn.keySet()) {
            String string = aehVar.zzn.getString(str2);
            if (!TextUtils.isEmpty(string) && string.contains(",")) {
                agd.b("Value " + string + " contains invalid character ',' (comma). The server will parse it as a list of comma-separated values.");
            }
            gxkVar.f18948e.putString(str2, string);
        }
        gxkVar.f18947d = aehVar.zzx;
        Optional.ofNullable(aehVar.zzl).ifPresent(new bhf(1, dcqVar));
        List<String> list2 = aehVar.zzv;
        if (list2 == null) {
            agd.b("neighboring content URLs list should not be null");
        } else {
            ArrayList arrayList = gxkVar.f18944a;
            arrayList.clear();
            for (String str3 : list2) {
                if (TextUtils.isEmpty(str3)) {
                    agd.b("neighboring content URL should not be null or empty");
                } else {
                    arrayList.add(str3);
                }
            }
        }
        gxkVar.i = aehVar.zzp;
        awn awnVar = new awn(dcqVar);
        fkn fknVar = new fkn();
        fknVar.f16937a = new awn(new dcq(3));
        fknVar.f16939c = str;
        fknVar.f16940d = b2;
        fknVar.f16937a = awnVar;
        fknVar.f16938b = ghdVar.zzd;
        return Optional.of(new cdr(fknVar));
    }

    public static zzbly n(List list) {
        HashMap hashMap = new HashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzblp zzblpVar = (zzblp) it.next();
            hashMap.put(zzblpVar.zza, new zzblx(zzblpVar.zzb ? cvi.READY : cvi.NOT_READY, zzblpVar.zzd, zzblpVar.zzc));
        }
        return new zzbly(hashMap);
    }

    public final void o(final Context context) {
        synchronized (this.f12485f) {
            try {
                if (this.f12484e) {
                    return;
                }
                if (this.f12486g) {
                    return;
                }
                final int i = 1;
                this.f12484e = true;
                if (context == null) {
                    throw new IllegalArgumentException("Context cannot be null.");
                }
                synchronized (this.k) {
                    try {
                        q(context);
                        this.f12482c.zzs(new amg(1, this));
                        this.f12482c.zzo(new zzbpc());
                        this.h.getClass();
                        this.h.getClass();
                    } catch (RemoteException unused) {
                        zzfxd zzfxdVar = agd.f10175a;
                    }
                    zzbcn.zza(context);
                    if (((Boolean) zzbel.zza.zze()).booleanValue()) {
                        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkO)).booleanValue()) {
                            agd.c("Initializing on bg thread");
                            final int i2 = 0;
                            ga.f17768a.execute(new Runnable(this) { // from class: g.dtq

                                /* renamed from: c, reason: collision with root package name */
                                public final /* synthetic */ bza f14792c;

                                {
                                    this.f14792c = this;
                                }

                                private final void d() {
                                    bza bzaVar = this.f14792c;
                                    Context context2 = context;
                                    synchronized (bzaVar.k) {
                                        bzaVar.p(context2);
                                    }
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    switch (i2) {
                                        case 0:
                                            d();
                                            return;
                                        default:
                                            bza bzaVar = this.f14792c;
                                            Context context2 = context;
                                            synchronized (bzaVar.k) {
                                                bzaVar.p(context2);
                                            }
                                            return;
                                    }
                                }
                            });
                        }
                    }
                    if (((Boolean) zzbel.zzb.zze()).booleanValue()) {
                        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkO)).booleanValue()) {
                            ga.f17769b.execute(new Runnable(this) { // from class: g.dtq

                                /* renamed from: c, reason: collision with root package name */
                                public final /* synthetic */ bza f14792c;

                                {
                                    this.f14792c = this;
                                }

                                private final void d() {
                                    bza bzaVar = this.f14792c;
                                    Context context2 = context;
                                    synchronized (bzaVar.k) {
                                        bzaVar.p(context2);
                                    }
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    switch (i) {
                                        case 0:
                                            d();
                                            return;
                                        default:
                                            bza bzaVar = this.f14792c;
                                            Context context2 = context;
                                            synchronized (bzaVar.k) {
                                                bzaVar.p(context2);
                                            }
                                            return;
                                    }
                                }
                            });
                        }
                    }
                    agd.c("Initializing on calling thread");
                    p(context);
                }
            } finally {
            }
        }
    }

    public final void p(Context context) {
        try {
            zzboy.zza().zzb(context, null);
            this.f12482c.zzk();
            this.f12482c.zzl(null, new bpp(null));
        } catch (RemoteException unused) {
            zzfxd zzfxdVar = agd.f10175a;
        }
    }

    public final void q(Context context) {
        if (this.f12482c == null) {
            this.f12482c = (apq) new cow(cbv.f12612a.f12616e, context).j(context, false);
        }
    }
}
