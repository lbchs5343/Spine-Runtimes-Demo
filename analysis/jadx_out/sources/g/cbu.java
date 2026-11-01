package g;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import com.google.android.gms.internal.ads.zzdup;
import com.google.android.gms.internal.ads.zzgee;
import g.agd;
import g.cbu;
import g.dcy;
import g.edt;
import g.ha;
import g.ti;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class cbu implements zzgee {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzdup f12611a;

    public cbu(zzdup zzdupVar) {
        this.f12611a = zzdupVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public final void zza(Throwable th) {
        synchronized (this) {
            zzdup zzdupVar = this.f12611a;
            zzdupVar.p = true;
            ti.f20033a.v.getClass();
            zzdupVar.s("com.google.android.gms.ads.MobileAds", (int) (SystemClock.elapsedRealtime() - this.f12611a.f6522e), "Internal Error.", false);
            this.f12611a.f6524g.zzd(new Exception());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public final void zzb(Object obj) {
        final String str = (String) obj;
        synchronized (this) {
            zzdup zzdupVar = this.f12611a;
            zzdupVar.p = true;
            ti.f20033a.v.getClass();
            zzdupVar.s("com.google.android.gms.ads.MobileAds", (int) (SystemClock.elapsedRealtime() - this.f12611a.f6522e), "", true);
            this.f12611a.l.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdum
                @Override // java.lang.Runnable
                public final void run() {
                    final zzfka zzfkaVar;
                    ArrayList arrayList;
                    zzfka zzfkaVar2;
                    final String next;
                    final zzfka zza;
                    final Object obj2;
                    ArrayList arrayList2;
                    final zzcao zzcaoVar;
                    dcy zzo;
                    final long elapsedRealtime;
                    Context context;
                    JSONObject jSONObject;
                    ha haVar;
                    ha haVar2;
                    final zzdup zzdupVar2 = cbu.this.f12611a;
                    String str2 = str;
                    Context context2 = zzdupVar2.i;
                    Executor executor = zzdupVar2.l;
                    zzddk zzddkVar = zzdupVar2.f6520c;
                    zzdsw zzdswVar = zzdupVar2.f6523f;
                    int i = 5;
                    zzfka zza2 = zzfjz.zza(context2, 5);
                    zza2.zzi();
                    try {
                        arrayList = new ArrayList();
                        JSONObject jSONObject2 = new JSONObject(str2).getJSONObject("initializer_settings").getJSONObject("config");
                        Iterator<String> keys = jSONObject2.keys();
                        while (keys.hasNext()) {
                            try {
                                next = keys.next();
                                zza = zzfjz.zza(context2, i);
                                zza.zzi();
                                zza.zzd(next);
                                obj2 = new Object();
                                arrayList2 = arrayList;
                                zzcaoVar = new zzcao();
                                zzfkaVar = zza2;
                                try {
                                    zzo = zzgei.zzo(zzcaoVar, ((Long) edt.f15376a.f15379d.zza(zzbcn.zzbU)).longValue(), TimeUnit.SECONDS, zzdupVar2.f6519b);
                                    zzdswVar.zzc(next);
                                    zzddkVar.zzc(next);
                                } catch (JSONException e2) {
                                    e = e2;
                                    agd.h();
                                    zzddkVar.zza("MalformedJson");
                                    zzdswVar.zza("MalformedJson");
                                    zzdupVar2.f6524g.zzd(e);
                                    ti.f20033a.f20034ab.zzw(e, "AdapterInitializer.updateAdapterStatus");
                                    zzfko zzfkoVar = zzdupVar2.j;
                                    zzfkaVar.zzh(e);
                                    zzfkaVar.zzg(false);
                                    zzfkoVar.zzb(zzfkaVar.zzm());
                                }
                                try {
                                    ti.f20033a.v.getClass();
                                    elapsedRealtime = SystemClock.elapsedRealtime();
                                    zzfkaVar2 = zzfkaVar;
                                    context = context2;
                                    jSONObject = jSONObject2;
                                } catch (JSONException e3) {
                                    e = e3;
                                    zzfkaVar2 = zzfkaVar;
                                    zzfkaVar = zzfkaVar2;
                                    agd.h();
                                    zzddkVar.zza("MalformedJson");
                                    zzdswVar.zza("MalformedJson");
                                    zzdupVar2.f6524g.zzd(e);
                                    ti.f20033a.f20034ab.zzw(e, "AdapterInitializer.updateAdapterStatus");
                                    zzfko zzfkoVar2 = zzdupVar2.j;
                                    zzfkaVar.zzh(e);
                                    zzfkaVar.zzg(false);
                                    zzfkoVar2.zzb(zzfkaVar.zzm());
                                }
                            } catch (JSONException e4) {
                                e = e4;
                                zzfkaVar2 = zza2;
                            }
                            try {
                                zzo.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdug
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        zzdup zzdupVar3 = zzdup.this;
                                        Object obj3 = obj2;
                                        zzcao zzcaoVar2 = zzcaoVar;
                                        String str3 = next;
                                        long j = elapsedRealtime;
                                        zzfka zzfkaVar3 = zza;
                                        zzdupVar3.getClass();
                                        synchronized (obj3) {
                                            try {
                                                if (!zzcaoVar2.isDone()) {
                                                    ti.f20033a.v.getClass();
                                                    zzdupVar3.s(str3, (int) (SystemClock.elapsedRealtime() - j), "Timeout.", false);
                                                    zzdupVar3.f6523f.zzb(str3, "timeout");
                                                    zzdupVar3.f6520c.zzb(str3, "timeout");
                                                    zzfko zzfkoVar3 = zzdupVar3.j;
                                                    zzfkaVar3.zzc("Timeout");
                                                    zzfkaVar3.zzg(false);
                                                    zzfkoVar3.zzb(zzfkaVar3.zzm());
                                                    zzcaoVar2.zzc(Boolean.FALSE);
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                    }
                                }, executor);
                                arrayList2.add(zzo);
                                ha haVar3 = new ha(zzdupVar2, obj2, zzcaoVar, next, elapsedRealtime, zza);
                                JSONObject optJSONObject = jSONObject.optJSONObject(next);
                                final ArrayList arrayList3 = new ArrayList();
                                if (optJSONObject != null) {
                                    try {
                                        JSONArray jSONArray = optJSONObject.getJSONArray("data");
                                        int i2 = 0;
                                        while (i2 < jSONArray.length()) {
                                            JSONObject jSONObject3 = jSONArray.getJSONObject(i2);
                                            String optString = jSONObject3.optString("format", "");
                                            JSONObject optJSONObject2 = jSONObject3.optJSONObject("data");
                                            Bundle bundle = new Bundle();
                                            if (optJSONObject2 != null) {
                                                Iterator<String> keys2 = optJSONObject2.keys();
                                                while (keys2.hasNext()) {
                                                    JSONArray jSONArray2 = jSONArray;
                                                    String next2 = keys2.next();
                                                    haVar = haVar3;
                                                    try {
                                                        bundle.putString(next2, optJSONObject2.optString(next2, ""));
                                                        haVar3 = haVar;
                                                        jSONArray = jSONArray2;
                                                    } catch (JSONException unused) {
                                                    }
                                                }
                                            }
                                            JSONArray jSONArray3 = jSONArray;
                                            ha haVar4 = haVar3;
                                            arrayList3.add(new zzblz(optString, bundle));
                                            i2++;
                                            haVar3 = haVar4;
                                            jSONArray = jSONArray3;
                                        }
                                    } catch (JSONException unused2) {
                                    }
                                }
                                haVar = haVar3;
                                zzdupVar2.s(next, 0, "", false);
                                try {
                                    final zzfgm zzc = zzdupVar2.f6518a.zzc(next, new JSONObject());
                                    final ha haVar5 = haVar;
                                    try {
                                        haVar2 = haVar5;
                                        try {
                                            zzdupVar2.n.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzduk
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    zzdup zzdupVar3 = zzdup.this;
                                                    String str3 = next;
                                                    zzblt zzbltVar = haVar5;
                                                    zzfgm zzfgmVar = zzc;
                                                    List list = arrayList3;
                                                    zzdupVar3.getClass();
                                                    try {
                                                        try {
                                                            if (Objects.equals(str3, "com.google.ads.mediation.admob.AdMobAdapter")) {
                                                                zzbltVar.zzf();
                                                                return;
                                                            }
                                                            Context context3 = (Context) zzdupVar3.q.get();
                                                            if (context3 == null) {
                                                                context3 = zzdupVar3.i;
                                                            }
                                                            zzfgmVar.zzi(context3, zzbltVar, list);
                                                        } catch (RemoteException e5) {
                                                            agd.f("", e5);
                                                        }
                                                    } catch (RemoteException e6) {
                                                        throw new zzfxm(e6);
                                                    } catch (zzffv unused3) {
                                                        zzbltVar.zze("Failed to initialize adapter. " + str3 + " does not implement the initialize() method.");
                                                    }
                                                }
                                            });
                                        } catch (zzffv e5) {
                                            e = e5;
                                            try {
                                                String str3 = "Failed to create Adapter.";
                                                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzmG)).booleanValue()) {
                                                    str3 = "Failed to create Adapter. " + e.getMessage();
                                                }
                                                haVar2.zze(str3);
                                            } catch (RemoteException e6) {
                                                agd.f("", e6);
                                            }
                                            jSONObject2 = jSONObject;
                                            arrayList = arrayList2;
                                            context2 = context;
                                            zza2 = zzfkaVar2;
                                            i = 5;
                                        }
                                    } catch (zzffv e7) {
                                        e = e7;
                                        haVar2 = haVar5;
                                    }
                                } catch (zzffv e8) {
                                    e = e8;
                                    haVar2 = haVar;
                                }
                                jSONObject2 = jSONObject;
                                arrayList = arrayList2;
                                context2 = context;
                                zza2 = zzfkaVar2;
                                i = 5;
                            } catch (JSONException e9) {
                                e = e9;
                                zzfkaVar = zzfkaVar2;
                                agd.h();
                                zzddkVar.zza("MalformedJson");
                                zzdswVar.zza("MalformedJson");
                                zzdupVar2.f6524g.zzd(e);
                                ti.f20033a.f20034ab.zzw(e, "AdapterInitializer.updateAdapterStatus");
                                zzfko zzfkoVar22 = zzdupVar2.j;
                                zzfkaVar.zzh(e);
                                zzfkaVar.zzg(false);
                                zzfkoVar22.zzb(zzfkaVar.zzm());
                            }
                        }
                        zzfkaVar2 = zza2;
                        zzfkaVar = zzfkaVar2;
                    } catch (JSONException e10) {
                        e = e10;
                        zzfkaVar = zza2;
                    }
                    try {
                        zzgei.zza(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzduh
                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                zzdup zzdupVar3 = zzdup.this;
                                zzfka zzfkaVar3 = zzfkaVar;
                                zzdupVar3.f6524g.zzc(Boolean.TRUE);
                                zzfkaVar3.zzg(true);
                                zzdupVar3.j.zzb(zzfkaVar3.zzm());
                                return null;
                            }
                        }, executor);
                    } catch (JSONException e11) {
                        e = e11;
                        agd.h();
                        zzddkVar.zza("MalformedJson");
                        zzdswVar.zza("MalformedJson");
                        zzdupVar2.f6524g.zzd(e);
                        ti.f20033a.f20034ab.zzw(e, "AdapterInitializer.updateAdapterStatus");
                        zzfko zzfkoVar222 = zzdupVar2.j;
                        zzfkaVar.zzh(e);
                        zzfkaVar.zzg(false);
                        zzfkoVar222.zzb(zzfkaVar.zzm());
                    }
                }
            });
        }
    }
}
